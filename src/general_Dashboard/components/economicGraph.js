import React, { useState, useEffect } from "react";
import axios from "axios";
import html2canvas from "html2canvas";
import jsPDF from "jspdf";
import { useNavigate } from "react-router-dom";
import Swal from "sweetalert2";
import {
  ResponsiveContainer,
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
} from "recharts";
import { FaDownload } from "react-icons/fa";
import * as XLSX from "xlsx";
import "../pages/css/economicGraph.css";

const EconomicGraph = () => {
  const navigate = useNavigate();
  const [indicators, setIndicators] = useState([]);
  const [selectedIndicator, setSelectedIndicator] = useState("");
  const [selectedSubIndicator, setSelectedSubIndicator] = useState("");
  const [subIndicators, setSubIndicators] = useState([]);
  const [availableYears, setAvailableYears] = useState([]);
  const [fromYear, setFromYear] = useState("");
  const [toYear, setToYear] = useState("");
  const [fromQuarter, setFromQuarter] = useState("");
  const [toQuarter, setToQuarter] = useState("");
  const [chartData, setChartData] = useState([]);
  const [showTable, setShowTable] = useState(false);
  const [filtersApplied, setFiltersApplied] = useState(false);

  // Fetch default data on component mount
  useEffect(() => {
    axios
      .get("http://localhost:5000/api/graph/indicator-data", {
        params: {
          indicator_name: "income",
          from_year: 2024,
          to_year: 2024,
          from_quartile: "q3",
          to_quartile: "q4",
        },
      })
      .then((response) => {
        setChartData(response.data); // Set default graph data
        setFiltersApplied(false); // Indicate that filters are not applied by default
      })
      .catch((error) => console.error("Error fetching default data:", error));

    window.history.pushState(null, "", window.location.href);
    window.addEventListener("popstate", () => {
      if (!localStorage.getItem("token")) {
        navigate("/login");
      }
    });
    return () => {
      window.removeEventListener("popstate", () => {});
    };
  }, [navigate]);

  useEffect(() => {
    const fetchIndicators = async () => {
      try {
        const response = await axios.get(
          "http://localhost:5000/api/graph/indicators-by-sector",
          { params: { sector: "Economic" } }
        );
        setIndicators(response.data.indicators);
      } catch (error) {
        console.error("Error fetching indicators:", error);
      }
    };
    fetchIndicators();
  }, []);

  useEffect(() => {
    const fetchSubIndicators = async () => {
      if (selectedIndicator) {
        try {
          const response = await axios.post(
            "http://localhost:5000/api/graph/data",
            {
              table_name: selectedIndicator,
            }
          );
          setSubIndicators(response.data.unique_indicators || []);
        } catch (error) {
          console.error("Error fetching sub-indicators:", error);
          setSubIndicators([]);
        }
      } else {
        setSubIndicators([]);
      }
    };

    fetchSubIndicators();
  }, [selectedIndicator]);

  useEffect(() => {
    const fetchAvailableYears = async () => {
      if (selectedIndicator && selectedSubIndicator) {
        try {
          const response = await axios.post(
            "http://localhost:5000/api/graph/unique-year",
            {
              table_name: selectedIndicator,
              indicators: selectedSubIndicator,
            }
          );
          setAvailableYears(response.data.unique_years || []);
        } catch (error) {
          console.error("Error fetching available years:", error);
          setAvailableYears([]);
        }
      }
    };
    fetchAvailableYears();
  }, [selectedIndicator, selectedSubIndicator]);

  const handleFetchData = async () => {
    if (
      !selectedIndicator ||
      !selectedSubIndicator ||
      !fromYear ||
      !toYear ||
      !fromQuarter ||
      !toQuarter
    ) {
      Swal.fire({
        icon: "warning",
        title: "Missing Filters",
        text: "Please select all filters before applying.",
      });
      return;
    }

    try {
      const response = await axios.post(
        "http://localhost:5000/api/graph/wanted_data",
        {
          table_name: selectedIndicator,
          indicators: selectedSubIndicator,
          start_year: fromYear,
          end_year: toYear,
          start_quartile: fromQuarter,
          end_quartile: toQuarter,
        }
      );
      if (response.data && response.data.filtered_data.length > 0) {
        setChartData(response.data.filtered_data);
        setFiltersApplied(true);
      } else {
        Swal.fire({
          icon: "warning",
          title: "No Data Found",
          text: "No data available for the selected filters.",
        });
        setChartData([]);
        setFiltersApplied(false);
      }
    } catch (error) {
      Swal.fire({
        icon: "error",
        title: "Server Error",
        text: "Failed to retrieve data.",
      });
      setFiltersApplied(false);
    }
  };

  const quarterColors = {
    q1: "#1580D1",
    q2: "#F38B00",
    q3: "#6AB04C",
    q4: "#C0392B",
  };

  const CustomTick = (props) => {
    const { x, y, payload } = props;
    return (
      <text
        x={x}
        y={y}
        textAnchor="end"
        fill="#666"
        fontSize={13} // Set your desired font size here
        dy={10} // Adjust vertical positioning if needed
      >
        {payload.value}
      </text>
    );
  };

  const formatSubIndicatorName = (name) => {
    return name
      .replace(/_/g, " ")
      .replace(/\d+/g, "")
      .trim()
      .split(" ")
      .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
      .join(" ");
  };

  // Function to generate graph summary for comparison
  const generateGraphSummary = (data) => {
    const summary = [];
    const groupedData = {};

    // Group data by year and indicator
    data.forEach((item) => {
      const indicator = formatSubIndicatorName(selectedSubIndicator);
      const year = item.year;

      if (!groupedData[indicator]) {
        groupedData[indicator] = {};
      }

      if (!groupedData[indicator][year]) {
        groupedData[indicator][year] = {};
      }

      for (let q = fromQuarter; q <= toQuarter; q++) {
        const key = `q${q}`;
        if (item[key] !== undefined) {
          groupedData[indicator][year][key] = item[key];
        }
      }
    });

    // Calculate changes for each year
    for (const indicator in groupedData) {
      const years = Object.keys(groupedData[indicator]);
      years.forEach((year) => {
        const changes = {};
        const quarters = Object.keys(groupedData[indicator][year]);

        // Ensure we check for Q3 to Q4
        for (let i = 1; i < quarters.length; i++) {
          const fromValue = groupedData[indicator][year][`q${i}`];
          const toValue = groupedData[indicator][year][`q${i + 1}`];
          if (fromValue !== undefined && toValue !== undefined) {
            const percentChange =
              ((toValue - fromValue) / Math.abs(fromValue)) * 100;
            changes[`Q${i}ToQ${i + 1}`] = percentChange.toFixed(2);
          }
        }

        // Add the summary for this year
        summary.push({ indicator, year, ...changes });
      });
    }

    return summary;
  };

  // Render table for data with dynamic column names
  const renderTable = () => {
    const selectedQuartiles = [];
    for (let q = parseInt(fromQuarter); q <= parseInt(toQuarter); q++) {
      selectedQuartiles.push(`Q${q}`);
    }

    return (
      <table>
        <thead>
          <tr>
            <th>Indicator Name</th>
            <th>Sub Indicator Name</th>
            <th>Year</th>
            {selectedQuartiles.map((q) => (
              <th key={q}>{q}</th>
            ))}
          </tr>
        </thead>
        <tbody>
          {chartData.map((data, index) => (
            <tr key={index}>
              <td>{formatSubIndicatorName(selectedIndicator)}</td>
              <td>{formatSubIndicatorName(selectedSubIndicator)}</td>
              <td>{data.year}</td>
              {selectedQuartiles.map((q) => (
                <td key={q}>{data[`q${q.charAt(1)}`] || 0}</td>
              ))}
            </tr>
          ))}
        </tbody>
      </table>
    );
  };

  // Function to download the chart as a PDF
  const downloadPDF = () => {
    const input = document.getElementById("pdf-content");
    const title = `Graph for ${formatSubIndicatorName(
      selectedIndicator
    )}: ${formatSubIndicatorName(selectedSubIndicator)}`;
    html2canvas(input).then((canvas) => {
      const imgData = canvas.toDataURL("image/png");
      const pdf = new jsPDF();
      const imgWidth = 190;
      const pageHeight = pdf.internal.pageSize.height;
      const imgHeight = (canvas.height * imgWidth) / canvas.width;
      let heightLeft = imgHeight;
      let position = 0;

      // Add title to the PDF
      pdf.text(title, 10, 10);
      pdf.addImage(imgData, "PNG", 10, 20, imgWidth, imgHeight);
      heightLeft -= pageHeight;

      while (heightLeft >= 0) {
        position = heightLeft - imgHeight;
        pdf.addPage();
        pdf.addImage(imgData, "PNG", 10, position, imgWidth, imgHeight);
        heightLeft -= pageHeight;
      }
      pdf.save("chart.pdf");
    });
  };

  // Function to download the table as an Excel file
  const downloadExcel = () => {
    const worksheet = XLSX.utils.json_to_sheet(chartData);
    const workbook = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(workbook, worksheet, "Data");
    XLSX.writeFile(workbook, "table_data.xlsx");
  };

  return (
    <>
      <h2>Select Filters</h2>
      <div className="Userfilter-section">
        <select
          value={selectedIndicator}
          onChange={(e) => {
            setSelectedIndicator(e.target.value);
            setSelectedSubIndicator("");
            setAvailableYears([]);
            setFromYear("");
            setToYear("");
            setFiltersApplied(false);
          }}
        >
          <option value="">Select Indicator</option>
          {indicators.map((indicator) => (
            <option
              key={indicator.indicator_name}
              value={indicator.indicator_name}
            >
              {indicator.indicator_afn}
            </option>
          ))}
        </select>

        <select
          value={selectedSubIndicator}
          onChange={(e) => setSelectedSubIndicator(e.target.value)}
          disabled={!selectedIndicator}
        >
          <option value="">Select Sub-Indicator</option>
          {subIndicators.map((subIndicator) => (
            <option key={subIndicator} value={subIndicator}>
              {formatSubIndicatorName(subIndicator)}
            </option>
          ))}
        </select>

        <select
          disabled={!availableYears.length}
          value={fromYear}
          onChange={(e) => setFromYear(e.target.value)}
        >
          <option value="">From Year</option>
          {availableYears.map((year) => (
            <option key={year} value={year}>
              {year}
            </option>
          ))}
        </select>

        <select
          disabled={!availableYears.length}
          value={toYear}
          onChange={(e) => setToYear(e.target.value)}
        >
          <option value="">To Year</option>
          {availableYears.map((year) => (
            <option key={year} value={year}>
              {year}
            </option>
          ))}
        </select>

        <select
          value={fromQuarter}
          onChange={(e) => setFromQuarter(e.target.value)}
        >
          <option value="">From Quarter</option>
          <option value="1">Q1</option>
          <option value="2">Q2</option>
          <option value="3">Q3</option>
          <option value="4">Q4</option>
        </select>

        <select
          value={toQuarter}
          onChange={(e) => setToQuarter(e.target.value)}
        >
          <option value="">To Quarter</option>
          <option value="1">Q1</option>
          <option value="2">Q2</option>
          <option value="3">Q3</option>
          <option value="4">Q4</option>
        </select>

        <button className="applyFilter-btn" onClick={handleFetchData}>
          Apply Filters
        </button>
      </div>

      {/* Default Graph Section */}
      {!filtersApplied && (
        <>
          <h3
            style={{ marginTop: "20px", color: "black", textAlign: "center" }}
          >
            Income : 2024
          </h3>
          <div id="chart-container">
            <div id="pdf-content" style={{ marginLeft: "20px" }}>
              <ResponsiveContainer width="90%" height={650}>
                <BarChart data={chartData}>
                  <CartesianGrid strokeDasharray="3 3" />
                  <XAxis
                    dataKey="indicators" // ✅ Corrected key
                    textAnchor="end"
                    interval={0}
                    height={250}
                    angle={-50}
                    tick={{ fontSize: 11 }}
                  />
                  <YAxis />
                  <Tooltip />
                  <Legend />
                  {["1", "2", "3", "4"].map((q) => (
                    <Bar
                      key={`q${q}`}
                      dataKey={`q${q}`}
                      name={`Q${q}`}
                      fill={quarterColors[`q${q}`]}
                    />
                  ))}
                </BarChart>
              </ResponsiveContainer>
            </div>
          </div>
        </>
      )}

      {/* Filtered Graph Section */}
      {filtersApplied && (
        <>
          <h3
            style={{ marginTop: "20px", color: "black", textAlign: "center" }}
          >
            {`${formatSubIndicatorName(
              selectedIndicator
            )} : ${formatSubIndicatorName(selectedSubIndicator)}`}
          </h3>

          <div
            style={{
              display: "flex",
              justifyContent: "center",
              alignItems: "center",
              margin: "20px 0",
            }}
          >
            <label className="switch">
              <input
                type="checkbox"
                checked={showTable}
                onChange={() => setShowTable(!showTable)}
              />
              <span className="slider round"></span>
            </label>
            <span style={{ marginLeft: "10px" }}>
              {showTable ? "Show Graph" : "Show Table"}
            </span>
          </div>

          {/* Graph Rendering */}
          <div style={{ marginTop: "20px", marginLeft: "20px" }}>
            {showTable ? (
              renderTable()
            ) : (
              <div id="chart-container">
                <div id="pdf-content">
                  <ResponsiveContainer width="90%" height={500}>
                    <BarChart data={chartData}>
                      <CartesianGrid strokeDasharray="3 3" />
                      <XAxis dataKey="year" />
                      <YAxis
                        tick={<CustomTick />} // Use the custom tick component
                        tickCount={10} // Adjust the number of ticks displayed
                        interval="preserveStartEnd" // Ensure that the first and last ticks are always shown
                      />
                      <Tooltip />
                      <Legend />
                      {["1", "2", "3", "4"].map((q) => (
                        <Bar
                          key={`q${q}`}
                          dataKey={`q${q}`}
                          name={`Q${q}`}
                          fill={quarterColors[`q${q}`]}
                        />
                      ))}
                    </BarChart>
                  </ResponsiveContainer>
                  <h4 style={{ textAlign: "center", marginTop: "20px" }}>
                    Quarterly Comparison
                  </h4>
                  <div className="graph-summary">
                    {generateGraphSummary(chartData).map((summary, idx) => (
                      <div key={idx} className="summary-item">
                        <h5 style={{ textAlign: "center" }}>
                          {summary.indicator} - Year: {summary.year}
                        </h5>
                        {Object.entries(summary).map(([key, value]) => {
                          if (key !== "indicator" && key !== "year") {
                            const [fromQ, toQ] = key.split("To");
                            const percent = parseFloat(value);
                            let changeLabel = "";
                            if (percent > 0) {
                              changeLabel = `increased by ${percent}%`;
                            } else if (percent < 0) {
                              changeLabel = `decreased by ${Math.abs(
                                percent
                              )}%`;
                            } else {
                              changeLabel = "remained the same";
                            }

                            return (
                              <p key={key}>
                                {fromQ.toUpperCase()} to {toQ.toUpperCase()}:{" "}
                                {changeLabel}
                              </p>
                            );
                          }
                          return null;
                        })}
                      </div>
                    ))}
                    {generateGraphSummary(chartData).length === 0 && (
                      <p className="no-comparison">
                        No comparisons available for this period.
                      </p>
                    )}
                  </div>
                </div>
                <div
                  style={{
                    display: "flex",
                    justifyContent: "center",
                    marginTop: "20px",
                  }}
                >
                  <button
                    className="download-btn"
                    onClick={downloadPDF}
                    style={{ marginRight: "10px" }}
                  >
                    <FaDownload /> Download PDF
                  </button>
                </div>
              </div>
            )}
          </div>

          {/* Excel Download Button only visible in table mode */}
          {showTable && (
            <div
              style={{
                display: "flex",
                justifyContent: "center",
                marginTop: "20px",
              }}
            >
              <button className="download-btn" onClick={downloadExcel}>
                <FaDownload /> Download Excel
              </button>
            </div>
          )}
        </>
      )}
    </>
  );
};
export default EconomicGraph;

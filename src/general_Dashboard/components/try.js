import React, { useState, useEffect } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import Swal from "sweetalert2";
import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  ResponsiveContainer,
} from "recharts";
import { FaDownload } from "react-icons/fa";
import * as XLSX from "xlsx";

const Dashboard = () => {
  const navigate = useNavigate();
  const [indicators, setIndicators] = useState([]);
  const [selectedIndicator, setSelectedIndicator] = useState("");
  const [availableYears, setAvailableYears] = useState([]);
  const [fromYear, setFromYear] = useState("");
  const [toYear, setToYear] = useState("");
  const [fromQuarter, setFromQuarter] = useState("");
  const [toQuarter, setToQuarter] = useState("");
  const [chartData, setChartData] = useState({});
  const [graphData, setGraphData] = useState([]);
  const [showFilteredGraph, setShowFilteredGraph] = useState(false);
  const [showTable, setShowTable] = useState(false);

  useEffect(() => {
    const fetchIndicators = async () => {
      try {
        const response = await axios.get(
          "http://localhost:5000/api/graph/indicators-by-sector",
          { params: { sector: "economic_sector" } }
        );
        setIndicators(response.data.indicators);
      } catch (error) {
        console.error("Error fetching indicators:", error);
      }
    };
    fetchIndicators();
  }, []);

  useEffect(() => {
    const fetchAvailableYears = async () => {
      if (selectedIndicator) {
        try {
          const response = await axios.get(
            "http://localhost:5000/api/graph/available-years",
            { params: { indicator: selectedIndicator } }
          );
          if (response.data.availableYears.length === 0) {
            Swal.fire({
              icon: "warning",
              title: "No Years Found",
              text: "No available years for the selected indicator.",
            });
            setAvailableYears([]);
          } else {
            setAvailableYears(response.data.availableYears);
          }
        } catch (error) {
          console.error("Error fetching available years:", error);
          setAvailableYears([]);
        }
      }
    };
    fetchAvailableYears();
  }, [selectedIndicator]);

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
        setGraphData(response.data);
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

  const cleanIndicatorName = (name) => {
    return name
      .replace(/_/g, " ")
      .replace(/\d+$/, "")
      .replace(/\s+/g, " ")
      .trim()
      .replace(/\b(gdp|usd|nu|rs|npr)\b/gi, (match) => match.toUpperCase());
  };

  const calculatePercentageChange = (data) => {
    const quarters = ["q1", "q2", "q3", "q4"];
    let totalStart = 0;
    let totalEnd = 0;
    for (const year in data) {
      data[year].forEach((item) => {
        if (fromQuarter in item) totalStart += item[fromQuarter] ?? 0;
        if (toQuarter in item) totalEnd += item[toQuarter] ?? 0;
      });
    }
    const change =
      totalStart === 0 ? 0 : ((totalEnd - totalStart) / totalStart) * 100;
    return change.toFixed(2);
  };

  const handleFetchData = async () => {
    if (
      !selectedIndicator ||
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

    const selectedYears = availableYears.filter(
      (y) => y >= parseInt(fromYear) && y <= parseInt(toYear)
    );

    const selectedQuarters = ["q1", "q2", "q3", "q4"].filter(
      (q) => q >= fromQuarter && q <= toQuarter
    );

    const allChartData = {};

    try {
      for (const year of selectedYears) {
        const response = await axios.get(
          "http://localhost:5000/api/graph/indicator-data",
          {
            params: {
              indicator_name: selectedIndicator,
              from_year: year,
              to_year: year,
              from_quartile: fromQuarter,
              to_quartile: toQuarter,
            },
          }
        );

        if (response.data.length === 0) continue;

        const sanitized = response.data.map((item) => {
          const entry = {
            year: item.year,
            indicator: cleanIndicatorName(item.indicators),
          };
          selectedQuarters.forEach((q) => {
            entry[q] = item[q] !== null ? parseFloat(item[q]) : 0;
          });
          return entry;
        });
        allChartData[year] = sanitized;
      }

      if (Object.keys(allChartData).length === 0) {
        Swal.fire({
          icon: "warning",
          title: "No Data Found",
          text: "No data available for the selected filters.",
        });
        setChartData({});
        setShowFilteredGraph(false);
        return;
      }

      setChartData(allChartData);
      setShowFilteredGraph(true);
    } catch (error) {
      console.error("Error fetching filtered chart data:", error);
      Swal.fire({
        icon: "error",
        title: "Server Error",
        text: "Failed to retrieve data.",
      });
    }
  };

  const downloadExcel = (data) => {
    const allData = [];
    Object.entries(data).forEach(([year, yearData]) => {
      yearData.forEach((item) => {
        allData.push({
          indicator: item.indicator,
          year,
          q1: item.q1,
          q2: item.q2,
          q3: item.q3,
          q4: item.q4,
        });
      });
    });

    const ws = XLSX.utils.json_to_sheet(allData);
    const wb = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(wb, ws, "Filtered Data");
    XLSX.writeFile(wb, "Filtered_Data_All_Years.xlsx");
  };

  const generateGraphSummary = (data) => {
    if (fromQuarter === toQuarter) return []; // No comparison needed if same quarter

    const quarters = [];
    if (fromQuarter <= "q1" && toQuarter >= "q1") quarters.push("q1");
    if (fromQuarter <= "q2" && toQuarter >= "q2") quarters.push("q2");
    if (fromQuarter <= "q3" && toQuarter >= "q3") quarters.push("q3");
    if (fromQuarter <= "q4" && toQuarter >= "q4") quarters.push("q4");

    let summary = [];
    data.forEach((item) => {
      const quarterChanges = {};

      for (let i = 0; i < quarters.length - 1; i++) {
        const currentQ = quarters[i];
        const nextQ = quarters[i + 1];
        if (item[currentQ] && item[nextQ] && item[currentQ] !== 0) {
          const change =
            ((item[nextQ] - item[currentQ]) / item[currentQ]) * 100;
          quarterChanges[`${currentQ}To${nextQ}`] = change.toFixed(2);
        }
      }

      if (Object.keys(quarterChanges).length > 0) {
        summary.push({
          indicator: item.indicator,
          ...quarterChanges,
        });
      }
    });
    return summary;
  };

  return (
    <div style={{ padding: "20px", maxWidth: "1200px", margin: "0 auto" }}>
      <h2 style={{ textAlign: "center", marginBottom: "20px" }}>
        Economic Indicators Dashboard
      </h2>

      <div
        className="filter-section"
        style={{
          display: "flex",
          flexWrap: "wrap",
          gap: "10px",
          marginBottom: "20px",
          justifyContent: "center",
        }}
      >
        <select
          value={selectedIndicator}
          onChange={(e) => {
            setSelectedIndicator(e.target.value);
            setFromYear("");
            setToYear("");
          }}
          style={{ padding: "8px", minWidth: "200px" }}
        >
          <option value="">Select Indicator</option>
          {indicators.map((indicator, index) => (
            <option key={index} value={indicator.indicator_name}>
              {indicator.indicator_afn}
            </option>
          ))}
        </select>

        <select
          value={fromYear}
          onChange={(e) => setFromYear(e.target.value)}
          style={{ padding: "8px", minWidth: "120px" }}
        >
          <option value="">From Year</option>
          {availableYears.map((year) => (
            <option key={year} value={year}>
              {year}
            </option>
          ))}
        </select>

        <select
          value={toYear}
          onChange={(e) => setToYear(e.target.value)}
          style={{ padding: "8px", minWidth: "120px" }}
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
          style={{ padding: "8px", minWidth: "120px" }}
        >
          <option value="">From Quarter</option>
          <option value="q1">Q1</option>
          <option value="q2">Q2</option>
          <option value="q3">Q3</option>
          <option value="q4">Q4</option>
        </select>

        <select
          value={toQuarter}
          onChange={(e) => setToQuarter(e.target.value)}
          style={{ padding: "8px", minWidth: "120px" }}
        >
          <option value="">To Quarter</option>
          <option value="q1">Q1</option>
          <option value="q2">Q2</option>
          <option value="q3">Q3</option>
          <option value="q4">Q4</option>
        </select>

        <button
          className="applyFilter-btn"
          onClick={handleFetchData}
          style={{
            padding: "8px 15px",
            backgroundColor: "#4CAF50",
            color: "white",
            border: "none",
            borderRadius: "4px",
            cursor: "pointer",
          }}
        >
          Apply Filters
        </button>
      </div>

      {/* Default Graph - Show only when no filters applied */}
      {!showFilteredGraph && (
        <div style={{ width: "100%", height: "400px", margin: "20px auto" }}>
          <h3 style={{ textAlign: "center" }}>
            Default Graph - Income (Q3 to Q4 - 2024)
          </h3>
          <ResponsiveContainer width="95%" height="80%">
            <BarChart
              data={graphData}
              margin={{ top: 20, right: 30, left: 20, bottom: 70 }}
            >
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis
                dataKey="indicator"
                angle={-45}
                textAnchor="end"
                height={100}
                tick={{ fontSize: 12 }}
              />
              <YAxis />
              <Tooltip />
              <Legend verticalAlign="top" />
              <Bar dataKey="q3" fill="#8884d8" name="Q3" />
              <Bar dataKey="q4" fill="#82ca9d" name="Q4" />
            </BarChart>
          </ResponsiveContainer>
        </div>
      )}

      {/* Filtered Graphs */}
      {showFilteredGraph && (
        <div
          style={{
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
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
      )}

      {/* Filtered Data - Graph and Table */}
      {showFilteredGraph && (
        <>
          {showTable ? (
            <div
              style={{
                overflowX: "auto",
                width: "95%",
                margin: "0 auto",
                boxShadow: "0 0 10px rgba(0,0,0,0.1)",
                borderRadius: "8px",
              }}
            >
              <table
                style={{
                  width: "100%",
                  borderCollapse: "collapse",
                  textAlign: "left",
                }}
              >
                <thead>
                  <tr style={{ backgroundColor: "#f2f2f2" }}>
                    <th
                      style={{
                        padding: "12px",
                        borderBottom: "1px solid #ddd",
                      }}
                    >
                      Indicator
                    </th>
                    <th
                      style={{
                        padding: "12px",
                        borderBottom: "1px solid #ddd",
                      }}
                    >
                      Year
                    </th>
                    <th
                      style={{
                        padding: "12px",
                        borderBottom: "1px solid #ddd",
                      }}
                    >
                      Q1
                    </th>
                    <th
                      style={{
                        padding: "12px",
                        borderBottom: "1px solid #ddd",
                      }}
                    >
                      Q2
                    </th>
                    <th
                      style={{
                        padding: "12px",
                        borderBottom: "1px solid #ddd",
                      }}
                    >
                      Q3
                    </th>
                    <th
                      style={{
                        padding: "12px",
                        borderBottom: "1px solid #ddd",
                      }}
                    >
                      Q4
                    </th>
                  </tr>
                </thead>
                <tbody>
                  {Object.entries(chartData).flatMap(([year, data]) =>
                    data.map((item, idx) => (
                      <tr
                        key={`${year}-${idx}`}
                        style={{ borderBottom: "1px solid #ddd" }}
                      >
                        <td style={{ padding: "12px" }}>{item.indicator}</td>
                        <td style={{ padding: "12px" }}>{year}</td>
                        <td style={{ padding: "12px" }}>{item.q1 || "-"}</td>
                        <td style={{ padding: "12px" }}>{item.q2 || "-"}</td>
                        <td style={{ padding: "12px" }}>{item.q3 || "-"}</td>
                        <td style={{ padding: "12px" }}>{item.q4 || "-"}</td>
                      </tr>
                    ))
                  )}
                </tbody>
              </table>
            </div>
          ) : (
            <div style={{ width: "100%" }}>
              {Object.entries(chartData).map(([year, data], idx) => (
                <div key={idx} style={{ width: "100%", marginBottom: "40px" }}>
                  <h3 style={{ textAlign: "center" }}>
                    {year} Indicator Performance
                  </h3>
                  <div
                    style={{ width: "95%", height: "400px", margin: "0 auto" }}
                  >
                    <ResponsiveContainer width="100%" height="100%">
                      <BarChart
                        data={data}
                        margin={{ top: 20, right: 30, left: 20, bottom: 70 }}
                      >
                        <CartesianGrid strokeDasharray="3 3" />
                        <XAxis
                          dataKey="indicator"
                          angle={-45}
                          textAnchor="end"
                          height={100}
                          tick={{ fontSize: 12 }}
                        />
                        <YAxis />
                        <Tooltip />
                        <Legend verticalAlign="top" />
                        {fromQuarter <= "q1" && toQuarter >= "q1" && (
                          <Bar dataKey="q1" fill="#8884d8" name="Q1" />
                        )}
                        {fromQuarter <= "q2" && toQuarter >= "q2" && (
                          <Bar dataKey="q2" fill="#82ca9d" name="Q2" />
                        )}
                        {fromQuarter <= "q3" && toQuarter >= "q3" && (
                          <Bar dataKey="q3" fill="#ff7300" name="Q3" />
                        )}
                        {fromQuarter <= "q4" && toQuarter >= "q4" && (
                          <Bar dataKey="q4" fill="#ff0000" name="Q4" />
                        )}
                      </BarChart>
                    </ResponsiveContainer>
                  </div>
                  {fromQuarter !== toQuarter && (
                    <div
                      style={{
                        width: "95%",
                        margin: "20px auto",
                        padding: "15px",
                        backgroundColor: "#f9f9f9",
                        borderRadius: "8px",
                        boxShadow: "0 0 5px rgba(0,0,0,0.1)",
                      }}
                    >
                      <h4 style={{ textAlign: "center", marginBottom: "15px" }}>
                        Quarterly Comparison for {year}
                      </h4>
                      <div
                        style={{
                          display: "grid",
                          gridTemplateColumns:
                            "repeat(auto-fill, minmax(250px, 1fr))",
                          gap: "15px",
                        }}
                      >
                        {generateGraphSummary(data).map((summary, idx) => (
                          <div
                            key={idx}
                            style={{
                              padding: "15px",
                              backgroundColor: "white",
                              borderRadius: "5px",
                              boxShadow: "0 0 3px rgba(0,0,0,0.1)",
                            }}
                          >
                            <p
                              style={{
                                fontWeight: "bold",
                                marginBottom: "10px",
                              }}
                            >
                              {summary.indicator}
                            </p>
                            {Object.entries(summary).map(([key, value]) => {
                              if (key !== "indicator") {
                                const [fromQ, toQ] = key.split("To");
                                return (
                                  <p key={key} style={{ margin: "5px 0" }}>
                                    {fromQ.toUpperCase()} to {toQ.toUpperCase()}
                                    : {value}%
                                  </p>
                                );
                              }
                              return null;
                            })}
                          </div>
                        ))}
                      </div>
                    </div>
                  )}
                </div>
              ))}
            </div>
          )}
        </>
      )}

      {/* Download Excel Button */}
      {showFilteredGraph && (
        <div style={{ textAlign: "center", margin: "20px 0" }}>
          <button
            style={{
              padding: "10px 20px",
              backgroundColor: "#4CAF50",
              color: "white",
              border: "none",
              borderRadius: "4px",
              cursor: "pointer",
              display: "inline-flex",
              alignItems: "center",
              gap: "8px",
            }}
            onClick={() => downloadExcel(chartData)}
          >
            <FaDownload /> Download Excel
          </button>
        </div>
      )}
    </div>
  );
};

export default Dashboard;

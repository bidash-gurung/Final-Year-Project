import React, { useState, useEffect } from "react";
import axios from "axios";
import Swal from "sweetalert2"; // Import SweetAlert2
import "../pages/css/dataPreview.css";

const DataPreview = () => {
  const [years, setYears] = useState([]);
  const [selectedSector, setSelectedSector] = useState("");
  const [selectedIndicator, setSelectedIndicator] = useState("");
  const [fromYear, setFromYear] = useState("");
  const [toYear, setToYear] = useState("");
  const [data, setData] = useState([]);
  const [filteredData, setFilteredData] = useState([]);
  const [indicators, setIndicators] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [rowsPerPage] = useState(10);
  const [totalPages, setTotalPages] = useState(1);

  // Manually defined sectors
  const sectors = [
    { id: 1, value: "Economic", name: "Economic Sector" },
    { id: 2, value: "Social", name: "Social Sector" },
    {
      id: 3,
      value: "Gov & Security",
      name: "Governance and Security Sector",
    },
  ];

  // Fetch all data from all indicator tables
  const fetchAllData = async () => {
    try {
      // fetch all the indicator names from indicator metadata
      const response = await axios.get(
        "http://localhost:5000/api/data/indicators/names"
      );
      const indicatorsWithSectors = response.data;

      const allDataPromises = indicatorsWithSectors.map(
        async ({ indicator_name, sector }) => {
          const dataResponse = await axios.get(
            `http://localhost:5000/api/data/all?indicator_name=${indicator_name}`
          );

          return dataResponse.data.map((row) => ({
            actualId: row.id,
            actualIndicator: row.indicators,
            actualTable: row.tableName,
            indicators: row.indicators
              .replace(/_/g, " ")
              .replace(/\b\w/g, (char) => char.toUpperCase()),
            sector: sector,
            year: row.year,
            q1: row.q1,
            q2: row.q2,
            q3: row.q3,
            q4: row.q4,
          }));
        }
      );

      const allData = await Promise.all(allDataPromises);
      setData(allData.flat());
      setTotalPages(Math.ceil(allData.flat().length / rowsPerPage));
    } catch (error) {
      console.error("Error fetching all data:", error);
    }
  };

  // Fetch indicators based on selected sector
  const fetchIndicators = async (sector) => {
    if (!sector) return;
    try {
      const response = await axios.get(
        `http://localhost:5000/api/data/indicators?sector=${sector}`
      );
      setIndicators(response.data);
    } catch (error) {
      console.error("Error fetching indicators:", error);
    }
  };

  // Fetch years based on selected indicator
  const fetchYears = async (indicator) => {
    if (!indicator) return;
    try {
      const response = await axios.get(
        `http://localhost:5000/api/data/years?indicator_name=${indicator}`
      );
      setYears(response.data.sort((a, b) => a - b));
      setFromYear("");
      setToYear("");
    } catch (error) {
      console.error("Error fetching years:", error);
    }
  };

  useEffect(() => {
    fetchAllData();
  }, []);

  useEffect(() => {
    fetchIndicators(selectedSector);
  }, [selectedSector]);

  useEffect(() => {
    fetchYears(selectedIndicator);
  }, [selectedIndicator]);

  // Handle filter operation
  const handleFilter = async () => {
    try {
      const response = await axios.post(
        "http://localhost:5000/api/data/filter",
        {
          sector: selectedSector,
          from_year: fromYear,
          to_year: toYear,
          indicator_name: selectedIndicator,
        }
      );

      const filtered = response.data;

      // Check if filtered data is empty
      if (filtered.length === 0) {
        Swal.fire({
          title: "No Data Found",
          text: "There is no data for the selected year.",
          icon: "warning",
          confirmButtonText: "OK",
        });
      } else {
        // Sort filtered data by year in increasing order
        const sortedFilteredData = filtered.sort((a, b) => a.year - b.year);
        setFilteredData(sortedFilteredData);
        setTotalPages(Math.ceil(sortedFilteredData.length / rowsPerPage));
        setCurrentPage(1); // Reset to first page on new filter
      }
    } catch (error) {
      console.error("Error filtering data:", error);
    }
  };

  // Get the data for the current page
  const currentData = (filteredData.length > 0 ? filteredData : data).slice(
    (currentPage - 1) * rowsPerPage,
    currentPage * rowsPerPage
  );
  const handleDelete = async (indicatorName, id, tableName) => {
    const result = await Swal.fire({
      title: "Are you sure?",
      text: `Want to delete ${indicatorName}.`,
      icon: "warning",
      showCancelButton: true,
      confirmButtonColor: "#d33",
      cancelButtonColor: "#3085d6",
      confirmButtonText: "Yes, delete it!",
    });

    if (result.isConfirmed) {
      try {
        // Update the API endpoint to include tableName
        const response = await axios.delete(
          `http://localhost:5000/api/data/${tableName}/${id}`
        );

        if (response.status === 200) {
          Swal.fire({
            icon: "success",
            title: "Deleted!",
            text: "Data has been deleted successfully.",
          });
          fetchAllData(); // Refresh data
        }
      } catch (error) {
        Swal.fire({
          icon: "error",
          title: "Error!",
          text: error.response?.data?.error || "Failed to delete data.",
        });
      }
    }
  };

  return (
    <div>
      <h2>Select Filters</h2>
      <div className="filter-section">
        <div className="filter-group">
          <select
            id="sector-select"
            onChange={(e) => {
              setSelectedSector(e.target.value);
              setSelectedIndicator("");
              setYears([]);
              setFromYear("");
              setToYear("");
            }}
            value={selectedSector}
          >
            <option value="">Select Sector</option>
            {sectors.map((sector) => (
              <option key={sector.id} value={sector.value}>
                {sector.name}
              </option>
            ))}
          </select>
        </div>

        <div className="filter-group">
          <select
            id="indicator-select"
            onChange={(e) => {
              setSelectedIndicator(e.target.value);
              setFromYear("");
              setToYear("");
            }}
            value={selectedIndicator}
            disabled={!selectedSector}
          >
            <option value="">Select Indicator</option>
            {indicators.map((indicator) => (
              <option key={indicator.id} value={indicator.indicator_name}>
                {indicator.indicator_afn}
              </option>
            ))}
          </select>
        </div>

        <div className="filter-group">
          <select
            id="from-year-select"
            onChange={(e) => setFromYear(e.target.value)}
            value={fromYear}
            disabled={!selectedIndicator}
          >
            <option value="">From Year</option>
            {years.map((year) => (
              <option key={year} value={year}>
                {year}
              </option>
            ))}
          </select>
        </div>

        <div className="filter-group">
          <select
            id="to-year-select"
            onChange={(e) => setToYear(e.target.value)}
            value={toYear}
            disabled={!selectedIndicator || !fromYear}
          >
            <option value="">To Year</option>
            {years
              .filter((year) => year >= fromYear)
              .map((year) => (
                <option key={year} value={year}>
                  {year}
                </option>
              ))}
          </select>
        </div>

        <button
          className="applyFilter-btn"
          onClick={handleFilter}
          disabled={
            !selectedSector || !selectedIndicator || !fromYear || !toYear
          }
        >
          Apply Filter
        </button>
      </div>

      <table>
        <thead>
          <tr>
            <th style={{ display: "none" }}>ActualID</th>
            <th style={{ display: "none" }}>ActualIndicator</th>
            <th style={{ display: "none" }}>tableName</th>

            <th>Indicators</th>
            <th>Sector</th>
            <th>Year</th>
            <th>Q1</th>
            <th>Q2</th>
            <th>Q3</th>
            <th>Q4</th>
            {/* <th>Edit</th> */}
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
          {currentData.map((row, index) => (
            <tr key={index}>
              <td style={{ display: "none" }}>{row.actualId}</td>
              <td style={{ display: "none" }}>{row.actualIndicator}</td>
              <td style={{ display: "none" }}>{row.actualTable}</td>

              <td>{row.indicators}</td>
              <td>{row.sector}</td>
              <td>{row.year}</td>
              <td>{row.q1}</td>
              <td>{row.q2}</td>
              <td>{row.q3}</td>
              <td>{row.q4}</td>
              {/* <td>
                <button className="edit-button">Edit</button>
              </td> */}
              <td>
                <button
                  className="delete-button"
                  onClick={() => {
                    handleDelete(
                      row.actualIndicator,
                      row.actualId,
                      row.actualTable
                    ); // Call handleDelete with indicator_name and id
                  }}
                >
                  Delete
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>

      <div className="pagination">
        <button
          className="pagination-btn"
          onClick={() => setCurrentPage((p) => Math.max(p - 1, 1))}
          disabled={currentPage === 1}
        >
          Previous
        </button>
        <span>
          Page {currentPage} of {totalPages}
        </span>
        <button
          className="pagination-btn"
          onClick={() => setCurrentPage((p) => Math.min(p + 1, totalPages))}
          disabled={currentPage === totalPages}
        >
          Next
        </button>
      </div>
    </div>
  );
};

export default DataPreview;

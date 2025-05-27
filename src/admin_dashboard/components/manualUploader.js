import React, { useState, useEffect } from "react";
import Select from "react-select";
import "../pages/css/manualUpload.css";
import Swal from "sweetalert2";

const IndicatorForm = () => {
  const [sector, setSector] = useState("");
  const [indicatorOptions, setIndicatorOptions] = useState([]);
  const [selectedIndicator, setSelectedIndicator] = useState(null);
  const [year, setYear] = useState("");
  const [quartile, setQuartile] = useState("");
  const [value, setValue] = useState("");

  // Fetch indicators when a sector is selected
  useEffect(() => {
    const fetchIndicators = async () => {
      try {
        const response = await fetch(
          "http://localhost:5000/api/indicators/all"
        );
        const data = await response.json();
        // console.log(data.indicators);
        if (data.success) {
          const filtered = data.indicators
            .filter((item) => item.sector === sector)
            .map((item) => ({
              value: item.id,
              label: item.indicator,
            }));
          setIndicatorOptions(filtered);
        }
      } catch (err) {
        console.error("Failed to load indicators:", err);
      }
    };

    if (sector) {
      fetchIndicators();
      setSelectedIndicator(null); // Clear previous selection
    } else {
      setIndicatorOptions([]);
    }
  }, [sector]);

  const handleReset = () => {
    setSector("");
    setSelectedIndicator(null);
    setYear("");
    setQuartile("");
    setValue("");
  };

  // const handleSubmit = async (e) => {
  //   e.preventDefault();

  //   if (!selectedIndicator || !sector || !quartile || !year || value === "") {
  //     return swal("Missing Fields", "All fields are required.", "warning");
  //   }

  //   try {
  //     const response = await fetch(
  //       "http://localhost:5000/api/indicators/indicator-data",
  //       {
  //         method: "POST",
  //         headers: {
  //           "Content-Type": "application/json",
  //         },
  //         body: JSON.stringify({
  //           indicator: selectedIndicator.label, // sending name
  //           sector,
  //           year,
  //           quartile,
  //           value,
  //         }),
  //       }
  //     );

  //     const result = await response.json();

  //     if (result.success) {
  //       if (result.status === "added") {
  //         swal("Success", "Indicator data added successfully!", "success");
  //       } else if (result.status === "updated") {
  //         swal("Updated", "Existing indicator data updated!", "info");
  //       } else {
  //         swal("Notice", "No changes were made.", "warning");
  //       }
  //       handleReset();
  //     } else {
  //       swal("Error", result.message || "Failed to save data.", "error");
  //     }
  //   } catch (err) {
  //     console.error("Error saving data:", err);
  //     swal("Error", "Something went wrong. Try again later.", "error");
  //   }
  // };
  const handleSubmit = async (e) => {
    e.preventDefault();

    if (!selectedIndicator || !sector || !quartile || !year || value === "") {
      Swal.fire("Missing Fields", "All fields are required.", "warning");
      return;
    }

    try {
      const response = await fetch(
        "http://localhost:5000/api/indicators/indicator-data",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            indicator: selectedIndicator.label,
            sector,
            year,
            quartile,
            value,
          }),
        }
      );

      const result = await response.json();

      if (result.success) {
        switch (result.status) {
          case "added":
            Swal.fire(
              "Added!",
              "Indicator data added successfully.",
              "success"
            );
            break;
          case "updated":
            Swal.fire(
              "Updated!",
              "Indicator data updated successfully.",
              "info"
            );
            break;
          case "none":
            Swal.fire(
              "No Change",
              "Data already exists with same value.",
              "info"
            );
            break;
          default:
            Swal.fire("Saved", "Indicator data saved.", "success");
        }
        handleReset();
      } else {
        Swal.fire("Failed", result.message || "Failed to save data.", "error");
      }
    } catch (err) {
      console.error("Error saving data:", err);
      Swal.fire("Error", "Something went wrong while saving data.", "error");
    }
  };

  return (
    <form onSubmit={handleSubmit} className="form-container">
      <div className="form-group">
        <label>Select Sector:</label>
        <select
          value={sector}
          onChange={(e) => setSector(e.target.value)}
          required
        >
          <option value="">-- Select Sector --</option>
          <option value="Social">Social</option>
          <option value="Economic">Economic</option>
          <option value="Governance">Governance</option>
        </select>
      </div>

      <div className="form-group">
        <label>Select Indicator:</label>
        <Select
          value={selectedIndicator}
          onChange={setSelectedIndicator}
          options={indicatorOptions}
          isDisabled={!sector}
          placeholder="Start typing..."
          isSearchable
        />
      </div>

      <div className="form-group">
        <label>Year:</label>
        <input
          className="year-input"
          type="number"
          value={year}
          onChange={(e) => setYear(e.target.value)}
          placeholder="e.g. 2025"
          required
        />
      </div>

      <div className="form-group">
        <label>Quartile:</label>
        <select
          value={quartile}
          onChange={(e) => setQuartile(e.target.value)}
          required
        >
          <option value="">-- Select Quartile --</option>
          <option value="Q1">Q1</option>
          <option value="Q2">Q2</option>
          <option value="Q3">Q3</option>
          <option value="Q4">Q4</option>
        </select>
      </div>

      <div className="form-group">
        <label>Value:</label>
        <input
          className="value-input"
          type="text"
          value={value}
          onChange={(e) => setValue(e.target.value)}
          placeholder="Enter value"
          required
        />
      </div>

      <div className="form-actions">
        <button
          type="button"
          onClick={handleReset}
          className="btn resetManualUpload-btn"
        >
          Reset
        </button>
        <button type="submit" className="btn submit-btn">
          Submit
        </button>
      </div>
    </form>
  );
};

export default IndicatorForm;

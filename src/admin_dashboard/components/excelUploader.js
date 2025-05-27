import React, { useState, useEffect } from "react";
import { useDropzone } from "react-dropzone";
import { FaFileExcel } from "react-icons/fa";
import Swal from "sweetalert2";
import "../pages/css/excelUploader.css";

const ExcelUploader = ({ onFileUpload }) => {
  const [selectedFile, setSelectedFile] = useState(null);
  const [selectedYear, setSelectedYear] = useState("");
  const [years, setYears] = useState([]);

  useEffect(() => {
    const currentYear = new Date().getFullYear();
    const yearList = [];
    for (let year = 2000; year <= currentYear; year++) {
      yearList.push(year);
    }
    setYears(yearList);
  }, []);

  const { getRootProps, getInputProps, isDragActive } = useDropzone({
    accept: { "application/vnd.ms-excel": [".xls", ".xlsx"] },
    onDrop: (acceptedFiles) => {
      if (acceptedFiles.length > 0) {
        setSelectedFile(acceptedFiles[0]);
      }
    },
  });

  const handleUpload = async () => {
    if (!selectedFile || !selectedYear) {
      Swal.fire(
        "Warning!",
        "Please select a file and year before uploading.",
        "warning"
      );
      return;
    }

    const formData = new FormData();
    formData.append("file", selectedFile);
    formData.append("year", selectedYear);

    try {
      const response = await fetch("http://localhost:5000/api/uploadExcel", {
        method: "POST",
        body: formData,
      });

      const result = await response.json();
      console.log(result);

      if (response.ok && result.message) {
        if (result.confirmUpdate) {
          // Show confirmation dialog for update
          const userConfirmed = await Swal.fire({
            title: "Data Already Exists!",
            text: result.message,
            icon: "warning",
            showCancelButton: true,
            confirmButtonText: "Yes, update it!",
            cancelButtonText: "No, cancel",
          });

          if (userConfirmed.isConfirmed) {
            // Call confirmUpload function
            await confirmDataUpdate(selectedFile, selectedYear);
          } else {
            // User canceled the update
            Swal.fire("Cancelled", "Your data is safe!", "info");
          }
        } else {
          Swal.fire({
            title: "Success!",
            text: result.message,
            icon: "success",
            confirmButtonText: "OK",
          });
        }
      } else {
        Swal.fire({
          title: "Error!",
          text: result.message || "Failed to upload file",
          icon: "error",
          confirmButtonText: "OK",
        });
      }

      // Optional: Call the callback if provided
      if (typeof onFileUpload === "function") {
        onFileUpload(result);
      }
    } catch (error) {
      console.error("Upload Error:", error);
      Swal.fire({
        title: "Error!",
        text: "An unexpected error occurred during upload",
        icon: "error",
        confirmButtonText: "OK",
      });
    }
  };

  // New function to confirm the update
  const confirmDataUpdate = async (file, year) => {
    const formData = new FormData();
    formData.append("file", file);
    formData.append("year", year);

    try {
      const response = await fetch("http://localhost:5000/api/confirmUpload", {
        method: "POST",
        body: formData,
      });

      const result = await response.json();
      console.log(result.message);
      Swal.fire({
        title: "Update Successful!",
        text: result.message,
        icon: "success",
        confirmButtonText: "OK",
      });
    } catch (error) {
      console.error("Update Error:", error);
      Swal.fire({
        title: "Error!",
        text: "An unexpected error occurred during the update",
        icon: "error",
        confirmButtonText: "OK",
      });
    }
  };

  return (
    <div className="upload-container">
      <div className="selection">
        <select
          className="year-dropdown"
          value={selectedYear}
          onChange={(e) => setSelectedYear(e.target.value)}
        >
          <option value="">Select Year</option>
          {years.map((year) => (
            <option key={year} value={year}>
              {year}
            </option>
          ))}
        </select>
      </div>

      <div
        {...getRootProps()}
        className={`dropzone ${isDragActive ? "active" : ""}`}
      >
        <FaFileExcel className="excel-icon" />
        <p className="upload-text">Click here to Import Excel file OR</p>
        <p className="drag-text">Drop file here to import</p>
        <input {...getInputProps()} />
      </div>

      <div className="button-container">
        <button className="upload-btn" onClick={handleUpload}>
          Upload
        </button>
      </div>

      {selectedFile && (
        <p className="file-name">
          Selected File: {selectedFile.name} (Year:{" "}
          {selectedYear || "Not Selected"})
        </p>
      )}
    </div>
  );
};

export default ExcelUploader;

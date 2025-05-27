import React from "react";
import NavBar from "../components/sideBar"; // Import the new NavBar component
import "./css/adminDashboard.css"; // Import CSS file
import ExcelUploader from "../components/excelUploader";
import "./css/bulkUpload.css"; // Import CSS file
import ExcelFile from "../assets/excelfile/Format.xlsx";
import useAuthCheck from "../components/useAuthCheck";

const BulkUpload = () => {
  useAuthCheck();

  // Function to handle file download
  const handleDownload = () => {
    const link = document.createElement("a");
    link.href = ExcelFile; // Replace with the path to your Excel file
    link.setAttribute("download", "Format.xlsx"); // Set the name for the downloaded file
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  };

  return (
    <div className="dashboard-container">
      <NavBar />

      <div className="main-content">
        <div className="headWrapper">
          <h1>Bulk Upload</h1>
        </div>

        {/* Note Section */}
        <div className="note">
          <p>
            <strong>📌 Note:</strong>
            <br />- If an entry for the selected <strong></strong>{" "}
            <strong>Year </strong>
            already exists, only the <strong>selected quartile</strong> will be
            updated while keeping other values unchanged.
            <br />- If no matching record exists, a <strong>
              new entry
            </strong>{" "}
            will be added to the database.
            <br />- Please upload valid file format, As a reference the valid
            file format is given in downloadable form
            <strong>
              <span
                onClick={handleDownload}
                style={{
                  cursor: "pointer",
                  color: "blue",
                  textDecoration: "none",
                }}
              >
                Click here to Download
              </span>
            </strong>
            .
            <br />- After uploading, a confirmation message will indicate how
            many records were
            <strong> added</strong> or <strong> updated</strong>.
          </p>
        </div>

        <ExcelUploader />
      </div>
    </div>
  );
};

export default BulkUpload;

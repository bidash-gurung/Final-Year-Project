import React from "react";

import NavBar from "../components/sideBar";
import ManualUploader from "../components/manualUploader";
const ManualUpload = () => {
  return (
    <div className="dashboard-container">
      <NavBar />

      <div className="main-content">
        <div className="headWrapper">
          <h1>Manual Uplaod</h1>
        </div>
        <ManualUploader />
      </div>
    </div>
  );
};

export default ManualUpload;

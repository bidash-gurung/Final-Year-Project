import React from "react";

import NavBar from "../components/sideBar";
import PreviewTable from "../components/previewTable";
import useAuthCheck from "../components/useAuthCheck";

const DataPreview = () => {
  useAuthCheck();

  return (
    <div className="dashboard-container">
      <NavBar />

      <div className="main-content">
        <div className="headWrapper">
          <h1>Data Preview</h1>
        </div>
        <PreviewTable />
      </div>
    </div>
  );
};

export default DataPreview;

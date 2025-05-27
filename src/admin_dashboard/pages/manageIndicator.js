import React from "react";

import NavBar from "../components/sideBar";
import useAuthCheck from "../components/useAuthCheck";

import IndicatorComponent from "../components/indicatorComponent";
const ManageIndicator = () => {
  useAuthCheck();

  return (
    <div className="dashboard-container">
      <NavBar />

      <div className="main-content">
        <div className="headWrapper">
          <h1>Manage Indicators</h1>
        </div>
        <IndicatorComponent />
      </div>
    </div>
  );
};

export default ManageIndicator;

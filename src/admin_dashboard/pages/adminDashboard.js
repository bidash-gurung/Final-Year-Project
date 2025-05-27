import React from "react";

import NavBar from "../components/sideBar"; // Import the new NavBar component
import DasboardComponent from "../components/dashboardComponent";
import useAuthCheck from "../components/useAuthCheck";
import DashboardGraph from "../components/dashboardGraph";
const AdminDashboard = () => {
  useAuthCheck();

  return (
    <div className="dashboard-container">
      <NavBar />
      <div className="main-content">
        <div className="headWrapper">
          <h1>Admin Dashboard</h1>
        </div>
        <DasboardComponent />
        <DashboardGraph />
      </div>
    </div>
  );
};

export default AdminDashboard;

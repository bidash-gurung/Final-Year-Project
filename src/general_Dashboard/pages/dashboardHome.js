import React, { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import "./css/dashboardHome.css";
import NavBar from "../components/GeneralSideBar"; // Import the new NavBar component
import DashboardCard from "../components/dashboardCard"; // Import the new NavBar component
import DashboardGraph from "../components/dashboardGraph"; // Import the new NavBar component
import useAuthCheck from "../components/useAuthCheck";
const Dashboard = () => {
  useAuthCheck();
  const navigate = useNavigate();

  useEffect(() => {
    const token = localStorage.getItem("token");

    if (!token) {
      navigate("/login");
    }

    // Prevent navigating back to dashboard after logout
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

  return (
    <div className="dashboard-container">
      <div className="dashboard-container">
        <NavBar />
      </div>
      <div className="main-content">
        <div className="headWrapper">
          <h1>Dashboard Overview</h1>
        </div>
        <DashboardCard />
        <DashboardGraph />
      </div>
    </div>
  );
};

export default Dashboard;

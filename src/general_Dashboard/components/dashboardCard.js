import React, { useEffect, useState } from "react";
import axios from "axios";

import { useNavigate } from "react-router-dom";
import "../pages/css/dashboardCard.css";
import {
  FaUsers,
  FaMoneyBillWave,
  FaChartBar,
  FaUniversity,
} from "react-icons/fa"; // icons
const DashboardCard = () => {
  const navigate = useNavigate();
  const [cardData, setCardData] = useState([]);

  useEffect(() => {
    const token = localStorage.getItem("token");

    if (!token) {
      navigate("/login");
    }

    // Prevent navigating back after logout
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

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get(
          "http://localhost:5000/api/dashboard-data"
        ); // adjust your backend URL
        const { totalPopulation, totalRevenue, totalDebt, totalGDP } =
          response.data;

        const data = [
          {
            title: "Total Population",
            value: totalPopulation,
            icon: <FaUsers />,
          },
          {
            title: "Total Revenue",
            value: totalRevenue,
            icon: <FaMoneyBillWave />,
          },
          {
            title: "Total GDP",
            value: totalGDP,
            icon: <FaChartBar />,
          },
          { title: "Total Debt", value: totalDebt, icon: <FaUniversity /> },
        ];

        setCardData(data);
      } catch (error) {
        console.error("Failed to fetch dashboard data", error);
      }
    };

    fetchData();
  }, []);
  return (
    <div className="cards-container">
      {cardData.map((card, index) => (
        <div className="dashboard-card" key={index}>
          <div className="icon">{card.icon}</div>
          <div className="card-info">
            <p className="card-title">{card.title}</p>
            <h2 className="card-value">{card.value.toLocaleString()}</h2>
          </div>
        </div>
      ))}
    </div>
  );
};

export default DashboardCard;

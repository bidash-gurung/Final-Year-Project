import React, { useEffect, useState } from "react";
import "../pages/css/adminStats.css";
const Stats = () => {
  const [users, setUsers] = useState([]);
  const [adminCount, setAdminCount] = useState(0);
  const [activeUserCount, setActiveUserCount] = useState(0);
  const [indicatorCount, setIndicatorCount] = useState(0); // new state

  // Fetch users
  useEffect(() => {
    fetch("http://localhost:5000/api/users")
      .then((response) => response.json())
      .then((data) => {
        setUsers(data);

        const admins = data.filter(
          (user) => user.role.toLowerCase() === "admin"
        );
        const activeUsers = data.filter(
          (user) => user.role.toLowerCase() !== "admin"
        );

        setAdminCount(admins.length);
        setActiveUserCount(activeUsers.length);
      })
      .catch((error) => console.error("Error fetching users:", error));
  }, []);

  // Fetch total indicators
  useEffect(() => {
    fetch("http://localhost:5000/api/count")
      .then((res) => res.json())
      .then((data) => setIndicatorCount(data.totalIndicators))
      .catch((err) => console.error("Error fetching indicators:", err));
  }, []);

  return (
    <div className="stats-cards">
      <div className="card">
        <div className="card-icon pie-chart"></div>
        <div>
          <p>Total Sectors :</p>
          <h3>3</h3>
        </div>
      </div>

      <div className="card">
        <div className="card-icon chart-up"></div>
        <div>
          <p>Total Indicators :</p>
          <h3>{indicatorCount}</h3> {/* dynamic indicator count */}
        </div>
      </div>

      <div className="card">
        <div className="card-icon bar-chart"></div>
        <div>
          <p>Total Admin :</p>
          <h3>{adminCount}</h3>
        </div>
      </div>

      <div className="card">
        <div className="card-icon line-chart"></div>
        <div>
          <p>Total users :</p>
          <h3>{activeUserCount}</h3>
        </div>
      </div>
    </div>
  );
};

export default Stats;

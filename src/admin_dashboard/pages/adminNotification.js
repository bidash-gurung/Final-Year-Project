import React, { useState, useEffect } from "react";
import NavBar from "../components/sideBar";
import { useNavigate } from "react-router-dom";
import "../pages/css/notification.css";
import useAuthCheck from "../components/useAuthCheck";

const AdminNotification = () => {
  useAuthCheck();

  const navigate = useNavigate();
  const [notifications, setNotifications] = useState([]);

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

    // Fetch notifications from the API
    const fetchNotifications = async () => {
      try {
        const response = await fetch("http://localhost:5000/api/notifications");
        const data = await response.json();
        if (data.success) {
          setNotifications(data.data); // Set the notifications to state
        }
      } catch (error) {
        console.error("Error fetching notifications:", error);
      }
    };

    fetchNotifications();

    return () => {
      window.removeEventListener("popstate", () => {});
    };
  }, [navigate]);
  return (
    <div className="dashboard-container">
      <NavBar />

      {/* Main Content */}
      <div className="main-content">
        <div className="headWrapper">
          <h1>Notification</h1>
        </div>
        <div className="notifications-container">
          {notifications.length > 0 ? (
            notifications.map((notification) => (
              <div className="notification-card" key={notification.id}>
                <div className="notification-header">
                  <h4>Notification {notification.id}</h4>
                  <span>
                    {new Date(notification.date).toLocaleDateString()}
                  </span>
                </div>
                <div className="notification-body">
                  <p>{notification.notification}</p>
                </div>
                <div className="notification-footer">
                  <span>{notification.time}</span>
                </div>
              </div>
            ))
          ) : (
            <p>No notifications available</p>
          )}
        </div>
      </div>
    </div>
  );
};

export default AdminNotification;

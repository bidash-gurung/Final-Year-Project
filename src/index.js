import React from "react";
import ReactDOM from "react-dom/client";
import {
  BrowserRouter as Router,
  Routes,
  Route,
  Navigate,
} from "react-router-dom";
import "./index.css";
import App from "./App";
import Login from "./general_Dashboard/pages/Login";
import Dashboard from "./general_Dashboard/pages/dashboardHome";
import ForgotPassword from "./general_Dashboard/pages/forgotPassword"; // Import Forgot Password page
import AdminDashboard from "./admin_dashboard/pages/adminDashboard";
import Governance from "./general_Dashboard/pages/governance";
import Social from "./general_Dashboard/pages/social";
import Economic from "./general_Dashboard/pages/economic";
import Notification from "./general_Dashboard/pages/notification";

import UserManage from "./admin_dashboard/pages/userManage";
import Profile from "./admin_dashboard/pages/profile";
import UserProfile from "./general_Dashboard/pages/generalProfile";
import BulkUplaod from "./admin_dashboard/pages/bulkUpload";
import ManualUpload from "./admin_dashboard/pages/manualUpload";
import ManageIndicator from "./admin_dashboard/pages/manageIndicator";
import AdminNotification from "./admin_dashboard/pages/adminNotification";
import DataPreview from "./admin_dashboard/pages/dataPreview";

// Protected Route Component
const ProtectedRoute = ({ element }) => {
  const isAuthenticated = localStorage.getItem("token"); // Check if token exists
  return isAuthenticated ? element : <Navigate to="/login" />;
};

const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(
  <React.StrictMode>
    <Router>
      <Routes>
        <Route path="/" element={<App />} />
        <Route path="/login" element={<Login />} />
        <Route path="/forgot-password" element={<ForgotPassword />} />

        {/* Protect the dashboard route */}
        <Route
          path="/dashboard"
          element={<ProtectedRoute element={<Dashboard />} />}
        />
        <Route path="/admin-dashboard" element={<AdminDashboard />} />
        <Route path="/manage-users" element={<UserManage />} />
        <Route path="/profile" element={<Profile />} />
        <Route path="/bulk-upload" element={<BulkUplaod />} />
        <Route path="/manual-upload" element={<ManualUpload />} />
        <Route path="/manage-indicators" element={<ManageIndicator />} />
        <Route path="/admin-notification" element={<AdminNotification />} />
        <Route path="/data-preview" element={<DataPreview />} />

        <Route path="/governance-Sector" element={<Governance />} />
        <Route path="/economic-Sector" element={<Economic />} />
        <Route path="/social-Sector" element={<Social />} />
        <Route path="/notification" element={<Notification />} />
        <Route path="/user-profile" element={<UserProfile />} />
      </Routes>
    </Router>
  </React.StrictMode>
);

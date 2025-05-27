import React, { useState } from "react";
import { NavLink } from "react-router-dom";
import { FaChevronDown } from "react-icons/fa"; // Dropdown icon
import logo from "../assets/images/logo.png"; // Import your logo image
import LogoutHandler from "../components/logoutHandler"; // Import component
import "../pages/css/adminDashboard.css"; // Import CSS file

const NavBar = () => {
  const [isDropdownOpen, setIsDropdownOpen] = useState(false);
  const { handleLogout } = LogoutHandler();

  return (
    <nav className="sidebar">
      <div className="logo-container">
        <img src={logo} alt="Admin Logo" className="logo-image" />
      </div>
      <ul className="nav-links">
        <li>
          <NavLink to="/admin-dashboard" className="nav-item">
            Dashboard
          </NavLink>
        </li>
        <li>
          <NavLink to="/manage-indicators" className="nav-item">
            Manage Indicators
          </NavLink>
        </li>
        <li>
          <NavLink to="/manage-users" className="nav-item">
            Manage Users
          </NavLink>
        </li>
        {/* Dropdown Menu */}
        <li className="dropdown">
          <div
            className="dropdown-btn"
            onClick={() => setIsDropdownOpen(!isDropdownOpen)}
          >
            Data Management{" "}
            <FaChevronDown
              className={`dropdown-icon ${isDropdownOpen ? "rotate" : ""}`}
            />
          </div>
          {isDropdownOpen && (
            <ul className="dropdown-content">
              <li>
                <NavLink to="/bulk-upload" className="dropdown-item">
                  Bulk Upload
                </NavLink>
              </li>

              <li>
                <NavLink to="/data-preview" className="dropdown-item">
                  Data Preview
                </NavLink>
              </li>
            </ul>
          )}
        </li>
        <li>
          <NavLink to="/admin-notification" className="nav-item">
            Notification
          </NavLink>
        </li>
        <li>
          <NavLink to="/profile" className="nav-item">
            Profile
          </NavLink>
        </li>
        <li>
          <NavLink
            onClick={handleLogout}
            to="/login"
            className="nav-item logout"
          >
            Log Out
          </NavLink>
        </li>
      </ul>
    </nav>
  );
};

export default NavBar;

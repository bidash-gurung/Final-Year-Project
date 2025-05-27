import React from "react";
import { NavLink } from "react-router-dom";
import logo from "../assets/images/logo.png"; // Import your logo image
import useLogoutHandler from "./logoutHandler"; // Import custom hook
import "../pages/css/sideBar.css"; // Import CSS file

const GeneralSideBar = () => {
  const { handleLogout } = useLogoutHandler(); // use the custom hook

  return (
    <nav className="sidebar">
      <div className="logo-container">
        <img src={logo} alt="Admin Logo" className="logo-image" />
      </div>
      <ul className="nav-links">
        <li>
          <NavLink to="/dashboard" className="nav-item">
            Dashboard
          </NavLink>
        </li>
        <li>
          <NavLink to="/economic-sector" className="nav-item">
            Economic Sector
          </NavLink>
        </li>
        <li>
          <NavLink to="/social-Sector" className="nav-item">
            Social Sector
          </NavLink>
        </li>
        <li>
          <NavLink to="/governance-Sector" className="nav-item">
            Governance and Security
          </NavLink>
        </li>
        <li>
          <NavLink to="/notification" className="nav-item">
            Notification
          </NavLink>
        </li>
        <li>
          <NavLink to="/user-profile" className="nav-item">
            Profile
          </NavLink>
        </li>
        <li>
          <button
            onClick={handleLogout}
            className="nav-item logout"
            style={{
              border: "none",
              cursor: "pointer",
              textAlign: "left",
              width: "100%",
            }}
          >
            Log Out
          </button>
        </li>
      </ul>
    </nav>
  );
};

export default GeneralSideBar;

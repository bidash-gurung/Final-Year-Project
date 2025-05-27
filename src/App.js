import React, { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import logo from "./general_Dashboard/assets/images/welcomeLogo.jpg"; // Adjust based on your folder structure
import "./App.css";

function App() {
  const navigate = useNavigate();

  useEffect(() => {
    setTimeout(() => {
      navigate("/login"); // Redirect to Login after 3 seconds
    }, 3000);
  }, [navigate]);

  return (
    <div className="App">
      <header className="App-header">
        <div className="logo-container">
          {/* Logo Image */}
          <img src={logo} className="App-logo" alt="logo" />

          {/* Water Fill Effect */}
          <div className="water-fill"></div>
        </div>
      </header>
    </div>
  );
}

export default App;

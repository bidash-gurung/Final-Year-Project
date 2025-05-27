import React from "react";
import logo from "../assets/images/logo.png"; // Adjust path based on your folder structure

const Loader = () => {
  return (
    <div className="flex items-center justify-center min-h-screen bg-gray-100">
      <div className="relative w-40 h-40 flex items-center justify-center">
        {/* Logo Image */}
        <img src={logo} alt="Logo" className="absolute w-full h-full z-10" />

        {/* Water Fill Animation */}
        <div className="absolute w-full h-full overflow-hidden flex items-end">
          <div className="water w-full bg-blue-500"></div>
        </div>
      </div>
    </div>
  );
};

export default Loader;

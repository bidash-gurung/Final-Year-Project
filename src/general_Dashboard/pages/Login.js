import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import Swal from "sweetalert2";
import "./css/login.css"; // Import CSS file
import loginpic from "../assets/images/loginpic.png"; // Your login image
import { FaEye, FaEyeSlash } from "react-icons/fa"; // Import eye icons

const Login = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [showPassword, setShowPassword] = useState(false);
  const [loading, setLoading] = useState(false);
  const [errors, setErrors] = useState({
    email: "",
    password: "",
  });
  const navigate = useNavigate();

  const handleLogin = async (e) => {
    e.preventDefault();

    if (!email || !password) {
      Swal.fire({
        icon: "error",
        title: "Oops...",
        text: "Please enter both email and password!",
      });
      return;
    }

    setLoading(true); // Show loading state

    try {
      const response = await fetch("http://localhost:5000/api/login", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ email, password }),
      });
      const data = await response.json();

      if (response.ok) {
        const { token, role } = data;

        localStorage.setItem("token", token); // Store token in localStorage

        Swal.fire({
          icon: "success",
          title: "Success!",
          text: "Login successful!",
          timer: 2000,
          showConfirmButton: false,
        });

        // Redirect based on role
        setTimeout(() => {
          if (role === "admin") {
            navigate("/admin-dashboard");
          } else {
            navigate("/dashboard");
          }
        }, 2000);
      } else {
        Swal.fire({
          icon: "error",
          title: "Login Failed",
          text: data.error || "Invalid email or password",
        });
      }
    } catch (err) {
      Swal.fire({
        icon: "error",
        title: "Server Error",
        text: "Please try again later.",
      });
    } finally {
      setLoading(false); // Hide loading state
    }
  };

  const handleInputChange = (e) => {
    const { name, value } = e.target;

    // Update state for email and password
    if (name === "email") {
      setEmail(value);
      const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      setErrors({
        ...errors,
        email: emailPattern.test(value) ? "" : "Invalid email format.",
      });
    } else if (name === "password") {
      setPassword(value);
      const passwordPattern =
        /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
      setErrors({
        ...errors,
        password: passwordPattern.test(value)
          ? ""
          : "Password must be at least 8 characters long, include uppercase, lowercase, a number, and a special character.",
      });
    }
  };

  return (
    <div className="login-container">
      <div className="login-wrapper">
        {/* Left Side - Image */}
        <img src={loginpic} alt="Login" className="login-image" />

        {/* Right Side - Form */}
        <div className="login-form-container">
          <div className="login-form">
            <h2>Login</h2>
            <form onSubmit={handleLogin}>
              {/* Email Input */}
              <div className="input-login">
                <label htmlFor="email">Email</label>
                <input
                  type="email"
                  id="email"
                  name="email"
                  value={email}
                  onChange={handleInputChange}
                  required
                />
                {errors.email && (
                  <p
                    className="error"
                    style={{
                      fontSize: "13px",
                      color: "#f6431d",
                    }}
                  >
                    {errors.email}
                  </p>
                )}
              </div>

              {/* Password Input with Eye Icon */}
              <div className="input-login">
                <label htmlFor="password">Password</label>
                <div className="password-container">
                  <input
                    type={showPassword ? "text" : "password"}
                    id="password"
                    name="password"
                    value={password}
                    onChange={handleInputChange}
                    required
                  />
                  <span
                    className="password-toggle"
                    onClick={() => setShowPassword(!showPassword)}
                  >
                    {showPassword ? <FaEyeSlash /> : <FaEye />}
                  </span>
                </div>
                {errors.password && (
                  <p
                    className="error"
                    style={{
                      fontSize: "13px",
                      color: "#f6431d",
                    }}
                  >
                    {errors.password}
                  </p>
                )}
              </div>

              {/* Forgot Password Link */}
              <div
                className="forgot-password"
                style={{
                  cursor: "pointer",
                  color: "#007bff",
                  marginTop: "10px",
                }}
                onClick={() => navigate("/forgot-password")}
              >
                Forgot Password?
              </div>

              {/* Login Button */}
              <button
                type="submit"
                className="login-button"
                disabled={loading || errors.email || errors.password}
              >
                {loading ? "Logging in..." : "Login"}
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Login;

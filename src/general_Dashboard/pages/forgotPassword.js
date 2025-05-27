import React, { useState, useRef } from "react";
import Swal from "sweetalert2";
import "./css/forgotPassword.css";
import { useNavigate } from "react-router-dom";

const ForgotPassword = () => {
  const [otpSent, setOtpSent] = useState(false);
  const [otp, setOtp] = useState(["", "", "", "", "", ""]); // 6 fields for OTP
  const [otpVerified, setOtpVerified] = useState(false);
  const [newPassword, setNewPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [passwordError, setPasswordError] = useState(""); // State for new password error
  const [confirmPasswordError, setConfirmPasswordError] = useState(""); // State for confirm password error
  const navigate = useNavigate();
  const inputRefs = useRef([]); // Create a reference to store input field refs

  const handleSendOTP = async () => {
    const email = localStorage.getItem("resetEmail"); // Get email from localStorage

    if (!email) {
      Swal.fire("Error", "Email is required to send OTP", "error");
      return;
    }

    // Show loader while verifying email
    const loadingSwal = Swal.fire({
      title: "Verifying email...",
      text: "Please wait while we check if the email exists.",
      showConfirmButton: false,
      didOpen: () => {
        Swal.showLoading(); // Show loader
      },
    });

    try {
      // Verify if the email exists in the database first
      const verifyResponse = await fetch(
        "http://localhost:5000/api/verify-email",
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ email }),
        }
      );
      const verifyData = await verifyResponse.json();
      if (!verifyResponse.ok) {
        Swal.close(); // Close the loader
        Swal.fire("Error", verifyData.error || "Email not found", "error");
        return;
      }

      // Email exists, now send OTP
      const response = await fetch("http://localhost:5000/api/send-otp", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ email }),
      });

      const data = await response.json();
      if (response.ok) {
        Swal.close(); // Close the loader
        Swal.fire(
          "Success",
          "OTP sent to your email, please check spam folder if you didn't receive it yet",
          "success"
        );
        setOtpSent(true); // Proceed to OTP input
      } else {
        Swal.close(); // Close the loader
        Swal.fire("Error", data.error || "Unable to send OTP", "error");
      }
    } catch (error) {
      Swal.close(); // Close the loader
      Swal.fire("Error", "Server not responding", "error");
    }
  };

  const handleVerifyOTP = async () => {
    const otpString = otp.join(""); // Convert OTP array to string

    if (!otpString) {
      Swal.fire("Error", "Please enter the OTP", "error");
      return;
    }

    // Show loader while verifying OTP
    const loadingSwal = Swal.fire({
      title: "Verifying OTP...",
      text: "Please wait while we verify your OTP.",
      showConfirmButton: false,
      didOpen: () => {
        Swal.showLoading(); // Show loader
      },
    });

    try {
      const email = localStorage.getItem("resetEmail"); // Get email from localStorage

      const response = await fetch("http://localhost:5000/api/verify-otp", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ email, otp: parseInt(otpString) }), // Send OTP as integer
      });

      const data = await response.json();
      if (response.ok) {
        setOtpVerified(true);
        Swal.close(); // Close loader
        Swal.fire("Success", "OTP Verified! Set a new password.", "success");
      } else {
        Swal.close(); // Close loader
        Swal.fire("Error", "Invalid OTP", "error");
      }
    } catch (error) {
      Swal.close(); // Close loader
      Swal.fire("Error", "Server not responding", "error");
    }
  };

  const validatePassword = (password) => {
    const passwordRegex =
      /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
    return passwordRegex.test(password);
  };

  const handlePasswordChange = (e) => {
    const password = e.target.value;
    setNewPassword(password);

    // Validate password and update error message
    if (!validatePassword(password)) {
      setPasswordError(
        "Password must be at least 8 characters long, include at least one uppercase letter, one lowercase letter, one number, and one special character."
      );
    } else {
      setPasswordError(""); // Clear error if valid
    }

    // Validate confirm password
    if (confirmPassword && password !== confirmPassword) {
      setConfirmPasswordError("Passwords do not match.");
    } else {
      setConfirmPasswordError(""); // Clear error if valid
    }
  };

  const handleConfirmPasswordChange = (e) => {
    const confirmPasswordInput = e.target.value;
    setConfirmPassword(confirmPasswordInput);

    // Validate confirm password
    if (newPassword && confirmPasswordInput !== newPassword) {
      setConfirmPasswordError("Passwords do not match.");
    } else {
      setConfirmPasswordError(""); // Clear error if valid
    }
  };

  const handleResetPassword = async () => {
    const email = localStorage.getItem("resetEmail"); // Get email from localStorage

    if (!newPassword || passwordError) {
      Swal.fire(
        "Error",
        passwordError || "Please enter a valid new password.",
        "error"
      );
      return;
    }

    // Check if the confirm password matches the new password
    if (newPassword !== confirmPassword) {
      Swal.fire("Error", "Passwords do not match", "error");
      return;
    }

    try {
      const response = await fetch("http://localhost:5000/api/reset-password", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "x-user-email": email, // Send email in headers
        },
        body: JSON.stringify({ newPassword }), // Send only the newPassword in the body
      });

      if (response.ok) {
        Swal.fire("Success", "Password reset successful!", "success");
        setTimeout(() => navigate("/login"), 2000);
      } else {
        const data = await response.json();
        Swal.fire("Error", data.error || "Something went wrong", "error");
      }
    } catch (error) {
      Swal.fire("Error", "Server not responding", "error");
    }
  };

  const handleOtpChange = (e, index) => {
    const value = e.target.value;

    if (!/^[0-9]$/.test(value)) return; // Allow only digits (0-9)

    const newOtp = [...otp];
    newOtp[index] = value;
    setOtp(newOtp);

    if (index < 5 && value) {
      inputRefs.current[index + 1].focus();
    }
  };

  const handleOtpKeyDown = (e, index) => {
    if (e.key === "Backspace") {
      const newOtp = [...otp];
      if (newOtp[index]) {
        newOtp[index] = ""; // Clear current field
        setOtp(newOtp);
      } else if (index > 0) {
        inputRefs.current[index - 1].focus(); // Move focus to previous field
      }
    }
  };

  return (
    <div className="forgot-password-container">
      <div className="forgot-password-card">
        {!otpSent ? (
          <>
            <h2>Forgot Password</h2>
            <label>Email</label>
            <input
              type="email"
              placeholder="example@gmail.com"
              onChange={(e) =>
                localStorage.setItem("resetEmail", e.target.value)
              } // Store email in localStorage directly
            />
            <button onClick={handleSendOTP}>Send OTP</button>
          </>
        ) : !otpVerified ? (
          <>
            <h2>Enter OTP</h2>
            <div className="otp-inputs">
              {otp.map((digit, index) => (
                <input
                  key={index}
                  ref={(el) => (inputRefs.current[index] = el)}
                  type="text"
                  maxLength="1"
                  value={digit}
                  onChange={(e) => handleOtpChange(e, index)}
                  onKeyDown={(e) => handleOtpKeyDown(e, index)}
                  placeholder="-"
                  autoFocus={index === 0}
                />
              ))}
            </div>
            <button onClick={handleVerifyOTP}>Verify OTP</button>
          </>
        ) : (
          <>
            <h2>Reset Password</h2>
            <input
              type="password"
              placeholder="New Password"
              value={newPassword}
              onChange={handlePasswordChange}
            />
            {passwordError && (
              <div style={{ color: "red", fontSize: "12px" }}>
                {passwordError}
              </div>
            )}
            <input
              type="password"
              placeholder="Confirm New Password"
              value={confirmPassword}
              onChange={handleConfirmPasswordChange}
            />
            {confirmPasswordError && (
              <div style={{ color: "red", fontSize: "12px" }}>
                {confirmPasswordError}
              </div>
            )}
            <button onClick={handleResetPassword}>Reset Password</button>
          </>
        )}
      </div>
    </div>
  );
};

export default ForgotPassword;

import React, { useState, useEffect } from "react";
import "./css/adminProfile.css"; // Import CSS file
import swal from "sweetalert2"; // Import SweetAlert2
import NavBar from "../components/sideBar"; // Import the new NavBar component

import axios from "axios";
import useAuthCheck from "../components/useAuthCheck";

const AdminProfile = () => {
  useAuthCheck();

  const [profileData, setProfileData] = useState(null);
  const [isEditModalOpen, setIsEditModalOpen] = useState(false); // To control modal visibility
  const [editedName, setEditedName] = useState(""); // Store edited name
  const [editedEmail, setEditedEmail] = useState(""); // Store edited email
  const [editedProfileImage, setEditedProfileImage] = useState(null); // Store edited profile image
  const [oldPassword, setOldPassword] = useState("");
  const [newPassword, setNewPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  // Function to reset form fields
  const handleReset = () => {
    setOldPassword("");
    setNewPassword("");
    setConfirmPassword("");
  };
  const handleChangePassword = async () => {
    const token = localStorage.getItem("token");

    try {
      const response = await axios.put(
        "http://localhost:5000/api/user/change-password",
        { oldPassword, newPassword, confirmPassword },
        { headers: { Authorization: `Bearer ${token}` } }
      );

      swal.fire({
        title: "Success",
        text: response.data.message,
        icon: "success",
        confirmButtonText: "OK",
      });

      setOldPassword("");
      setNewPassword("");
      setConfirmPassword("");
    } catch (error) {
      swal.fire({
        title: "Error",
        text: error.response?.data?.error || "Something went wrong",
        icon: "error",
        confirmButtonText: "OK",
      });
    }
  };
  useEffect(() => {
    swal.fire({
      title: "Loading Profile...",
      html: "Please wait while we fetch your profile details.",
      allowOutsideClick: false,
      didOpen: () => {
        swal.showLoading();
      },
    });
    const token = localStorage.getItem("token"); // Or wherever you store the token

    if (!token) return; // If no token, do nothing (or redirect to login)

    axios
      .get("http://localhost:5000/api/user/profile", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
      .then((response) => {
        console.log(response.data);
        setProfileData(response.data); // Storing response data
        setEditedName(response.data.name); // Set initial values for editing
        setEditedEmail(response.data.email);
        swal.close();
      })
      .catch((error) => {
        console.error("Error fetching profile:", error);
      });
  }, []);

  const handleEditProfile = () => {
    setIsEditModalOpen(true); // Open the modal to edit profile
  };

  const handleSaveProfile = () => {
    const formData = new FormData();
    formData.append("name", editedName);
    formData.append("email", editedEmail);

    // If a new profile image is selected, append it to the form data
    if (editedProfileImage) {
      formData.append("profileImage", editedProfileImage);
    }

    const token = localStorage.getItem("token");

    axios
      .put("http://localhost:5000/api/user/profile", formData, {
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "multipart/form-data", // Important for file uploads
        },
      })
      .then((response) => {
        console.log("Profile updated:", response.data);
        swal
          .fire({
            title: "Profile Saved Successfully",
            icon: "success",
            confirmButtonText: "OK",
          })
          .then(() => {
            // After success, refresh the page to load the updated profile
            window.location.reload(); // Refresh the page
          });
        setProfileData(response.data); // Update the profile data
        setIsEditModalOpen(false); // Close the modal after saving
      })
      .catch((error) => {
        console.error("Error updating profile:", error);
        swal.fire({
          title: "Profile Update Failed",
          text: "Something went wrong. Please try again.",
          icon: "error",
          confirmButtonText: "OK",
        });
      });
  };

  const handleProfileImageChange = (e) => {
    const file = e.target.files[0];
    if (file) {
      setEditedProfileImage(file); // Set the selected file
    }
  };

  if (!profileData) {
    return (
      <div className="dashboard-container">
        <NavBar />
      </div>
    );
  }

  return (
    <div className="dashboard-container">
      <NavBar />

      {/* Main Content */}
      <div className="main-content">
        <div className="headWrapper">
          <h1>Profile</h1>
        </div>
        <div className="profile-container">
          {/* Profile Form */}
          <div className="profile-form">
            <div className="logoWrapper">
              <img
                src={`http://localhost:5000/uploads/${profileData.profile}`} // Display current profile image or default image
                alt="Profile"
                className="profile-image"
              />
            </div>
            <div className="inputFieldContainer">
              <div className="inputWrapper">
                <label>Full Name</label>
                <input type="text" value={profileData.name} disabled />{" "}
              </div>
              {/* Display user name */}
              <div className="inputWrapper">
                <label>Email</label>
                <input type="email" value={profileData.email} disabled />{" "}
                {/* Display user email */}
              </div>
            </div>
            <button className="edit-btn" onClick={handleEditProfile}>
              Edit Profile
            </button>
          </div>

          {/* Change Password Form */}
          <div className="change-password-form">
            <h2>Change Password</h2>
            <div className="inputFieldContainer">
              <div className="inputWrapper">
                <label>Old Password</label>
                <input
                  type="password"
                  value={oldPassword}
                  onChange={(e) => setOldPassword(e.target.value)}
                />
              </div>
              <div className="inputWrapper">
                <label>New Password</label>
                <input
                  type="password"
                  value={newPassword}
                  onChange={(e) => setNewPassword(e.target.value)}
                />
              </div>
              <div className="inputWrapper">
                <label>Confirm New Password</label>
                <input
                  type="password"
                  value={confirmPassword}
                  onChange={(e) => setConfirmPassword(e.target.value)}
                />
              </div>
            </div>
            <div className="button-group">
              <button className="reset-btn" onClick={handleReset}>
                Reset
              </button>
              <button className="save-btn" onClick={handleChangePassword}>
                Save
              </button>
            </div>
          </div>
        </div>
      </div>

      {/* Edit Profile Modal */}
      {isEditModalOpen && (
        <div className="profilemodal">
          <div className="profilemodal-content">
            <h2>Edit Profile</h2>

            {/* Display current profile image or preview of selected image */}
            <img
              src={
                editedProfileImage
                  ? URL.createObjectURL(editedProfileImage) // If a new image is selected, display the preview
                  : `http://localhost:5000/uploads/${profileData.profile}` // Else, display current or default profile image
              }
              alt="Profile"
              className="profile-image"
            />

            {/* File input to select a new image */}
            <input
              type="file"
              accept="image/*"
              onChange={handleProfileImageChange}
            />

            <label>Full Name</label>
            <input
              type="text"
              value={editedName}
              onChange={(e) => setEditedName(e.target.value)}
            />

            <label>Email</label>
            <input
              type="email"
              value={editedEmail}
              onChange={(e) => setEditedEmail(e.target.value)}
            />

            <div className="profilemodal-buttons">
              <button onClick={handleSaveProfile} className="save-btn">
                Save
              </button>
              <button
                onClick={() => setIsEditModalOpen(false)}
                className="cancel-btn"
              >
                Cancel
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default AdminProfile;

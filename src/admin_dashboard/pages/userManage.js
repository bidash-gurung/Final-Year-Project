import React, { useEffect, useState } from "react";
import axios from "axios";
import "./css/manageUsers.css";
import "./css/adminDashboard.css";
import { FaTrash } from "react-icons/fa";
import Swal from "sweetalert2"; // Import SweetAlert
import NavBar from "../components/sideBar";
import useAuthCheck from "../components/useAuthCheck";

const AdminDashboard = () => {
  useAuthCheck();

  const [users, setUsers] = useState([]);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [newUser, setNewUser] = useState({
    name: "",
    email: "",
    password: "",
    role: "", // Initialize role as an empty string
  });

  const [errors, setErrors] = useState({
    name: "",
    email: "",
    password: "",
  });

  useEffect(() => {
    fetchUsers();
  }, []);

  const fetchUsers = async () => {
    try {
      const response = await axios.get("http://localhost:5000/api/users");
      setUsers(response.data);
    } catch (error) {
      console.error("Error fetching users:", error);
    }
  };

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setNewUser({ ...newUser, [name]: value });

    // Validation logic
    switch (name) {
      case "name":
        const capitalized = value.replace(/\b\w/g, (char) =>
          char.toUpperCase()
        );
        setNewUser({ ...newUser, name: capitalized });
        setErrors({
          ...errors,
          name: capitalized.trim() ? "" : "Name cannot be empty.",
        });
        break;

      case "email":
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        setErrors({
          ...errors,
          email: emailPattern.test(value) ? "" : "Invalid email format.",
        });
        break;

      case "password":
        const passwordPattern =
          /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
        setErrors({
          ...errors,
          password: passwordPattern.test(value)
            ? ""
            : "Password must be at least 8 characters long, include uppercase, lowercase, a number, and a special character.",
        });
        break;

      // Handle role change
      case "role":
        setNewUser({ ...newUser, role: value });
        break;

      default:
        break;
    }
  };

  const handleDeleteUser = async (email) => {
    Swal.fire({
      title: "Are you sure?",
      text: `Are you sure you want to delete ${email}? This action cannot be undone!`,
      icon: "warning",
      showCancelButton: true,
      confirmButtonColor: "#d33",
      cancelButtonColor: "#3085d6",
      confirmButtonText: "Yes, delete it!",
    }).then(async (result) => {
      if (result.isConfirmed) {
        try {
          const response = await axios.delete(
            `http://localhost:5000/api/users/${email}`
          );

          if (response.status === 200) {
            Swal.fire("Deleted!", "User has been deleted.", "success");
            fetchUsers(); // Refresh user list
          }
        } catch (error) {
          Swal.fire("Error!", "Failed to delete user.", "error");
        }
      }
    });
  };

  const handleAddUser = async () => {
    if (errors.name || errors.email || errors.password || !newUser.role) {
      Swal.fire({
        icon: "error",
        title: "Validation Error",
        text: "Please correct the errors before adding a user.",
      });
      return;
    }

    try {
      const response = await axios.post(
        "http://localhost:5000/api/signup",
        newUser
      );

      if (response.status === 201) {
        Swal.fire({
          icon: "success",
          title: "User Registered",
          text: "User has been added successfully!",
        });

        fetchUsers(); // Refresh user list
        setIsModalOpen(false); // Close modal
        setNewUser({ name: "", email: "", password: "", role: "" }); // Reset form
      }
    } catch (error) {
      if (error.response && error.response.status === 400) {
        Swal.fire({
          icon: "warning",
          title: "User Already Exists",
          text: "The email is already registered. Please use a different email.",
        });
      } else {
        Swal.fire({
          icon: "error",
          title: "Error!",
          text: error.response?.data?.error || "Failed to add user.",
        });
      }
    }
  };

  return (
    <div className="dashboard-container">
      <NavBar />

      {/* Main Content */}
      <div className="main-content">
        <div className="headWrapper">
          <h1>User Management</h1>
        </div>
        <button className="addUser" onClick={() => setIsModalOpen(true)}>
          Add User
        </button>

        {/* User Management Table */}
        <div className="user-management-content">
          <table className="users-table">
            <thead>
              <tr>
                <th>Sl No</th>
                <th>Name</th>
                <th>Email</th>
                <th>Role</th>
                <th>Delete</th>
              </tr>
            </thead>
            <tbody>
              {users.map((user, index) => (
                <tr key={user.id}>
                  <td>{index + 1}</td>
                  <td>{user.name}</td>
                  <td>{user.email}</td>
                  <td>{user.role}</td>
                  <td>
                    <button
                      className="delete-btn"
                      onClick={() => handleDeleteUser(user.email)}
                    >
                      <FaTrash />
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>

        {/* Modal for Adding User */}
        {isModalOpen && (
          <div className="modal">
            <div className="modal-content">
              <div className="modal-header">
                <h2>Add User</h2>
                <button
                  className="close-btn"
                  onClick={() => setIsModalOpen(false)}
                >
                  ×
                </button>
              </div>

              <label>Full Name</label>
              <input
                type="text"
                name="name"
                value={newUser.name}
                onChange={handleInputChange}
                required
              />
              {errors.name && (
                <p
                  className="error"
                  style={{
                    fontSize: "13px",
                    color: "#f6431d",
                  }}
                >
                  {errors.name}
                </p>
              )}

              <label>Email</label>
              <input
                type="email"
                name="email"
                value={newUser.email}
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

              <label>Password</label>
              <input
                type="password"
                name="password"
                value={newUser.password}
                onChange={handleInputChange}
                required
              />
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

              <label>Role</label>
              <select
                name="role"
                value={newUser.role}
                onChange={handleInputChange}
                required
              >
                <option value="" disabled>
                  Select Role
                </option>
                <option value="admin">Admin</option>
                <option value="general">General</option>
              </select>

              <div className="modal-button">
                <button className="add-button" onClick={handleAddUser}>
                  Add
                </button>

                <button
                  className="reset-button"
                  onClick={() =>
                    setNewUser({
                      name: "",
                      email: "",
                      password: "",
                      role: "",
                    })
                  }
                >
                  Reset
                </button>
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
};

export default AdminDashboard;

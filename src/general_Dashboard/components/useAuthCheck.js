import { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { jwtDecode } from "jwt-decode";
import Swal from "sweetalert2";

const useAuthCheck = () => {
  const navigate = useNavigate();

  useEffect(() => {
    const token = localStorage.getItem("token");

    if (!token) {
      Swal.fire({
        icon: "error",
        title: "Error",
        text: "You must be logged in to access this page.",
      }).then(() => {
        navigate("/login");
      });
    } else {
      try {
        const decoded = jwtDecode(token);

        // Optional: check expiry
        if (decoded.exp * 1000 < Date.now()) {
          Swal.fire({
            icon: "error",
            title: "Error",
            text: "Session expired. Please log in again.",
          }).then(() => {
            localStorage.removeItem("token");
            navigate("/login");
          });
        }

        // Optional: check admin role
        // if (decoded.role !== "admin") {
        //   Swal.fire({
        //     icon: "error",
        //     title: "Error",
        //     text: "Access denied. Admins only.",
        //   }).then(() => {
        //     navigate("/login");
        //   });
        // }
      } catch (err) {
        console.error("Invalid token", err);
        Swal.fire({
          icon: "error",
          title: "Error",
          text: "Invalid token.",
        }).then(() => {
          localStorage.removeItem("token");
          navigate("/login");
        });
      }
    }
  }, [navigate]);
};

export default useAuthCheck;

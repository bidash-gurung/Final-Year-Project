import { useEffect } from "react";
import { useNavigate } from "react-router-dom";

const LogoutHandler = () => {
  const navigate = useNavigate();

  useEffect(() => {
    const token = localStorage.getItem("token");

    if (!token) {
      navigate("/login");
    }

    const handlePopState = () => {
      if (!localStorage.getItem("token")) {
        navigate("/login");
      }
    };

    window.history.pushState(null, "", window.location.href);
    window.addEventListener("popstate", handlePopState);

    return () => {
      window.removeEventListener("popstate", handlePopState);
    };
  }, [navigate]);

  const handleLogout = () => {
    localStorage.removeItem("token"); // Remove token
    navigate("/login"); // Redirect to login
  };

  return { handleLogout };
};

export default LogoutHandler;

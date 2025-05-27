import NavBar from "../components/GeneralSideBar"; // Import the new NavBar component
import EcoGraph from "../components/economicGraph"; // Import the new NavBar component
import useAuthCheck from "../components/useAuthCheck";

const Economic = () => {
  useAuthCheck();

  return (
    <div className="dashboard-container">
      <NavBar />

      {/* Main Content */}
      <div className="main-content">
        <div className="headWrapper">
          <h1>Economic Sector</h1>
        </div>
        <EcoGraph />
      </div>
    </div>
  );
};

export default Economic;

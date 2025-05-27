import NavBar from "../components/GeneralSideBar"; // Import the new NavBar component
import GovFilter from "../components/govGraph"; // Import the new NavBar component
import useAuthCheck from "../components/useAuthCheck";

const Governance = () => {
  useAuthCheck();

  return (
    <div className="dashboard-container">
      <NavBar />

      {/* Main Content */}
      <div className="main-content">
        <div className="headWrapper">
          <h1>Governance & Security Sector</h1>
        </div>
        <GovFilter />
      </div>
    </div>
  );
};

export default Governance;

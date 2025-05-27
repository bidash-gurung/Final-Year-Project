import SocialGraph from "../components/socialGraph";
import NavBar from "../components/GeneralSideBar"; // Import the new NavBar component
import useAuthCheck from "../components/useAuthCheck";

const Social = () => {
  useAuthCheck();

  return (
    <div className="dashboard-container">
      <NavBar />

      {/* Main Content */}
      <div className="main-content">
        <div className="headWrapper">
          <h1>Social Sector</h1>
        </div>
        <SocialGraph />
      </div>
    </div>
  );
};

export default Social;

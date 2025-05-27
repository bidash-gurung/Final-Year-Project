import React, { useEffect, useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import {
  ResponsiveContainer,
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
} from "recharts";

import "../pages/css/dashboardGraph.css";

const DashboardGraph = () => {
  const navigate = useNavigate();
  const [graphData, setGraphData] = useState([]);
  const [labourData, setLabourData] = useState([]);
  const [powerData, setPowerData] = useState([]);
  const [healthData, setHealthData] = useState([]);

  // Authentication check
  useEffect(() => {
    const token = localStorage.getItem("token");

    if (!token) {
      navigate("/login");
    }

    window.history.pushState(null, "", window.location.href);
    window.addEventListener("popstate", () => {
      if (!localStorage.getItem("token")) {
        navigate("/login");
      }
    });

    return () => {
      window.removeEventListener("popstate", () => {});
    };
  }, [navigate]);

  // Fetch foreign trade data
  useEffect(() => {
    axios
      .get("http://localhost:5000/api/graph/indicator-data", {
        params: {
          indicator_name: "foreign_trade",
          from_year: 2024,
          to_year: 2024,
          from_quartile: "q3",
          to_quartile: "q4",
        },
      })
      .then((response) => {
        const allowedIndicators = [
          "export_nu_in_million",
          "import_nu_in_million",
          "balance_of_trade_nu_in_million",
        ];

        const filtered = response.data.filter((item) =>
          allowedIndicators.includes(item.indicators)
        );

        setGraphData(filtered);
      })
      .catch((error) =>
        console.error("Error fetching foreign trade graph data:", error)
      );
  }, []);

  // Fetch labour and employment data
  useEffect(() => {
    axios
      .get("http://localhost:5000/api/graph/indicator-data", {
        params: {
          indicator_name: "labour_and_employment",
          from_year: 2024,
          to_year: 2024,
          from_quartile: "q3",
          to_quartile: "q4",
        },
      })
      .then((response) => {
        const allowedIndicators = [
          "unemployment_rate_",
          "unemployment_rate__male",
          "unemployment_rate__female",
          "labour_force_participation_rate_",
          "labour_force_participation_rate__male",
          "labour_force_participation_rate__female",
        ];

        const filtered = response.data.filter((item) =>
          allowedIndicators.includes(item.indicators)
        );

        setLabourData(filtered);
      })
      .catch((error) =>
        console.error("Error fetching labour graph data:", error)
      );
  }, []);

  // Fetch power and electricity data
  useEffect(() => {
    axios
      .get("http://localhost:5000/api/graph/indicator-data", {
        params: {
          indicator_name: "power_units_in_million",
          from_year: 2024,
          to_year: 2024,
          from_quartile: "q3",
          to_quartile: "q4",
        },
      })
      .then((response) => {
        const allowedIndicators = [
          "total_electricty_generation3",
          "total_electricty_generation3_total_scheduled_electricity_export",
          "schedule_export_of_electricity_to_india",
          "number_of_electricity_consumers",
        ];

        const filtered = response.data.filter((item) =>
          allowedIndicators.includes(item.indicators)
        );

        setPowerData(filtered);
      })
      .catch((error) => console.error("Error fetching power data:", error));
  }, []);

  // Fetch health human resources data
  useEffect(() => {
    axios
      .get("http://localhost:5000/api/graph/indicator-data", {
        params: {
          indicator_name: "health_human_resources",
          from_year: 2024,
          to_year: 2024,
          from_quartile: "q3",
          to_quartile: "q4",
        },
      })
      .then((response) => {
        const allowedIndicators = [
          "general_specialistssubspecialists",
          "medical_officers_mscmomogdmo",
          "clinical_nurses",
          "staffassistant_nurses",
          "health_assistants_ha",
        ];

        const filtered = response.data.filter((item) =>
          allowedIndicators.includes(item.indicators)
        );

        setHealthData(filtered);
      })
      .catch((error) =>
        console.error("Error fetching health human resources data:", error)
      );
  }, []);

  // Clean label
  const prettyLabel = (label) => {
    if (!label) return "";
    return label
      .replace(/_/g, " ")
      .replace(/\d+$/, "")
      .replace(/\s+/g, " ")
      .trim();
  };

  const cleanedGraphData = graphData.map((d) => ({
    ...d,
    indicators: prettyLabel(d.indicators),
  }));

  const cleanedLabourData = labourData.map((d) => ({
    ...d,
    indicators: prettyLabel(d.indicators),
  }));

  const cleanedPowerData = powerData.map((d) => ({
    ...d,
    indicators: prettyLabel(d.indicators),
  }));

  const cleanedHealthData = healthData.map((d) => ({
    ...d,
    indicators: prettyLabel(d.indicators),
  }));

  return (
    <>
      {/* Graphs Grid */}
      <div className="grid-graphs-container">
        {/* Foreign Trade */}
        <div className="graph-box">
          <h2 className="graph-title">Import & Export (Q3–Q4, 2024)</h2>
          <ResponsiveContainer width="100%" height={500}>
            <BarChart
              width={500}
              height={400}
              data={cleanedGraphData}
              margin={{ top: 60, right: 10, left: 30, bottom: 120 }}
            >
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis
                dataKey="indicators"
                angle={-45}
                textAnchor="end"
                interval={0}
                height={120}
                tick={{ fontSize: 11 }}
              />
              <YAxis />
              <Tooltip />
              <Legend verticalAlign="top" />
              <Bar dataKey="q3" fill="#8884d8" name="Q3" />
              <Bar dataKey="q4" fill="#82ca9d" name="Q4" />
            </BarChart>
          </ResponsiveContainer>
        </div>

        {/* Labour Employment */}
        <div className="graph-box">
          <h2 className="graph-title">Labour & Employment (Q3–Q4, 2024)</h2>
          <ResponsiveContainer width="100%" height={500}>
            <BarChart
              width={500}
              height={400}
              data={cleanedLabourData}
              margin={{ top: 60, right: 10, left: 30, bottom: 120 }}
            >
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis
                dataKey="indicators"
                angle={-45}
                textAnchor="end"
                interval={0}
                height={120}
                tick={{ fontSize: 11 }}
              />
              <YAxis />
              <Tooltip />
              <Legend verticalAlign="top" />
              <Bar dataKey="q3" fill="#a4c639" name="Q3" />
              <Bar dataKey="q4" fill="#f08080" name="Q4" />
            </BarChart>
          </ResponsiveContainer>
        </div>

        {/* Power & Electricity */}
        <div className="graph-box">
          <h2 className="graph-title">Electricity Stats (Q3–Q4, 2024)</h2>
          <ResponsiveContainer width="100%" height={500}>
            <BarChart
              width={500}
              height={400}
              data={cleanedPowerData}
              margin={{ top: 60, right: 10, left: 30, bottom: 120 }}
            >
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis
                dataKey="indicators"
                angle={-45}
                textAnchor="end"
                interval={0}
                height={120}
                tick={{ fontSize: 11 }}
              />
              <YAxis />
              <Tooltip />
              <Legend verticalAlign="top" />
              <Bar dataKey="q3" fill="#6a5acd" name="Q3" />
              <Bar dataKey="q4" fill="#ffa07a" name="Q4" />
            </BarChart>
          </ResponsiveContainer>
        </div>

        {/* Health Human Resources */}
        <div className="graph-box">
          <h2 className="graph-title">Health Human Resources (Q3–Q4, 2024)</h2>
          <ResponsiveContainer width="100%" height={500}>
            <BarChart
              width={500}
              height={400}
              data={cleanedHealthData}
              margin={{ top: 60, right: 10, left: 30, bottom: 120 }}
            >
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis
                dataKey="indicators"
                angle={-45}
                textAnchor="end"
                interval={0}
                height={120}
                tick={{ fontSize: 11 }}
              />
              <YAxis />
              <Tooltip />
              <Legend verticalAlign="top" />
              <Bar dataKey="q3" fill="#20b2aa" name="Q3" />
              <Bar dataKey="q4" fill="#ff69b4" name="Q4" />
            </BarChart>
          </ResponsiveContainer>
        </div>
      </div>
    </>
  );
};

export default DashboardGraph;

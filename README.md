# 🧠 PMO Dashboard – AI-Powered Indicator Analysis

This is an AI-based dashboard developed to support the Prime Minister's Office (PMO) in analyzing national data across Economic, Social, and Governance sectors. It enables intelligent filtering, quarterly comparison, visualization, and insights using AI-driven logic.

---

## 🧰 Tech Stack

- **AI/ML Layer**: Python (Pandas, NumPy), AI logic for trend analysis
- **Frontend**: React.js + Tailwind CSS + Recharts
- **Backend**: Node.js + Express.js
- **Database**: MySQL
- **Excel Parsing**: XLSX, Multer for uploads

---

## 🧠 Key Features

- 📈 **Quarterly Analysis & Trend Detection**
  - Automatically calculates **percentage changes** between quarters
  - Identifies significant fluctuations using AI logic

- 🔍 **Dynamic Filtering**
  - Filter data by **Year**, **Quarter**, **Indicator**, and **Sub-indicator**
  - Reactively updates graphs and tables

- 📊 **Insightful Visualizations**
  - Graphs powered by Recharts (Bar, Line, Pie)
  - Visual cues for trends (growth, decline, stable)

- 📥 **Bulk Excel Upload**
  - Excel files are parsed, compared against existing records
  - Automatically inserts or updates based on year and indicator

- 📤 **Data Export**
  - Download filtered tables in Excel or PDF format

---

## 📁 Project Structure

```bash
PMO-AI-Dashboard/
├── client/                  # React.js Frontend
│   └── src/
│       ├── components/
│       ├── pages/
│       └── App.jsx
├── server/                  # Node.js Backend
│   ├── controllers/
│   ├── routes/
│   └── index.js
├── ai/                      # AI Logic (Python)
│   ├── quarterly_analysis.py
│   └── trend_detector.py
├── uploads/                 # Excel file uploads
└── README.md

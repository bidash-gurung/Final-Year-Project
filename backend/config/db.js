// const mysql = require("mysql2");
// const mysql2 = require("mysql2/promise");

// // Create the connection
// const db = mysql.createConnection({
//   host: process.env.DB_HOST || "localhost",
//   user: process.env.DB_USER || "root",
//   password: process.env.DB_PASSWORD || "",
//   database: process.env.DB_NAME || "Dashboard",
// });

// // Connect to MySQL
// db.connect((err) => {
//   if (err) {
//     console.error("Database connection failed:", err);
//     process.exit(1); // Exit on failure
//   }
//   console.log("✅ Database connected successfully");
// });

// // Create the connection pool
// const pool = mysql2.createPool({
//   host: process.env.DB_HOST || "localhost",
//   user: process.env.DB_USER || "root",
//   password: process.env.DB_PASSWORD || "",
//   database: process.env.DB_NAME || "Dashboard",
//   waitForConnections: true,
//   connectionLimit: 10, // Adjust as needed
//   queueLimit: 0,
// });

// module.exports = { db, pool }; // Export the promise-based pool

const mysql = require("mysql2/promise"); // Use promise-based MySQL2

// Create the connection pool
const pool = mysql.createPool({
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "root",
  password: process.env.DB_PASSWORD || "",
  database: process.env.DB_NAME || "Dashboard",
  waitForConnections: true,
  connectionLimit: 10, // Adjust as needed
  queueLimit: 0,
});

module.exports = pool; // ✅ Export only `pool`

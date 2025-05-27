import React, { useState, useEffect } from "react";
import { FaEdit, FaTrash, FaPlus } from "react-icons/fa";
import Swal from "sweetalert2";
import "../pages/css/manageIndicator.css";

const IndicatorComponent = () => {
  const [allIndicators, setAllIndicators] = useState([]);
  const [filteredIndicators, setFilteredIndicators] = useState([]);
  const [selectedSector, setSelectedSector] = useState("");
  const [showModal, setShowModal] = useState(false);
  const [newIndicator, setNewIndicator] = useState("");
  const [sector, setSector] = useState("");
  const [currentPage, setCurrentPage] = useState(1);
  const itemsPerPage = 10;
  const [totalPages, setTotalPages] = useState(1);

  const [editingIndicator, setEditingIndicator] = useState(null);
  const [editFormData, setEditFormData] = useState({
    indicator: "",
    sector: "",
  });

  useEffect(() => {
    fetchIndicators();
  }, []);

  const fetchIndicators = async (page = 1) => {
    try {
      const response = await fetch(
        `http://localhost:5000/api/indicators?page=${page}&limit=10000`
      );
      const data = await response.json();
      if (data.success) {
        setAllIndicators(data.indicators);
        setFilteredIndicators(data.indicators);
        setTotalPages(Math.ceil(data.indicators.length / itemsPerPage));
        setCurrentPage(1);
      }
    } catch (error) {
      console.error("Error fetching indicators:", error);
    }
  };

  const handleAddIndicator = async () => {
    if (!newIndicator || !sector) {
      Swal.fire("Warning", "Please enter all fields", "warning");
      return;
    }
    try {
      const response = await fetch("http://localhost:5000/api/indicators", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ indicator: newIndicator, sector }),
      });
      const data = await response.json();
      if (data.success) {
        Swal.fire("Success", "Indicator added successfully!", "success");
        fetchIndicators();
        setShowModal(false);
        setNewIndicator("");
        setSector("");
      } else {
        Swal.fire("Error", data.message, "error");
      }
    } catch (error) {
      Swal.fire("Error", "Failed to add indicator", "error");
    }
  };

  const handleDelete = async (id) => {
    const confirm = await Swal.fire({
      title: "Are you sure?",
      text: "You won't be able to revert this!",
      icon: "warning",
      showCancelButton: true,
      confirmButtonText: "Yes, delete it!",
    });

    if (confirm.isConfirmed) {
      try {
        const response = await fetch(
          `http://localhost:5000/api/indicators/${id}`,
          {
            method: "DELETE",
          }
        );
        const data = await response.json();
        if (data.success) {
          Swal.fire("Deleted!", "Indicator has been deleted.", "success");
          fetchIndicators();
        }
      } catch (error) {
        Swal.fire("Error", "Failed to delete indicator", "error");
      }
    }
  };

  const handleEdit = (indicator) => {
    setEditingIndicator(indicator.id);
    setEditFormData({
      indicator: indicator.indicator,
      sector: indicator.sector,
    });
  };

  const handleSaveEdit = async () => {
    try {
      const response = await fetch(
        `http://localhost:5000/api/indicators/${editingIndicator}`,
        {
          method: "PUT",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(editFormData),
        }
      );

      const data = await response.json();
      if (data.success) {
        Swal.fire("Updated!", "Indicator updated successfully.", "success");
        setEditingIndicator(null);
        fetchIndicators();
      } else {
        Swal.fire("Error", data.message, "error");
      }
    } catch (error) {
      Swal.fire("Error", "Failed to update indicator", "error");
    }
  };

  useEffect(() => {
    let updatedIndicators = allIndicators;
    if (selectedSector) {
      updatedIndicators = allIndicators.filter(
        (indicator) => indicator.sector === selectedSector
      );
    }
    setFilteredIndicators(updatedIndicators);
    setTotalPages(Math.ceil(updatedIndicators.length / itemsPerPage));
    setCurrentPage(1);
  }, [selectedSector, allIndicators]);

  const indexOfLastItem = currentPage * itemsPerPage;
  const indexOfFirstItem = indexOfLastItem - itemsPerPage;
  const currentItems = filteredIndicators.slice(
    indexOfFirstItem,
    indexOfLastItem
  );

  return (
    <div className="container">
      <div className="controls">
        <select
          value={selectedSector}
          onChange={(e) => setSelectedSector(e.target.value)}
        >
          <option value="">All Sectors</option>
          <option value="Social">Social</option>
          <option value="Economic">Economic</option>
          <option value="Gov & Security">Governance</option>
        </select>
        {/* <button onClick={() => setShowModal(true)} className="addIndicator-btn">
          <FaPlus /> Add Indicator
        </button> */}
      </div>

      <table className="table">
        <thead>
          <tr>
            <th>Sl.no</th>
            <th>Indicators</th>
            <th>Sector</th>
            {/* <th>Edit</th>
            <th>Delete</th> */}
          </tr>
        </thead>
        <tbody>
          {filteredIndicators.length > 0 ? (
            currentItems.map((indicator, index) => (
              <tr key={indicator.id}>
                <td>{indexOfFirstItem + index + 1}</td>
                <td>
                  {editingIndicator === indicator.id ? (
                    <input
                      value={editFormData.indicator}
                      onChange={(e) =>
                        setEditFormData({
                          ...editFormData,
                          indicator: e.target.value,
                        })
                      }
                    />
                  ) : (
                    indicator.indicator_afn
                  )}
                </td>
                <td>
                  {editingIndicator === indicator.id ? (
                    <select
                      value={editFormData.sector}
                      onChange={(e) =>
                        setEditFormData({
                          ...editFormData,
                          sector: e.target.value,
                        })
                      }
                    >
                      <option value="Social">Social</option>
                      <option value="Economic">Economic</option>
                      <option value="Governance">Governance</option>
                    </select>
                  ) : (
                    indicator.sector
                  )}
                </td>
                {/* <td className="edit">
                  {editingIndicator === indicator.id ? (
                    <>
                      <button className="saveEdit-btn" onClick={handleSaveEdit}>
                        Save
                      </button>
                      <button
                        className="cancelEdit-btn"
                        onClick={() => setEditingIndicator(null)}
                      >
                        Cancel
                      </button>
                    </>
                  ) : (
                    <FaEdit onClick={() => handleEdit(indicator)} />
                  )}
                </td>
                <td className="delete">
                  <FaTrash onClick={() => handleDelete(indicator.id)} />
                </td> */}
              </tr>
            ))
          ) : (
            <tr>
              <td colSpan="5" className="no-data">
                No indicators found
              </td>
            </tr>
          )}
        </tbody>
      </table>

      {/* Pagination */}
      <div className="pagination">
        <button
          className="pagination-btn"
          onClick={() => setCurrentPage((p) => Math.max(p - 1, 1))}
          disabled={currentPage === 1}
        >
          Previous
        </button>
        <span>
          Page {currentPage} of {totalPages}
        </span>
        <button
          className="pagination-btn"
          onClick={() => setCurrentPage((p) => Math.min(p + 1, totalPages))}
          disabled={currentPage === totalPages}
        >
          Next
        </button>
      </div>

      {/* Add Indicator Modal */}
      {showModal && (
        <div className="modal">
          <div className="modal-content">
            <h2>Add Indicator</h2>
            <input
              type="text"
              placeholder="Enter Indicator Name"
              value={newIndicator}
              onChange={(e) => setNewIndicator(e.target.value)}
            />
            <select value={sector} onChange={(e) => setSector(e.target.value)}>
              <option value="">Select Sector</option>
              <option value="Social">Social</option>
              <option value="Economic">Economic</option>
              <option value="Governance">Governance</option>
            </select>
            <div className="modal-buttons">
              <button
                className="cancelIndicator-btn"
                onClick={() => setShowModal(false)}
              >
                Cancel
              </button>
              <button
                className="submitIndicator-btn"
                onClick={handleAddIndicator}
              >
                Add
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default IndicatorComponent;

"use client";

// Enables client-side interactivity
import React from "react";

const PlayerCard = ({ player }) => {
  const handleClick = () => {
    alert(`You selected ${player.name}`);
  };

  return (
    <div
      style={{
        border: "1px solid #ddd",
        borderRadius: "8px",
        padding: "16px",
        width: "200px",
        textAlign: "center",
        boxShadow: "0 4px 6px rgba(0, 0, 0, 0.1)",
      }}
    >
      {/* Player Image */}
      <div
        style={{
          height: "70px",
          marginBottom: "8px",
        }}
      >
        <img
          src={player.image || "https://via.placeholder.com/96x70"}
          alt={player.name}
          style={{
            borderRadius: "4px",
            width: "96px",
            height: "70px",
            objectFit: "cover",
          }}
        />
      </div>

      {/* Player Info */}
      <h2 style={{ fontSize: "18px", margin: "8px 0" }}>{player.name}</h2>
      <p style={{ fontSize: "14px", color: "#666" }}>{player.team}</p>
      <p style={{ fontSize: "12px", color: "#999" }}>
        {player.position} - {player.status}
      </p>

      {/* Action Button */}
      <button
        onClick={handleClick}
        style={{
          marginTop: "12px",
          padding: "8px 12px",
          border: "none",
          borderRadius: "4px",
          backgroundColor: "#007BFF",
          color: "#fff",
          cursor: "pointer",
        }}
      >
        Select
      </button>
    </div>
  );
};

export default PlayerCard;

import React, { useState } from "react";
import "./MessageDisplay.scss";

function MessageDisplay({ error, handleNewError }) {
  const [loading, setLoading] = useState(false);

  const handleButtonClick = () => {
    setLoading(true);
    const randomDelay = Math.floor(Math.random() * 5000) + 1000;
    setTimeout(() => {
      setLoading(false);
      handleNewError();
    }, randomDelay);
  };

  return (
    <article className="error_generator">
      <p className="error_text">
        {loading
          ? "Generating..."
          : `HTTP error ${error.http_code}: ${error.message}`}
      </p>
      <button
        className="error_button"
        onClick={handleButtonClick}
        disabled={loading}
      >
        Generate another excuse
      </button>
    </article>
  );
}

export default MessageDisplay;

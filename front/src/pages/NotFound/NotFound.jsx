import React, { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import "./NotFound.scss";

function NotFound() {
  const navigate = useNavigate();
  useEffect(() => {
    const timeoutId = setTimeout(() => {
      navigate("/");
    }, 5000);
    return () => {
      clearTimeout(timeoutId);
    };
  }, [navigate]);

  return (
    <h2 className="notfound_message">
      Ok, now it's for real : 404 error "Not Found"
    </h2>
  );
}

export default NotFound;

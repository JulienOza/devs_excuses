import React, { useState, useEffect } from "react";
import { useLoaderData, useNavigate } from "react-router-dom";
import MessageDisplay from "../../components/MessageDisplay/MessageDisplay";
import "./Home.scss";

function Home() {
  const navigate = useNavigate();
  const errorMessages = useLoaderData();
  const [randomError, setRandomError] = useState("");

  useEffect(() => {
    if (!errorMessages || errorMessages.length === 0) {
      navigate("/notfound");
    } else {
      setRandomError(getRandomError());
    }
  }, [errorMessages, navigate]);

  function getRandomError() {
    const index = Math.floor(Math.random() * errorMessages.length);
    return errorMessages[index];
  }

  function handleNewError() {
    setRandomError(getRandomError());
  }

  return (
    <>
      <h1 className="pagetitle">Developers' Excuses Generator</h1>
      <MessageDisplay error={randomError} handleNewError={handleNewError} />
    </>
  );
}

export default Home;

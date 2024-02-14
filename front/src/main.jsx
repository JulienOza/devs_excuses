import React from "react";
import ReactDOM from "react-dom/client";
import { createBrowserRouter, RouterProvider } from "react-router-dom";
import "./index.scss";
import Home from "./pages/Home/Home";
import Lost from "./pages/Lost/Lost";
import NotFound from "./pages/NotFound/NotFound";

const router = createBrowserRouter([
  {
    path: "/",
    element: <Home />,
    loader: async () => {
      try {
        const response = await fetch(
          `${import.meta.env.VITE_BACKEND_URL}/api/excuse`
        );
        if (!response.ok) {
          throw new Error("Failed to fetch data");
        }
        return response;
      } catch (error) {
        console.error("Error fetching data:", error);
        return null;
      }
    },
  },
  {
    path: "/:code",
    element: <Home />,
    loader: async ({ params }) => {
      const { code } = params;
      try {
        const response = await fetch(
          `${import.meta.env.VITE_BACKEND_URL}/api/excuse/${code}`
        );
        if (!response.ok) {
          throw new Error("Failed to fetch excuse");
        }
        const data = await response.json();
        return data;
      } catch (error) {
        console.error("Error fetching excuse:", error);
        return null;
      }
    },
  },
  {
    path: "/lost",
    element: <Lost />,
  },
  {
    path: "/notfound",
    element: <NotFound />,
  }
]);

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);

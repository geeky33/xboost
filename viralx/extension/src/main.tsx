import React from "react";
import ReactDOM from "react-dom/client";
import "./styles/popup.css";
import Popup from "./ui/popup";

ReactDOM.createRoot(document.getElementById("root") as HTMLElement).render(
  <React.StrictMode>
    <Popup />
  </React.StrictMode>
);

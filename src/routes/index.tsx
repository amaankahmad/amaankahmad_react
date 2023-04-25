import React from "react";

import { Navigate, Route, Routes } from "react-router-dom";
import Home from "../pages/Home";
import Podcast from "../pages/Podcast";
import Writing from "../pages/Writing";
import Error from "../pages/error";
import ComingSoonPage from "../pages/ComingSoon";

const AppRoutes = () => {
  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/podcast" element={<ComingSoonPage />} />
      <Route path="/writing" element={<ComingSoonPage />} />
      <Route path="/error" element={<Error />} />
      <Route path="/builds" element={<ComingSoonPage />} />
      <Route path="/coming-soon" element={<ComingSoonPage />} />
    </Routes>
  );
};

export default AppRoutes;

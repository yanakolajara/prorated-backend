const express = require("express");
const router = express.Router();

const { getAllProjects } = require("../queries/projectListings");

router.get("/", async (req, res) => {
  const getProjects = await getAllProjects();

  if (!Array.isArray(getProjects)) {
    return res.status(500).json({ Error: "Server Error. Please try again." });
  } else {
    return res.json(getProjects);
  }
});

module.exports = router;

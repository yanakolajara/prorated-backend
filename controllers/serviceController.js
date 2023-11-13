const express = require("express");
const service = express.Router();
const { getAllServices } = require("../queries/service");

module.exports = service;

service.get("/", async (req, res) => {
  try {
    const services = await getAllServices();
    if (services) {
      res.status(200).json(services);
    } else {
      res.status(404).json({ message: "No service found" });
    }
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Internal server error" });
  }
});

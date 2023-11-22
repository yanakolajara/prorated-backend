const express = require("express");
const service = express.Router();
const { getAllServices, getServiceById } = require("../queries/service");

service.get("/", async (req, res) => {
  try {
    const servicesObj = await getAllServices();
    if (servicesObj) {
      res.status(200).json(servicesObj);
    } else {
      res.status(404).json({ message: "No service found" });
    }
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Internal server error" });
  }
});

service.get("/:id", async (req, res) => {
  try {
    const service_id = req.params.id;
    const serviceObj = await getServiceById(service_id);
    if (serviceObj) {
      res.status(200).json(serviceObj);
    } else {
      res.status(404).json({ message: "service not found." });
    }
  } catch (error) {
    res.status(500).json(error.message);
  }
});

module.exports = service;

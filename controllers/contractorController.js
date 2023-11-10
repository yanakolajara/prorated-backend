// DEPENDENCIES
const express = require("express");
const contractor = express.Router();
const {
  getAllContractors,
  getContractorsByID,
  getContractorsByService,
} = require("../queries/contractor");

// GET
contractor.get("/:id", async (req, res) => {
  // Controller logic to get a single item

  try {
    const id = req.params.id;
    const contractor = await getContractorsByID(id);

    if (contractor) {
      res.status(200).json(contractor);
    } else {
      res.status(404).json({ message: "No Contractor found by this id" });
    }
  } catch (e) {
    console.log(e);
    res.status(500).json({ message: "Internal server error" });
  }
});

contractor.get("/", async (req, res) => {
  try {
    // Check if a service parameter is provided
    const serviceName = req.query.service;

    if (serviceName) {
      // If a service name is provided, get contractors by service
      const contractorsByService = await getContractorsByService(serviceName);

      if (contractorsByService.length === 0) {
        res.status(404).json({ error: "No Contractor Found for this service" });
      } else {
        res.status(201).json(contractorsByService);
      }
    } else {
      // If no service parameter, get all contractors
      const allContractors = await getAllContractors();

      if (allContractors.length === 0) {
        res.status(404).json({ error: "No Contractor Found" });
      } else {
        res.status(201).json(allContractors);
      }
    }
  } catch (e) {
    console.log(e);
    res.status(500).json({ message: "Internal server error" });
  }
});

// EXPORT
module.exports = contractor;

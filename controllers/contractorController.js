// DEPENDENCIES
const express = require("express");
const contractor = express.Router();
const {
  getAllContractors,
  getContractorByID,
  getContractorsByServiceId,
} = require("../queries/contractor");

// GET
contractor.get("/:id", async (req, res) => {
  // Controller logic to get a single item

  try {
    const id = req.params.id;
    const contractor = await getContractorByID(id);

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
    const allContractors = await getAllContractors();
    console.log(allContractors);

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

contractor.get("/service/:id", async (req, res) => {
  try {
    const serviceId = req.params.id;
    const allContractors = await getContractorsByServiceId(serviceId);
    if (allContractors.length === 0) {
      res.status(404).json({ error: "No Contractor Found" });
    } else {
      res.status(201).json(allContractors);
    }
  } catch (e) {
    console.log(e);
    return e.message;
  }
});

contractor.get("/service/:id", async (req, res) => {
  try {
    const serviceId = req.params.id;
    const allContractors = await getContractorsByServiceId(serviceId);
    if (allContractors.length === 0) {
      res.status(404).json({ error: "No Contractor Found" });
    } else {
      res.status(201).json(allContractors);
    }
  } catch (e) {
    console.log(e);
    return e.message;
  }
});

// EXPORT
module.exports = contractor;

// DEPENDENCIES
const express = require("express");
const contractor = express.Router();
const reviewsController = require("./reviewsController");
const {
  getAllContractors,
  getContractorByID,
  getContractorsByServiceId,
  getContractorRatingsData,
} = require("../queries/contractor");

const {
  getContractorReviews,
  addContractorReview,
} = require("../queries/review");

contractor.use("/:contractorId/reviews", reviewsController);

// GET
contractor.get("/:id", async (req, res) => {
  // Controller logic to get a single item

  try {
    const id = req.params.id;
    const contractor = await getContractorByID(id);
    const reviews = await getContractorReviews(id);

    if (contractor) {
      res.status(200).json({
        data: {
          contractor,
          reviews,
        },
      });
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
    // const allContractors = await getAllContractors();
    // console.log(allContractors);

    const allContractorsData = await getContractorRatingsData();

    if (allContractorsData.length === 0) {
      res.status(404).json({ error: "No Contractor Found" });
    } else {
      res.status(201).json(allContractorsData);
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

contractor.post("/:id/user/:userId/addReview", async (req, res) => {
  try {
    const newReview = await addContractorReview(
      req.params.id,
      req.params.userId,
      req.body
    );

    console.log(newReview);
    res.json(newReview);
  } catch (error) {
    console.log(error);
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

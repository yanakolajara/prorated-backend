const express = require("express");
const router = express.Router({ mergeParams: true });

const {
  getContractorReviews,
  addContractorReview,
} = require("../queries/review");

router.get("/", async (req, res) => {
  try {
    const id = req.params.id;
    const reviews = await getContractorReviews(req.params.contractorId);

    res.json(reviews);
  } catch (error) {
    console.log(error);
  }
});

module.exports = router;

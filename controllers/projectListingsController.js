const express = require("express");
const router = express.Router({ mergeParams: true });

const {
  getAllProjects,
  getListingById,
  createListing,
  deleteListingById,
  updateListingById,
  getAllListingsByUser,
} = require("../queries/projectListings");

const {
  validateListingServiceId,
  validateListingTitle,
  validateListingSummary,
} = require("../validations/checkListing");


router.get("/", async (req, res) => {
  const getProjects = await getAllProjects();

  if (!Array.isArray(getProjects)) {
    return res.status(500).json({ Error: "Server Error. Please try again." });
  } else {
    return res.json(getProjects);
  }
});

router.get("/", async (req, res) => {
  const { userId } = req.params;
  const allListingsByUser = await getAllListingsByUser(userId);

  if (allListingsByUser.length === 0) {
    return res.status(404).json({
      Error: "GET request unsuccessful",
      message:
        "Listings Not Found! Please check the user id you have entered and try again.",
    });
  } else {
    return res.json(allListingsByUser);
  }
});

router.get("/:id", async (req, res) => {
  const { id } = req.params;
  const project = await getListingById(id);

  if (project.length === 0) {
    return res.status(404).json({
      Error: "GET request unsuccessful",
      message:
        "Listing Not Found! Please try again or enter a different listing id.",
    });
  } else {
    return res.json(project[0]);
  }
});

router.post(
  "/",
  validateListingServiceId,
  validateListingTitle,
  validateListingSummary,
  async (req, res) => {
    const newListing = await createListing(req.body);
    return res.json(newListing);
  }
);

router.delete("/:id", async (req, res) => {
  const { id } = req.params;
  const deletedListing = await deleteListingById(id);

  if (deletedListing.length === 0) {
    return res.status(404).json({
      Error: "DELETE request unsuccessful.",
      message:
        "Listing Not Found! Please try again or enter a different listing id.",
    });
  } else {
    return res.json(deletedListing[0]);
  }
});

router.put(
  "/:id",
  validateListingServiceId,
  validateListingTitle,
  validateListingSummary,
  async (req, res) => {
    const { id } = req.params;
    const updatedListing = await updateListingById(id, req.body);

    if (updatedListing.length === 0) {
      return res.status(404).json({
        Error: "PUT request unsuccessful.",
        message:
          "Listing Not Found! Please try again or enter a different listing id.",
      });
    } else {
      return res.json(updatedListing[0]);
    }
  }
);

module.exports = router;

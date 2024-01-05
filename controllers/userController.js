const express = require("express");
const router = express.Router();

const listingsController = require("../controllers/projectListingsController");
const reviewsController = require("./reviewsController");

router.use("/:userId/listings", listingsController);
router.use("/:usedId/reviews", reviewsController);

const {
  getAllUsers,
  getUserById,
  addUser,
  login,
  updateUser,
  deleteUser,
} = require("../queries/users");

const { getUserReviews } = require("../queries/review");
const { getAllListingsByUser } = require("../queries/projectListings");

const { checkUsername, validateURL } = require("../validations/checkUsers");

router.get("/", async (req, res) => {
  const allUsers = await getAllUsers();

  if (Array.isArray(allUsers)) {
    res.json(allUsers);
  } else {
    console.log(allUsers);
    res.status(500).json({ error: "Server error" });
  }
});

router.get("/:id", async (req, res) => {
  const id = req.params.id;

  const user = await getUserById(id);
  const reviews = await getUserReviews(id);
  const listings = await getAllListingsByUser(id);

  if (!user) {
    res.status(404).json({ error: "not found" });
  } else {
    // res.json(user[0]);
    res.status(200).json({
      data: {
        user,
        reviews,
        listings,
      },
    });
  }
});

router.post("/", checkUsername, validateURL, async (req, res) => {
  const newUser = await addUser(req.body);
  console.log(newUser);
  res.json(newUser);
});

router.post("/login", async (req, res) => {
  try {
    const foundUser = await login(req.body);

    res.json(foundUser);
  } catch (error) {
    res.status(500).json({ message: e.message, error: e.error });
  }
});

router.delete("/:id", async (req, res) => {
  const deletedUser = await deleteUser(req.params.id);

  if (deletedUser.length === 0) {
    return res.status(404).json({ message: "No data found!", error: true });
  } else {
    return res.json(deletedUser[0]);
  }
});

router.put("/:id", checkUsername, validateURL, async (req, res) => {
  const updatedUser = await updateUser(req.params.id, req.body);
  console.log(updatedUser);
  if (updatedUser.length === 0) {
    res.status(404).json({ message: "not found!", error: true });
  } else {
    res.json(updatedUser[0]);
  }
});

module.exports = router;

const express = require("express");
const router = express.Router();

const {
  getUserById,
  addUser,
  updateUser,
  deleteUser,
} = require("../queries/users");

const { checkUsername, validateURL } = require("../validations/checkUsers");

router.get("/:id", async (req, res) => {
  const id = req.params.id;

  const user = await getUserById(id);

  if (user.length === 0) {
    res.status(404).json({ error: "not found" });
  } else {
    res.json(user[0]);
  }
});

router.post("/", checkUsername, validateURL, async (req, res) => {
  const newUser = await addUser(req.body);
  console.log(newUser);
  res.json(newUser);
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

// DEPENDENCIES
const express = require("express");
const express = require("express");
const morgan = require("morgan");
const cors = require("cors");
const cors = require("cors");

// CONTROLLERS
const contractorController = require("./controllers/contractorController");
const userController = require("./controllers/userController");

// CONFIG
const app = express();

// MIDDLEWARE
app.use(morgan("dev")); // Log HTTP requests
app.use(express.json()); // Parse incoming JSON
app.use(cors()); // Enable Cross Origin Resource Sharing

// ROUTES
app.use("/users", userController);
app.use("/contractor", contractorController);

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.get("*", (req, res) => {
  res.status(404).send("Page not found!");
});

// EXPORT
module.exports = app;

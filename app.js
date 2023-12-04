// DEPENDENCIES
const express = require("express");

const morgan = require("morgan");
const cors = require("cors");

// CONTROLLERS
const userController = require("./controllers/userController");
const serviceController = require("./controllers/serviceController");
const projectListingsController = require("./controllers/projectListingsController");
const reviewsController = require("./controllers/reviewsController");

// CONFIG
const app = express();

// MIDDLEWARE
app.use(morgan("dev")); // Log HTTP requests
app.use(express.json()); // Parse incoming JSON
app.use(cors()); // Enable Cross Origin Resource Sharing

// ROUTES
app.use("/users", userController);
app.use("/contractors", contractorController);
app.use("/services", serviceController);
app.use("/listings", projectListingsController);
app.use("/reviews", reviewsController);

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.get("*", (req, res) => {
  res.status(404).send("Page not found!");
});

// EXPORT
module.exports = app;

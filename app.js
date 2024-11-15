// DEPENDENCIES
console.log('app.js: START');
const express = require('express');
console.log('app.js 1: const express = require("express");');
const morgan = require('morgan');
const cors = require('cors');

// CONTROLLERS
const userController = require('./controllers/userController');
const contractorController = require('./controllers/contractorController');
const serviceController = require('./controllers/serviceController');
const projectListingsController = require('./controllers/projectListingsController');
const reviewsController = require('./controllers/reviewsController');

console.log(
  'app.js 2: const userController = require("./controllers/userController");'
);
// CONFIG
const app = express();
console.log('app.js 3: const app = express();');

// MIDDLEWARE
app.use(morgan('dev')); // Log HTTP requests
app.use(express.json()); // Parse incoming JSON
app.use(cors()); // Enable Cross Origin Resource Sharing
console.log('app.js 4: app.use(morgan("dev"));');
// ROUTES
app.use('/users', userController);
app.use('/contractors', contractorController);
app.use('/services', serviceController);
app.use('/listings', projectListingsController);
app.use('/reviews', reviewsController);

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.get('*', (req, res) => {
  res.status(404).send('Page not found!');
});

// EXPORT
module.exports = app;

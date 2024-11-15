console.log('server 1');
require('dotenv').config();
// DEPENDENCIES
console.log('server 2: require("dotenv").config();');
const app = require('./app');
console.log('server 3: const app = require("./app");');
// CONFIGURATION
const PORT = process.env.PORT || 10000;
console.log('server 4: const PORT = process.env.PORT || 10000;');
// LISTEN
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

// DEPENDENCIES
const app = require('./app');

// CONFIGURATION
require('dotenv').config();
const PORT = process.env.PORT || 10000;

// LISTEN
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

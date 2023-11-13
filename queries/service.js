const db = require("../db/dbConfig");

const getAllServices = async () => {
  try {
    const services = await db.any("SELECT * FROM services");
    return services;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllServices,
};

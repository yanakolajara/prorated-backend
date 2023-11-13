const db = require("../db/dbConfig");

const getAllServices = async () => {
  try {
    const services = await db.any("SELECT * FROM services");
    return services;
  } catch (error) {
    return error;
  }
};

const getServiceById = async (service_id) => {
  try {
    const service = await db.oneOrNone("SELECT * FROM services WHERE id = $1", [
      service_id,
    ]);
    return service;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllServices,
  getServiceById,
};

const db = require("../db/dbConfig");

const getAllContractors = async () => {
  try {
    const allContractors = await db.any("SELECT * FROM contractors");
    return allContractors;
  } catch (e) {
    console.log(e);
    return e.message;
  }
};

const getContractorByID = async (id) => {
  try {
    const contractor = await db.oneOrNone(
      "SELECT * FROM contractors WHERE id = $1",
      [id]
    );
    return contractor;
  } catch (e) {
    console.log(e);
  }
};

const getContractorsByServiceId = async (serviceId) => {
  try {
    const contractors = await db.any(
      "SELECT contractors.name, contractors.description, contractors.ratings, contractors.reviews\
      FROM contractors\
      JOIN contractors_services\
      ON contractors.id = contractors_services.contractor_id\
      WHERE contractors_services.service_id = $1",
      [serviceId]
    );
    return contractors;
  } catch (error) {
    console.log(error);
  }
};

module.exports = {
  getAllContractors,
  getContractorByID,
  getContractorsByServiceId,
};

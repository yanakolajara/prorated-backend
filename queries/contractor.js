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

const getContractorsByID = async (id) => {
  try {
    const contractor = await db.oneOrNone(
      "SELECT * FROM contractor WHERE id = $1",
      [id]
    );
    return contractor;
  } catch (e) {
    console.log(e);
  }
};

const getContractorsByService = async (serviceName) => {
  try {
    const contractors = await db.any(
      `
        SELECT contractors.*, images.image_url
        FROM contractors
        JOIN contractors_services ON contractors.id = contractors_services.contractor_id
        JOIN services ON contractors_services.service_id = services.id
        LEFT JOIN images ON contractors.id = images.contractor_id
        WHERE services.name = $1
        `,
      [serviceName]
    );
    return contractors;
  } catch (error) {
    console.log(error);
    return error.message;
  }
};

module.exports = {
  getAllContractors,
  getContractorsByID,
  getContractorsByService,
};

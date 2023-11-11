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
      "SELECT * FROM contractors WHERE id = $1",
      [id]
    );
    return contractor;
  } catch (e) {
    console.log(e);
  }
};

const getAllContractorsPlumbing = (async) => {
  try {
    db.oneOrNone(
      "SELECT contractor.name FROM services LEFT JOIN contractor ON contractors_services.contractor_id = contractors.id WHERE contractors_services.service_id - 1"
    );
  } catch (error) {}
};

module.exports = {
  getAllContractors,
  getContractorsByID,
};

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

module.exports = {
  getAllContractors,
  getContractorsByID,
};

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

const getContractorRatingsData = async () => {
  try {
    const allRatingsData = await db.any(
      "select * from contractors left join (select contractor_id, COUNT(*), TRUNC(AVG(rating),1) as average_rating from reviews group by contractor_id) reviews on contractors.id = reviews.contractor_id;"
    );
    return allRatingsData;
  } catch (e) {
    console.log(e);
    return e.message;
  }
};

const getContractorByID = async (id) => {
  try {
    const contractor = await db.oneOrNone(
      "select * from contractors left join (select contractor_id, COUNT(*), TRUNC(AVG(rating),1) as average_rating from reviews group by contractor_id) reviews on contractors.id = reviews.contractor_id where id = $1",
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
      "SELECT contractors.name, contractors.description, contractors.location\
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
  getContractorRatingsData,
};

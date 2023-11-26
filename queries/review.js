const db = require("../db/dbConfig");

const getContractorReviews = async (contractorId) => {
  try {
    const contractorReviews = await db.any(
      "SELECT * FROM reviews WHERE contractor_id = $1",
      [contractorId]
    );
    return contractorReviews;
  } catch (e) {
    console.log(e);
    return e.message;
  }
};

const addContractorReview = async (id, data) => {
  try {
    console.log(data);
    const addedReview = await db.one(
      "INSERT INTO reviews (contractor_id, name, review, rating) values ($1, $2, $3, $4) RETURNING *",
      [id, data.name, data.review, data.rating]
    );
    return addedReview;
  } catch (e) {
    console.log(e);
    return e.message;
  }
};

module.exports = {
  getContractorReviews,
  addContractorReview,
};

const db = require("../db/dbConfig");

const getAllProjects = async () => {
  try {
    const allProjects = await db.any("SELECT * FROM project_listings");
    return allProjects;
  } catch (e) {
    return e;
  }
};

const getListingById = async (id) => {
  try {
    const project = await db.any(`SELECT * FROM project_listings WHERE id = $1`, id);
    return project;
  } catch (e) {
    return e;
  }
};

const createListing = async (data) => {
    try {
        const newProject = await db.any("INSERT INTO project_listings (user_id, services_id, title, summary, budget) VALUES ($1, $2,$3, $4, $5) RETURNING *", [data.user_id, data.services_id, data.title, data.summary, data.budget]);
        return newProject;
    } catch (e) {
        return e;
    }
}

const deleteListingById = async (id) => {
  try {
    const deletedListing = await db.any(`DELETE FROM project_listings WHERE id = $1 RETURNING *`, id);
    return deletedListing;
  } catch (e) {
    return e;
  }
}

module.exports = {
  getAllProjects,
  getListingById,
  createListing,
  deleteListingById,
};

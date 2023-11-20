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

module.exports = { getAllProjects, getListingById };

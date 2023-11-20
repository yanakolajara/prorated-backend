const db = require("../db/dbConfig");

const getAllProjects = async () => {
  try {
    const allProjects = await db.any("SELECT * FROM project_listings");
    return allProjects;
  } catch (e) {
    return e;
  }
};

module.exports = { getAllProjects };

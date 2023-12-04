const db = require("../db/dbConfig");

// read all users.
const getAllUsers = async () => {
  try {
    const allUsers = await db.any("SELECT * FROM users");
    console.log(allUsers);
    return allUsers;
  } catch (error) {
    return error;
  }
};

// read a single user.
const getUserById = async (id) => {
  try {
    const user = await db.any(`SELECT * FROM users WHERE id = $1`, id);

    return user;
  } catch (error) {
    return error;
  }
};

// create new users.
const addUser = async (data) => {
  try {
    const newUser = await db.one(
      "INSERT INTO users (username, password, email, first_name, last_name, phone_number, profile_picture, location) VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING *",
      [
        data.username,
        data.password,
        data.email,
        data.first_name,
        data.last_name,
        data.phone_number,
        data.profile_picture,
        data.location,
      ]
    );
    return newUser;
  } catch (error) {
    return error;
  }
};
//login a user
const login = async (data) => {
  try {
    const { email } = data;

    const foundUser = await db.any(
      "SELECT * FROM users WHERE email = $1",
      email
    );
    if (foundUser.length === 0) {
      throw {
        message: "error",
        error: "User does not exist, please try again or sign up",
      };
    } else {
      return foundUser[0];
    }
  } catch (e) {
    return e;
  }
};
// update a single user.
const updateUser = async (id, user) => {
  try {
    const updatedUser = await db.any(
      "UPDATE users SET username = $1, password = $2, email = $3, first_name = $4, last_name = $5, phone_number = $6, profile_picture = $7, location = $8 WHERE id = $9 RETURNING *",
      [
        user.username,
        user.password,
        user.email,
        user.first_name,
        user.last_name,
        user.phone_number,
        user.profile_picture,
        user.location,
        id,
      ]
    );

    return updatedUser;
  } catch (error) {
    return error;
  }
};

// delete a single user.
const deleteUser = async (id) => {
  try {
    const deletedUser = await db.any(
      "DELETE FROM users WHERE id = $1 RETURNING *",
      id
    );

    return deletedUser;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllUsers,
  getUserById,
  addUser,
  login,
  updateUser,
  deleteUser,
};

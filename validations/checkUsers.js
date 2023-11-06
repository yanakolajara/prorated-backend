const checkUsername = (req, res, next) => {
  if (!req.body.username) {
    return res.status(400).json({ error: "Username is required" });
  }
  next();
};

const validateURL = (req, res, next) => {
  if (
    req.body.profile_picture.substring(0, 7) === "http://" ||
    req.body.profile_picture.substring(0, 8) === "https://"
  ) {
    return next();
  } else {
    res.status(400).json({
      error: "You forgot to start your photo url with http:// or https://",
    });
  }
};

module.exports = { checkUsername, validateURL };

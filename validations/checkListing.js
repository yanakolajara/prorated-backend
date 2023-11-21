const validateListingServiceId = (req, res, next) => {
  if (!req.body.services_id) {
    return res
      .status(400)
      .json({ Error: "Listing service is required to continue!" });
  } else {
    next();
  }
};

const validateListingTitle = (req, res, next) => {
  if (!req.body.title) {
    return res
      .status(400)
      .json({ Error: "Listing title is required to continue!" });
  } else {
    next();
  }
};

const validateListingSummary = (req, res, next) => {
  if (!req.body.summary) {
    return res
      .status(400)
      .json({ Error: "Listing summary is required to continue!" });
  } else {
    next();
  }
};

module.exports = {
  validateListingServiceId,
  validateListingTitle,
  validateListingSummary,
};

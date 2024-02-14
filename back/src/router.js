const express = require("express");
const router = express.Router();

const controllers = require("./controllers");
router.get("/excuse", controllers.getAllExcuses);
router.get("/excuse/:code", controllers.getExcuseByCode);
router.post("/excuse", controllers.postExcuse);

module.exports = router;

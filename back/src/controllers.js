const Manager = require("./Manager");

const getAllExcuses = async (req, res, next) => {
  try {
    const manager = new Manager({ table: "excuses" });

    const excuses = await manager.readAllExcuses();

    res.json(excuses);
  } catch (err) {
    next(err);
  }
};

const getExcuseByCode = async (req, res, next) => {
  const { code } = req.params;
  try {
    const manager = new Manager({ table: "excuses" });

    const excuseByCode = await manager.readExcuseByCode(code);

    res.json(excuseByCode);
  } catch (err) {
    next(err);
  }
};

const postExcuse = async (req, res, next) => {
  const newExcuse = req.body;
  try {
    const manager = new Manager({ table: "excuses" });
    const insertId = await manager.createExcuse(newExcuse);
    res.status(201).json(insertId);
  } catch (err) {
    next(err);
  }
};

module.exports = {
  getAllExcuses,
  getExcuseByCode,
  postExcuse,
};

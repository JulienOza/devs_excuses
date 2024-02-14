const database = require("../database/client");

class Manager {
  constructor({ table }) {
    this.table = table;
    this.database = database;
  }
  async readAllExcuses() {
    const [rows] = await this.database.query(
      `SELECT *
        FROM ${this.table};`
    );
    return rows;
  }
  async readExcuseByCode(code) {
    const [rows] = await this.database.query(
      `SELECT * FROM ${this.table} WHERE http_code = ?;`,
      [code]
    );
    return rows;
  }
  async createExcuse(newExcuse) {
    const [result] = await this.database.query(
      `INSERT INTO ${this.table} (http_code, tag, message)
      VALUES (?,?,?);`,
      [newExcuse.http_code, newExcuse.tag, newExcuse.message]
    );
    console.log(result);
    return result.insertId;
  }
}

module.exports = Manager;

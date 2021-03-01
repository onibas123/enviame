const mysql = require('mysql');
require('dotenv').config();

const host = process.env.HOST;
const user = process.env.USER;
const password = process.env.PASSWORD;
const database = process.env.DATABASE;

const mysqlConnection = mysql.createConnection({
  host: host,
  user: user,
  password: password,
  database: database,
  multipleStatements: true
});

mysqlConnection.connect(function (err) {
  if (err) {
    console.error(err);
    return;
  } else {
    console.log('is connected!');
  }
});

module.exports = mysqlConnection;
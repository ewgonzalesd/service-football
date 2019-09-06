const mysql = require('mysql');

const pool = mysql.createPool({
    host:'localhost',
    user:'root',
    password:'carcool',
    database:'BDFootball'
});

module.exports = pool;

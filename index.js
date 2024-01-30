const express = require('express');
const mysql = require('mysql');

const app = express();

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'lookbesearch908',
    database: 'mysqlcrashcourse'
});

db.connect();

app.get('/', (req, res) => {
    const sql = 'SELECT * FROM users';
    db.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

app.listen(5000, () => console.log('server'))
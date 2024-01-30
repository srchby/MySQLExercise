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

app.get('/users', (req, res) => {
    db.query('SELECT * FROM users', (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

app.listen(5000, () => console.log('server'))
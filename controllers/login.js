var express = require('express');
var home = require('./home');
var mysql = require('mysql');
var session = require('express-session');
var router = express.Router();
var bodyParser = require('body-parser');
var db = require.main.require('./models/db_controller');
var sweetalert = require('sweetalert2');
const { check, validationResult } = require('express-validator');

router.get('/', function (req, res) {
    res.render('login.ejs');
});

var con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'nodelogin',
    port:3306
});

router.use(
    session({
        secret: 'secret',
        resave: true,
        saveUninitialized: true,
    })
);

router.use(bodyParser.urlencoded({ extended: true }));
router.use(bodyParser.json());

router.post(
    '/',
    [
        check('username').notEmpty().withMessage('Username is required'),
        check('password').notEmpty().withMessage('Password is required'),
    ],
    function (request, response) {
        const errors = validationResult(request);
        if (!errors.isEmpty()) {
            return response.status(422).json({ errors: errors.array() });
        }

        var username = request.body.username;
        var password = request.body.password;

        if (username && password) {
            con.query(
                'SELECT * FROM users WHERE username = ? AND password = ?',
                [username, password],
                function (error, results, fields) {
                    if (error) {
                        console.error('Database query error:', error);
                        response.status(500).send('Internal Server Error');
                        return;
                    }

                    if (results && results.length > 0) {
                        request.session.loggedin = true;
                        request.session.username = username;
                        response.cookie('username', username);
                        var status = results[0].email_status;
                        if (status == 'not_verified') {
                            response.send('Please verify your email');
                        } else {
                            sweetalert.fire('Logged In!');
                            response.redirect('/students');
                        }
                    } else {
                        response.send('Incorrect username / password');
                    }
                }
            );
        } else {
            response.send('Please enter username and password');
        }
    }
);

module.exports = router;
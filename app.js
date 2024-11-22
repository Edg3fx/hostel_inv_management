var express = require ('express');
var session = require ('express-session');
var cookie = require ('cookie-parser');
var path = require ('path');
var ejs= require ('ejs');
var path = require ('path');
var app = express();



var bodyParser = require ('body-parser')

var  login = require ('./controllers/login');
var  home = require ('./controllers/home');
var  signup = require ('./controllers/signup');
var  doc_controller = require ('./controllers/doc_controller');
var reset = require('./controllers/reset_controller');
var set = require('./controllers/set_controller');
var employee = require ('./controllers/employee.js');
var logout = require ('./controllers/logout');
var verify = require ('./controllers/verify');
var store = require ('./controllers/store');
var landing = require ('./controllers/landing');
var complain = require ('./controllers/complain');
var appointment = require ('./controllers/appointment');
var logs = require('./controllers/logs')
var students = require("./controllers/students.js")

var receipt = require ('./controllers/receipt');

var app = express();
var port = 3000;

app.set('view engine', 'ejs');

app.use(express.static('./public'));
app.use(bodyParser.urlencoded({extended : true}));
app.use(bodyParser.json());
app.use(cookie());
//app.use(expressValidator());


var server = app.listen(port ,() => {

    console.log("Server started on port `localhost:" + port + "`");
});

app.use('/login' ,login);
app.use('/home' , home);
app.use('/signup' , signup);
app.use('/doctors', doc_controller);
app.use('/resetpassword' ,reset);
app.use('/setpassword',set);
app.use('/employee',employee);
app.use ('/logout',logout);
app.use ('/verify', verify);
app.use ('/store',store);
app.use ('/',landing);
app.use ('/complain',complain);
app.use ('/appointment',appointment);
app.use('/receipt',receipt);
app.use('/logs', logs);
app.use('/students', students)

// app.use('/doctors/add_doctor',add_doc);
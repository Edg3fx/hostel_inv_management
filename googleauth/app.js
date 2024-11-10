require('dotenv').config();
const express = require('express');
const session = require('express-session');
const passport = require('./auth/passport-config');
const path = require('path');
const db = require('./config/database');

const app = express();

app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: false
}));

app.use(passport.initialize());
app.use(passport.session());

// Serve static files from the 'public' directory
app.use(express.static(path.join(__dirname, 'public')));

// Home route
app.get('/', (req, res) => {
  res.send(`<h1>Welcome to IIITDMJ Auth App</h1>
            ${req.isAuthenticated() ? `<p>Hello, ${req.user.email} | <a href="/logout">Logout</a></p>` : `<a href="/auth/google">Login with Google</a>`}`);
});

// Auth route to initiate Google authentication
app.get('/auth/google', passport.authenticate('google', { scope: ['profile', 'email'] }));

// Callback route for Google authentication
app.get('/auth/google/callback', 
  passport.authenticate('google', { failureRedirect: '/' }),
  (req, res) => {
    console.log("Authenticated successfully, redirecting to /home");
    res.redirect('/home');
  }
);

// Logout route
app.get('/logout', (req, res, next) => {
  req.logout((err) => {
    if (err) { return next(err); }
    console.log("Logged out successfully, redirecting to /home");
    res.redirect('/home');
  });
});

// Route to serve the home.html file
app.get('/home', (req, res) => {
  if (req.isAuthenticated()) {
    res.sendFile(path.join(__dirname, 'public', 'home.html'));
  } else {
    res.redirect('/');
  }
});

app.listen(3000, () => {
  console.log('Server started on http://localhost:3000');
});

const GoogleStrategy = require('passport-google-oauth20').Strategy;
const passport = require('passport');
const db = require('../config/database');

passport.use(new GoogleStrategy({
  clientID: process.env.GOOGLE_CLIENT_ID,
  clientSecret: process.env.GOOGLE_CLIENT_SECRET,
  callbackURL: process.env.CALLBACK_URL
},
    function(accessToken, refreshToken, profile, done) {
    const email = profile.emails[0].value;

    if (email.endsWith("@iiitdmj.ac.in")) {
        db.query('SELECT * FROM user WHERE google_id = ?', [profile.id], function (err, results) {
        if (err) return done(err);

        if (results.length > 0) {
            return done(null, results[0]);
        } else {
            const newUser = { google_id: profile.id, email: email };
            db.query('INSERT INTO user SET ?', newUser, (err, result) => {
            if (err) return done(err);
            newUser.id = result.insertId;
            return done(null, newUser);
            });
        }
        });
    } else {
        return done(null, false, { message: "Access restricted to IIITDMJ users." });
    }
    }));

passport.serializeUser((user, done) => done(null, user.id));
passport.deserializeUser((id, done) => {
  db.query('SELECT * FROM user WHERE id = ?', [id], (err, results) => {
    if (err) return done(err);
    done(null, results[0]);
  });
});

module.exports = passport;

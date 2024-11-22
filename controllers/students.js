var express = require ('express');
var router = express.Router();
var db = require.main.require ('./models/db_controller');

router.get('/',function(req,res){

    res.render('students.ejs');
});

router.get('/addRequest', (req,res) => {
    res.render('addRequest.ejs');
});

router.post('/addRequest', (req,res) => {
    
    db.addRequest(
        req.body.room_no, req.body.resource_id, req.body.student_id,
        req.body.request_date,req.body.quantity, (err,result) => {
            res.redirect('/students');
        });
});
module.exports = router;
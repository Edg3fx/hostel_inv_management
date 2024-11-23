var express = require ('express');
var router = express.Router();
var db = require.main.require ('./models/db_controller');

router.get('/',function(req,res){

    res.render('students.ejs');
});

router.get('/addRequest', (req,res) => {
    var currentDate = new Date();
    var year = currentDate.getFullYear();
    var day = String(currentDate.getDate()).padStart(2, '0');
    var month = String(currentDate.getMonth() + 1).padStart(2, '0');
    var p_date = `${year}-${month}-${day}`;
    console.log('Rendering addRequest with p_date:', p_date); // Debug log
    res.render('addRequest.ejs', { p_date });

});

router.post('/addRequest', (req,res) => {
    
    db.addRequest(
        req.body.room_no, req.body.resource_id, req.body.student_id,
        req.body.request_date,req.body.quantity, (err,result) => {
            res.redirect('/students');
        });
});
module.exports = router;
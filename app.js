const express = require('express');
const path = require('path');
const hbs = require('hbs');

// set the port
const port = process.env.PORT || 3030;

const app = express();

app.use(express.static(path.join(__dirname, '/public')));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.use('/', require('./routes/index'));

app.use((req, res, next) => {
    var err = new Error('Nobody home');
    err.status = 404;
    err.customMessage = "The page that you are looking for has gone on a trip."
    err.details = "In other words, 404 not found."

    next(err);
})

app.use((err, req, res, next) => {
    res.render('error', { data: err, layout: 'errorPage' })
})

app.listen(port, () => {
    console.log(`app is running on ${port}`);
})

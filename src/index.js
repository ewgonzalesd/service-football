const express = require('express');
const app = express();

const morgan = require('morgan');

app.set('port',process.env.PORT ||3000);
app.use(morgan('dev'));
app.use(express.json());


//routes

app.use(require('./routes/football'));

app.listen(app.get('port'),()=>{
    console.log(`Server on port ${app.get('port')}`);
});

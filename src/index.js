var express = require("express");
var app = express();
const Sequelize = require('sequelize');
const path = require('path');
const server = require('http').Server(app);
const session = require('express-session');
const database = new Sequelize(require('./config/database'));
const associationInit = require('./config/associations');
const bodyParser = require('body-parser')
const routes = require('./router');

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }));
app.set('view engine', 'ejs')


database.authenticate().then(() => {associationInit.index()})

app.use(session({
    secret: 'datamegalivrosapp', cookie: { maxAge: 30000000 }
}))

app.use('/',routes);
app.use('/',express.static(path.resolve(__dirname,'public')))
app.use('/imagens', express.static(path.resolve(__dirname, 'public', 'Img')));
app.use('/icons', express.static(path.resolve(__dirname, 'public', 'icons')));



server.listen(3333)

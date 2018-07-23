var express = require("express");
var session = require("express-session");
var app = express();
var bodyParser = require("body-parser");
var sql;

//add bodyparser to fetch form data etc.
var urlencodedParser = bodyParser.urlencoded({ extended: true });
app.use(urlencodedParser);

//set up directories
var dir = "C:/Users/alpay/Documents/VS Code Workspace/Gamersmarket/";
var pubDir = "C:/Users/alpay/Documents/VS Code Workspace/Gamersmarket/public";
var viewsDir = "C:/Users/alpay/Documents/VS Code Workspace/Gamersmarket/views/"
var styleDir = dir + "style";

//set routing folder
app.use("/public", express.static(pubDir));

//create session
app.use(session({
    secret: "Keyboard cat",
    resave: false,
    saveUninitialized: true,
    cookie: { expires: false, maxAge: null }
}));

app.use(function (req, resp, next) {
    resp.locals.session = req.session;
    next();
});

//use ejs as view engine and provide directory
//for easy back and frontend communication
app.engine("html", require("ejs").renderFile);
app.set("view engine", "ejs");
app.set("views", viewsDir);


//initialize server
var server = app.listen(8081, function () {
    var host = server.address().address;
    var port = server.address().port;

    console.log("Listening on... " + port);
});

app.get("/", function(req,resp) {
    resp.render("index");
});
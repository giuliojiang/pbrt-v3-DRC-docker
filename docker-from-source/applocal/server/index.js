var express = require("express");
var jstatik = require("jstatik");

var app = express();
var context = jstatik.createContext();
context.setRootDirectory("/");
app.use("/", jstatik.createApp(context));

app.listen(3000, () => {
    console.info("Listening on port 3000");
});
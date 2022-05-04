const express = require("express");
const path = require("path");
const hbs = require("hbs");
const fileupload = require("express-fileupload");
const PORT = 3006;
require("dotenv").config();
const app = express();

app.use(fileupload ({
    useTempFiles: true,
    tempFileDir: "/tmp"
}));

app.use(express.urlencoded({ extended: false }));

// no se si lo necesito. Revisar junto con el css
app.use(express.static(path.join(__dirname, "public")));

app.set("view engine", "hbs");
app.set("views", path.join(__dirname, "views"));

const routeIndex = require("./routes/index");

app.use("/", routeIndex);

app.listen(PORT, (err) => {
    err? console.log("Error. No corre el servidor") : 
    console.log(`Funcionando en http://localhost:${PORT}`);
});
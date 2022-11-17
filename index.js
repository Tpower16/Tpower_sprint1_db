const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const db = require("./queries");
const port = 3000;

app.use(bodyParser.json());
app.use(
    bodyParser.urlencoded({
        extended: true,
    })
);

app.get("/", (request, response) => {
    response.json({ info: "Node.js, Express, and Postgres API" });
});

app.get("/passengers", db.getUsers);
app.get("/passenger/:id", db.getUserById);
app.get("/search", db.findUsersBySearch);
app.post("/passengers", db.createUser);
app.put("/passengers/:id", db.updateUser);
app.delete("/passengers/:id", db.deleteUser);

app.listen(port, () => {
    console.log(`App running on port ${port}.`);
});

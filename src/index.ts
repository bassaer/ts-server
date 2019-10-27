import * as express from "express";

const app = express();
const PORT = 8080;

app.get("/", (req, res) => {
    res.send("OK\n");
});

app.listen(PORT, () => {
    console.log(`running on http://127.0.0.0:${PORT}`)
});
import express from "express";;
import cors from "cors";
import db from "./config/db.js"
import blogRoutes from "./routes/routes.js"

const app = express();

app.use( cors() );
app.use(express.json());
app.use('/blogs', blogRoutes);

try {
    await db.authenticate();
    console.log("DB connection");
} catch (error) {
    console.log("Error connection DB: $", {error});
}

/*app.get('/', (req, res) => {
    res.send("Hola")
});*/

app.listen(8000, () => {
    console.log("Server running");
})
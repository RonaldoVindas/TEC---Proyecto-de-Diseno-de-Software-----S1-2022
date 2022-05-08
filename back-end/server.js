import express from "express";;
import cors from "cors";
import db from "./config/db.js"
import routes from "./routes/routes.js"

const app = express();

app.use( cors() );
app.use(express.json());
//app.use('/', routes);
app.use('/parqueo', routes);
//app.use('/agregarParqueo', routes);
//app.use('/editarParqueo', routes);

try {
    await db.authenticate();
    console.log("DB connection");
} catch (error) {
    console.log("Error connection DB: $", {error});
}

app.listen(8000, () => {
    console.log("Server running");
})
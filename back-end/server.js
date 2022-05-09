import express from "express";;
import cors from "cors";
import db from "./config/db.js"
import routesParking from "./routes/routesParking.js"
import routesDepartment from "./routes/routesDepartment.js"
import routesAdminUser from "./routes/routesAdminUser.js"

const app = express();

app.use( cors() );
app.use(express.json());
//app.use('/', routes);
app.use('/parking', routesParking);
app.use('/department', routesDepartment);
app.use('/management', routesAdminUser);
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
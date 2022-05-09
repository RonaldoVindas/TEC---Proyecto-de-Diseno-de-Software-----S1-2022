import express from "express";;
import cors from "cors";
import db from "./config/db.js"
import routesParking from "./routes/routesParking.js"
import routesDepartmentRegistroUsuario from "./routes/routesDepartmentRegistroUsuario.js"
import routesAdminUser from "./routes/routesAdminUser.js"
import routesEmail from "./routes/routesEmail.js"
import routesUser_X_Email from "./routes/routesUser_X_Email.js"

const app = express();

app.use( cors() );
app.use(express.json());
app.use('/parking', routesParking);
app.use('/registerUser', routesDepartmentRegistroUsuario);
app.use('/registerUser', routesAdminUser);
//app.use('/registerUser', routesEmail);
//app.use('/registerUser', routesUser_X_Email);

try {
    await db.authenticate();
    console.log("DB connection");
} catch (error) {
    console.log("Error connection DB: $", {error});
}

app.listen(8000, () => {
    console.log("Server running");
})
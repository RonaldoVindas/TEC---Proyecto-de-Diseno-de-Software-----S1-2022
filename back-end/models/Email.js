import db from "../config/db.js";
import { DataTypes } from "sequelize";

const EmailModel = db.define('email', {
    id_email: { type: DataTypes.INTEGER },
    email: { type: DataTypes.STRING }
});

export default EmailModel;
import db from "../config/db.js";
import { DataTypes } from "sequelize";

const EmailModel = db.define('emails', {
    email: { type: DataTypes.STRING }
});

export default EmailModel;
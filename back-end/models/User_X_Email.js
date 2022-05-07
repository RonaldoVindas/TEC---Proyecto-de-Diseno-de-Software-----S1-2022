import db from "../config/db.js";
import { DataTypes } from "sequelize";

const User_X_EmailModel = db.define('user_x_email', {
    id_user: { type: DataTypes.INTEGER },
    id_email: { type: DataTypes.INTEGER }
});

export default User_X_EmailModel;
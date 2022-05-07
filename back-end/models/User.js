import db from "../config/db.js";
import { DataTypes } from "sequelize";

const UserModel = db.define('user', {
    id_user: { type: DataTypes.INTEGER },
    full_name: { type: DataTypes.STRING },
    usuario_password: { type: DataTypes.STRING },
    type_user: { type: DataTypes.STRING },
    phone_number: { type: DataTypes.STRING },
    id_departament: { type: DataTypes.INTEGER }
});

export default UserModel;
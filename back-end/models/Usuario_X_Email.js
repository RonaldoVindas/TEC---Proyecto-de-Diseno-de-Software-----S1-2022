import db from "../config/db.js";
import { DataTypes } from "sequelize";

const Usuario_X_EmailModel = db.define('usuario_x_email', {
    id_usuario: { type: DataTypes.INTEGER },
    id_email: { type: DataTypes.INTEGER }
});

export default Usuario_X_EmailModel;
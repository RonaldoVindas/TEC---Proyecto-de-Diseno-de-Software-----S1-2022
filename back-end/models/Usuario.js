import db from "../config/db.js";
import { DataTypes } from "sequelize";

const UsuarioModel = db.define('usuario', {
    id_usuario: { type: DataTypes.INTEGER },
    nombre_completo: { type: DataTypes.STRING },
    usuario_password: { type: DataTypes.STRING },
    tipo_usuario: { type: DataTypes.STRING },
    numero: { type: DataTypes.STRING },
    id_departamento: { type: DataTypes.INTEGER }
});

export default UsuarioModel;
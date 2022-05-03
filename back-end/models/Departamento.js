import db from "../config/db.js";
import { DataTypes } from "sequelize";

const DepartamentoModel = db.define('departamento', {
    id_departamento: { type: DataTypes.INTEGER },
    nombre: { type: DataTypes.STRING },
    descripcion: { type: DataTypes.STRING }
});

export default DepartamentoModel;
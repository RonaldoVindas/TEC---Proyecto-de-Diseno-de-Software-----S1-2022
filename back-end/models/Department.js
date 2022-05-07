import db from "../config/db.js";
import { DataTypes } from "sequelize";

const DepartmentModel = db.define('departament', {
    id_departamento: { type: DataTypes.INTEGER },
    name_departament: { type: DataTypes.STRING },
    descripcion_department: { type: DataTypes.STRING }
});

export default DepartmentModel;
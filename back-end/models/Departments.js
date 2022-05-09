import db from "../config/db.js";
import { DataTypes } from "sequelize";

const DepartmentModel = db.define('departaments', {
    name_departament: { type: DataTypes.STRING },
    descripcion_department: { type: DataTypes.STRING }
});

export default DepartmentModel;
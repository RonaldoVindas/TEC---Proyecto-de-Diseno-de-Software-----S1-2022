import db from "../config/db.js";
import { DataTypes } from "sequelize";

const VehicleModel = db.define('vehicle', {
    vehicle_plate: { type: DataTypes.STRING },
    vehicle_brand: { type: DataTypes.STRING },
    vehicle_series: { type: DataTypes.STRING },
    id_user: { type: DataTypes.INTEGER }
});

export default VehicleModel;
import db from "../config/db.js";
import { DataTypes } from "sequelize";

const ParkingModel = db.define('parking', {
    name_parking: { type: DataTypes.STRING },
    description_parking: { type: DataTypes.STRING },
    location_parking: { type: DataTypes.STRING },
    schedule_parking: { type: DataTypes.STRING }
});

export default ParkingModel;
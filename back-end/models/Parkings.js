import db from "../config/db.js";
import { DataTypes } from "sequelize";

const ParkingModel = db.define('parkings', {
    name_parking: { type: DataTypes.STRING },
    type_parking: { type: DataTypes.STRING },
    location_parking: { type: DataTypes.STRING },
    schedule_start: { type: DataTypes.STRING },
    schedule_end: { type: DataTypes.STRING },
    space_parking: { type: DataTypes.INTEGER }
});

export default ParkingModel;
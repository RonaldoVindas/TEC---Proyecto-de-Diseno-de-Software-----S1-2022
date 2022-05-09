import express from "express";

import { getAllParkings, getParking, createParking, updateParking, deleteParking } from "../controllers/ParkingsController.js";
import { getAllVehicles, getVehicle, createVehicle, updateVehicle, deleteVehicle } from "../controllers/VehiclesController.js";

const router = express.Router();

////////////////////////////////////////////////////ROUTES PARKING
router.get('/', getAllParkings);
router.get('/:id', getParking);
router.post('/', createParking);
router.put('/:id', updateParking);
router.delete('/:id', deleteParking);

////////////////////////////////////////////////////ROUTES VEHICLE
/*router.get('registrarVehiculo/', getAllVehicles);
router.get('registrarVehiculo/:id', getVehicle);
router.post('registrarVehiculo/', createVehicle);
router.put('registrarVehiculo/:id', updateVehicle);
router.delete('registrarVehiculo/:id', deleteVehicle);*/

export default router;
import express from "express";
//import { getAllBlogs, getBlog, createBlog, updateBlog, deleteBlog } from "../controllers/BlogController.js";

import { getAllDepartments, getDepartment, createDepartment, updateDepartment, deleteDepartment } from "../controllers/DepartmentController.js";
import { getAllEmails, getEmail, createEmail, updateEmail, deleteEmail } from "../controllers/EmailController.js";
import { getAllParkings, getParking, createParking, updateParking, deleteParking } from "../controllers/ParkingController.js";
import { getAllUser_x_Email, getUser_x_Email, createUser_x_Email, updateUser_x_Email, deleteUser_x_Email } from "../controllers/User_X_EmailController.js";
import { getAllUsers, getUser, createUser, updateUser, deleteUser } from "../controllers/UserController.js";
import { getAllVehicles, getVehicle, createVehicle, updateVehicle, deleteVehicle } from "../controllers/VehicleController.js";

const router = express.Router();

/*router.get('/', getAllBlogs);
router.get('/:id', getBlog);
router.post('/', createBlog);
router.put('/:id', updateBlog);
router.delete('/:id', deleteBlog);*/
////////////////////////////////////////////////////ROUTES DEPARTMENT
router.get('registrarDepartamento/', getAllDepartments);
router.get('registrarDepartamento/:id', getDepartment);
router.post('registrarDepartamento/', createDepartment);
router.put('registrarDepartamento/:id', updateDepartment);
router.delete('registrarDepartamento/:id', deleteDepartment);
////////////////////////////////////////////////////ROUTES EMAIL
router.get('registrarUsuario/', getAllEmails);
router.get('registrarUsuario/:id', getEmail);
router.post('registrarUsuario/', createEmail);
router.put('registrarUsuario/:id', updateEmail);
router.delete('registrarUsuario/:id', deleteEmail);
////////////////////////////////////////////////////ROUTES PARKING
router.get('agregarParqueo/', getAllParkings);
router.get('agregarParqueo/:id', getParking);
router.post('agregarParqueo/', createParking);
router.put('agregarParqueo/:id', updateParking);
router.delete('agregarParqueo/:id', deleteParking);
////////////////////////////////////////////////////ROUTES USER_X_EMAIL
router.get('registrarUsuario/', getAllUser_x_Email);
router.get('registrarUsuario/:id', getUser_x_Email);
router.post('registrarUsuario/', createUser_x_Email);
router.put('registrarUsuario/:id', updateUser_x_Email);
router.delete('registrarUsuario/:id', deleteUser_x_Email);
////////////////////////////////////////////////////ROUTES USER
router.get('registrarUsuario/', getAllUsers);
router.get('registrarUsuario/:id', getUser);
router.post('registrarUsuario/', createUser);
router.put('registrarUsuario/:id', updateUser);
router.delete('registrarUsuario/:id', deleteUser);
////////////////////////////////////////////////////ROUTES VEHICLE
router.get('registrarVehiculo/', getAllVehicles);
router.get('registrarVehiculo/:id', getVehicle);
router.post('registrarVehiculo/', createVehicle);
router.put('registrarVehiculo/:id', updateVehicle);
router.delete('registrarVehiculo/:id', deleteVehicle);

export default router;
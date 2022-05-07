import express from "express";
import { getAllBlogs, getBlog, createBlog, updateBlog, deleteBlog } from "../controllers/BlogController.js";

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

////////////////////////////////////////////////////ROUTES EMAIL

////////////////////////////////////////////////////ROUTES PARKING
router.get('agregarParqueo/', getAllParkings);
router.get('agregarParqueo/:id', getParking);
router.post('agregarParqueo/', createParking);
router.put('agregarParqueo/:id', updateParking);
router.delete('agregarParqueo/:id', deleteParking);
////////////////////////////////////////////////////ROUTES USER_X_EMAIL

////////////////////////////////////////////////////ROUTES USER

////////////////////////////////////////////////////ROUTES VEHICLE

export default router;
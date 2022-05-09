import express from "express";

import { getAllEmails, getEmail, createEmail, updateEmail, deleteEmail } from "../controllers/EmailsController.js";
import { getAllUser_x_Email, getUser_x_Email, createUser_x_Email, updateUser_x_Email, deleteUser_x_Email } from "../controllers/Users_X_EmailsController.js";
import { getAllDepartments, getDepartment, createDepartment, updateDepartment, deleteDepartment } from "../controllers/DepartmentsController.js";

const router = express.Router();
////////////////////////////////////////////////////ROUTES
router.get('/', getAllEmails);
router.get('/:id', getEmail);
router.post('/', createEmail);
router.put('/:id', updateEmail);
router.delete('/:id', deleteEmail);

export default router;
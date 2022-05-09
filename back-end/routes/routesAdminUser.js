import express from "express";

import { getAllEmails, getEmail, createEmail, updateEmail, deleteEmail } from "../controllers/EmailsController.js";
import { getAllUser_x_Email, getUser_x_Email, createUser_x_Email, updateUser_x_Email, deleteUser_x_Email } from "../controllers/Users_X_EmailsController.js";
import { getAllUsers, getUser, createUser, updateUser, deleteUser } from "../controllers/UsersController.js";

const router = express.Router();
////////////////////////////////////////////////////ROUTES
router.get('/', getAllEmails, getAllUsers, getAllUser_x_Email);
router.get('/:id', getEmail, getAllUsers, getUser_x_Email);
router.post('/', createEmail, createUser, createUser_x_Email);
router.put('/:id', updateEmail, updateUser, updateUser_x_Email);
router.delete('/:id', deleteEmail, deleteUser, deleteUser_x_Email);

export default router;
import express from "express";

import { getAllUser_x_Email, getUser_x_Email, createUser_x_Email, updateUser_x_Email, deleteUser_x_Email } from "../controllers/Users_X_EmailsController.js";

const router = express.Router();
////////////////////////////////////////////////////ROUTES
router.get('/', getAllUser_x_Email);
router.get('/:id', getUser_x_Email);
router.post('/', createUser_x_Email);
router.put('/:id', updateUser_x_Email);
router.delete('/:id', deleteUser_x_Email);

export default router;
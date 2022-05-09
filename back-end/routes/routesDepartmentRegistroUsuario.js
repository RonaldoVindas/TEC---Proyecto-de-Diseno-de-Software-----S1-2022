import express from "express";

import { getAllDepartments, getDepartment } from "../controllers/DepartmentsController.js";

const router = express.Router();

////////////////////////////////////////////////////ROUTES DEPARTMENT
router.get('/', getAllDepartments);
router.get('/:id', getDepartment);

export default router;
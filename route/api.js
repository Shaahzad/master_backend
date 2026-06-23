import { Router } from "express";
import { registerController } from "../controllers/AuthController.js";

const router = Router()


router.post("/auth/register", registerController)


export default router
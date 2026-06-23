import { userRegisterSchema } from "../validations/uservalidation.js";
import bcrypt from "bcryptjs";
import { ZodError } from "zod";
import { PrismaClient } from "../generated/prisma/index.js";
const prisma = new PrismaClient();

export const registerController = async (req, res) => {
    try {
        if (!req.body) {
            return res.status(400).json({
                message: "Request body is empty"
            });
        }

        const validatedData = userRegisterSchema.parse(req.body);
        const salt = bcrypt.genSaltSync(10)
        validatedData.password = bcrypt.hashSync(validatedData.password, salt)
        delete validatedData.confirmPassword;
        const user = prisma.users.create({
            data: validatedData
        })
        return res.json({
            status: 200,
            message: "User Created Successfully",
            user
        })
    } catch (error) {
        console.error(error); 
        if (error instanceof ZodError) {
            return res.status(400).json({
                success: false,
                message: "Validation failed",
                errors: error.issues.map(err => ({
                    field: err.path.join('.'),
                    message: err.message
                }))
            });
        }
    }
}
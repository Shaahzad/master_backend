import { z } from "zod";

export const userRegisterSchema = z.object({
    name: z
        .string()
        .min(3, "Name must be at least 3 characters")
        .max(150, "Name cannot exceed 150 characters"),
    email: z.string().email(),
    password: z.string().min(6).max(100),
    confirmPassword: z.string(),
})
    .refine((data) => data.password === data.confirmPassword, {
        message: "Passwords do not match",
        path: ["confirmPassword"],
    });
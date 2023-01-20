import { FastifyInstance } from "fastify"
import { prisma } from "./lib/prisma"
// serve para validar dados passados para ele 
import {z} from 'zod'


export async function AppRoutes(app: FastifyInstance) {
    app.post('/habits', async (request) => {

        const createHabitBody = z.object({
            title:z.string(),
            weekDays: z.array(z.number().min(0).max(6))
        })
        const {title, weekDays} = createHabitBody.parse(request.body)

        await prisma.habit.create({
            data:{
                

                
            }
        })
    })
}


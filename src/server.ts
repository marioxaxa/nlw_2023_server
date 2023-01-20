import Fastify from "fastify";
import fastifyCors from "@fastify/cors";
import { AppRoutes } from "./routes";

const app = Fastify()

app.register(fastifyCors)
app.register(AppRoutes)

app.listen({
    port: 3333
}).then(() => {
    console.log('Server on')
})
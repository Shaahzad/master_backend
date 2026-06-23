import express from "express"
import "dotenv/config"
import ApiRoute from "./route/api.js"

const app = express()
app.use(express.json())

const PORT = process.env.PORT || 8000


app.get("/", (req, res) => {
    return res.json({message: "Hello It's working..."})
})

app.use("/api", ApiRoute)


app.listen(PORT, () => console.log(`server is running on PORT ${PORT}`))
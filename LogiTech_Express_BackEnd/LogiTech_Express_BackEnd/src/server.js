require("dotenv").config();
const express = require("express");
const cors = require("cors");

const motoristaRoutes = require("./routes/motoristaRoutes");
const coletaRoutes = require("./routes/coletaRoutes");

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

// Rota de verificação da API.
app.get("/health", (req, res) => {
  res.status(200).json({
    status: "online",
    sistema: "LogiTech Express"
  });
});

// Rotas da aplicação.
app.use("/api/motoristas", motoristaRoutes);
app.use("/api/coletas", coletaRoutes);

// Tratamento de rota inexistente.
app.use((req, res) => {
  res.status(404).json({
    erro: "Rota não encontrada."
  });
});

app.listen(PORT, () => {
  console.log(`LogiTech Express API rodando na porta ${PORT}`);
});

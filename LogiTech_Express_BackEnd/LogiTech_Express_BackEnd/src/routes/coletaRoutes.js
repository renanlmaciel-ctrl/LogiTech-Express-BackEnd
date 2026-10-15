const express = require("express");
const router = express.Router();

const coletaController = require("../controllers/coletaController");

// GET /api/coletas
// Futuramente: listar coletas.
router.get("/", coletaController.listar);

// GET /api/coletas/:id
// Futuramente: consultar uma coleta.
router.get("/:id", coletaController.buscarPorId);

// POST /api/coletas
// Futuramente: criar uma coleta vinculada a motorista e rota.
router.post("/", coletaController.criar);

// PATCH /api/coletas/:id/status
// Futuramente: atualizar somente o status da coleta.
router.patch("/:id/status", coletaController.atualizarStatus);

module.exports = router;

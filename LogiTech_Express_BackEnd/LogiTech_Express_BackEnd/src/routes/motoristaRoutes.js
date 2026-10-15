const express = require("express");
const router = express.Router();

const motoristaController = require("../controllers/motoristaController");

// GET /api/motoristas
// Futuramente: listar motoristas com paginação.
router.get("/", motoristaController.listar);

// GET /api/motoristas/:id
// Futuramente: consultar um motorista específico.
router.get("/:id", motoristaController.buscarPorId);

// POST /api/motoristas
// Futuramente: cadastrar motorista com validações.
router.post("/", motoristaController.criar);

// PUT /api/motoristas/:id
// Futuramente: atualizar motorista.
router.put("/:id", motoristaController.atualizar);

// DELETE /api/motoristas/:id
// Futuramente: remover motorista respeitando integridade.
router.delete("/:id", motoristaController.remover);

module.exports = router;

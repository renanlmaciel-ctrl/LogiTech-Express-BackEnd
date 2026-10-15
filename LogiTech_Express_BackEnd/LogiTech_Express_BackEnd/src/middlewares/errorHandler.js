// Middleware central para padronizar erros.
// Será conectado às rotas quando os Services estiverem implementados.

module.exports = (err, req, res, next) => {
  console.error(err);
  res.status(500).json({
    erro: "Erro interno do servidor."
  });
};

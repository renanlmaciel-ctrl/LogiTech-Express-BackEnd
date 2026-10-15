// Funções de validação reutilizáveis.
// Serão preenchidas na próxima UC de testes.

function campoObrigatorio(valor) {
  return valor !== undefined && valor !== null && String(valor).trim() !== "";
}

module.exports = { campoObrigatorio };

// Controller: recebe a requisição HTTP e devolve a resposta.
// As regras de negócio devem ficar no Service.

exports.listar = async (req, res) => {
  res.status(501).json({ mensagem: "Listagem de motoristas será implementada na próxima UC." });
};

exports.buscarPorId = async (req, res) => {
  res.status(501).json({ mensagem: "Busca de motorista será implementada na próxima UC." });
};

exports.criar = async (req, res) => {
  res.status(501).json({ mensagem: "Cadastro de motorista será implementado na próxima UC." });
};

exports.atualizar = async (req, res) => {
  res.status(501).json({ mensagem: "Atualização de motorista será implementada na próxima UC." });
};

exports.remover = async (req, res) => {
  res.status(501).json({ mensagem: "Remoção de motorista será implementada na próxima UC." });
};

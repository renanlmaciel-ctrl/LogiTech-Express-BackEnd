// Controller: camada responsável pela comunicação HTTP.

exports.listar = async (req, res) => {
  res.status(501).json({ mensagem: "Listagem de coletas será implementada na próxima UC." });
};

exports.buscarPorId = async (req, res) => {
  res.status(501).json({ mensagem: "Busca de coleta será implementada na próxima UC." });
};

exports.criar = async (req, res) => {
  res.status(501).json({ mensagem: "Cadastro de coleta será implementado na próxima UC." });
};

exports.atualizarStatus = async (req, res) => {
  res.status(501).json({ mensagem: "Atualização de status será implementada na próxima UC." });
};

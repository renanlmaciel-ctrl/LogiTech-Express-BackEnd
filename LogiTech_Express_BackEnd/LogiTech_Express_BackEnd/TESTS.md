# TESTS.md — Plano de Testes da LogiTech Express

> Este documento é o planejamento para a próxima Unidade Curricular de Testes. Os testes ainda não são implementados neste projeto.

## 1. Health Check

### CT-001 — API online
- Método: GET
- Rota: `/health`
- Esperado: HTTP 200.
- Corpo esperado: JSON contendo `status: "online"`.

## 2. Motoristas

### CT-002 — Listar motoristas
- GET `/api/motoristas`
- Esperado: HTTP 200.
- Validar que a resposta seja JSON.
- Validar que não existam registros duplicados.

### CT-003 — Buscar motorista existente
- GET `/api/motoristas/:id`
- Esperado: HTTP 200.
- Validar ID e dados retornados.

### CT-004 — Buscar motorista inexistente
- GET `/api/motoristas/999999`
- Esperado: HTTP 404.
- Retornar mensagem de erro clara.

### CT-005 — Criar motorista válido
- POST `/api/motoristas`
- Payload: nome, CPF e telefone válidos.
- Esperado: HTTP 201.

### CT-006 — Impedir CPF duplicado
- POST `/api/motoristas`
- Usar CPF já cadastrado.
- Esperado: HTTP 409 ou erro de validação padronizado.

### CT-007 — Atualizar motorista
- PUT `/api/motoristas/:id`
- Esperado: HTTP 200.
- Confirmar alteração no banco.

### CT-008 — Remover motorista inexistente
- DELETE `/api/motoristas/999999`
- Esperado: HTTP 404.

## 3. Coletas

### CT-009 — Criar coleta válida
- POST `/api/coletas`
- Validar motorista e rota existentes.
- Esperado: HTTP 201.

### CT-010 — Impedir coleta com motorista inexistente
- POST `/api/coletas`
- Enviar `id_motorista` inexistente.
- Esperado: HTTP 400/404, conforme contrato definido.

### CT-011 — Atualizar status válido
- PATCH `/api/coletas/:id/status`
- Exemplo: `PENDENTE` -> `EM_TRANSITO`.
- Esperado: HTTP 200.

### CT-012 — Impedir status inválido
- PATCH `/api/coletas/:id/status`
- Enviar status fora do contrato.
- Esperado: HTTP 400.

### CT-013 — Consultar coleta inexistente
- GET `/api/coletas/999999`
- Esperado: HTTP 404.

## 4. Integridade do Banco

### CT-014 — Chave estrangeira
- Tentar cadastrar coleta com motorista inexistente.
- Esperado: operação recusada.

### CT-015 — CPF único
- Tentar cadastrar dois motoristas com mesmo CPF.
- Esperado: segunda operação recusada.

### CT-016 — Placa única
- Tentar cadastrar dois veículos com mesma placa.
- Esperado: segunda operação recusada.

### CT-017 — N:N de ferramentas
- Associar várias ferramentas ao mesmo veículo.
- Esperado: registros separados em `veiculo_ferramentas`.

## 5. Segurança

### CT-018 — Credenciais fora do código
- Verificar que `.env` não esteja versionado.
- Esperado: `.env` listado no `.gitignore`.

### CT-019 — Payload inválido
- Enviar campos obrigatórios ausentes.
- Esperado: HTTP 400 e mensagem clara.

## 6. Erros e contrato JSON

### CT-020 — Rota inexistente
- GET `/api/rota-que-na-existe`
- Esperado: HTTP 404 e JSON padronizado.

### CT-021 — JSON inválido
- Enviar payload malformado.
- Esperado: erro controlado, sem derrubar o servidor.

## Critérios gerais

- Nenhum teste deve depender da ordem de execução de outro.
- Cada teste deve ter dados controlados.
- O banco deve preservar integridade referencial.
- Respostas da API devem ser JSON.
- Mensagens de erro devem ser objetivas.

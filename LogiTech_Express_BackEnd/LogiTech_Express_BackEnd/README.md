# LogiTech Express — Projeto de Back-End

## Objetivo

Preparar o terreno arquitetural para a próxima Unidade Curricular de Testes, corrigindo os problemas descritos no cenário da LogiTech Express.

O PDF orienta a entrega de:
1. diagnóstico e arquitetura;
2. modelo de banco e esqueleto de rotas;
3. roadmap para a próxima UC;
4. estrutura organizada e documentação de testes. 

## Diagnóstico

### Problema 1 — Dados desorganizados
Motoristas duplicados e ferramentas armazenadas como texto separado por vírgulas dificultam estoque, auditoria e integridade.

### Solução
Banco relacional normalizado, com entidades separadas e tabelas de relacionamento.

### Problema 2 — Back-End misturado
Rotas, lógica de negócio e acesso ao banco estavam conceitualmente misturados.

### Solução
Arquitetura em camadas:
- Routes: define endpoints.
- Controllers: recebe HTTP e responde.
- Services: regras de negócio.
- Repositories: acesso SQL.
- Models: estrutura das entidades.
- Config: conexão com banco.

### Problema 3 — Credenciais expostas
Senhas e tokens não devem ficar no código-fonte.

### Solução
`.env` + `.gitignore`.

## Como executar

```bash
npm install
```

1. Crie o banco executando `database/schema.sql` no MySQL/XAMPP.
2. Opcionalmente execute `database/seed.sql`.
3. Copie `.env.example` para `.env`.
4. Preencha as credenciais do MySQL.
5. Rode:

```bash
npm start
```

A API ficará disponível em `http://localhost:3000`.

Teste:
`GET /health`

> As rotas de domínio estão propositalmente em estado de esqueleto (`501`), pois o objetivo desta etapa é planejamento e arquitetura. A implementação completa e automação dos testes ficam para a próxima UC.

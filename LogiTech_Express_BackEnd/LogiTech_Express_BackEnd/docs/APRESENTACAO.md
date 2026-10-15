# Roteiro da Apresentação — LogiTech Express

## Slide 1 — Título
**LogiTech Express**
Projeto de Back-End — Engenharia, Arquitetura e Modelagem

## Slide 2 — Problema
- Motoristas duplicados.
- Ferramentas em textos separados por vírgula.
- Back-End sem separação de responsabilidades.
- Credenciais expostas no código.

## Slide 3 — Objetivo
- Organizar os dados.
- Normalizar o banco.
- Separar as camadas do Back-End.
- Preparar a próxima UC de testes.

## Slide 4 — Banco de Dados
Entidades principais:
- Motoristas
- Veículos
- Rotas
- Coletas
- Ferramentas
- Alocações
- Veículo_Ferramentas

## Slide 5 — Normalização
**1FN:** uma informação por célula.

**2FN:** cada dado fica na entidade responsável.

**3FN:** eliminar dependências indiretas.

## Slide 6 — Arquitetura
Routes → Controllers → Services → Repositories → MySQL.

Cada camada possui uma responsabilidade.

## Slide 7 — Segurança
- `.env` para credenciais.
- `.gitignore` para impedir envio do `.env`.
- Contratos JSON padronizados.

## Slide 8 — Rotas planejadas
- `/api/motoristas`
- `/api/coletas`
- `/health`

## Slide 9 — Testes planejados
- Cadastro válido.
- Dados inválidos.
- Duplicidade.
- Chaves estrangeiras.
- Status de coleta.
- Rotas inexistentes.
- Segurança.

## Slide 10 — Roadmap
Na próxima UC:
- implementar regras;
- conectar repositories;
- criar testes automatizados;
- validar API;
- corrigir falhas encontradas.

## Fechamento
O projeto deixa a base preparada para crescer sem repetir os problemas que causaram a crise.

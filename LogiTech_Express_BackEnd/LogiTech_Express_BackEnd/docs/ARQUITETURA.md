# Arquitetura

## Fluxo

```text
Cliente / Front-End
        |
        v
      Routes
        |
        v
   Controllers
        |
        v
     Services
        |
        v
   Repositories
        |
        v
      MySQL
```

## Responsabilidade de cada camada

| Camada | Responsabilidade |
|---|---|
| Routes | Define métodos HTTP e endpoints |
| Controllers | Recebe requisição e monta resposta |
| Services | Regras de negócio |
| Repositories | SQL e comunicação com banco |
| Models | Estrutura das entidades |
| Config | Configuração do banco |
| Middlewares | Tratamento transversal, como erros |
| Utils | Funções reutilizáveis |

## Contrato inicial de JSON

### Criar motorista

```json
{
  "nome": "Carlos Silva",
  "cpf": "111.111.111-11",
  "telefone": "(49) 99999-1111"
}
```

### Criar coleta

```json
{
  "codigo_rastreio": "LT20260001",
  "origem": "São Paulo - SP",
  "destino": "Curitiba - PR",
  "data_coleta": "2026-10-01T14:00:00",
  "id_motorista": 1,
  "id_rota": 1
}
```

### Atualizar status

```json
{
  "status": "EM_TRANSITO"
}
```

## Roadmap da próxima UC

1. Implementar repositories.
2. Implementar services.
3. Implementar controllers reais.
4. Criar validações de payload.
5. Padronizar middleware de erros.
6. Implementar testes automatizados.
7. Testar integração com MySQL.
8. Testar casos de erro e integridade.
9. Documentar resultados.

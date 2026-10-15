# DER lógico — LogiTech Express

```text
MOTORISTAS
PK id_motorista
   nome
   cpf UNIQUE
   telefone
   status
      |
      | 1:N
      v
ALOCAÇÕES
PK id_alocacao
FK id_motorista
FK id_veiculo
   data_inicio
   data_fim
      |
      | N:1
      v
VEÍCULOS
PK id_veiculo
   placa UNIQUE
   modelo
   capacidade_kg
   status

VEÍCULOS 1:N VEICULO_FERRAMENTAS N:1 FERRAMENTAS

MOTORISTAS 1:N COLETAS N:1 ROTAS
```

## Relacionamentos

- **Motorista 1:N Coleta:** um motorista pode realizar várias coletas; cada coleta possui um motorista.
- **Rota 1:N Coleta:** uma rota pode estar associada a várias coletas; cada coleta utiliza uma rota.
- **Motorista 1:N Alocação:** um motorista pode ter várias alocações ao longo do tempo.
- **Veículo 1:N Alocação:** um veículo pode possuir várias alocações ao longo do tempo.
- **Veículo N:N Ferramenta:** um veículo pode possuir várias ferramentas e uma ferramenta pode aparecer em vários veículos. A tabela `veiculo_ferramentas` resolve o N:N.

## Normalização aplicada

### 1FN
Os itens de ferramentas não são armazenados como `"Macaco, Lanterna, Kit"` em uma única célula. Cada item possui seu próprio registro.

### 2FN
Dados específicos de motorista, veículo, rota e ferramenta foram separados em suas próprias tabelas.

### 3FN
Atributos dependentes de outras entidades não ficam repetidos na tabela de coletas. Por exemplo, os dados do motorista ficam em `motoristas` e são referenciados por `id_motorista`.

Isso segue o objetivo do material de eliminar listas dentro de células, separar responsabilidades e remover dependências indiretas. 

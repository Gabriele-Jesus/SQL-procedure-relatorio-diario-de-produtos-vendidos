# Relatório Diário de Produtos Vendidos

Este projeto cria uma **procedure SQL** para gerar um relatório diário com a quantidade de produtos vendidos em uma data específica. Ele utiliza duas tabelas principais: `produtos` e `vendas`. Essa solução foi desenvolvida como  para ajudar empresas a automatizar o levantamento diário de informações sobre vendas.

## Estrutura do Projeto

### Tabelas

#### **Tabela: produtos**
Armazena informações sobre os produtos disponíveis para venda.

- `id_produto`: Identificador único do produto (chave primária).
- `nome_produto`: Nome do produto.
- `preco`: Preço do produto.

#### **Tabela: vendas**
Registra as transações realizadas.

- `id_venda`: Identificador único da venda (chave primária).
- `id_produto`: Identificador do produto vendido (chave estrangeira).
- `quantidade`: Quantidade de itens vendidos.
- `data_venda`: Data da venda.

### Procedure

A procedure **`relatorio_diario_vendas`** automatiza a geração do relatório diário. 

- **Parâmetro de Entrada**: `data_especifica` (tipo: `DATE`) – Data para a qual o relatório será gerado.
- **Saída**: Lista de produtos vendidos com as respectivas quantidades somadas para o dia informado.



USE db_ecommerce_exam;
USE db_crm_exam;
USE db_financas_exam;
USE db_prontuario_exam;
USE db_logistica_exam;

--  1. E-commerce e Gestão de Inventário (Exercício 1)
SELECT 
    pedidos.pedido_id, 
    clientes.nome AS nome_cliente, 
    clientes.email AS email_cliente, 
    pedidos.total, 
    pedidos.status
FROM 
    pedidos
INNER JOIN 
    clientes 
ON 
    pedidos.cliente_id = clientes.cliente_id;

-- 2. Sistema de Gestão de Relacionamento com o Cliente (CRM) (Exercício 1)
SELECT 
    clientes.nome, 
    clientes.email, 
    interacoes.tipo, 
    interacoes.detalhes
FROM 
    clientes
LEFT JOIN 
    interacoes 
ON 
    clientes.cliente_id = interacoes.cliente_id;


-- 3. Finanças e Controle Orçamentário (Exercício 2)
SELECT 
    contas.nome AS nome_conta, 
    contas.tipo, 
    transacoes.tipo AS tipo_transacao, 
    transacoes.valor
FROM 
    contas
LEFT JOIN 
    transacoes 
ON 
    contas.conta_id = transacoes.conta_id;

-- 4. Saúde e Gestão de Prontuários Eletrônicos (Exercício 1)
SELECT 
    prontuarios.prontuario_id, 
    pacientes.nome AS nome_paciente, 
    prontuarios.medico, 
    prontuarios.diagnostico
FROM 
    prontuarios
INNER JOIN 
    pacientes 
ON 
    prontuarios.paciente_id = pacientes.paciente_id;

-- 5. Logística e Cadeia de Suprimentos (Exercício 2)
SELECT 
    movimentacao_estoque.movimentacao_id, 
    produtos.nome AS nome_produto, 
    movimentacao_estoque.quantidade, 
    movimentacao_estoque.tipo_movimentacao
FROM 
    movimentacao_estoque
INNER JOIN 
    produtos 
ON 
    movimentacao_estoque.produto_id = produtos.produto_id;

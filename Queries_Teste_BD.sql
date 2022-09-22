-- Recuperações simples com SELECT Statement
select * from oficina.Cliente;

-- Filtros com WHERE Statement
select * from oficina.Cliente where Nome like 'O%';

-- Crie expressões para gerar atributos derivados
select (sum(ValorPecas)+sum(ValorMaoDeObra)) as ValorTotal from oficina.Servico;

-- Defina ordenações dos dados com ORDER BY
select Descricao, (ValorPecas + ValorMaoDeObra) as Total from oficina.Servico order by Total desc;

-- Condições de filtros aos grupos – HAVING Statement
select idPeca from oficina.ServicoPeca group by idPeca having count(idPeca)>1;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
select c.Nome
    from oficina.Cliente c
    inner join oficina.OrdemServico o on c.id = o.idCliente
    inner join oficina.StatusOrdemServico so on so.id = o.idStatusOrdemServico
    WHERE
    so.Identificacao = 'ABERTO'
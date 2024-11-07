
select nome from categoria where nome like'a%';
select nome from categoria where nome like'%s';

select nome from categoria where nome like'a%n';

select cidade from cidade where cidade like'%mar%';

select primeiro_nome, ultimo_nome from ator
where primeiro_nome like 'e%' and ultimo_nome like 'm%';

select primeiro_nome, ultimo_nome 
from ator
where primeiro_nome like 'ed%' 
order by ultimo_nome;

select primeiro_nome, ultimo_nome 
from ator
where primeiro_nome like 'jen%' 
or ultimo_nome like 'pres%'
order by primeiro_nome;



select filme.titulo from filme;

select * from filme where duracao_do_filme <60;

select * from cliente where ativo=0;


select cliente.primeiro_nome, endereco.*,cidade.cidade
from cliente
inner join endereco on
endereco.endereco_id=cliente.endereco_id
inner join cidade on
cidade.cidade_id=endereco.cidade_id
where cliente.ativo=1;


select cliente.primeiro_nome, endereco.*,cidade.cidade,pais.pais
from cliente
inner join endereco on
endereco.endereco_id=cliente.endereco_id
inner join cidade on
cidade.cidade_id=endereco.cidade_id
inner join pais on
pais.pais_id=cidade.pais_id
where pais.pais like 'bra_il';


select concat(ator.primeiro_nome,' ',ator.ultimo_nome)as nome,
filme.titulo as 'nome do filme' from filme
join filme_ator on
filme.filme_id=filme_ator.filme_id
join ator on
ator.ator_id=filme_ator.ator_id;


select concat(ator.primeiro_nome,' ',ator.ultimo_nome)as nome,
filme.titulo as 'nome do filme' from filme
join filme_ator on
filme.filme_id=filme_ator.filme_id
join ator on
ator.ator_id=filme_ator.ator_id
order by filme.titulo ;


select concat(ator.primeiro_nome,' ',ator.ultimo_nome)as nome,
filme.titulo as 'nome do filme' from filme
inner join filme_ator on
filme.filme_id=filme_ator.filme_id
inner join ator on
ator.ator_id=filme_ator.ator_id
order by concat(ator.primeiro_nome,' ',ultimo_nome);



select concat(ator.primeiro_nome,' ',ator.ultimo_nome)as nome,
filme.titulo as 'nome do filme' from filme
inner join filme_ator on
filme.filme_id=filme_ator.filme_id
inner join ator on
ator.ator_id=filme_ator.ator_id
where ator.primeiro_nome= 'Adam'
and ator.ultimo_nome='grant';

select count(cliente_id) as 'Clientes ativos' 
from cliente
where ativo=1;


select count(filme_id) as 'quantidade de filmes' 
from filme;


select sum(valor) as 'soma dos valores' from pagamento;

select avg(valor) as 'valor medio dos valores' from pagamento;

select avg(duracao_do_filme) as 'duracao media dos filmes'
from filme;

select filme.titulo, categoria.nome
from filme
inner join filme_categoria on
filme.filme_id=filme_categoria.filme_id
inner join categoria on
filme_categoria.categoria_id=categoria.categoria_id;

select categoria.nome, count(filme.filme_id)
from filme
inner join filme_categoria on
filme.filme_id=filme_categoria.filme_id
inner join categoria on
filme_categoria.categoria_id=categoria.categoria_id
group by categoria.nome;

select categoria.nome, count(filme.filme_id) as 'qtde'
from filme
inner join filme_categoria on
filme.filme_id=filme_categoria.filme_id
inner join categoria on
categoria.categoria_id=filme_categoria.categoria_id
group by categoria.nome having qtde<57;

select categoria.nome, avg(filme.duracao_do_filme) as 'duracao'
from filme
inner join filme_categoria on
filme.filme_id=filme_categoria.filme_id
inner join categoria on
categoria.categoria_id=filme_categoria.categoria_id
group by categoria.nome having count(filme.filme_id)<57;


SELECT CONCAT(c.primeiro_nome, ' ', c.ultimo_nome) 'Cliente', COUNT(f.filme_id) 'Quantidade'
FROM cliente c
INNER JOIN aluguel a
ON c.cliente_id = a.cliente_id
INNER JOIN inventario i
ON a.inventario_id = i.inventario_id
INNER JOIN filme f
ON f.filme_id = i.filme_id
GROUP BY Cliente;

SELECT CONCAT(c.primeiro_nome, ' ', c.ultimo_nome) 'Cliente', COUNT(f.filme_id) 'Quantidade'
FROM cliente c
INNER JOIN aluguel a
ON c.cliente_id = a.cliente_id
INNER JOIN inventario i
ON a.inventario_id = i.inventario_id
INNER JOIN filme f
ON f.filme_id = i.filme_id
GROUP BY Cliente
ORDER BY Quantidade DESC;


SELECT first_name, last_name, salary,
(SELECT AVG(salary) FROM employees) as 'media'
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);







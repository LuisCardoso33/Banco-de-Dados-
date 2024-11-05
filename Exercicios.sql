
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

querys

select filme.titulo from filme;

select * from filme where duracao_do_filme <60;

select * from cliente where ativo=0;

5
select cliente.primeiro_nome, endereco.*,cidade.cidade
from cliente
inner join endereco on
endereco.endereco_id=cliente.endereco_id
inner join cidade on
cidade.cidade_id=endereco.cidade_id
where cliente.ativo=1;

6
select cliente.primeiro_nome, endereco.*,cidade.cidade,pais.pais
from cliente
inner join endereco on
endereco.endereco_id=cliente.endereco_id
inner join cidade on
cidade.cidade_id=endereco.cidade_id
inner join pais on
pais.pais_id=cidade.pais_id
where pais.pais like 'bra_il';

7
select concat(ator.primeiro_nome,' ',ator.ultimo_nome)as nome,
filme.titulo as 'nome do filme' from filme
join filme_ator on
filme.filme_id=filme_ator.filme_id
join ator on
ator.ator_id=filme_ator.ator_id;

8
select concat(ator.primeiro_nome,' ',ator.ultimo_nome)as nome,
filme.titulo as 'nome do filme' from filme
join filme_ator on
filme.filme_id=filme_ator.filme_id
join ator on
ator.ator_id=filme_ator.ator_id
order by filme.titulo ;

9
select concat(ator.primeiro_nome,' ',ator.ultimo_nome)as nome,
filme.titulo as 'nome do filme' from filme
inner join filme_ator on
filme.filme_id=filme_ator.filme_id
inner join ator on
ator.ator_id=filme_ator.ator_id
order by concat(ator.primeiro_nome,' ',ultimo_nome);

10

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

11
select count(filme_id) as 'quantidade de filmes' 
from filme;


select sum(valor) as 'soma dos valores' from pagamento;

select avg(valor) as 'valor medio dos valores' from pagamento;






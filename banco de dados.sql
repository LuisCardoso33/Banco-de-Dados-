select nome from categoria where nome like'a%';
select nome from categoria where nome like'%s';

select nome from categoria where nome like'a%n';

select cidade from cidade where cidade like'%mar%';

select primeiro_nome, ultimo_nome from ator
where primeiro_nome like 'e%' and ultimo_nome like 'm%';

select primeiro_nome, ultimo_nome from ator
where primeiro_nome like 'ed%' 
order by ultimo_nome;


select primeiro_nome, ultimo_nome 
from ator
where primeiro_nome like 'jen%' 
or ultimo_nome like 'pres%'
order by primeiro_nome;


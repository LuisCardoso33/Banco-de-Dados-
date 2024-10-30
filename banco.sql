select * from ator, filme,filme_ator
where ator.ator_id=filme_ator.ator_id
and filme_ator.filme_id=filme.filme_id;
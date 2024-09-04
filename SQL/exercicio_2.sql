/*Crie uma consulta para cada consulta do exercício anterior que retorne o numero de registros encontrados pela busca:*/

/*Faça uma consulta que retorne os totais de filmes e de categorias:*/
select count(f.film_id) as "Qtde. de Filmes", count(distinct fc.category_id) as "Qtde. de Categorias" 
from film f
inner join film_category fc 
on f.film_id = fc.film_id
inner join category c 
on fc.category_id = c.category_id
order by f.film_id asc

/*Faça uma consulta que retorne a quantidade de atores vinculados a filmes:*/
select count(distinct a.actor_id) as "Qtde. Atores vinculados a Filmes"
from actor a
inner join film_actor fa
on a.actor_id = fa.actor_id

/*Faça uma consulta que retorne a quantidade de atores vinculados a filmes com duração maior que 2h:*/
select count(distinct a.actor_id) as "Qtde. Atores vinculados a Filmes com mais de 2h"
from actor a
inner join film_actor fa
on a.actor_id = fa.actor_id
inner join film f 
on fa.film_id = f.film_id 
where f.`length` > 120
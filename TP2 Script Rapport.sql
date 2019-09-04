
--1. Quels sont les trois passagers qui accèdent à la plateforme le plus souvent et combien de billets ont-ils achetés. 
select client_no_client,count(*) as "Billets acheté" from billets b
join client c
on c.NO_CLIENT = b.CLIENT_NO_CLIENT
group by client_no_client
order by count(*) desc;

--2. La liste des passagers avec leurs revenus par compagnie aérienne (total des achats).
select client_no_client,sum(prix) as "Montant total des achats" from billets b
join client c
on c.NO_CLIENT = b.CLIENT_NO_CLIENT
group by client_no_client
order by b.client_no_client;

--3. La liste des destination populaires, par vols et par revenues.
select destination, count(*) as "Nombre de vol"  from vol
group by destination
order by destination desc;
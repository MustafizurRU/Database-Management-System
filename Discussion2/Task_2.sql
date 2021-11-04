--use pubs
--select * from authors
--select * from publishers


select au_lname,pub_name,authors.city from authors,publishers where authors.city=publishers.city
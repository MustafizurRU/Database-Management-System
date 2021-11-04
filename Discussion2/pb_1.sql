
--1
select * from authors
select * from titleauthor

select au_lname,title_id from authors join titleauthor on authors.au_id=titleauthor.au_id
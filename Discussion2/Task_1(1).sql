select * from authors
select * from titleauthor
select * from titles

select title,au_lname from authors join titleauthor on authors.au_id=titleauthor.au_id join titles on titleauthor.au_id=titleauthor.au_id



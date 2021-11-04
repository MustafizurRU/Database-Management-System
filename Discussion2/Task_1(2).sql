select * from authors
select * from titleauthor
select * from titles
select * from publishers

select title,au_lname,pub_name from authors inner join titleauthor on authors.au_id=titleauthor.au_id inner join titles on titleauthor.title_id=titles.title_id inner join publishers on titles.pub_id=publishers.pub_id
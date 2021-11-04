select title, titles.title_id, au_fname, royalty from titles
join titleauthor on titles.title_id=titleauthor.title_id
join authors on titleauthor.au_id=authors.au_id
where royalty IN(select max(royalty) from titles);
/*
select title,titles.title_id,au_fname,au_lname,royalty from titles
join titleauthor on titles.title_id=titleauthor.title_id
join authors on titleauthor.au_id=authors.au_id
where royalty IN(24)*/

/*

select * from titles;
select * from authors;
select * from titleauthor;

*/

/*

select title, titles.title_id, au_fname, royalty from 
titles join titleauthor on titles.title_id=titleauthor.title_id join authors on titleauthor.au_id=authors.au_id
where royalty IN(select max(royalty) from titles);

*/

/*

select au_fname, max(royalty) from titles
join titleauthor on titles.title_id=titleauthor.title_id
join authors on titleauthor.au_id=authors.au_id
where royalty IN(24)
group by au_fname
having max(royalty)=24

*/

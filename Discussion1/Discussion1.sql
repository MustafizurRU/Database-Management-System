use pubs

/*for 1 No */
select * from sysobjects
select * from sysobjects where xtype='U'
select name from sysobjects where xtype='U'

select * from authors
select * from publishers
select * from titles
select * from titleauthor
select * from stores
select * from sales
select * from roysched
select * from discounts
select * from jobs
select * from pub_info
select * from employee

/*for 2 No */
select * from authors
select au_lname,state from authors
select au_lname,state from authors where state='CA'
select au_lname,state from authors where au_lname='white' and state='CA'

/*for title table task */

/*Task 1 & 2*/
select * from titles
select title,ytd_sales from titles where ytd_sales>8000 
select title,royalty from titles where royalty>=12 and royalty<=24

/*Showing ordered list*/
select * from titles order by price asc
select * from titles order by price desc

/* Showing aggregate values*/
select  max(price) as MaximumPrice from titles 

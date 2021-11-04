use pubs

--1

select * from sysobjects
select Name from sysobjects where xtype ='u'

--2
select * from authors
select au_lname,state from authors
select * from authors where state='ca'
select * from authors where au_lname='white' and state='ca'

--Task-1

select * from titles

select * from titles where ytd_sales>'8000'


--Task-1

select * from titles

select title from titles where royalty>='12' and royalty<='24'


--3

select * from titles

select * from titles order by price asc
select * from titles order by price desc

--4
select * from titles

select max(price) from titles
select min(price) from titles
select avg(price) from titles


--5
select * from titles
select type,max(price) from titles group by type    


--6
select * from titles
select type,avg(price) from titles group by type having avg(price)>15 


--Task-3
select * from titles

select type,"Avg_price"=avg(price),"Total_ytd_sales"=sum(ytd_sales) from titles group by type 


--7
select * from authors

select "Name"=substring(au_fname,1,1)+'.'+au_lname,phone from authors
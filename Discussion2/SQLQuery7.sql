select * from titles where royalty=(select avg(royalty) from titles)
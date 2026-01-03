--10128
---Count the number of movies for which Abigail Breslin was nominated for an Oscar.


CREATE TABLE oscar_nominees (
    year INT,
    category VARCHAR(100),
    nominee VARCHAR(100),
    movie VARCHAR(150),
    winner INT
);


INSERT INTO oscar_nominees (year, category, nominee, movie, winner) VALUES
(2007, 'ACTRESS IN A SUPPORTING ROLE', 'Abigail Breslin', 'Little Miss Sunshine', 0),
(2007, 'ACTRESS IN A LEADING ROLE', 'Helen Mirren', 'The Queen', 1),
(2007, 'ACTRESS IN A LEADING ROLE', 'Meryl Streep', 'The Devil Wears Prada', 0),
(2007, 'ACTOR IN A LEADING ROLE', 'Forest Whitaker', 'The Last King of Scotland', 1),
(2008, 'ACTRESS IN A LEADING ROLE', 'Marion Cotillard', 'La Vie en Rose', 1),
(2009, 'ACTRESS IN A LEADING ROLE', 'Kate Winslet', 'The Reader', 1),
(2010, 'ACTRESS IN A LEADING ROLE', 'Sandra Bullock', 'The Blind Side', 1),
(2011, 'ACTRESS IN A LEADING ROLE', 'Natalie Portman', 'Black Swan', 1),
(2012, 'ACTRESS IN A LEADING ROLE', 'Meryl Streep', 'The Iron Lady', 1),
(2013, 'ACTRESS IN A LEADING ROLE', 'Jennifer Lawrence', 'Silver Linings Playbook', 1),
(2014, 'ACTRESS IN A LEADING ROLE', 'Cate Blanchett', 'Blue Jasmine', 1),
(1990, 'ACTRESS IN A LEADING ROLE', 'Katharine Hepburn', 'On Golden Pond', 1),
(1969, 'ACTRESS IN A LEADING ROLE', 'Katharine Hepburn', 'The Lion in Winter', 1),
(1968, 'ACTRESS IN A LEADING ROLE', 'Katharine Hepburn', 'Guess Who’s Coming to Dinner', 1),
(1934, 'ACTRESS IN A LEADING ROLE', 'Katharine Hepburn', 'Morning Glory', 1);


select * from oscar_nominees order by nominee asc;

--where clause line is redendent 
select count(nominee) as count_number  from oscar_nominees 
where  winner =1 or winner =0
group by nominee 
having nominee ='Abigail Breslin';


select count(nominee) from oscar_nominees
where nominee ='Abigail Breslin';


select count(nominee) from oscar_nominees
group by nominee
having nominee ='Abigail Breslin';


select count(distinct movie) as number_of_movies
from oscar_nominees
where nominee= 'Abigail Breslin' ;
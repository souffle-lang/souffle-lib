/* sqlite */

drop table if exists person;
drop table if exists movie;
drop table if exists cast_of;
drop table if exists sequel;
drop table if exists trivia;
drop view if exists associatedwith;
drop view if exists ages;

create table person(id int, name varchar(20), born date, death date);
create table movie(id int, title varchar(20), year int, director int);
create table cast_of(movie_id int, person_id int);
create table sequel(movie_id int, sequel_id int);
create table trivia(movie_id int, text varchar(1000));

insert into person(id, name, born, death)
values
	(-100, 'James Cameron', '1954-08-16', NULL),
	(-101, 'Arnold Schwarzenegger', '1947-07-30', NULL),
	(-102, 'Linda Hamilton', '1956-09-26', NULL),
	(-103, 'Michael Biehn', '1956-07-31', NULL),
	(-104, 'Ted Kotcheff', '1931-04-07', NULL),
	(-105, 'Sylvester Stallone', '1946-07-06', NULL),
	(-106, 'Richard Crenna', '1926-11-30', '2003-01-17'),
	(-107, 'Brian Dennehy', '1938-07-09', NULL),
	(-108, 'John McTiernan', '1951-01-08', NULL),
	(-109, 'Elpidia Carrillo', '1961-08-16', NULL),
	(-110, 'Carl Weathers', '1948-01-14', NULL),
	(-111, 'Richard Donner', '1930-04-24', NULL),
	(-112, 'Mel Gibson', '1956-01-03', NULL),
	(-113, 'Danny Glover', '1946-07-22', NULL),
	(-114, 'Gary Busey', '1944-07-29', NULL),
	(-115, 'Paul Verhoeven', '1938-07-18', NULL),
	(-116, 'Peter Weller', '1947-06-24', NULL),
	(-117, 'Nancy Allen', '1950-06-24', NULL),
	(-118, 'Ronny Cox', '1938-07-23', NULL),
	(-119, 'Mark L. Lester', '1946-11-26', NULL),
	(-120, 'Rae Dawn Chong', '1961-02-28', NULL),
	(-121, 'Alyssa Milano', '1972-12-19', NULL),
	(-122, 'Bruce Willis', '1955-03-19', NULL),
	(-123, 'Alan Rickman', '1946-02-21', NULL),
	(-124, 'Alexander Godunov', '1949-11-28', '1995-05-18'),
	(-125, 'Robert Patrick', '1958-11-05', NULL),
	(-126, 'Edward Furlong', '1977-08-02', NULL),
	(-127, 'Jonathan Mostow', '1961-11-28', NULL),
	(-128, 'Nick Stahl', '1979-12-05', NULL),
	(-129, 'Claire Danes', '1979-04-12', NULL),
	(-130, 'George P. Cosmatos', '1941-01-04', '2005-04-19'),
	(-131, 'Charles Napier', '1936-04-12', '2011-10-05'),
	(-132, 'Peter MacDonald', NULL, NULL),
	(-133, 'Marc de Jonge', '1949-02-16', '1996-06-06'),
	(-134, 'Stephen Hopkins', NULL, NULL),
	(-135, 'Ruben Blades', '1948-07-16', NULL),
	(-136, 'Joe Pesci', '1943-02-09', NULL),
	(-137, 'Ridley Scott', '1937-11-30', NULL),
	(-138, 'Tom Skerritt', '1933-08-25', NULL),
	(-139, 'Sigourney Weaver', '1949-10-08', NULL),
	(-140, 'Veronica Cartwright', '1949-04-20', NULL),
	(-141, 'Carrie Henn', NULL, NULL),
	(-142, 'George Miller', '1945-03-03', NULL),
	(-143, 'Steve Bisley', '1951-12-26', NULL),
	(-144, 'Joanne Samuel', NULL, NULL),
	(-145, 'Michael Preston', '1938-05-14', NULL),
	(-146, 'Bruce Spence', '1945-09-17', NULL),
	(-147, 'George Ogilvie', '1931-03-05', NULL),
	(-148, 'Tina Turner', '1939-11-26', NULL),
	(-149, 'Sophie Marceau', '1966-11-17', NULL);

insert into movie values (-200, 'The Terminator', 1984, -100);
insert into cast_of values (-200, -101);
insert into cast_of values (-200, -102);
insert into cast_of values (-200, -103);
insert into cast_of values (-200, -207);

insert into movie values (-201, 'First Blood', 1982, -104);
insert into cast_of values (-201, -105);
insert into cast_of values (-201, -106);
insert into cast_of values (-201, -105);
insert into sequel values (-201, -209);

insert into movie values (-202, 'Predator', 1987, -108);
insert into cast_of values (-202, -101);
insert into cast_of values (-202, -109);
insert into cast_of values (-202, -110);
insert into sequel values (-202, -211);

insert into movie values (-203, 'Lethal Weapon', 1987, -111);
insert into cast_of values (-203, -112);
insert into cast_of values (-203, -113);
insert into cast_of values (-203, -114);
insert into sequel values (-203, -212);

insert into movie values (-204, 'RoboCop', 1987, -115);
insert into cast_of values (-204, -116);
insert into cast_of values (-204, -117);
insert into cast_of values (-204, -118);

insert into movie values (-205, 'Commando', 1985, -119);
insert into cast_of values (-205, 101);
insert into cast_of values (-205, 120);
insert into cast_of values (-205, 121);
insert into trivia values (-205, 'In 1986, a sequel was written with an eye to having John McTiernan direct. Schwarzenegger wasn''t interested in reprising the role. The script was then reworked with a new central character, eventually played by Bruce Willis, and became Die Hard');

insert into movie values (-206, 'Die Hard', 1988, -108);
insert into cast_of values (-206, -122);
insert into cast_of values (-206, -123);
insert into cast_of values (-206, -124);

insert into movie values (-207, 'Terminator 2: Judgment Day', 1991, -100);
insert into cast_of values (-207, -101);
insert into cast_of values (-207, -102);
insert into cast_of values (-207, -125);
insert into cast_of values (-207, -126);
insert into sequel values (-207, -208);

insert into movie values (-208, 'Terminator 3: Rise of the Machines', 2003, -127);
insert into cast_of values (-208, -101);
insert into cast_of values (-208, -128);
insert into cast_of values (-208, -129);

insert into movie values (-209, 'Rambo: First Blood Part II', 1985, -130);
insert into cast_of values (-209, -105);
insert into cast_of values (-209, -106);
insert into cast_of values (-209, -131);
insert into sequel values (-209, -210);

insert into movie values (-210, 'Rambo III', 1988, -132);
insert into cast_of values (-210, -105);
insert into cast_of values (-210, -106);
insert into cast_of values (-210, -133);

insert into movie values (-211, 'Predator 2', 1990, -134);
insert into cast_of values (-211, -113);
insert into cast_of values (-211, -114);
insert into cast_of values (-211, -135);

insert into movie values (-212, 'Lethal Weapon 2', 1989, -111);
insert into cast_of values (-212, -112);
insert into cast_of values (-212, -113);
insert into cast_of values (-212, -136);
insert into sequel values (-212, -213);

insert into movie values (-213, 'Lethal Weapon 3', 1992, -111);
insert into cast_of values (-213, -112);
insert into cast_of values (-213, -113);
insert into cast_of values (-213, -136);

insert into movie values (-214, 'Alien', 1979, -137);
insert into cast_of values (-214, -138);
insert into cast_of values (-214, -139);
insert into cast_of values (-214, -140);
insert into sequel values (-214, -215);

insert into movie values (-215, 'Aliens', 1986, -100);
insert into cast_of values (-215, -139);
insert into cast_of values (-215, -141);
insert into cast_of values (-215, -103);

insert into movie values (-216, 'Mad Max', 1979, -142);
insert into cast_of values (-216, -112);
insert into cast_of values (-216, -143);
insert into cast_of values (-216, -144);
insert into sequel values (-216, -217);

insert into movie values (-217, 'Mad Max 2', 1981, -142);
insert into cast_of values (-217, -112);
insert into cast_of values (-217, -145);
insert into cast_of values (-217, -146);
insert into sequel values (-217, -218);

insert into movie values (-218, 'Mad Max Beyond Thunderdome', 1985, -142);
insert into movie values (-218, 'Mad Max Beyond Thunderdome', 1985, -147); /* multiple directors */
insert into cast_of values (-218, -112);
insert into cast_of values (-218, -148);

insert into movie values (-219, 'Braveheart', 1995, -112);
insert into cast_of values (-219, -112);
insert into cast_of values (-219, -149);


/* chapter 1 */
select id from movie where year=1987;

/* chapter 2 */
select title from movie where year=1987;
select person.name
from person
    inner join cast_of on person.id=cast_of.person_id
    inner join movie on movie.id=cast_of.movie_id
where movie.title='Lethal Weapon';

/* chapter 3 */
with james as (select id from person where name='James Cameron'),
     arnold as (select id from person where name='Arnold Schwarzenegger'),
     james_movies as (select movie.id from movie inner join james on movie.director = james.id),
     arnold_movies as (select movie_id as id from cast_of inner join arnold on cast_of.person_id = arnold.id)
select title
from movie natural join (select * from james_movies intersect select * from arnold_movies);

/* Chapter 5 */
select title from movie where year<=1979;

/* Chapter 6 */
/* SQLite-specific function: julianday() */
create view ages as
       select name, cast((julianday('now')-julianday(born))/365 as int) as age from person;
select name from ages where age=70;

/* Chapter 7 */
select count(*) from movie;

create view associatedwith as
select * from cast_of
union
select id as movie_id, director as person_id from movie;

/* Chapter 8 */
select name
       from movie
       inner join associatedwith as a on movie.id=a.movie_id
       inner join person as p on p.id=a.person_id
       where title='Predator';

select name
       from movie as m, associatedwith as a, person as p
       where m.id=a.movie_id and p.id=a.person_id and m.title='Predator';

select name1, count(*) as n
from (select distinct p1.name as name1, p2.name as name2, a1a.movie_id, a1b.movie_id
     from person as p1
     inner join person as p2 on p1.id!=p2.id
     inner join associatedwith as a1a on p1.id=a1a.person_id
     inner join associatedwith as a1b on p1.id=a1b.person_id and a1a.movie_id<a1b.movie_id
     inner join associatedwith as a2a on p2.id=a2a.person_id and a1a.movie_id=a2a.movie_id
     inner join associatedwith as a2b on p2.id=a2b.person_id and a1b.movie_id=a2b.movie_id)
group by name1
having count(*)>1;


select name1, count(*) as n
from (select distinct p1.name as name1, p2.name as name2, a1a.movie_id, a1b.movie_id
     from person as p1, person as p2, associatedwith as a1a, associatedwith as a1b,
     	  associatedwith as a2a, associatedwith as a2b
     where p1.id!=p2.id and p1.id=a1a.person_id and
  	p1.id=a1b.person_id and a1a.movie_id<a1b.movie_id and
  	p2.id=a2a.person_id and a1a.movie_id=a2a.movie_id and
	p2.id=a2b.person_id and a1b.movie_id=a2b.movie_id)
group by name1
having count(*)>1;


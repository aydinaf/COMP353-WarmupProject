-- Populated Tables and Insert Statements: 

-- Articles: 

Insert into Articles 
values(11, 11, null,"Covid in the Population" ,"Covid in the general public", "How people deal with Covid", "The implications covid has on the population and the populations response to covid.","Sample Description", '2021-07-15');
Insert into Articles 
values(12, 11, null, "Covid Solutions", "Finding the solution to covid", "What vaccines work best", "Focusses on the effectiveness of different vaccines, how vaccines can minimize the impact of Covid","Sample Description", '2020-04-25');
Insert into Articles 
values(13, 11, null, "Smallpox and Vaccines","How smallpox was removed from the population", "Why vaccines work", "An explanation of how vaccines were used to remove smallpox from the population","Sample Description", '2018-03-10')
Insert into Articles 
values(4, 6, null, "Sample article 4", "sample MajorTopic4", "sample minortopic4", "sample summary 4", "sample description 4", '2017-05-20');
Insert into Articles 
values(15, 13, null, "Sample article 5", "sample MajorTopic5", "sample minortopic5", "sample summary 5", "sample description 5", '2017-05-20');
   Insert into Articles 
values(16, 14, null, "Sample article 6", "sample MajorTopic6", "sample minortopic6", "sample summary 6", "sample description 6", '2018-05-20');
   Insert into Articles 
values(14, 15, null, "Sample article 7", "sample MajorTopic7", "sample minortopic7", "sample summary 7", "sample description 7", '2019-05-20');
   Insert into Articles 
values(8, 16, null, "Sample article 8", "sample MajorTopic8", "sample minortopic8", "sample summary 8", "sample description 8", '2010-05-20');
   Insert into Articles 
values(9, 17, null, "Sample article 9", "sample MajorTopic9", "sample minortopic9", "sample summary 9", "sample description 9", '2011-05-20');
   Insert into Articles 
values(10, 18, null, "Sample article 10", "sample MajorTopic10", "sample minortopic10", "sample summary 10", "sample description 10", '2012-05-20');
insert into Articles 
values(7, 19, null, "Sample article 11", "sample MajorTopic11", "sample minortopic11", "sample summary 11", "sample description 11", '2013-05-20');
   Insert into Articles 
values(6, 20, null, "Sample article 12", "sample MajorTopic12", "sample minortopic12", "sample summary 12", "sample description 12", '2014-05-20');
   Insert into Articles 
values(5, 21, null, "Sample article 13", "sample MajorTopic13", "sample minortopic13", "sample summary 13", "sample description 13", '2015-05-20');

-- Countries:

insert into Countries
    values (1, "South Africa", "Africa", 59310000, 1);
insert into Countries
    values (2, "Ghana", "Africa", 31070000, 2);
insert into Countries
    values (3, "France", "Europe", 67390000, 3);
insert into Countries
    values (4, "Britain", "Europe", 67220000, 4);
   insert into Countries
    values (5, "Canada", "Americas", 38010000, 5);
insert into Countries
    values (6, "United States", "Americas", 329500000, 6);
insert into Countries
    values (7, "Israel", "Eastern Mediterranean", 9217000, 7);
insert into Countries
    values (8, "Egypt", "Eastern Mediterranean", 102300000, 8);
   insert into Countries
    values (9, "Singapore", "South-East Asia", 5686000, 9);
insert into Countries
    values (10, "Thailand", "South-East Asia", 69800000, 10);
insert into Countries
    values (11, "China", "Western Pacific", 1402000000, 11);
insert into Countries
    values (12, "Cambodia", "Western Pacific", 16720000, 12);

-- Organizations:

insert into Orginizations 
    values (1, "South Africa Government", 'government agency');
insert into Orginizations 
    values (2, "Ghana Government", 'government agency');
insert into Orginizations 
    values (3, "France Government", 'government agency');
insert into Orginizations 
    values (4, "Britain Government", 'government agency');
   insert into Orginizations 
    values (5, "Canada Government", 'government agency');
insert into Orginizations 
    values (6, "United States Government", 'government agency');
insert into Orginizations 
    values (7, "Israel Government", 'government agency');
insert into Orginizations 
    values (8, "Egypt Government", 'government agency');
   insert into Orginizations 
    values (9, "Singapore Government", 'government agency');
insert into Orginizations 
    values (10, "Thailand Government", 'government agency');
insert into Orginizations 
    values (11, "China Government", 'government agency');
insert into Orginizations 
    values (12, "Cambodia Government", 'government agency');
insert into Orginizations 
    values (13, "Israel Research Center", 'research center');
insert into Orginizations 
    values (14, "Egypt Research Center", 'research center');
   insert into Orginizations 
    values (15, "Singapore Research Center", 'research center');
insert into Orginizations 
    values (16, "Thailand Research Center", 'research center');
insert into Orginizations 
    values (17, "China Research Center", 'research center');
insert into Orginizations 
    values (18, "Cambodia Research Center", 'research center');

-- Organizations:

insert into Orginizations 
    values (1, "South Africa Government", 'government agency');
insert into Orginizations 
    values (2, "Ghana Government", 'government agency');
insert into Orginizations 
    values (3, "France Government", 'government agency');
insert into Orginizations 
    values (4, "Britain Government", 'government agency');
   insert into Orginizations 
    values (5, "Canada Government", 'government agency');
insert into Orginizations 
    values (6, "United States Government", 'government agency');
insert into Orginizations 
    values (7, "Israel Government", 'government agency');
insert into Orginizations 
    values (8, "Egypt Government", 'government agency');
   insert into Orginizations 
    values (9, "Singapore Government", 'government agency');
insert into Orginizations 
    values (10, "Thailand Government", 'government agency');
insert into Orginizations 
    values (11, "China Government", 'government agency');
insert into Orginizations 
    values (12, "Cambodia Government", 'government agency');
insert into Orginizations 
    values (13, "Israel Research Center", 'research center');
insert into Orginizations 
    values (14, "Egypt Research Center", 'research center');
   insert into Orginizations 
    values (15, "Singapore Research Center", 'research center');
insert into Orginizations 
    values (16, "Thailand Research Center", 'research center');
insert into Orginizations 
    values (17, "China Research Center", 'research center');
insert into Orginizations 
    values (18, "Cambodia Research Center", 'research center');

-- Regions:

insert into Regions
    values ("Africa");
insert into Regions
    values ("Americas");
insert into Regions
    values ("Eastern Mediterranean");
insert into Regions
    values ("Europe");
insert into Regions
    values ("South-East Asia");
insert into Regions
    values ("Western Pacific");

-- Users:

insert into Users
    values (1, "Ryan", "Feher", 'administrator', 5, "fakemail@gmail.com", "514-444-4444");
insert into Users
    values (2, "Sam", "Smith", 'administrator', 4,"fakemail2@gmail.com", "514-434-3434" );
insert into Users
    values (3, "Tom", "Tam", 'researcher', 3, "fakemail3@gmail.com","438-455-0986");
insert into Users
    values (4, "Tim", "Tat", 'researcher', 2, "fakemail4@gmail.com","514-444-4344");
   insert Users
    values (5, "Sarah", "Smith", 'researcher', 1, "fakeemail5@gmail.com","514-444-9844");
insert into Users
    values (6, "Henry", "Harley", 'delegate', 6, "fakeemail6@gmail.com","514-430-9852");
insert into Users
    values (7, "Jen", "Blacksmith", 'delegate', 7,"fakemail7@gmail.com", "514-223-4345");
insert into Users
    values (8, "Tifa", "Farmer", 'regular', 8, "fakemail8@gmail.com", "513-547-7652" );
   insert into Users
    values (9, "Jones", "Smith", 'regular', 9, "fakemail9@gmail.com", "904-345-0133" );
insert into Users
    values (10, "Frank", "Philson", 'regular', 10, "fakemail10@gmail.com", "109-434-5454" );
insert into Users
    values (11, "Joe", "Smith", 'researcher', 5, "fakemail11@gmail.com", "109-434-5454", '1995-06-06', 13);
insert into Users
    values (13, "Tom", "Till", 'researcher', 2, "fakemail13@gmail.com", "119-434-5454", '1994-06-06', null);
   insert into Users
    values (14, "Tex", "Tax", 'researcher', 3, "fakemail14@gmail.com", "129-434-5454", '1993-06-06', null);
   insert into Users
    values (15, "Sam", "Smith", 'researcher', 4, "fakemail15@gmail.com", "139-434-5454", '1992-06-06', null);
   insert into Users
    values (16, "Mark", "Nax", 'researcher', 7, "fakemail16@gmail.com", "149-434-5454", '1991-06-06', null);
insert into Users
    values (17, "Nile", "Miles", 'researcher', 8, "fakemail17@gmail.com", "159-434-5454", '1990-06-06', null);
   insert into Users
    values (18, "Miles", "Nile", 'researcher', 9, "fakemail18@gmail.com", "169-434-5454", '1989-06-06', null);
   insert into Users
    values (19, "Mindy", "More", 'researcher', 10, "fakemail19@gmail.com", "179-434-5454", '1988-06-06', null);
   insert into Users
    values (20, "Sarah", "Towns", 'researcher', 11, "fakemail20@gmail.com", "189-434-5454", '1987-06-06', null);
      insert into Users
    values (21, "Rare", "Rune", 'researcher', 12, "fakemail21@gmail.com", "199-434-5454", '1986-06-06', null);

-- Vaccinations:

insert into Vaccinations 
    values (1, 1, 500000);
insert into Vaccinations 
    values (2, 1, 345343);
insert into Vaccinations 
    values (3, 1, 142344);
insert into Vaccinations 
    values (4, 2, 42344);
   insert into Vaccinations 
    values (5, 2, 994344);
insert into Vaccinations 
    values (6, 2, 134244);
insert into Vaccinations 
    values (7, 3, 1423432);
insert into Vaccinations 
    values (8, 3, 454000);
   insert into Vaccinations 
    values (9, 3, 30000);
insert into Vaccinations 
    values (10, 4, 4324234);
insert into Vaccinations 
    values (11, 4, 5050000);
insert into Vaccinations 
    values (12, 4, 1000000);

-- Vaccines:
insert into Vaccines 
    values (1, "Pfizer");
insert into Vaccines 
    values (2, "Moderna");
insert into Vaccines 
    values (3, "AstraZeneca");
insert into Vaccines 
    values (4, "Johnson & Johnson");



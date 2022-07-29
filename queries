-- Query 1:
Select Countries.regionName AS 'Region Name', Sum(Records.population) AS 'Population', Sum((Records.pfizerVaccinations + Records.modernaVaccinations + Records.astrazenecaVaccinations + Records.JandJVaccinations)) AS 'Covid Vaccinations', Sum((Records.unvaccinatedDeaths + Records.pfizerDeaths + Records.modernaDeaths + Records.astrazenecaDeaths + Records.JandJDeaths)) as 'Covid Deaths', max(Records.dateOfReport) AS 'Date of Report' from Records inner join Countries on Countries.countryID = Records.countryID group by Countries.regionName order by Countries.regionName ASC

-- Query 2:
Select Countries.regionName AS 'Region Name', Countries.countryName AS 'Country Name', Records.population AS 'Population',
 (Records.pfizerVaccinations + Records.modernaVaccinations + Records.astrazenecaVaccinations + Records.JandJVaccinations) AS 'Covid Vaccinations',
 (Records.unvaccinatedDeaths + Records.pfizerDeaths + Records.modernaDeaths + Records.astrazenecaDeaths + Records.JandJDeaths) as 'Covid Deaths',
max(Records.dateOfReport) AS 'Date of Report' from Records inner join Countries on Countries.countryID = Records.countryID group by Records.countryID order by Countries.regionName, Countries.countryName ASC

-- Query 3:

SELECT countryName, vaccineName, vaccinated, deaths FROM Vaccines, Vaccinations, Countries, Cases WHERE Countries.countryID = Cases.countryID AND regionName = 'Americas' AND (Cases.CountryID, Cases.VaccineID) = (Vaccinations.countryID, Vaccinations.vaccineID) AND Vaccines.vaccineID = Vaccinations.vaccineID ORDER BY deaths ASC;

-- Query 4:

SELECT regionName, SUM(population) as 'Population' FROM Countries
GROUP BY regionName; 

SELECT regionName, COUNT(*) as 'Researchers' FROM Users, Countries
WHERE userType = 'researcher'
AND Users.citizenship = Countries.countryID
GROUP BY regionName;

SELECT regionName, COUNT(*) as 'Articles' FROM Users, Countries, Articles
WHERE Users.userID = Articles.articleID
AND Users.citizenship = Countries.countryID
GROUP BY regionName;

SELECT regionName, COUNT(*) / COUNT(distinct Articles.userID) as 'Average # Articles By Researcher' FROM Users, Countries, Articles
WHERE Users.userID = Articles.articleID
AND Users.citizenship = Countries.countryID
GROUP BY regionName;

SELECT regionName,  COUNT(*) / SUM(population) as 'Average # Researchers By Populations' FROM Users, Countries
WHERE userType = 'researcher'
AND Users.citizenship = Countries.countryID
GROUP BY regionName;

-- Query 5:

Select Records.dateOfReport AS 'Date of Report', Records.population AS 'Population', 
(Records.pfizerVaccinations + Records.modernaVaccinations + Records.astraZenecaVaccinations + Records.JandJVaccinations) Vaccinations,
(Records.unvaccinatedCases + Records.pfizerCases + Records.modernaCases + Records.astraZenecaCases + Records.JandJCases) Cases,
(Records.unvaccinatedDeaths + Records.pfizerDeaths + Records.modernaDeaths + Records.astraZenecaDeaths + Records.JandJDeaths) Deaths
From Records 
Inner Join Countries on Records.countryID = Countries.countryID 
Where Countries.countryName = "Canada"
order by Records.dateOfReport DESC

-- Query 6:

Select  Articles.publicationDate as 'Date Published', Articles.article AS 'Article', Articles.majorTopic AS 'Major Topic', Articles.minorTopic AS 'Minor Topic', Articles.summary AS 'Summary'
From Articles  
Inner Join Users on Users.userID = Articles.userID 
where Users.firstName = "Joe" and Users.lastName = "Smith" and Users.userType = 'researcher'
order by Articles.publicationDate ASC 

-- Query 7:

Select  Articles.publicationDate as 'Date Published', Articles.article AS 'Article', Articles.majorTopic AS 'Major Topic', Articles.minorTopic AS 'Minor Topic', Articles.summary AS 'Summary', Articles.description AS 'Description'
From Articles  
Inner Join Users on Users.userID = Articles.userID 
where Users.firstName = "Joe" and Users.lastName = "Smith" and Users.userType = 'researcher'
order by Articles.publicationDate DESC
Limit 1

-- Query 8:

SELECT userType AS Privilage, firstName AS 'Name', lastName AS 'Last Name', email AS Email, phone AS Phone, citizenship AS Citizenship, dateOfBirth as 'Date of Birth', Orginizations.orgName AS 'Org Name'
FROM Users
LEFT JOIN Orginizations on Users.orgID = Orginizations.orgID
ORDER BY Privilage ASC, citizenship ASC, 'Date of Birth' ASC;

-- Query 9:

SELECT Users.firstName AS 'First Name',Users.lastName AS 'Last Name',Users.email AS 'Email', Users.phone AS 'Phone Number', Users.dateOfBirth AS 'Date of Birth', Countries.countryName AS Citizenship, count(*) AS 'Number of Published Articles'
FROM Users JOIN Articles ON Articles.userID = Users.userID JOIN Countries ON Users.citizenship = Countries.countryID
GROUP BY Articles.userID HAVING Count(*) = (SELECT count(*)
FROM Users JOIN Articles ON Articles.userID = Users.userID
GROUP BY Articles.userID LIMIT 1)

-- Query 10:

SELECT Users.firstName AS 'First Name', Users.lastName AS 'Last Name',Users.email AS 'Email', Users.phone AS 'Phone Number', Users.dateOfBirth AS 'Date of Birth', Countries.countryName AS Citizenship
FROM Users
JOIN Countries ON Users.citizenship = Countries.countryID
WHERE Users.userID NOT IN (SELECT Articles.userID FROM Articles);




























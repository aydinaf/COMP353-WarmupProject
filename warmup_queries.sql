CREATE TABLE Regions (
regionName varchar(255) primary key
);

CREATE TABLE Countries (
countryID int not null auto_increment,
countryName varchar(255) not null,
regionName varchar(255) not null,
population int not null,
foreign key (regionName)
	references Regions(regionName)
    on delete cascade,
primary key(countryID)
);

CREATE TABLE Vaccines (
vaccineID int not null auto_increment,
vaccineName varchar(255) not null,
primary key(vaccineID)
);

CREATE TABLE Vaccinations (
countryID int not null,
vaccineID int not null,
vaccinated int,
foreign key (countryID)
	references Countries(countryID)
    on delete cascade,
foreign key (vaccineID)
	references Vaccines(vaccineID)
    on delete cascade,
primary key(countryID, vaccineID)
);

CREATE TABLE Cases (
caseID int not null auto_increment,
countryID int not null,
vaccineID int,
infections int not null,
deaths int not null,
foreign key (countryID)
	references Countries(countryID)
    on delete cascade,
foreign key (vaccineID)
	references Vaccines(vaccineID)
    on delete cascade,
primary key(caseID)
);

CREATE TABLE Users (
userID int not null auto_increment,
firstName varchar(255),
lastName varchar(255),
userType enum('administrator', 'researcher', 'delegate', 'regular'),
primary key(userID)
);

CREATE TABLE Articles (
articleID int not null auto_increment,
author varchar(255) not null,
majorTopic varchar(255) not null,
minorTopic varchar(255),
summary varchar(255),
publication date not null,
primary key(articleID)
);
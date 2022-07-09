CREATE TABLE Regions (
regionName varchar(255) primary key
);

CREATE TABLE Countries (
countryID int not null auto_increment,
countryName varchar(255) not null,
regionName varchar(255) not null,
population int not null,
totalCovidDeaths int not null,
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
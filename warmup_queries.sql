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

CREATE TABLE Manufacturers (
manufacturerName varchar(255) primary key
);

CREATE TABLE Vaccines (
vaccineID int not null auto_increment,
vaccineName varchar(255) not null,
manufacturer varchar(255) not null,
foreign key (manufacturer)
	references Manufacturers(manufacturerName)
    on delete cascade,
primary key(vaccineID)
);

CREATE TABLE Vaccinations (
countryID int,
vaccineID int,
);
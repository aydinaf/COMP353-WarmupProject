CREATE TABLE Regions (
regionName varchar(255) primary key
);

CREATE TABLE Countries (
countryID int not null auto_increment,
countryName varchar(255) not null,
regionName varchar(255) not null,
population int not null,
govAgency int not null,
foreign key (regionName)
	references Regions(regionName)
    on delete cascade
    on update cascade,
foreign key (govAgency)
	references Orginizations(orgID)
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
firstName varchar(255) not null,
lastName varchar(255) not null,
citizenship int not null,
email varchar(255),
phone varchar(255),
userType enum('administrator', 'researcher', 'delegate', 'regular') default 'regular',
foreign key(citizenship)
	references Countries(countryID)
    on delete cascade,
primary key(userID)
);

CREATE TABLE Researchers (
researcherID int not null auto_increment,
firstName varchar(255),
lastName varchar(255),
primary key(researcherID)
);

CREATE TABLE Articles (
articleID int not null auto_increment,
researcherID int,
orgID int,
majorTopic varchar(255) not null,
minorTopic varchar(255),
summary varchar(100),
publication date not null,
foreign key (researcherID)
	references Researchers(researcherID)
    on delete cascade,
foreign key (orgID)
	references Orginizations(orgID)
    on delete cascade,    
primary key(articleID)
);

CREATE TABLE Orginizations (
orgID int not null auto_increment,
orgName varchar(255) not null,
orgType enum('company', 'research center', 'government agency') default 'government agency',
primary key(orgID)
);


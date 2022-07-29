-- Articles:

CREATE TABLE `Articles` (
  `articleID` int NOT NULL AUTO_INCREMENT,
  `userID` int DEFAULT NULL,
  `orgID` int DEFAULT NULL,
  `article` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `majorTopic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minorTopic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publicationDate` date NOT NULL,
  PRIMARY KEY (`articleID`),
  KEY `userID` (`userID`),
  KEY `orgID` (`orgID`),
  CONSTRAINT `Articles_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `Users` (`userID`) ON DELETE CASCADE,
  CONSTRAINT `Articles_ibfk_2` FOREIGN KEY (`orgID`) REFERENCES `Orginizations` (`orgID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Cases: 

CREATE TABLE `Cases` (
  `caseID` int NOT NULL AUTO_INCREMENT,
  `countryID` int NOT NULL,
  `vaccineID` int DEFAULT NULL,
  `infections` int NOT NULL,
  `deaths` int NOT NULL,
  PRIMARY KEY (`caseID`),
  KEY `countryID` (`countryID`),
  KEY `vaccineID` (`vaccineID`),
  CONSTRAINT `Cases_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `Countries` (`countryID`) ON DELETE CASCADE,
  CONSTRAINT `Cases_ibfk_2` FOREIGN KEY (`vaccineID`) REFERENCES `Vaccines` (`vaccineID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Countries:

CREATE TABLE `Countries` (
  `countryID` int NOT NULL AUTO_INCREMENT,
  `countryName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `regionName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `population` int NOT NULL,
  `govAgency` int NOT NULL,
  PRIMARY KEY (`countryID`),
  KEY `regionName` (`regionName`),
  KEY `govAgency` (`govAgency`),
  CONSTRAINT `Countries_ibfk_1` FOREIGN KEY (`regionName`) REFERENCES `Regions` (`regionName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Countries_ibfk_2` FOREIGN KEY (`govAgency`) REFERENCES 'Organizations' (`orgID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Organizations:


CREATE TABLE `Orginizations` (
  `orgID` int NOT NULL AUTO_INCREMENT,
  `orgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `orgType` enum('company','research center','government agency') COLLATE utf8_unicode_ci DEFAULT 'government agency',
  PRIMARY KEY (`orgID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Records:

CREATE TABLE `Records` (
  `recordID` int NOT NULL AUTO_INCREMENT,
  `countryID` int NOT NULL,
  `population` int NOT NULL,
  `unvaccinatedCases` int NOT NULL,
  `unvaccinatedDeaths` int NOT NULL,
  `pfizerVaccinations` int NOT NULL,
  `pfizerCases` int NOT NULL,
  `pfizerDeaths` int NOT NULL,
  `modernaVaccinations` int NOT NULL,
  `modernaCases` int NOT NULL,
  `modernaDeaths` int NOT NULL,
  `astraZenecaVaccinations` int NOT NULL,
  `astraZenecaCases` int NOT NULL,
  `astraZenecaDeaths` int NOT NULL,
  `JandJVaccinations` int NOT NULL,
  `JandJCases` int NOT NULL,
  `JandJDeaths` int NOT NULL,
  `dateOfReport` date NOT NULL,
  PRIMARY KEY (`recordID`),
  KEY `countryID` (`countryID`),
  CONSTRAINT `Records_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `Countries` (`countryID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Regions:

CREATE TABLE `Regions` (
  `regionName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`regionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Users:

CREATE TABLE `Users` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userType` enum('administrator','researcher','delegate','regular') COLLATE utf8_unicode_ci DEFAULT NULL,
  `citizenship` int NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `orgID` int DEFAULT NULL,
  PRIMARY KEY (`userID`),
  KEY `citizenship` (`citizenship`),
  CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`citizenship`) REFERENCES `Countries` (`countryID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Vaccinations:

CREATE TABLE `Vaccinations` (
  `countryID` int NOT NULL,
  `vaccineID` int NOT NULL,
  `vaccinated` int DEFAULT NULL,
  PRIMARY KEY (`countryID`,`vaccineID`),
  KEY `vaccineID` (`vaccineID`),
  CONSTRAINT `Vaccinations_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `Countries` (`countryID`) ON DELETE CASCADE,
  CONSTRAINT `Vaccinations_ibfk_2` FOREIGN KEY (`vaccineID`) REFERENCES `Vaccines` (`vaccineID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Vaccines:

CREATE TABLE `Vaccines` (
  `vaccineID` int NOT NULL AUTO_INCREMENT,
  `vaccineName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`vaccineID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

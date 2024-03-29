# COMP353-Project1

## Project Description

The application is to develop a database system to help a non-profit health organization to
develop a system to help researchers, companies, and world population to keep track of the
COVID-19 pandemic progress. The system is called Covid-19 Pandemic Progress System
C19PPS. The system divides the world into six regions: Africa, Americas, Eastern
Mediterranean, Europe, South-East Asia, and Western Pacific. Each region is composed of a set
of countries.
For each country, the system maintains information of the total number of populations of the
country, the total number of people died from COVID-19 virus, the total number of people who
got vaccinated by each type of vaccination, the total number of people who got infected by the
COVID-19 virus and have never been vaccinated, for each type of vaccines the total number of
people who got vaccinated by that type of vaccine and still got infected by COVID-19 virus, and
for each type of vaccines the total number of people who got vaccinated by that type of vaccine
and died because of the COVID-19 virus. The type of vaccinations could be Pfizer, Moderna,
AstraZeneca, Johnson & Johnson, etc.
People from all over the world can use the system to view information related to the progress of
COVID-19 in the world. Users of the system could be either administrators, researchers,
organization's delegate, or regular people. Users with administrators' privileges can
add/delete/edit any user to the system. Users with researchers's privileges can add/delete/edit
articles to the system that other users can see and profit from the researcher's findings. Users
with organization delegate privileges can add/delete/edit articles for their organization to the
system. Administrator users have the privilege to remove any article from the system or suspend
any account in the system.
Each article in the system is identified by its author, major topic, minor topic, summary, the
article itself, and the date of publication of the article. The summary of each article should not
exceed one hundred characters. The author could be either a researcher's first name and last
name, or the organization's name. An organization could be either a company, a research center,
or a government agency. Each country has one government agency that uses the system to
provide their latest details about the progress of the COVID-19 in the country. Each government
agency can add/delete/edit information related to the country alone and not records related to
other countries. The historical records of the updates of the progress of COVID-19 are
maintained by the system. Each time a new update is provided, the date of the update is recorded
with the new record. All users of C19PPS are identified by their first name, last name,
citizenship, email address, and phone number. The citizenship value must be a value of a country
that already exist in the system.
These are the minimum requirements for your application. More details could be added through
more research and investigations from your part.

1. Express the COVID-19 Pandemic Progress System in the E/R model. Use arrows to
   indicate the constraints on the relationships. Underline the key attributes for the entity
   and relationship sets.

2. Convert the E/R diagram into at least six relations: Region, Country, User, Organization,
   Researcher, Article. Other relations might be needed to capture all the requirements.

3. Write SQL scripts to create the C19PPS System database and populate the tables with
   appropriate data. Also write SQL scripts of the queries and transactions given below.
   Include at least ten representative tuples in each table so that the result of each query
   includes at least two tuples. Note that the Graphical User-Interface (GUI) is not required
   in this project but encouraged.

   i. Get the details of the progress of COVID-19 of all the regions in the system.
   Details include region name, number of populations in the region, number of
   people who got vaccinated for COVID-19, number of people who died due to
   COVID-19. Only the latest statistics provided for each country in the region need
   to be considered. Results should be displayed sorted in ascending order by region.

   ii. Get the details of the progress of COVID-19 of all the countries in the system.
   Details include region name, country name, number of populations in the country,
   number of people who got vaccinated for COVID-19, number of people who died
   due to COVID-19. Only the latest statistics provided for each country need to be
   displayed. Results should be displayed sorted in ascending order by region then
   by country name.

   iii. Get details of all the Vaccines given in the America's region. Details include
   Vaccine name, Number of people who got vaccinated by the vaccine in the
   region, number of people who died and have been vaccinated by the vaccine.
   Results should be displayed in increasing order of the total people who died even
   they were vaccinated by the vaccine.

   iv. Provide a report of all the researchers by region. Report should include the region
   name, the total number of populations in the region, the total number of
   researchers in the region, number of articles provided by the researchers in the
   region, the average number of articles by researcher in the region, and the average
   number of researchers by the total number of populations in the region. Results
   should be displayed sorted in ascending order of the average number of
   researchers by the total number of populations in the region.

   v. Get the details of the historical progress of COVID-19 in Canada. Details include
   date of the report, number of populations in Canada, number of people who got
   vaccinated for COVID-19, number of people who got infected by COVID-19, and
   the number of people who died due to COVID-19. Results should be displayed
   sorted in descending order by date of the report.

   vi. Get details of all the articles provided by the researcher Joe Smith. Details include
   the date of the publication, major topic, minor topic, and a summary of each
   article. Results should be displayed in ascending order by date of publication.

   vii. Get details of the latest article provided by the researcher Joe Smith. Details
   include the date of the publication, major topic, minor topic, summary, and the
   article description.

   viii. Get a list of all the users in the system. Details include privilege name, user's first
   name, last name, email address, phone number, date of birth, and citizenship.
   Results should be displayed in ascending order by privilege name, then by
   citizenship, then by date of birth. Privilege name could be either administrator,
   researcher, or organization delegate. In case of organization delegate, you need to
   provide the organization's name as well.

   ix. Get a list of all the researchers in the system who posted the highest number of
   articles. Details include researchers' first name, last name, email address, phone
   number, date of birth, citizenship, and the total number of articles posted by the
   researchers.

   x. Get a list of all the researchers in the system who have never posted any article.
   Details include researchers' first name, last name, email address, phone number,
   date of birth, and citizenship.

### Note: You can use multiple queries to answer any of the ten transaction queries

above if necessary.
Project Report: Structure and Contents
Each group should submit their project report through Moodle before the deadline, one report per
group. The report should include the following parts:
(1) DESIGN: The E/R diagram of the design of the database given in the project
description (or a revised version, if deemed necessary).
(2) The SQL statements formulated and used to create the database. Pick
appropriate data types for the attributes and include them in your report.
(3) The SQL statements formulated to express the required queries and
transactions mentioned.
(4) Populate each table in the database with at least ten representative and
appropriate tuples.
(5) For each relation R created in your database, report the result of the following
SQL statement:

### SELECT COUNT(\*) FROM R;

A Final Note: Your report should also include the originality FORM as the cover page that is
signed by EVERY member of the group. The cover page should also include the name and ID of
every member of the group members together with the "Group Account" assigned by Stan's
email confirmation of your group registration.

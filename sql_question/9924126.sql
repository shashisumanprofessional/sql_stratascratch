--ID 9924126

--Find libraries from the 2016 circulation year that have no email address provided but have their notice preference set to email. 
--In your solution, output their home library code.

select home_library_code from library_usage where circulation_active_year =2016
and provided_email_address =0
and notice_preference_definition='email';

select home_library_code,* from library_usage where circulation_active_year =2016
and provided_email_address =0
and notice_preference_definition='email';



CREATE TABLE library_usage (
    patron_type_code INT,
    patron_type_definition VARCHAR(50),
    total_checkouts INT,
    total_renewals INT,
    age_range VARCHAR(30),
    home_library_code VARCHAR(10),
    home_library_definition VARCHAR(100),
    circulation_active_month VARCHAR(20),
    circulation_active_year INT,
    notice_preference_code CHAR(1),
    notice_preference_definition VARCHAR(20),
    provided_email_address INT,
    year_patron_registered INT,
    outside_of_county INT,
    supervisor_district INT
);


INSERT INTO library_usage (
    patron_type_code,
    patron_type_definition,
    total_checkouts,
    total_renewals,
    age_range,
    home_library_code,
    home_library_definition,
    circulation_active_month,
    circulation_active_year,
    notice_preference_code,
    notice_preference_definition,
    provided_email_address,
    year_patron_registered,
    outside_of_county,
    supervisor_district
) VALUES
(0,'ADULT',6,0,'10 to 19 years','W4','Western Addition','July',2015,'z','email',1,2012,0,8),
(4,'WELCOME',1,0,'35 to 44 years','X','Main Library','June',2016,'z','email',1,2016,0,9),
(0,'ADULT',4,8,'45 to 54 years','R3','Richmond','April',2015,'z','email',1,2015,1,NULL),
(0,'ADULT',177,117,'35 to 44 years','R3','Richmond','January',2016,'z','email',1,2012,0,1),
(0,'ADULT',74,19,'25 to 34 years','X','Main Library','July',2013,'a','print',1,2003,0,3),
(0,'ADULT',5,6,'35 to 44 years','G4','Glen Park','November',2014,'z','email',1,2014,0,10),
(0,'ADULT',629,656,'55 to 59 years','E7','Eureka Valley/Harvey Milk Memorial','July',2016,'z','email',1,2003,0,7),
(0,'ADULT',1,0,'25 to 34 years','X','Main Library','July',2016,'z','email',1,2016,1,NULL),
(0,'ADULT',20,23,'25 to 34 years','G6','Golden Gate Valley','July',2016,'z','email',1,2014,0,2),
(3,'SENIOR',98,107,'65 to 74 years','P1','Park','November',2014,'z','email',1,2003,0,5),
(1,'JUVENILE',23,1,'0 to 9 years','O7','Ortega','May',2016,'z','email',1,2014,0,4),
(0,'ADULT',3,6,'25 to 34 years','M6','Mission','June',2016,'z','email',1,2015,0,9),
(0,'ADULT',4,4,'20 to 24 years','X','Main Library','June',2015,'z','email',1,2015,0,8),
(0,'ADULT',1,0,'45 to 54 years','E9','Excelsior','May',2013,'p','phone',1,2013,0,11),
(0,'ADULT',56,4,'25 to 34 years','X','Main Library','May',2016,'p','phone',0,2014,0,10),
(0,'ADULT',9,4,'35 to 44 years','W2','West Portal','July',2015,'z','email',1,2009,0,8),
(0,'ADULT',27,0,'55 to 59 years','V3','Visitacion Valley','June',2010,'a','print',0,2006,0,10),
(1,'JUVENILE',72,63,'0 to 9 years','O7','Ortega','June',2016,'z','email',1,2014,0,4),
(0,'ADULT',4,0,'25 to 34 years','X','Main Library','November',2011,'z','email',1,2011,0,1),
(0,'ADULT',2,4,'10 to 19 years','E9','Excelsior','July',2016,'p','phone',0,2015,0,11),
(0,'ADULT',5,0,'20 to 24 years','I5','Ingleside','January',2014,'p','phone',0,2014,0,11),
(0,'ADULT',1,0,'45 to 54 years','E7','Eureka Valley/Harvey Milk Memorial','June',2016,'z','email',1,2016,0,NULL),
(0,'ADULT',10,0,'45 to 54 years','X','Main Library','July',2016,'z','email',1,2015,0,5),
(0,'ADULT',15,14,'25 to 34 years','X','Main Library','June',2015,'z','email',1,2013,0,NULL),
(0,'ADULT',24,0,'55 to 59 years','X','Main Library','November',2014,'z','email',1,2013,0,NULL),
(0,'ADULT',26,14,'60 to 64 years','X','Main Library','January',2013,'z','email',1,2012,0,5),
(0,'ADULT',3,0,'45 to 54 years','M2','Marina','August',2015,'a','print',0,2014,0,2),
(0,'ADULT',0,0,'45 to 54 years','O7','Ortega',NULL,NULL,'z','email',1,2014,1,NULL),
(0,'ADULT',0,0,'25 to 34 years','X','Main Library',NULL,NULL,'z','email',1,2015,0,8),
(0,'ADULT',1,0,'35 to 44 years','M6','Mission','March',2014,'p','phone',0,2014,0,9),
(1,'JUVENILE',980,196,'10 to 19 years','B4','Bernal Heights','July',2016,'z','email',1,2009,0,9),
(3,'SENIOR',1913,0,'75 years and over','X','Main Library','July',2016,'a','print',0,2003,0,4),
(3,'SENIOR',999,0,'65 to 74 years',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);


INSERT INTO library_usage (
    patron_type_code,
    patron_type_definition,
    total_checkouts,
    total_renewals,
    age_range,
    home_library_code,
    home_library_definition,
    circulation_active_month,
    circulation_active_year,
    notice_preference_code,
    notice_preference_definition,
    provided_email_address,
    year_patron_registered,
    outside_of_county,
    supervisor_district
) VALUES
(5,'STAFF',0,0,'55 to 59 years','X','Main Library','March',2016,'z','email',0,2016,1,NULL),
(0,'ADULT',2,2,'45 to 54 years','R3','Richmond','June',2016,'z','email',0,2016,0,NULL),
(0,'ADULT',11,0,'25 to 34 years','P7','Potrero','June',2016,'z','email',0,2015,0,NULL),
(1,'JUVENILE',84,0,'10 to 19 years','E9','Excelsior','July',2016,'z','email',0,2013,0,NULL),
(0,'ADULT',4,0,'25 to 34 years','X','Main Library','July',2016,'z','email',0,2010,0,NULL);

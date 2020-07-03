/*
Script para llenar todas las tablas de la base de datos
Autor: Juan Pablo Alvarado
*/

USE CoTecDB;


INSERT INTO Continents (Name)
VALUES
    ('Asia'),
    ('Europe'),
    ('Africa'),
    ('Oceania'),
    ('North America'),
    ('Antarctica'),
    ('South America');

INSERT INTO Countries (Name,Continent_Name)
VALUES
    ('Afghanistan','Asia'),
    ('Albania','Europe'),
    ('Algeria','Africa'),
    ('American Samoa','Oceania'),
    ('Andorra','Europe'),
    ('Angola','Africa'),
    ('Anguilla','North America'),
    ('Antarctica','Antarctica'),
    ('Antigua and Barbuda','North America'),
    ('Argentina','South America'),
    ('Armenia','Asia'),
    ('Aruba','North America'),
    ('Australia','Oceania'),
    ('Austria','Europe'),
    ('Azerbaijan','Asia'),
    ('Bahamas','North America'),
    ('Bahrain','Asia'),
    ('Bangladesh','Asia'),
    ('Barbados','North America'),
    ('Belarus','Europe'),
    ('Belgium','Europe'),
    ('Belize','North America'),
    ('Benin','Africa'),
    ('Bermuda','North America'),
    ('Bhutan','Asia'),
    ('Bolivia','South America'),
    ('Bosnia and Herzegovina','Europe'),
    ('Botswana','Africa'),
    ('Bouvet Island','Antarctica'),
    ('Brazil','South America'),
    ('British Indian Ocean Territory','Africa'),
    ('Brunei','Asia'),
    ('Bulgaria','Europe'),
    ('Burkina Faso','Africa'),
    ('Burundi','Africa'),
    ('Cambodia','Asia'),
    ('Cameroon','Africa'),
    ('Canada','North America'),
    ('Cape Verde','Africa'),
    ('Cayman Islands','North America'),
    ('Central African Republic','Africa'),
    ('Chad','Africa'),
    ('Chile','South America'),
    ('China','Asia'),
    ('Christmas Island','Oceania'),
    ('Cocos (Keeling) Islands','Oceania'),
    ('Colombia','South America'),
    ('Comoros','Africa'),
    ('Congo','Africa'),
    ('Cook Islands','Oceania'),
    ('Costa Rica','North America'),
    ('Croatia','Europe'),
    ('Cuba','North America'),
    ('Cyprus','Asia'),
    ('Czech Republic','Europe'),
    ('Denmark','Europe'),
    ('Djibouti','Africa'),
    ('Dominica','North America'),
    ('Dominican Republic','North America'),
    ('East Timor','Asia'),
    ('Ecuador','South America'),
    ('Egypt','Africa'),
    ('El Salvador','North America'),
    ('England','Europe'),
    ('Equatorial Guinea','Africa'),
    ('Eritrea','Africa'),
    ('Estonia','Europe'),
    ('Ethiopia','Africa'),
    ('Falkland Islands','South America'),
    ('Faroe Islands','Europe'),
    ('Fiji Islands','Oceania'),
    ('Finland','Europe'),
    ('France','Europe'),
    ('French Guiana','South America'),
    ('French Polynesia','Oceania'),
    ('French Southern territories','Antarctica'),
    ('Gabon','Africa'),
    ('Gambia','Africa'),
    ('Georgia','Asia'),
    ('Germany','Europe'),
    ('Ghana','Africa'),
    ('Gibraltar','Europe'),
    ('Greece','Europe'),
    ('Greenland','North America'),
    ('Grenada','North America'),
    ('Guadeloupe','North America'),
    ('Guam','Oceania'),
    ('Guatemala','North America'),
    ('Guinea','Africa'),
    ('Guinea-Bissau','Africa'),
    ('Guyana','South America'),
    ('Haiti','North America'),
    ('Heard Island and McDonald Islands','Antarctica'),
    ('Holy See (Vatican City State)','Europe'),
    ('Honduras','North America'),
    ('Hong Kong','Asia'),
    ('Hungary','Europe'),
    ('Iceland','Europe'),
    ('India','Asia'),
    ('Indonesia','Asia'),
    ('Iran','Asia'),
    ('Iraq','Asia'),
    ('Ireland','Europe'),
    ('Israel','Asia'),
    ('Italy','Europe'),
    ('Ivory Coast','Africa'),
    ('Jamaica','North America'),
    ('Japan','Asia'),
    ('Jordan','Asia'),
    ('Kazakhstan','Asia'),
    ('Kenya','Africa'),
    ('Kiribati','Oceania'),
    ('Kuwait','Asia'),
    ('Kyrgyzstan','Asia'),
    ('Laos','Asia'),
    ('Latvia','Europe'),
    ('Lebanon','Asia'),
    ('Lesotho','Africa'),
    ('Liberia','Africa'),
    ('Libyan Arab Jamahiriya','Africa'),
    ('Liechtenstein','Europe'),
    ('Lithuania','Europe'),
    ('Luxembourg','Europe'),
    ('Macao','Asia'),
    ('North Macedonia','Europe'),
    ('Madagascar','Africa'),
    ('Malawi','Africa'),
    ('Malaysia','Asia'),
    ('Maldives','Asia'),
    ('Mali','Africa'),
    ('Malta','Europe'),
    ('Marshall Islands','Oceania'),
    ('Martinique','North America'),
    ('Mauritania','Africa'),
    ('Mauritius','Africa'),
    ('Mayotte','Africa'),
    ('Mexico','North America'),
    ('Micronesia, Federated States of','Oceania'),
    ('Moldova','Europe'),
    ('Monaco','Europe'),
    ('Mongolia','Asia'),
    ('Montenegro','Europe'),
    ('Montserrat','North America'),
    ('Morocco','Africa'),
    ('Mozambique','Africa'),
    ('Myanmar','Asia'),
    ('Namibia','Africa'),
    ('Nauru','Oceania'),
    ('Nepal','Asia'),
    ('Netherlands','Europe'),
    ('Netherlands Antilles','North America'),
    ('New Caledonia','Oceania'),
    ('New Zealand','Oceania'),
    ('Nicaragua','North America'),
    ('Niger','Africa'),
    ('Nigeria','Africa'),
    ('Niue','Oceania'),
    ('Norfolk Island','Oceania'),
    ('North Korea','Asia'),
    ('Northern Ireland','Europe'),
    ('Northern Mariana Islands','Oceania'),
    ('Norway','Europe'),
    ('Oman','Asia'),
    ('Pakistan','Asia'),
    ('Palau','Oceania'),
    ('Palestine','Asia'),
    ('Panama','North America'),
    ('Papua New Guinea','Oceania'),
    ('Paraguay','South America'),
    ('Peru','South America'),
    ('Philippines','Asia'),
    ('Pitcairn','Oceania'),
    ('Poland','Europe'),
    ('Portugal','Europe'),
    ('Puerto Rico','North America'),
    ('Qatar','Asia'),
    ('Reunion','Africa'),
    ('Romania','Europe'),
    ('Russian Federation','Europe'),
    ('Rwanda','Africa'),
    ('Saint Helena','Africa'),
    ('Saint Kitts and Nevis','North America'),
    ('Saint Lucia','North America'),
    ('Saint Pierre and Miquelon','North America'),
    ('Saint Vincent and the Grenadines','North America'),
    ('Samoa','Oceania'),
    ('San Marino','Europe'),
    ('Sao Tome and Principe','Africa'),
    ('Saudi Arabia','Asia'),
    ('Scotland','Europe'),
    ('Senegal','Africa'),
    ('Seychelles','Africa'),
    ('Sierra Leone','Africa'),
    ('Singapore','Asia'),
    ('Slovakia','Europe'),
    ('Slovenia','Europe'),
    ('Solomon Islands','Oceania'),
    ('Somalia','Africa'),
    ('South Africa','Africa'),
    ('South Georgia and the South Sandwich Islands','Antarctica'),
    ('South Korea','Asia'),
    ('South Sudan','Africa'),
    ('Spain','Europe'),
    ('Sri Lanka','Asia'),
    ('Sudan','Africa'),
    ('Suriname','South America'),
    ('Svalbard and Jan Mayen','Europe'),
    ('Swaziland','Africa'),
    ('Sweden','Europe'),
    ('Switzerland','Europe'),
    ('Syria','Asia'),
    ('Tajikistan','Asia'),
    ('Tanzania','Africa'),
    ('Thailand','Asia'),
    ('The Democratic Republic of Congo','Africa'),
    ('Togo','Africa'),
    ('Tokelau','Oceania'),
    ('Tonga','Oceania'),
    ('Trinidad and Tobago','North America'),
    ('Tunisia','Africa'),
    ('Turkey','Asia'),
    ('Turkmenistan','Asia'),
    ('Turks and Caicos Islands','North America'),
    ('Tuvalu','Oceania'),
    ('Uganda','Africa'),
    ('Ukraine','Europe'),
    ('United Arab Emirates','Asia'),
    ('United Kingdom','Europe'),
    ('United States','North America'),
    ('United States Minor Outlying Islands','Oceania'),
    ('Uruguay','South America'),
    ('Uzbekistan','Asia'),
    ('Vanuatu','Oceania'),
    ('Venezuela','South America'),
    ('Vietnam','Asia'),
    ('Virgin Islands, British','North America'),
    ('Virgin Islands, U.S.','North America'),
    ('Wales','Europe'),
    ('Wallis and Futuna','Oceania'),
    ('Western Sahara','Africa'),
    ('Yemen','Asia'),
    ('Yugoslavia','Europe'),
    ('Zambia','Africa'),
    ('Zimbabwe','Africa');

INSERT INTO CountryLocations (Name,Country_Name)
VALUES 
    ('Heredia','Costa Rica'),
    ('Alajuela','Costa Rica'),
    ('Limón','Costa Rica'),
    ('San Jośe','Costa Rica'),
    ('Cartago','Costa Rica'),
    ('Puntarenas','Costa Rica'),
    ('Guanacaste','Costa Rica');

INSERT INTO SanityMeasurements (Id,Name,Description) 
VALUES 
(1,'Cierre de aeropuertos','No se permiten vuelos internacionales'),
(2,'Mascara obligatoria','Se obliga a todos los ciudadanos a llevar máscara para salir'),
(3,'Restricción vehicular','Se prohibe circular a ciertos vehículos dependiendo del día y la placa');

INSERT INTO EnforcedMeasurements (Country_Name,Measurement_Id,Start_Date,End_Date,State)
VALUES
('Spain',1,'2020-01-20','2020-03-20',1),
('Spain',3,'2020-02-20','2020-03-20',1),
('Spain',2,'2020-02-25','2020-03-20',1),
('Costa Rica',1,'2020-03-20','2020-05-20',1);

INSERT INTO Hospitals (Id,Name,ICU_Capacity,Capacity,Manager_Name,Phone,Country_Name,Country_Location_Id)
VALUES
(1,'Hospital del sur',7,80,'Pepito','22223333','Costa Rica',1),
(3,'Hospital del norte',10,200,'Pepito','22224444','Costa Rica',1),
(4,'Hospital del este',5,150,'Pepito','33332222','Costa Rica',1);

INSERT INTO Hospital_ICUs (ICU_Patient,Hospital_Id)
VALUES
('225225',1),
('334334',3),
('554554',3);

INSERT INTO Hospital_Patients (Patient,Hospital_Id)
VALUES
('225225',1),
('334334',4),
('554554',4);

INSERT INTO Medications (Id,Name,Provider)
VALUES
(22,'paracetamol','pulpería'),
(23,'sopita','pulpería'),
(24,'hierba','farmacia');

INSERT INTO Hospital_Medications (Hospital_Id,Medication_Id)
VALUES
(1,22),
(3,23),
(4,24);

INSERT INTO Pathologies (Name,Symptoms,Description,Treatment)
VALUES
('Ebola','hemorragia','solo en africa','no hay'),
('Covid','tos','mundial','respirador'),
('Denge','fiebre','mosquitos','antiinflamatorios');

INSERT INTO Patient_Status (Name)
VALUES
('Muerto'),
('Activo'),
('Recuperado');

INSERT INTO Patients (SSN,First_Name,Last_Name,Hospitalized,ICU,Age,Residence,Country_Birth,Hospital_Id,Status)
VALUES
(100000,'pepito1','tortilla1',1,1,25,'Costa Rica','Costa Rica',1,'Activo'),
(100001,'pepito2','tortilla2',0,0,35,'Costa Rica','Spain',1,'Recuperado'),
(100002,'pepito3','tortilla3',0,0,45,'Spain','Costa Rica',1,'Activo');

INSERT INTO Patients VALUES (491804,'pepito10','tortilla16',1,1,36,'Spain','United States',1,'Muerto');
INSERT INTO Patients VALUES (234815,'pepito8','tortilla1',1,1,28,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (400983,'pepito4','tortilla0',0,0,51,'Brazil','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (706170,'pepito0','tortilla19',0,0,41,'Brazil','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (561641,'pepito11','tortilla15',1,1,92,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (618682,'pepito8','tortilla7',1,1,61,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (256660,'pepito16','tortilla5',1,0,66,'Brazil','Brazil',1,'Activo');
INSERT INTO Patients VALUES (652829,'pepito4','tortilla4',1,1,20,'Costa Rica','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (373373,'pepito15','tortilla10',0,0,96,'Spain','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (579667,'pepito20','tortilla8',0,0,61,'China','Brazil',4,'Activo');
INSERT INTO Patients VALUES (941828,'pepito16','tortilla5',0,0,60,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (764900,'pepito5','tortilla13',0,0,25,'China','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (474173,'pepito18','tortilla7',0,0,60,'Brazil','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (699566,'pepito2','tortilla18',1,1,80,'Spain','China',3,'Recuperado');
INSERT INTO Patients VALUES (194154,'pepito8','tortilla14',0,0,62,'Brazil','China',4,'Recuperado');
INSERT INTO Patients VALUES (843779,'pepito19','tortilla17',0,1,51,'Brazil','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (296483,'pepito0','tortilla14',0,0,66,'Brazil','China',3,'Activo');
INSERT INTO Patients VALUES (165181,'pepito2','tortilla10',1,1,24,'Brazil','Brazil',3,'Activo');
INSERT INTO Patients VALUES (675934,'pepito20','tortilla4',0,0,20,'Brazil','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (791666,'pepito1','tortilla19',1,0,91,'Brazil','United States',3,'Muerto');
INSERT INTO Patients VALUES (462610,'pepito4','tortilla0',0,0,47,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (893510,'pepito10','tortilla2',0,0,51,'China','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (647525,'pepito10','tortilla15',1,0,80,'Spain','Spain',3,'Activo');
INSERT INTO Patients VALUES (533022,'pepito16','tortilla9',0,0,87,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (264090,'pepito7','tortilla4',1,1,68,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (712422,'pepito11','tortilla6',0,1,22,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (160200,'pepito10','tortilla20',0,0,65,'United States','Spain',4,'Muerto');
INSERT INTO Patients VALUES (955953,'pepito19','tortilla17',1,1,82,'Brazil','China',4,'Recuperado');
INSERT INTO Patients VALUES (859065,'pepito13','tortilla1',1,1,75,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (843964,'pepito19','tortilla3',1,1,80,'Costa Rica','United States',3,'Muerto');
INSERT INTO Patients VALUES (591184,'pepito9','tortilla10',1,1,94,'Costa Rica','United States',3,'Recuperado');
INSERT INTO Patients VALUES (560157,'pepito20','tortilla2',0,1,85,'Costa Rica','United States',4,'Recuperado');
INSERT INTO Patients VALUES (182323,'pepito4','tortilla4',0,0,74,'United States','United States',1,'Muerto');
INSERT INTO Patients VALUES (468362,'pepito12','tortilla18',0,1,38,'Spain','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (681403,'pepito9','tortilla1',0,0,81,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (190052,'pepito0','tortilla7',0,0,96,'Costa Rica','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (123430,'pepito7','tortilla3',1,0,54,'Brazil','China',4,'Muerto');
INSERT INTO Patients VALUES (658577,'pepito19','tortilla3',1,0,97,'United States','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (942232,'pepito3','tortilla17',1,1,38,'United States','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (179508,'pepito19','tortilla13',0,1,64,'Spain','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (300615,'pepito15','tortilla2',1,0,89,'United States','Brazil',4,'Activo');
INSERT INTO Patients VALUES (763038,'pepito18','tortilla12',1,0,30,'Spain','China',3,'Recuperado');
INSERT INTO Patients VALUES (942859,'pepito19','tortilla3',1,0,37,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (989752,'pepito7','tortilla14',1,1,93,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (164951,'pepito14','tortilla14',1,0,46,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (623766,'pepito8','tortilla18',0,0,73,'United States','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (569652,'pepito12','tortilla10',1,0,49,'United States','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (297510,'pepito20','tortilla17',0,1,54,'Brazil','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (836796,'pepito9','tortilla16',0,1,70,'Spain','Spain',1,'Muerto');
INSERT INTO Patients VALUES (826726,'pepito17','tortilla2',1,0,30,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (862170,'pepito12','tortilla10',1,1,48,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (112747,'pepito19','tortilla18',0,0,45,'Costa Rica','Spain',3,'Activo');
INSERT INTO Patients VALUES (561490,'pepito9','tortilla2',1,0,98,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (300139,'pepito10','tortilla5',1,1,48,'China','China',3,'Recuperado');
INSERT INTO Patients VALUES (638539,'pepito5','tortilla2',1,0,71,'Brazil','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (221771,'pepito15','tortilla15',0,1,57,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (845691,'pepito2','tortilla2',1,0,49,'China','United States',4,'Activo');
INSERT INTO Patients VALUES (865331,'pepito0','tortilla16',0,1,88,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (288518,'pepito9','tortilla7',1,0,41,'Spain','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (507925,'pepito19','tortilla8',1,1,80,'China','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (795938,'pepito12','tortilla17',1,0,51,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (293982,'pepito13','tortilla2',1,1,76,'Brazil','Brazil',3,'Activo');
INSERT INTO Patients VALUES (616484,'pepito7','tortilla7',1,1,31,'Costa Rica','China',3,'Muerto');
INSERT INTO Patients VALUES (446907,'pepito0','tortilla12',0,1,53,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (794181,'pepito16','tortilla1',1,0,64,'China','United States',1,'Muerto');
INSERT INTO Patients VALUES (699875,'pepito20','tortilla5',0,0,28,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (420442,'pepito4','tortilla5',1,0,40,'Costa Rica','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (953189,'pepito17','tortilla17',0,0,33,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (681235,'pepito15','tortilla19',1,1,72,'Spain','Spain',3,'Activo');
INSERT INTO Patients VALUES (456057,'pepito19','tortilla18',0,1,63,'Spain','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (495244,'pepito13','tortilla5',1,1,55,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (677373,'pepito19','tortilla2',1,1,36,'Spain','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (752455,'pepito7','tortilla13',1,1,39,'Brazil','China',4,'Recuperado');
INSERT INTO Patients VALUES (308702,'pepito10','tortilla19',1,0,48,'Spain','Brazil',1,'Activo');
INSERT INTO Patients VALUES (175043,'pepito17','tortilla12',0,0,85,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (653270,'pepito4','tortilla1',0,0,67,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (633315,'pepito2','tortilla15',0,0,33,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (410999,'pepito10','tortilla0',1,0,50,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (393563,'pepito5','tortilla1',1,0,70,'Brazil','United States',3,'Muerto');
INSERT INTO Patients VALUES (589766,'pepito1','tortilla9',0,1,35,'China','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (909929,'pepito20','tortilla20',1,0,56,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (759890,'pepito18','tortilla5',1,1,42,'China','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (227160,'pepito2','tortilla0',0,0,22,'United States','Spain',4,'Activo');
INSERT INTO Patients VALUES (778940,'pepito8','tortilla18',0,1,92,'Costa Rica','China',3,'Recuperado');
INSERT INTO Patients VALUES (461755,'pepito2','tortilla3',1,0,98,'Spain','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (951925,'pepito14','tortilla11',0,1,53,'Brazil','China',3,'Activo');
INSERT INTO Patients VALUES (318208,'pepito17','tortilla6',1,0,20,'Brazil','Brazil',3,'Activo');
INSERT INTO Patients VALUES (950934,'pepito7','tortilla11',0,0,52,'Costa Rica','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (977769,'pepito10','tortilla5',0,0,51,'Costa Rica','Brazil',1,'Activo');
INSERT INTO Patients VALUES (317570,'pepito19','tortilla0',0,1,20,'Brazil','China',4,'Activo');
INSERT INTO Patients VALUES (921169,'pepito20','tortilla9',1,1,98,'Costa Rica','China',4,'Activo');
INSERT INTO Patients VALUES (870520,'pepito7','tortilla17',0,1,75,'United States','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (817165,'pepito7','tortilla14',0,1,99,'United States','United States',1,'Recuperado');
INSERT INTO Patients VALUES (955968,'pepito20','tortilla6',1,0,26,'Costa Rica','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (612892,'pepito8','tortilla15',0,1,33,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (918764,'pepito16','tortilla19',1,1,60,'Brazil','China',1,'Activo');
INSERT INTO Patients VALUES (995879,'pepito12','tortilla18',1,0,25,'United States','United States',1,'Recuperado');
INSERT INTO Patients VALUES (858781,'pepito1','tortilla19',0,1,55,'Brazil','China',1,'Muerto');
INSERT INTO Patients VALUES (606260,'pepito13','tortilla7',0,0,62,'China','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (612520,'pepito1','tortilla5',0,0,100,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (906967,'pepito16','tortilla11',0,0,27,'China','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (932838,'pepito9','tortilla2',1,1,59,'Spain','Brazil',1,'Activo');
INSERT INTO Patients VALUES (411206,'pepito8','tortilla6',0,0,79,'Brazil','China',3,'Muerto');
INSERT INTO Patients VALUES (227753,'pepito10','tortilla19',0,1,27,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (701671,'pepito18','tortilla17',0,0,43,'China','China',3,'Activo');
INSERT INTO Patients VALUES (441532,'pepito14','tortilla14',1,1,32,'Costa Rica','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (883503,'pepito17','tortilla2',1,0,74,'Brazil','China',1,'Activo');
INSERT INTO Patients VALUES (924116,'pepito13','tortilla13',0,0,26,'Brazil','China',3,'Recuperado');
INSERT INTO Patients VALUES (459287,'pepito2','tortilla7',0,1,73,'Spain','China',4,'Muerto');
INSERT INTO Patients VALUES (251065,'pepito10','tortilla12',0,0,28,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (945630,'pepito12','tortilla8',1,1,61,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (652631,'pepito20','tortilla15',1,0,54,'Spain','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (216167,'pepito10','tortilla13',1,1,87,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (404437,'pepito15','tortilla3',1,1,81,'Spain','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (607690,'pepito19','tortilla20',1,1,33,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (888544,'pepito1','tortilla14',0,0,78,'Brazil','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (246088,'pepito9','tortilla6',1,1,86,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (714697,'pepito5','tortilla13',0,0,55,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (172575,'pepito1','tortilla11',1,1,100,'Costa Rica','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (255591,'pepito13','tortilla5',0,0,30,'Brazil','China',3,'Activo');
INSERT INTO Patients VALUES (713104,'pepito18','tortilla5',1,0,89,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (202774,'pepito11','tortilla14',0,0,94,'Brazil','China',4,'Recuperado');
INSERT INTO Patients VALUES (639376,'pepito9','tortilla3',1,1,40,'Spain','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (797084,'pepito3','tortilla19',0,1,50,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (968950,'pepito3','tortilla11',1,1,51,'Spain','China',4,'Activo');
INSERT INTO Patients VALUES (595534,'pepito6','tortilla0',0,0,95,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (689004,'pepito16','tortilla18',1,0,71,'China','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (582765,'pepito16','tortilla7',1,0,74,'China','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (695397,'pepito12','tortilla18',0,1,88,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (330174,'pepito9','tortilla4',1,1,73,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (635975,'pepito3','tortilla7',0,0,68,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (179044,'pepito6','tortilla4',0,0,52,'Brazil','Spain',4,'Muerto');
INSERT INTO Patients VALUES (782355,'pepito19','tortilla5',0,1,70,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (641399,'pepito13','tortilla2',0,1,97,'Costa Rica','United States',3,'Activo');
INSERT INTO Patients VALUES (272132,'pepito8','tortilla3',1,0,43,'United States','United States',3,'Muerto');
INSERT INTO Patients VALUES (983922,'pepito10','tortilla3',1,1,36,'Brazil','Spain',1,'Activo');
INSERT INTO Patients VALUES (850158,'pepito17','tortilla12',1,0,69,'Costa Rica','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (609097,'pepito5','tortilla4',0,0,82,'Costa Rica','China',4,'Muerto');
INSERT INTO Patients VALUES (677618,'pepito15','tortilla0',1,0,68,'Brazil','United States',1,'Activo');
INSERT INTO Patients VALUES (804365,'pepito9','tortilla16',1,0,22,'Spain','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (941424,'pepito8','tortilla13',1,1,58,'Brazil','United States',3,'Activo');
INSERT INTO Patients VALUES (598940,'pepito16','tortilla4',0,0,71,'Brazil','China',3,'Recuperado');
INSERT INTO Patients VALUES (990896,'pepito5','tortilla18',0,1,75,'China','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (100565,'pepito11','tortilla0',0,1,29,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (913548,'pepito11','tortilla13',0,0,83,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (628589,'pepito1','tortilla6',1,1,22,'China','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (680703,'pepito7','tortilla15',0,0,21,'Costa Rica','Brazil',4,'Activo');
INSERT INTO Patients VALUES (976624,'pepito16','tortilla0',0,0,44,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (221948,'pepito6','tortilla0',0,1,46,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (721786,'pepito6','tortilla4',1,1,84,'China','Spain',3,'Activo');
INSERT INTO Patients VALUES (770460,'pepito3','tortilla20',0,1,72,'China','Spain',3,'Activo');
INSERT INTO Patients VALUES (195259,'pepito20','tortilla10',0,1,64,'United States','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (510802,'pepito13','tortilla6',0,1,66,'United States','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (719439,'pepito5','tortilla2',0,1,72,'China','United States',4,'Recuperado');
INSERT INTO Patients VALUES (100125,'pepito15','tortilla2',0,1,88,'Costa Rica','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (536163,'pepito12','tortilla1',1,0,79,'United States','China',4,'Muerto');
INSERT INTO Patients VALUES (923080,'pepito20','tortilla13',1,1,85,'Brazil','China',1,'Recuperado');
INSERT INTO Patients VALUES (681242,'pepito17','tortilla18',0,1,71,'Brazil','China',4,'Muerto');
INSERT INTO Patients VALUES (686623,'pepito1','tortilla14',1,0,23,'Costa Rica','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (607130,'pepito1','tortilla17',1,0,73,'Costa Rica','Brazil',3,'Activo');
INSERT INTO Patients VALUES (733001,'pepito18','tortilla3',0,1,89,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (297192,'pepito10','tortilla7',1,1,70,'Spain','China',1,'Activo');
INSERT INTO Patients VALUES (264073,'pepito5','tortilla4',1,0,36,'United States','China',3,'Activo');
INSERT INTO Patients VALUES (113356,'pepito10','tortilla4',1,0,91,'Costa Rica','Brazil',4,'Activo');
INSERT INTO Patients VALUES (169347,'pepito19','tortilla17',1,1,30,'Costa Rica','Brazil',3,'Activo');
INSERT INTO Patients VALUES (681405,'pepito3','tortilla6',1,0,98,'Brazil','United States',3,'Muerto');
INSERT INTO Patients VALUES (770182,'pepito9','tortilla16',0,1,62,'Brazil','Spain',4,'Activo');
INSERT INTO Patients VALUES (275080,'pepito9','tortilla9',1,1,64,'Brazil','United States',1,'Recuperado');
INSERT INTO Patients VALUES (714626,'pepito12','tortilla0',0,1,62,'Brazil','United States',3,'Activo');
INSERT INTO Patients VALUES (429527,'pepito6','tortilla0',1,1,53,'United States','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (516774,'pepito10','tortilla16',1,1,82,'China','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (584485,'pepito20','tortilla1',1,1,67,'Costa Rica','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (518496,'pepito12','tortilla1',0,1,26,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (985243,'pepito9','tortilla8',1,1,29,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (959761,'pepito6','tortilla14',1,0,81,'China','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (751463,'pepito1','tortilla3',1,1,61,'Spain','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (857914,'pepito1','tortilla1',1,0,36,'United States','China',4,'Activo');
INSERT INTO Patients VALUES (302957,'pepito3','tortilla2',0,0,53,'China','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (820158,'pepito19','tortilla6',1,0,32,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (788867,'pepito1','tortilla10',0,0,90,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (176194,'pepito6','tortilla13',1,0,31,'Costa Rica','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (691972,'pepito10','tortilla20',1,1,34,'Brazil','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (175438,'pepito15','tortilla16',1,0,76,'Spain','China',3,'Muerto');
INSERT INTO Patients VALUES (470872,'pepito0','tortilla10',1,0,99,'Costa Rica','United States',4,'Activo');
INSERT INTO Patients VALUES (999853,'pepito15','tortilla7',0,0,48,'China','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (794274,'pepito5','tortilla18',0,0,99,'Brazil','China',3,'Recuperado');
INSERT INTO Patients VALUES (766994,'pepito9','tortilla15',0,0,98,'United States','Brazil',3,'Activo');
INSERT INTO Patients VALUES (166816,'pepito16','tortilla17',1,1,62,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (113049,'pepito2','tortilla9',0,0,33,'China','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (614408,'pepito11','tortilla6',0,1,49,'China','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (619024,'pepito11','tortilla12',0,0,94,'China','Spain',3,'Muerto');
INSERT INTO Patients VALUES (298854,'pepito10','tortilla6',0,1,79,'Spain','United States',1,'Activo');
INSERT INTO Patients VALUES (392654,'pepito15','tortilla16',0,0,66,'Spain','Brazil',1,'Activo');
INSERT INTO Patients VALUES (396212,'pepito17','tortilla19',1,1,37,'Brazil','China',3,'Activo');
INSERT INTO Patients VALUES (134649,'pepito2','tortilla11',1,0,66,'China','United States',3,'Activo');
INSERT INTO Patients VALUES (885666,'pepito12','tortilla7',0,1,50,'Brazil','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (997650,'pepito9','tortilla14',0,1,98,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (174834,'pepito1','tortilla5',0,0,21,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (639850,'pepito0','tortilla18',1,1,99,'China','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (451698,'pepito18','tortilla5',0,0,29,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (263175,'pepito15','tortilla15',1,0,87,'Brazil','Spain',4,'Activo');
INSERT INTO Patients VALUES (790018,'pepito20','tortilla1',1,0,54,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (585504,'pepito6','tortilla4',1,0,78,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (117233,'pepito3','tortilla17',1,0,74,'Spain','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (991140,'pepito18','tortilla18',1,0,42,'Costa Rica','United States',4,'Activo');
INSERT INTO Patients VALUES (886538,'pepito1','tortilla3',1,1,73,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (989090,'pepito19','tortilla17',0,0,99,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (403042,'pepito4','tortilla1',0,0,95,'Brazil','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (481866,'pepito2','tortilla19',0,0,38,'Brazil','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (365280,'pepito13','tortilla13',1,1,74,'United States','United States',4,'Recuperado');
INSERT INTO Patients VALUES (326044,'pepito6','tortilla4',1,0,93,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (147453,'pepito13','tortilla12',1,1,76,'Costa Rica','Brazil',1,'Activo');
INSERT INTO Patients VALUES (675243,'pepito14','tortilla14',0,0,96,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (184582,'pepito14','tortilla0',1,1,64,'Brazil','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (577054,'pepito8','tortilla16',0,0,82,'Costa Rica','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (578779,'pepito6','tortilla11',0,0,53,'United States','Spain',4,'Activo');
INSERT INTO Patients VALUES (269256,'pepito15','tortilla6',0,1,40,'Brazil','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (779724,'pepito15','tortilla6',1,1,47,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (536050,'pepito10','tortilla4',0,1,100,'Brazil','Brazil',3,'Activo');
INSERT INTO Patients VALUES (616348,'pepito3','tortilla19',0,0,62,'China','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (944333,'pepito14','tortilla14',1,0,89,'Costa Rica','United States',4,'Muerto');
INSERT INTO Patients VALUES (519293,'pepito17','tortilla13',1,1,72,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (468938,'pepito6','tortilla20',1,0,27,'United States','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (540037,'pepito1','tortilla15',1,1,86,'Brazil','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (372977,'pepito15','tortilla9',0,1,79,'United States','United States',3,'Muerto');
INSERT INTO Patients VALUES (761895,'pepito19','tortilla15',1,0,56,'Brazil','Spain',4,'Muerto');
INSERT INTO Patients VALUES (950747,'pepito13','tortilla16',0,0,27,'Spain','Brazil',3,'Activo');
INSERT INTO Patients VALUES (165882,'pepito15','tortilla4',0,0,95,'Spain','China',4,'Muerto');
INSERT INTO Patients VALUES (112114,'pepito13','tortilla11',0,1,98,'Spain','Spain',3,'Activo');
INSERT INTO Patients VALUES (792812,'pepito5','tortilla7',0,0,59,'United States','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (981954,'pepito3','tortilla13',1,1,40,'Brazil','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (990401,'pepito20','tortilla0',0,0,43,'Spain','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (841002,'pepito1','tortilla2',0,0,60,'China','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (830115,'pepito17','tortilla20',0,0,35,'Brazil','Spain',4,'Muerto');
INSERT INTO Patients VALUES (385411,'pepito7','tortilla10',1,0,70,'United States','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (762451,'pepito13','tortilla1',0,0,68,'United States','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (147356,'pepito20','tortilla4',0,1,92,'Costa Rica','Brazil',3,'Activo');
INSERT INTO Patients VALUES (489234,'pepito4','tortilla13',1,1,42,'Brazil','China',3,'Recuperado');
INSERT INTO Patients VALUES (695241,'pepito17','tortilla10',1,1,81,'Brazil','Spain',3,'Muerto');
INSERT INTO Patients VALUES (780505,'pepito1','tortilla1',0,1,21,'Costa Rica','Spain',3,'Activo');
INSERT INTO Patients VALUES (765931,'pepito6','tortilla20',1,0,53,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (274488,'pepito14','tortilla2',1,1,27,'Brazil','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (276890,'pepito19','tortilla13',0,1,23,'China','China',1,'Activo');
INSERT INTO Patients VALUES (747284,'pepito15','tortilla13',1,0,60,'Brazil','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (716756,'pepito12','tortilla11',1,1,25,'Spain','United States',1,'Muerto');
INSERT INTO Patients VALUES (699801,'pepito5','tortilla20',0,1,48,'Spain','Brazil',4,'Activo');
INSERT INTO Patients VALUES (541114,'pepito5','tortilla13',1,1,66,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (879720,'pepito1','tortilla12',1,1,51,'Spain','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (210599,'pepito7','tortilla16',1,0,47,'China','United States',1,'Recuperado');
INSERT INTO Patients VALUES (705778,'pepito17','tortilla10',1,0,41,'United States','United States',1,'Muerto');
INSERT INTO Patients VALUES (186174,'pepito4','tortilla5',0,0,89,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (718003,'pepito13','tortilla2',1,1,37,'Spain','Brazil',1,'Activo');
INSERT INTO Patients VALUES (685553,'pepito18','tortilla5',1,0,74,'Brazil','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (400199,'pepito2','tortilla1',1,1,70,'United States','Brazil',1,'Activo');
INSERT INTO Patients VALUES (596571,'pepito14','tortilla17',1,0,74,'United States','United States',4,'Recuperado');
INSERT INTO Patients VALUES (905047,'pepito18','tortilla0',0,1,59,'Spain','China',1,'Recuperado');
INSERT INTO Patients VALUES (913587,'pepito20','tortilla9',1,1,83,'Brazil','Brazil',3,'Activo');
INSERT INTO Patients VALUES (673610,'pepito18','tortilla14',1,0,40,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (408250,'pepito20','tortilla16',1,0,61,'Brazil','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (234859,'pepito7','tortilla16',1,0,22,'Costa Rica','China',3,'Recuperado');
INSERT INTO Patients VALUES (269102,'pepito7','tortilla12',0,1,60,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (157950,'pepito2','tortilla20',0,1,83,'Brazil','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (708242,'pepito13','tortilla4',0,0,95,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (892293,'pepito19','tortilla2',0,0,77,'Spain','Brazil',1,'Activo');
INSERT INTO Patients VALUES (793988,'pepito18','tortilla17',1,0,65,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (162123,'pepito6','tortilla18',0,1,62,'United States','Spain',3,'Activo');
INSERT INTO Patients VALUES (476032,'pepito13','tortilla0',1,1,41,'Costa Rica','China',3,'Recuperado');
INSERT INTO Patients VALUES (537829,'pepito5','tortilla18',0,0,27,'Spain','China',1,'Muerto');
INSERT INTO Patients VALUES (693219,'pepito8','tortilla10',1,1,52,'China','United States',4,'Recuperado');
INSERT INTO Patients VALUES (501514,'pepito2','tortilla11',1,0,26,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (548685,'pepito18','tortilla10',0,0,34,'Costa Rica','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (367083,'pepito15','tortilla0',0,1,23,'United States','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (382394,'pepito11','tortilla2',0,1,92,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (726842,'pepito7','tortilla10',0,1,49,'Brazil','China',4,'Recuperado');
INSERT INTO Patients VALUES (239106,'pepito6','tortilla7',0,0,85,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (627712,'pepito11','tortilla18',1,1,81,'China','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (990010,'pepito10','tortilla18',1,0,77,'Costa Rica','United States',1,'Activo');
INSERT INTO Patients VALUES (552411,'pepito19','tortilla13',1,0,67,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (566480,'pepito2','tortilla10',1,1,56,'Brazil','Spain',1,'Muerto');
INSERT INTO Patients VALUES (835215,'pepito11','tortilla4',1,1,44,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (593969,'pepito18','tortilla3',0,1,50,'United States','China',4,'Muerto');
INSERT INTO Patients VALUES (606365,'pepito8','tortilla0',0,1,89,'United States','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (510815,'pepito13','tortilla16',0,0,41,'Brazil','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (835514,'pepito1','tortilla3',1,0,21,'United States','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (872741,'pepito17','tortilla8',1,1,57,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (998202,'pepito13','tortilla18',1,0,22,'Brazil','China',4,'Activo');
INSERT INTO Patients VALUES (822497,'pepito17','tortilla12',1,0,93,'Spain','Spain',3,'Activo');
INSERT INTO Patients VALUES (139408,'pepito18','tortilla1',1,0,46,'Costa Rica','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (928359,'pepito11','tortilla17',1,0,94,'United States','Brazil',4,'Activo');
INSERT INTO Patients VALUES (299013,'pepito12','tortilla15',1,0,83,'Costa Rica','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (580861,'pepito16','tortilla18',0,0,42,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (686726,'pepito19','tortilla6',0,1,39,'United States','Spain',3,'Activo');
INSERT INTO Patients VALUES (307511,'pepito1','tortilla2',0,1,82,'Spain','Spain',3,'Muerto');
INSERT INTO Patients VALUES (103028,'pepito2','tortilla3',0,0,97,'Costa Rica','United States',4,'Recuperado');
INSERT INTO Patients VALUES (768354,'pepito14','tortilla2',0,0,36,'United States','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (214765,'pepito18','tortilla8',1,0,31,'Brazil','China',1,'Recuperado');
INSERT INTO Patients VALUES (350013,'pepito4','tortilla14',1,0,30,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (432749,'pepito2','tortilla13',1,1,25,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (235416,'pepito14','tortilla1',0,0,88,'United States','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (558301,'pepito17','tortilla1',1,1,56,'Brazil','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (261215,'pepito19','tortilla3',1,0,97,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (171311,'pepito15','tortilla1',1,0,28,'Brazil','Spain',4,'Activo');
INSERT INTO Patients VALUES (457198,'pepito17','tortilla19',1,0,27,'United States','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (994765,'pepito11','tortilla14',0,1,79,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (650115,'pepito1','tortilla10',0,1,47,'China','United States',4,'Muerto');
INSERT INTO Patients VALUES (826318,'pepito20','tortilla11',1,0,44,'Costa Rica','Spain',4,'Activo');
INSERT INTO Patients VALUES (768691,'pepito8','tortilla0',1,1,47,'China','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (749076,'pepito10','tortilla8',0,0,83,'Spain','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (968654,'pepito7','tortilla16',0,0,33,'Spain','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (640304,'pepito11','tortilla7',0,1,44,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (694022,'pepito17','tortilla20',0,1,20,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (633795,'pepito20','tortilla8',0,1,36,'United States','China',1,'Recuperado');
INSERT INTO Patients VALUES (442837,'pepito10','tortilla13',1,1,48,'United States','United States',1,'Muerto');
INSERT INTO Patients VALUES (569468,'pepito4','tortilla17',1,1,63,'Costa Rica','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (541294,'pepito11','tortilla13',1,1,28,'United States','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (325364,'pepito6','tortilla5',0,1,93,'China','Spain',3,'Activo');
INSERT INTO Patients VALUES (394448,'pepito0','tortilla11',1,1,39,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (884873,'pepito14','tortilla20',1,1,94,'Spain','Brazil',3,'Activo');
INSERT INTO Patients VALUES (366681,'pepito8','tortilla15',1,0,22,'United States','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (566456,'pepito13','tortilla4',1,0,77,'China','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (875040,'pepito8','tortilla14',1,1,47,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (934025,'pepito3','tortilla7',1,0,60,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (260190,'pepito4','tortilla5',1,1,95,'Brazil','China',4,'Recuperado');
INSERT INTO Patients VALUES (336517,'pepito15','tortilla9',1,1,75,'Brazil','United States',4,'Muerto');
INSERT INTO Patients VALUES (757793,'pepito4','tortilla10',0,1,96,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (513213,'pepito9','tortilla18',1,0,62,'Costa Rica','United States',4,'Recuperado');
INSERT INTO Patients VALUES (532019,'pepito9','tortilla9',1,0,27,'Costa Rica','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (693719,'pepito6','tortilla18',0,1,68,'Brazil','United States',1,'Activo');
INSERT INTO Patients VALUES (855850,'pepito17','tortilla13',1,1,38,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (800911,'pepito3','tortilla6',0,1,34,'Spain','China',4,'Recuperado');
INSERT INTO Patients VALUES (437582,'pepito7','tortilla11',1,0,45,'Brazil','Spain',3,'Activo');
INSERT INTO Patients VALUES (422649,'pepito19','tortilla13',0,1,28,'Spain','Brazil',1,'Activo');
INSERT INTO Patients VALUES (782644,'pepito5','tortilla20',0,0,93,'Costa Rica','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (981722,'pepito12','tortilla19',0,1,43,'China','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (237851,'pepito9','tortilla6',0,0,66,'China','Spain',4,'Activo');
INSERT INTO Patients VALUES (611557,'pepito20','tortilla15',0,0,28,'China','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (194442,'pepito13','tortilla5',0,0,88,'Spain','Brazil',1,'Activo');
INSERT INTO Patients VALUES (419928,'pepito1','tortilla2',0,1,97,'United States','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (840047,'pepito1','tortilla15',1,0,39,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (980806,'pepito0','tortilla20',0,0,69,'Brazil','Brazil',4,'Activo');
INSERT INTO Patients VALUES (510904,'pepito5','tortilla0',1,1,63,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (933419,'pepito12','tortilla7',0,1,20,'Costa Rica','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (245691,'pepito14','tortilla12',1,0,52,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (315946,'pepito1','tortilla7',1,1,36,'China','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (636391,'pepito3','tortilla3',1,1,71,'Brazil','Spain',3,'Activo');
INSERT INTO Patients VALUES (343237,'pepito16','tortilla14',1,1,51,'United States','China',1,'Recuperado');
INSERT INTO Patients VALUES (744860,'pepito13','tortilla1',1,1,25,'Spain','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (903302,'pepito13','tortilla2',1,1,68,'Costa Rica','United States',3,'Activo');
INSERT INTO Patients VALUES (707829,'pepito9','tortilla5',1,1,43,'Brazil','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (574830,'pepito11','tortilla0',1,0,63,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (121583,'pepito5','tortilla8',0,0,36,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (697167,'pepito17','tortilla6',0,0,28,'Costa Rica','United States',3,'Muerto');
INSERT INTO Patients VALUES (375642,'pepito3','tortilla15',1,1,78,'Brazil','Spain',3,'Muerto');
INSERT INTO Patients VALUES (560177,'pepito4','tortilla14',0,1,92,'Costa Rica','Spain',1,'Activo');
INSERT INTO Patients VALUES (951907,'pepito20','tortilla13',1,0,64,'Brazil','United States',3,'Activo');
INSERT INTO Patients VALUES (629108,'pepito11','tortilla19',0,1,46,'Brazil','China',1,'Muerto');
INSERT INTO Patients VALUES (450267,'pepito1','tortilla20',1,0,91,'Spain','United States',1,'Activo');
INSERT INTO Patients VALUES (163171,'pepito17','tortilla11',1,0,47,'Brazil','China',1,'Recuperado');
INSERT INTO Patients VALUES (895483,'pepito15','tortilla3',1,1,98,'China','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (988231,'pepito10','tortilla15',1,1,38,'Spain','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (376342,'pepito20','tortilla8',1,0,93,'Brazil','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (985307,'pepito19','tortilla19',0,0,59,'China','United States',4,'Recuperado');
INSERT INTO Patients VALUES (500792,'pepito9','tortilla17',1,0,96,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (237626,'pepito7','tortilla8',0,0,76,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (781689,'pepito8','tortilla19',1,1,63,'China','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (552323,'pepito3','tortilla5',0,0,35,'China','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (624109,'pepito1','tortilla9',0,1,82,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (698724,'pepito18','tortilla18',0,1,28,'Brazil','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (486214,'pepito6','tortilla1',1,1,96,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (680609,'pepito17','tortilla8',1,1,32,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (851308,'pepito13','tortilla14',1,0,26,'China','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (162156,'pepito12','tortilla4',1,1,51,'United States','Brazil',3,'Activo');
INSERT INTO Patients VALUES (304798,'pepito15','tortilla6',1,0,34,'Spain','China',3,'Recuperado');
INSERT INTO Patients VALUES (637480,'pepito16','tortilla15',1,0,87,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (140129,'pepito10','tortilla13',0,0,54,'Spain','Spain',4,'Activo');
INSERT INTO Patients VALUES (534294,'pepito1','tortilla11',0,1,65,'China','United States',1,'Muerto');
INSERT INTO Patients VALUES (374763,'pepito5','tortilla5',0,0,47,'China','United States',1,'Recuperado');
INSERT INTO Patients VALUES (193618,'pepito10','tortilla12',1,0,83,'Brazil','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (872267,'pepito19','tortilla17',1,1,63,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (115044,'pepito10','tortilla18',0,0,34,'China','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (681195,'pepito20','tortilla18',0,1,26,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (832286,'pepito8','tortilla19',1,0,72,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (454967,'pepito12','tortilla9',1,0,54,'Spain','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (999262,'pepito0','tortilla14',1,1,65,'China','United States',4,'Recuperado');
INSERT INTO Patients VALUES (682520,'pepito6','tortilla10',1,1,68,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (267661,'pepito1','tortilla7',1,1,67,'United States','United States',1,'Muerto');
INSERT INTO Patients VALUES (902597,'pepito20','tortilla15',1,1,23,'United States','Spain',3,'Activo');
INSERT INTO Patients VALUES (474817,'pepito19','tortilla18',1,0,88,'China','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (691976,'pepito8','tortilla8',1,0,22,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (938301,'pepito11','tortilla14',1,0,97,'United States','Brazil',4,'Activo');
INSERT INTO Patients VALUES (883251,'pepito15','tortilla19',1,1,67,'Spain','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (309191,'pepito5','tortilla0',1,0,24,'Spain','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (465547,'pepito20','tortilla10',0,0,75,'Brazil','China',3,'Recuperado');
INSERT INTO Patients VALUES (758794,'pepito18','tortilla12',1,0,86,'China','United States',1,'Muerto');
INSERT INTO Patients VALUES (423260,'pepito0','tortilla0',1,1,27,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (488359,'pepito18','tortilla14',1,1,92,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (773353,'pepito20','tortilla3',0,1,86,'Spain','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (249050,'pepito19','tortilla5',1,0,37,'Spain','Spain',1,'Muerto');
INSERT INTO Patients VALUES (894996,'pepito18','tortilla1',0,0,91,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (609794,'pepito10','tortilla7',1,1,68,'Brazil','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (548101,'pepito20','tortilla20',0,0,44,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (637311,'pepito18','tortilla5',1,1,69,'Spain','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (866310,'pepito1','tortilla5',0,1,27,'Costa Rica','China',3,'Muerto');
INSERT INTO Patients VALUES (687502,'pepito17','tortilla8',1,0,78,'Costa Rica','China',4,'Muerto');
INSERT INTO Patients VALUES (185123,'pepito12','tortilla15',1,1,52,'Costa Rica','United States',3,'Recuperado');
INSERT INTO Patients VALUES (240842,'pepito15','tortilla9',1,0,97,'China','China',1,'Activo');
INSERT INTO Patients VALUES (898839,'pepito18','tortilla13',1,0,34,'Brazil','China',4,'Muerto');
INSERT INTO Patients VALUES (139876,'pepito15','tortilla14',0,1,93,'China','Brazil',1,'Activo');
INSERT INTO Patients VALUES (770804,'pepito1','tortilla16',0,1,92,'Brazil','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (317730,'pepito20','tortilla11',1,0,84,'Brazil','Spain',4,'Activo');
INSERT INTO Patients VALUES (195133,'pepito7','tortilla6',0,0,67,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (541277,'pepito1','tortilla0',0,0,67,'Brazil','Spain',4,'Activo');
INSERT INTO Patients VALUES (579256,'pepito3','tortilla8',0,0,69,'China','United States',4,'Activo');
INSERT INTO Patients VALUES (389160,'pepito17','tortilla8',0,1,84,'Brazil','China',1,'Recuperado');
INSERT INTO Patients VALUES (470918,'pepito11','tortilla13',1,0,51,'Costa Rica','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (738351,'pepito7','tortilla5',1,1,64,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (739100,'pepito8','tortilla8',1,0,70,'Brazil','China',3,'Activo');
INSERT INTO Patients VALUES (795439,'pepito0','tortilla9',1,0,92,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (957763,'pepito9','tortilla19',0,1,69,'United States','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (810205,'pepito18','tortilla14',1,0,70,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (668941,'pepito16','tortilla12',0,0,38,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (796462,'pepito18','tortilla11',0,0,29,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (830787,'pepito7','tortilla12',0,1,99,'Costa Rica','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (978679,'pepito3','tortilla7',1,0,77,'China','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (962614,'pepito13','tortilla3',1,1,77,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (565347,'pepito19','tortilla9',0,1,61,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (345188,'pepito7','tortilla17',1,1,79,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (678503,'pepito5','tortilla5',1,0,34,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (228272,'pepito14','tortilla16',1,1,28,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (553175,'pepito4','tortilla18',1,1,78,'Costa Rica','United States',3,'Recuperado');
INSERT INTO Patients VALUES (852042,'pepito10','tortilla14',1,0,56,'United States','China',1,'Recuperado');
INSERT INTO Patients VALUES (768279,'pepito20','tortilla8',1,0,83,'Costa Rica','Brazil',4,'Activo');
INSERT INTO Patients VALUES (116749,'pepito10','tortilla8',0,1,65,'Spain','United States',4,'Muerto');
INSERT INTO Patients VALUES (425544,'pepito15','tortilla16',1,1,72,'Spain','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (848672,'pepito9','tortilla18',0,0,65,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (803316,'pepito19','tortilla1',0,1,51,'United States','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (498552,'pepito1','tortilla0',1,0,29,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (975752,'pepito9','tortilla2',1,0,80,'United States','Spain',4,'Muerto');
INSERT INTO Patients VALUES (844188,'pepito11','tortilla11',0,0,65,'Costa Rica','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (979679,'pepito14','tortilla20',1,1,27,'Costa Rica','United States',3,'Muerto');
INSERT INTO Patients VALUES (827924,'pepito19','tortilla11',0,1,82,'Spain','China',1,'Activo');
INSERT INTO Patients VALUES (945537,'pepito2','tortilla5',0,1,34,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (893878,'pepito9','tortilla18',1,0,74,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (761201,'pepito15','tortilla16',0,0,44,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (680526,'pepito2','tortilla18',0,1,64,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (881146,'pepito5','tortilla14',0,1,42,'China','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (217976,'pepito12','tortilla14',1,0,63,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (513268,'pepito10','tortilla17',1,0,71,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (734543,'pepito0','tortilla18',1,0,69,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (289488,'pepito6','tortilla1',1,1,66,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (503756,'pepito4','tortilla2',1,1,37,'Brazil','China',3,'Activo');
INSERT INTO Patients VALUES (934127,'pepito18','tortilla1',1,1,26,'Brazil','China',1,'Activo');
INSERT INTO Patients VALUES (454119,'pepito20','tortilla4',0,0,24,'Costa Rica','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (387619,'pepito20','tortilla2',0,1,36,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (921087,'pepito16','tortilla16',0,0,45,'Brazil','Spain',4,'Activo');
INSERT INTO Patients VALUES (494601,'pepito15','tortilla11',1,1,72,'Costa Rica','United States',4,'Activo');
INSERT INTO Patients VALUES (632771,'pepito12','tortilla13',0,0,49,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (210998,'pepito16','tortilla12',0,0,76,'Spain','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (859905,'pepito20','tortilla4',0,1,48,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (185309,'pepito10','tortilla18',0,1,87,'Spain','Brazil',1,'Activo');
INSERT INTO Patients VALUES (693072,'pepito11','tortilla2',0,0,66,'Brazil','China',4,'Muerto');
INSERT INTO Patients VALUES (627837,'pepito10','tortilla13',1,0,90,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (265573,'pepito3','tortilla13',0,0,69,'Brazil','China',3,'Muerto');
INSERT INTO Patients VALUES (865841,'pepito18','tortilla18',1,0,72,'Spain','China',3,'Recuperado');
INSERT INTO Patients VALUES (870418,'pepito7','tortilla17',0,1,53,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (411179,'pepito20','tortilla19',0,1,37,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (436031,'pepito2','tortilla15',1,1,55,'United States','Brazil',1,'Activo');
INSERT INTO Patients VALUES (455144,'pepito11','tortilla0',1,0,38,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (937402,'pepito20','tortilla5',1,0,65,'Costa Rica','United States',3,'Muerto');
INSERT INTO Patients VALUES (524876,'pepito6','tortilla4',1,0,46,'China','China',3,'Recuperado');
INSERT INTO Patients VALUES (660834,'pepito9','tortilla16',0,0,97,'Costa Rica','Brazil',1,'Activo');
INSERT INTO Patients VALUES (760680,'pepito7','tortilla8',0,0,61,'United States','China',4,'Muerto');
INSERT INTO Patients VALUES (411757,'pepito10','tortilla8',0,1,64,'China','China',3,'Recuperado');
INSERT INTO Patients VALUES (618731,'pepito3','tortilla19',1,1,56,'United States','Spain',1,'Activo');
INSERT INTO Patients VALUES (879236,'pepito9','tortilla8',0,1,64,'China','United States',3,'Recuperado');
INSERT INTO Patients VALUES (789409,'pepito14','tortilla6',1,0,85,'Brazil','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (570318,'pepito20','tortilla5',1,1,71,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (776725,'pepito9','tortilla5',1,0,40,'Spain','China',4,'Recuperado');
INSERT INTO Patients VALUES (518355,'pepito10','tortilla20',0,0,55,'Brazil','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (753071,'pepito3','tortilla19',0,1,79,'China','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (169062,'pepito10','tortilla9',0,1,92,'Costa Rica','United States',4,'Activo');
INSERT INTO Patients VALUES (724516,'pepito0','tortilla14',1,1,83,'Brazil','United States',1,'Activo');
INSERT INTO Patients VALUES (813301,'pepito0','tortilla6',0,1,44,'United States','Spain',1,'Activo');
INSERT INTO Patients VALUES (806307,'pepito17','tortilla16',1,0,34,'Spain','Spain',3,'Muerto');
INSERT INTO Patients VALUES (194263,'pepito20','tortilla16',1,0,31,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (980658,'pepito9','tortilla0',0,0,49,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (223296,'pepito2','tortilla18',0,0,92,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (751948,'pepito1','tortilla20',1,1,71,'Brazil','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (875337,'pepito19','tortilla2',1,1,73,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (373912,'pepito6','tortilla11',1,1,50,'Spain','China',3,'Activo');
INSERT INTO Patients VALUES (212452,'pepito16','tortilla11',0,0,48,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (676014,'pepito5','tortilla0',1,0,45,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (439951,'pepito15','tortilla8',0,0,54,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (863660,'pepito4','tortilla16',1,0,26,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (235259,'pepito0','tortilla0',1,1,88,'China','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (320066,'pepito13','tortilla15',0,1,49,'Spain','China',3,'Recuperado');
INSERT INTO Patients VALUES (449048,'pepito4','tortilla11',0,0,45,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (491489,'pepito19','tortilla15',1,1,80,'Spain','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (862683,'pepito18','tortilla7',0,1,70,'United States','United States',4,'Recuperado');
INSERT INTO Patients VALUES (783551,'pepito3','tortilla17',0,0,79,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (857685,'pepito12','tortilla2',1,1,68,'Brazil','China',1,'Activo');
INSERT INTO Patients VALUES (988813,'pepito18','tortilla1',0,0,78,'China','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (894455,'pepito8','tortilla13',0,1,57,'Spain','Spain',3,'Activo');
INSERT INTO Patients VALUES (116983,'pepito17','tortilla14',0,0,95,'Brazil','Brazil',3,'Activo');
INSERT INTO Patients VALUES (414166,'pepito13','tortilla14',1,1,91,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (102289,'pepito0','tortilla15',1,1,44,'Costa Rica','United States',1,'Activo');
INSERT INTO Patients VALUES (258666,'pepito4','tortilla17',0,1,93,'Spain','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (416760,'pepito9','tortilla9',1,0,95,'China','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (465061,'pepito11','tortilla15',0,0,96,'Brazil','China',4,'Muerto');
INSERT INTO Patients VALUES (884032,'pepito10','tortilla18',0,1,38,'Brazil','Spain',3,'Muerto');
INSERT INTO Patients VALUES (121360,'pepito6','tortilla18',1,0,29,'Spain','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (153711,'pepito20','tortilla8',1,0,73,'Spain','China',3,'Muerto');
INSERT INTO Patients VALUES (718345,'pepito5','tortilla4',1,1,58,'Brazil','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (325641,'pepito18','tortilla14',0,1,40,'Brazil','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (731777,'pepito11','tortilla5',1,0,85,'Brazil','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (322221,'pepito20','tortilla1',1,0,45,'China','Spain',1,'Activo');
INSERT INTO Patients VALUES (567113,'pepito16','tortilla14',1,0,51,'Costa Rica','Spain',4,'Activo');
INSERT INTO Patients VALUES (806856,'pepito2','tortilla1',0,1,46,'Brazil','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (782194,'pepito13','tortilla7',1,0,90,'Spain','China',4,'Activo');
INSERT INTO Patients VALUES (153193,'pepito4','tortilla3',1,1,70,'China','Spain',3,'Activo');
INSERT INTO Patients VALUES (575627,'pepito11','tortilla20',0,1,39,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (961373,'pepito6','tortilla17',1,1,43,'United States','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (199351,'pepito2','tortilla14',0,0,28,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (120333,'pepito19','tortilla1',1,0,22,'United States','Brazil',1,'Activo');
INSERT INTO Patients VALUES (476732,'pepito12','tortilla10',0,0,20,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (278729,'pepito5','tortilla20',1,1,100,'United States','United States',3,'Muerto');
INSERT INTO Patients VALUES (701360,'pepito20','tortilla10',0,0,43,'China','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (704468,'pepito4','tortilla17',0,0,73,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (457423,'pepito4','tortilla7',0,1,72,'United States','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (864177,'pepito17','tortilla13',0,1,82,'Brazil','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (272371,'pepito14','tortilla17',0,0,94,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (256119,'pepito11','tortilla1',0,1,62,'Spain','Spain',4,'Activo');
INSERT INTO Patients VALUES (409828,'pepito4','tortilla0',0,0,55,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (750227,'pepito0','tortilla6',0,0,46,'China','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (352009,'pepito3','tortilla4',1,1,61,'United States','United States',1,'Recuperado');
INSERT INTO Patients VALUES (154098,'pepito4','tortilla0',0,1,55,'Brazil','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (487321,'pepito20','tortilla17',1,0,52,'United States','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (243263,'pepito3','tortilla1',1,0,38,'Spain','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (752114,'pepito11','tortilla10',1,1,29,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (260616,'pepito16','tortilla20',0,1,30,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (759765,'pepito4','tortilla17',1,0,93,'Brazil','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (860070,'pepito19','tortilla10',1,1,95,'Brazil','United States',3,'Activo');
INSERT INTO Patients VALUES (151144,'pepito2','tortilla15',0,0,22,'Spain','China',3,'Activo');
INSERT INTO Patients VALUES (157275,'pepito17','tortilla19',1,0,78,'Costa Rica','China',4,'Activo');
INSERT INTO Patients VALUES (336006,'pepito4','tortilla7',1,0,22,'Brazil','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (696953,'pepito6','tortilla2',0,0,76,'United States','United States',3,'Activo');
INSERT INTO Patients VALUES (549924,'pepito18','tortilla20',0,1,62,'China','United States',3,'Recuperado');
INSERT INTO Patients VALUES (888581,'pepito20','tortilla20',1,0,43,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (726105,'pepito4','tortilla7',1,1,63,'United States','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (973041,'pepito5','tortilla16',0,1,99,'China','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (652423,'pepito19','tortilla10',1,0,74,'China','China',1,'Recuperado');
INSERT INTO Patients VALUES (879348,'pepito10','tortilla16',1,0,84,'Brazil','United States',1,'Recuperado');
INSERT INTO Patients VALUES (129421,'pepito12','tortilla16',0,0,88,'Costa Rica','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (464390,'pepito0','tortilla1',0,0,91,'Brazil','China',3,'Recuperado');
INSERT INTO Patients VALUES (366400,'pepito16','tortilla12',0,1,72,'China','Spain',1,'Muerto');
INSERT INTO Patients VALUES (674736,'pepito6','tortilla4',1,0,24,'Brazil','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (506482,'pepito17','tortilla10',0,1,57,'Brazil','Brazil',4,'Activo');
INSERT INTO Patients VALUES (694238,'pepito18','tortilla4',0,0,22,'China','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (274394,'pepito11','tortilla17',1,1,77,'China','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (236870,'pepito20','tortilla11',1,0,59,'Costa Rica','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (208275,'pepito8','tortilla20',1,1,34,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (928697,'pepito17','tortilla19',0,0,94,'Brazil','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (268649,'pepito10','tortilla10',0,0,47,'Brazil','Spain',1,'Muerto');
INSERT INTO Patients VALUES (895195,'pepito13','tortilla0',0,1,39,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (791316,'pepito11','tortilla3',1,0,95,'Brazil','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (505729,'pepito17','tortilla14',1,0,20,'Spain','China',1,'Activo');
INSERT INTO Patients VALUES (600811,'pepito16','tortilla3',1,1,49,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (290986,'pepito12','tortilla19',1,0,47,'United States','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (612810,'pepito14','tortilla1',1,1,39,'Spain','China',1,'Muerto');
INSERT INTO Patients VALUES (917557,'pepito0','tortilla9',0,0,57,'Brazil','Brazil',4,'Activo');
INSERT INTO Patients VALUES (168727,'pepito12','tortilla5',1,1,63,'China','United States',3,'Activo');
INSERT INTO Patients VALUES (864455,'pepito3','tortilla3',0,0,93,'United States','Brazil',3,'Activo');
INSERT INTO Patients VALUES (338815,'pepito8','tortilla15',0,1,30,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (749669,'pepito18','tortilla10',0,0,66,'Costa Rica','Brazil',4,'Activo');
INSERT INTO Patients VALUES (722143,'pepito9','tortilla5',1,0,73,'Spain','United States',1,'Muerto');
INSERT INTO Patients VALUES (951021,'pepito2','tortilla5',0,0,78,'China','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (177435,'pepito19','tortilla5',0,0,23,'Brazil','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (340622,'pepito19','tortilla7',0,1,58,'Brazil','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (798727,'pepito14','tortilla8',1,0,50,'China','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (648574,'pepito17','tortilla14',0,0,30,'China','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (197186,'pepito19','tortilla3',1,0,81,'Brazil','Brazil',4,'Activo');
INSERT INTO Patients VALUES (725487,'pepito12','tortilla18',0,0,94,'Brazil','United States',4,'Muerto');
INSERT INTO Patients VALUES (818130,'pepito15','tortilla3',1,0,57,'Brazil','United States',4,'Muerto');
INSERT INTO Patients VALUES (675560,'pepito4','tortilla17',1,1,53,'China','Brazil',1,'Activo');
INSERT INTO Patients VALUES (657836,'pepito2','tortilla14',0,1,49,'Brazil','United States',4,'Recuperado');
INSERT INTO Patients VALUES (212745,'pepito14','tortilla1',1,0,24,'Brazil','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (923784,'pepito13','tortilla20',0,0,50,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (858264,'pepito19','tortilla10',0,1,75,'Spain','United States',1,'Activo');
INSERT INTO Patients VALUES (320040,'pepito13','tortilla19',1,0,29,'Spain','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (949545,'pepito2','tortilla12',0,1,22,'Brazil','China',3,'Muerto');
INSERT INTO Patients VALUES (819173,'pepito17','tortilla10',1,0,50,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (619963,'pepito6','tortilla0',0,1,62,'Brazil','Spain',4,'Muerto');
INSERT INTO Patients VALUES (418695,'pepito3','tortilla4',1,0,31,'Brazil','China',3,'Muerto');
INSERT INTO Patients VALUES (475983,'pepito4','tortilla1',0,1,67,'China','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (934115,'pepito6','tortilla2',0,0,89,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (796293,'pepito15','tortilla9',1,1,70,'Costa Rica','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (383780,'pepito9','tortilla10',0,0,70,'Costa Rica','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (655596,'pepito10','tortilla13',1,1,63,'China','United States',1,'Recuperado');
INSERT INTO Patients VALUES (393341,'pepito10','tortilla1',0,0,67,'Brazil','China',4,'Activo');
INSERT INTO Patients VALUES (674073,'pepito20','tortilla8',0,0,69,'United States','Brazil',4,'Activo');
INSERT INTO Patients VALUES (260957,'pepito11','tortilla3',1,0,51,'Costa Rica','United States',4,'Muerto');
INSERT INTO Patients VALUES (898650,'pepito7','tortilla12',0,1,89,'United States','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (321812,'pepito0','tortilla15',1,0,83,'China','United States',1,'Activo');
INSERT INTO Patients VALUES (446074,'pepito17','tortilla19',0,1,30,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (130928,'pepito10','tortilla10',0,0,38,'Spain','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (117984,'pepito11','tortilla18',1,0,31,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (803072,'pepito12','tortilla5',0,0,68,'Costa Rica','Spain',3,'Activo');
INSERT INTO Patients VALUES (916868,'pepito17','tortilla9',1,1,80,'Spain','United States',1,'Muerto');
INSERT INTO Patients VALUES (123469,'pepito18','tortilla1',1,0,97,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (177396,'pepito12','tortilla5',0,0,25,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (124959,'pepito10','tortilla9',1,1,59,'Spain','China',3,'Recuperado');
INSERT INTO Patients VALUES (488446,'pepito9','tortilla15',1,1,86,'Brazil','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (719167,'pepito15','tortilla15',0,0,31,'Spain','United States',1,'Muerto');
INSERT INTO Patients VALUES (126354,'pepito14','tortilla1',1,0,37,'Brazil','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (460774,'pepito1','tortilla8',1,0,32,'United States','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (627417,'pepito19','tortilla17',1,1,50,'Brazil','United States',4,'Muerto');
INSERT INTO Patients VALUES (466385,'pepito4','tortilla11',0,1,65,'China','United States',3,'Activo');
INSERT INTO Patients VALUES (724680,'pepito17','tortilla16',0,1,97,'Spain','China',4,'Activo');
INSERT INTO Patients VALUES (578766,'pepito8','tortilla8',0,0,43,'Brazil','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (403017,'pepito19','tortilla9',1,0,62,'Spain','United States',4,'Muerto');
INSERT INTO Patients VALUES (252922,'pepito18','tortilla7',1,0,37,'Brazil','Spain',1,'Muerto');
INSERT INTO Patients VALUES (683876,'pepito19','tortilla3',0,1,28,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (699714,'pepito7','tortilla18',0,0,28,'China','China',4,'Activo');
INSERT INTO Patients VALUES (913405,'pepito16','tortilla19',0,1,40,'China','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (100810,'pepito1','tortilla2',1,1,55,'Costa Rica','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (961074,'pepito19','tortilla19',1,1,29,'Brazil','Spain',1,'Activo');
INSERT INTO Patients VALUES (649864,'pepito11','tortilla2',1,0,39,'Spain','China',4,'Muerto');
INSERT INTO Patients VALUES (239391,'pepito15','tortilla6',0,0,34,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (782857,'pepito12','tortilla0',1,0,92,'China','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (675973,'pepito0','tortilla6',1,1,33,'China','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (789605,'pepito11','tortilla5',0,0,50,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (657582,'pepito4','tortilla19',1,1,62,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (618775,'pepito5','tortilla16',1,1,24,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (108824,'pepito10','tortilla17',0,0,77,'Costa Rica','China',4,'Muerto');
INSERT INTO Patients VALUES (174414,'pepito15','tortilla0',0,0,37,'Costa Rica','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (896431,'pepito15','tortilla7',1,0,20,'Costa Rica','Spain',3,'Activo');
INSERT INTO Patients VALUES (894149,'pepito20','tortilla9',0,1,58,'China','United States',4,'Muerto');
INSERT INTO Patients VALUES (431215,'pepito5','tortilla1',0,1,30,'United States','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (742071,'pepito4','tortilla20',1,0,42,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (329237,'pepito10','tortilla4',0,0,63,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (450223,'pepito12','tortilla9',1,0,47,'Spain','United States',1,'Activo');
INSERT INTO Patients VALUES (328226,'pepito15','tortilla4',0,0,51,'Spain','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (758644,'pepito20','tortilla2',1,1,89,'China','China',1,'Recuperado');
INSERT INTO Patients VALUES (623722,'pepito1','tortilla13',0,1,53,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (808671,'pepito12','tortilla8',0,0,23,'United States','China',4,'Activo');
INSERT INTO Patients VALUES (186333,'pepito14','tortilla11',0,0,58,'Costa Rica','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (956876,'pepito15','tortilla6',0,1,44,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (196483,'pepito9','tortilla17',1,1,29,'Brazil','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (466864,'pepito10','tortilla15',1,1,97,'Brazil','Spain',4,'Muerto');
INSERT INTO Patients VALUES (709728,'pepito8','tortilla20',0,0,92,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (667999,'pepito3','tortilla17',0,1,21,'United States','China',3,'Activo');
INSERT INTO Patients VALUES (949053,'pepito17','tortilla2',0,0,25,'Brazil','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (253341,'pepito5','tortilla8',0,1,77,'China','Brazil',4,'Activo');
INSERT INTO Patients VALUES (795006,'pepito14','tortilla5',1,0,83,'Brazil','Spain',3,'Activo');
INSERT INTO Patients VALUES (723321,'pepito16','tortilla16',0,0,42,'United States','Spain',3,'Muerto');
INSERT INTO Patients VALUES (732456,'pepito1','tortilla5',1,0,38,'United States','United States',3,'Activo');
INSERT INTO Patients VALUES (501034,'pepito10','tortilla16',0,1,20,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (551480,'pepito17','tortilla8',0,0,48,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (917529,'pepito6','tortilla10',0,0,34,'Brazil','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (146795,'pepito16','tortilla6',0,0,59,'Spain','Brazil',3,'Activo');
INSERT INTO Patients VALUES (849426,'pepito9','tortilla1',0,1,54,'Spain','China',1,'Muerto');
INSERT INTO Patients VALUES (370267,'pepito7','tortilla8',1,1,49,'China','United States',4,'Activo');
INSERT INTO Patients VALUES (894910,'pepito7','tortilla7',1,0,51,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (291309,'pepito10','tortilla20',0,1,60,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (913097,'pepito2','tortilla1',0,1,87,'Brazil','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (252095,'pepito1','tortilla10',0,0,94,'Costa Rica','China',4,'Activo');
INSERT INTO Patients VALUES (782299,'pepito15','tortilla6',0,1,74,'China','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (976199,'pepito16','tortilla11',1,1,81,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (398977,'pepito10','tortilla14',0,1,59,'Brazil','China',4,'Muerto');
INSERT INTO Patients VALUES (319529,'pepito14','tortilla15',1,0,29,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (266189,'pepito19','tortilla16',0,1,43,'Brazil','China',3,'Recuperado');
INSERT INTO Patients VALUES (637059,'pepito0','tortilla8',0,0,22,'United States','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (292992,'pepito19','tortilla1',1,0,41,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (917500,'pepito15','tortilla4',0,0,96,'Spain','Spain',3,'Muerto');
INSERT INTO Patients VALUES (847650,'pepito9','tortilla12',0,0,26,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (400116,'pepito2','tortilla18',1,1,70,'United States','Spain',3,'Activo');
INSERT INTO Patients VALUES (797920,'pepito15','tortilla14',1,1,48,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (825696,'pepito4','tortilla0',1,1,81,'Costa Rica','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (877999,'pepito8','tortilla17',0,1,65,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (790933,'pepito15','tortilla2',0,1,36,'China','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (391479,'pepito13','tortilla11',1,0,61,'China','Spain',3,'Activo');
INSERT INTO Patients VALUES (116146,'pepito10','tortilla3',0,1,79,'Brazil','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (722305,'pepito1','tortilla10',0,0,69,'United States','China',3,'Activo');
INSERT INTO Patients VALUES (125284,'pepito19','tortilla13',0,1,39,'Costa Rica','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (227991,'pepito15','tortilla4',0,1,35,'Spain','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (483928,'pepito16','tortilla5',1,0,38,'United States','Brazil',3,'Activo');
INSERT INTO Patients VALUES (389576,'pepito14','tortilla5',1,0,63,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (278056,'pepito10','tortilla10',0,0,91,'United States','Spain',1,'Activo');
INSERT INTO Patients VALUES (862684,'pepito10','tortilla17',0,1,24,'China','Brazil',1,'Activo');
INSERT INTO Patients VALUES (872343,'pepito12','tortilla4',1,0,74,'China','Spain',3,'Muerto');
INSERT INTO Patients VALUES (643218,'pepito17','tortilla17',0,0,91,'Costa Rica','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (819641,'pepito12','tortilla11',0,0,45,'Brazil','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (963147,'pepito13','tortilla19',0,1,56,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (754084,'pepito2','tortilla0',1,1,30,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (492747,'pepito3','tortilla17',0,1,43,'Brazil','China',1,'Activo');
INSERT INTO Patients VALUES (245390,'pepito6','tortilla16',0,0,58,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (320115,'pepito4','tortilla0',1,1,98,'United States','China',3,'Activo');
INSERT INTO Patients VALUES (131270,'pepito13','tortilla4',0,1,20,'Spain','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (204256,'pepito18','tortilla4',0,0,39,'Brazil','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (180854,'pepito20','tortilla18',1,0,86,'Costa Rica','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (156365,'pepito19','tortilla19',1,0,80,'Brazil','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (462821,'pepito8','tortilla19',0,1,43,'Spain','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (468196,'pepito4','tortilla3',0,0,32,'Brazil','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (491468,'pepito18','tortilla13',1,1,27,'Spain','Brazil',1,'Activo');
INSERT INTO Patients VALUES (313715,'pepito16','tortilla0',1,0,35,'Brazil','Spain',1,'Activo');
INSERT INTO Patients VALUES (998900,'pepito1','tortilla7',1,1,79,'Costa Rica','United States',1,'Activo');
INSERT INTO Patients VALUES (799617,'pepito19','tortilla14',1,0,29,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (418688,'pepito5','tortilla12',1,1,31,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (579930,'pepito19','tortilla17',1,0,99,'Brazil','China',4,'Recuperado');
INSERT INTO Patients VALUES (101372,'pepito18','tortilla12',0,0,72,'Brazil','China',1,'Muerto');
INSERT INTO Patients VALUES (307106,'pepito1','tortilla8',1,1,25,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (982658,'pepito16','tortilla12',1,0,51,'Spain','Brazil',3,'Activo');
INSERT INTO Patients VALUES (574807,'pepito3','tortilla17',1,0,67,'China','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (530265,'pepito15','tortilla7',0,1,76,'Costa Rica','China',3,'Muerto');
INSERT INTO Patients VALUES (485170,'pepito7','tortilla8',0,0,20,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (165450,'pepito20','tortilla12',1,0,76,'Costa Rica','China',4,'Activo');
INSERT INTO Patients VALUES (572581,'pepito4','tortilla9',1,0,99,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (720477,'pepito8','tortilla0',1,0,56,'Brazil','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (609079,'pepito1','tortilla13',0,0,30,'China','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (559117,'pepito0','tortilla12',1,1,85,'Spain','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (643423,'pepito0','tortilla1',0,0,64,'China','China',4,'Activo');
INSERT INTO Patients VALUES (773366,'pepito9','tortilla19',1,0,67,'United States','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (668380,'pepito9','tortilla5',0,1,92,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (828857,'pepito5','tortilla17',1,1,74,'Brazil','United States',4,'Recuperado');
INSERT INTO Patients VALUES (292322,'pepito6','tortilla20',0,1,100,'Spain','China',3,'Muerto');
INSERT INTO Patients VALUES (158527,'pepito8','tortilla1',1,1,90,'Brazil','China',3,'Activo');
INSERT INTO Patients VALUES (281227,'pepito13','tortilla11',1,0,25,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (759407,'pepito18','tortilla4',1,1,51,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (835225,'pepito18','tortilla5',0,1,34,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (588936,'pepito11','tortilla18',0,1,98,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (519995,'pepito4','tortilla3',0,1,75,'China','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (765089,'pepito14','tortilla18',0,1,100,'China','China',3,'Activo');
INSERT INTO Patients VALUES (805296,'pepito20','tortilla14',1,1,51,'United States','Spain',3,'Activo');
INSERT INTO Patients VALUES (325027,'pepito0','tortilla2',1,1,100,'Brazil','Spain',1,'Activo');
INSERT INTO Patients VALUES (695421,'pepito4','tortilla0',1,0,77,'Brazil','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (276866,'pepito6','tortilla2',1,1,34,'Costa Rica','China',4,'Activo');
INSERT INTO Patients VALUES (826579,'pepito3','tortilla2',0,0,31,'Brazil','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (121338,'pepito13','tortilla17',0,0,60,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (716642,'pepito0','tortilla10',1,0,91,'China','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (709354,'pepito20','tortilla2',0,1,96,'Brazil','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (930984,'pepito8','tortilla18',1,1,77,'Spain','Brazil',1,'Activo');
INSERT INTO Patients VALUES (347598,'pepito9','tortilla16',1,1,66,'Costa Rica','Spain',1,'Activo');
INSERT INTO Patients VALUES (542807,'pepito11','tortilla1',1,1,91,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (344051,'pepito16','tortilla18',0,1,53,'Costa Rica','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (550890,'pepito18','tortilla7',0,0,76,'China','China',1,'Activo');
INSERT INTO Patients VALUES (754175,'pepito8','tortilla9',1,0,59,'Costa Rica','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (625529,'pepito6','tortilla16',0,0,87,'United States','United States',3,'Activo');
INSERT INTO Patients VALUES (983186,'pepito4','tortilla11',1,1,23,'Costa Rica','China',3,'Muerto');
INSERT INTO Patients VALUES (971579,'pepito3','tortilla15',1,1,77,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (297271,'pepito10','tortilla12',1,0,97,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (163311,'pepito10','tortilla12',0,1,27,'United States','United States',1,'Activo');
INSERT INTO Patients VALUES (782652,'pepito7','tortilla5',0,1,84,'Brazil','Spain',4,'Muerto');
INSERT INTO Patients VALUES (829027,'pepito15','tortilla0',0,0,65,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (735805,'pepito3','tortilla6',0,1,78,'Costa Rica','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (290502,'pepito18','tortilla2',0,0,84,'Spain','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (514620,'pepito9','tortilla13',0,0,54,'Spain','China',1,'Activo');
INSERT INTO Patients VALUES (834840,'pepito0','tortilla15',0,0,62,'United States','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (854832,'pepito3','tortilla13',0,0,99,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (664125,'pepito1','tortilla9',1,0,77,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (767868,'pepito14','tortilla3',0,0,66,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (954341,'pepito7','tortilla12',0,0,23,'Costa Rica','United States',3,'Activo');
INSERT INTO Patients VALUES (407019,'pepito20','tortilla16',0,0,62,'Brazil','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (493264,'pepito17','tortilla12',0,1,98,'Spain','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (443751,'pepito1','tortilla11',0,0,26,'China','United States',1,'Recuperado');
INSERT INTO Patients VALUES (493463,'pepito0','tortilla2',0,1,51,'Brazil','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (313539,'pepito13','tortilla2',0,0,29,'United States','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (403864,'pepito9','tortilla11',0,1,21,'China','Spain',3,'Muerto');
INSERT INTO Patients VALUES (606888,'pepito0','tortilla9',0,0,62,'United States','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (344230,'pepito3','tortilla3',0,1,94,'China','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (333511,'pepito2','tortilla10',0,0,20,'Brazil','United States',3,'Recuperado');
INSERT INTO Patients VALUES (537033,'pepito9','tortilla4',0,0,42,'Spain','China',1,'Muerto');
INSERT INTO Patients VALUES (920594,'pepito10','tortilla20',0,1,42,'Brazil','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (537918,'pepito4','tortilla20',1,0,75,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (376112,'pepito19','tortilla16',1,1,81,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (996849,'pepito0','tortilla15',0,1,43,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (540078,'pepito19','tortilla20',1,0,97,'China','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (855299,'pepito12','tortilla3',0,0,52,'Costa Rica','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (832876,'pepito19','tortilla17',1,0,56,'Costa Rica','United States',1,'Recuperado');
INSERT INTO Patients VALUES (395428,'pepito15','tortilla4',0,1,91,'United States','Spain',1,'Activo');
INSERT INTO Patients VALUES (721679,'pepito4','tortilla8',0,1,76,'Brazil','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (577546,'pepito1','tortilla3',1,0,58,'Spain','China',3,'Recuperado');
INSERT INTO Patients VALUES (305631,'pepito18','tortilla15',0,0,28,'Brazil','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (899121,'pepito15','tortilla13',1,1,37,'Costa Rica','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (133977,'pepito4','tortilla0',1,1,90,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (846487,'pepito10','tortilla1',1,1,51,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (575957,'pepito10','tortilla13',1,1,88,'United States','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (452221,'pepito2','tortilla3',0,0,49,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (100414,'pepito8','tortilla20',0,0,20,'Costa Rica','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (585338,'pepito5','tortilla3',1,0,24,'Brazil','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (672063,'pepito0','tortilla16',0,1,58,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (132300,'pepito19','tortilla10',0,1,83,'China','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (689941,'pepito13','tortilla11',1,0,21,'Costa Rica','United States',1,'Muerto');
INSERT INTO Patients VALUES (668553,'pepito15','tortilla15',0,0,94,'Spain','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (549010,'pepito10','tortilla19',0,0,59,'Brazil','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (600566,'pepito2','tortilla2',1,1,37,'Brazil','United States',1,'Activo');
INSERT INTO Patients VALUES (244764,'pepito11','tortilla19',1,1,62,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (878759,'pepito17','tortilla19',0,1,58,'Brazil','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (230708,'pepito7','tortilla15',1,1,60,'Costa Rica','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (339906,'pepito11','tortilla11',1,1,55,'Spain','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (742643,'pepito18','tortilla3',0,0,92,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (962872,'pepito11','tortilla13',1,0,82,'China','China',1,'Recuperado');
INSERT INTO Patients VALUES (734993,'pepito18','tortilla6',0,1,75,'United States','China',3,'Activo');
INSERT INTO Patients VALUES (512518,'pepito16','tortilla11',1,1,81,'Brazil','China',1,'Muerto');
INSERT INTO Patients VALUES (561289,'pepito1','tortilla11',1,0,72,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (186309,'pepito7','tortilla18',1,0,69,'Spain','China',3,'Activo');
INSERT INTO Patients VALUES (330257,'pepito12','tortilla9',0,1,51,'Brazil','Spain',4,'Activo');
INSERT INTO Patients VALUES (506459,'pepito17','tortilla16',1,0,32,'China','China',3,'Activo');
INSERT INTO Patients VALUES (224997,'pepito4','tortilla19',1,0,47,'Spain','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (780960,'pepito19','tortilla11',1,0,45,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (373756,'pepito16','tortilla16',1,0,29,'Costa Rica','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (948589,'pepito0','tortilla8',0,1,21,'Brazil','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (646015,'pepito18','tortilla0',0,0,69,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (538539,'pepito2','tortilla1',0,1,33,'United States','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (548350,'pepito5','tortilla11',1,1,72,'Costa Rica','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (697473,'pepito11','tortilla12',0,1,29,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (440245,'pepito6','tortilla1',0,1,39,'Brazil','China',1,'Recuperado');
INSERT INTO Patients VALUES (154795,'pepito14','tortilla11',1,0,65,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (454898,'pepito19','tortilla0',0,1,96,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (497060,'pepito4','tortilla14',1,0,86,'Costa Rica','United States',1,'Recuperado');
INSERT INTO Patients VALUES (570967,'pepito9','tortilla10',0,0,54,'Costa Rica','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (498004,'pepito3','tortilla13',0,1,77,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (992454,'pepito4','tortilla18',1,0,21,'Spain','Brazil',4,'Activo');
INSERT INTO Patients VALUES (415386,'pepito16','tortilla6',1,1,56,'China','China',1,'Recuperado');
INSERT INTO Patients VALUES (287158,'pepito13','tortilla20',0,1,96,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (612435,'pepito12','tortilla20',1,1,86,'Brazil','United States',1,'Muerto');
INSERT INTO Patients VALUES (310812,'pepito4','tortilla1',0,1,27,'Brazil','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (506971,'pepito11','tortilla10',0,1,26,'Costa Rica','Spain',4,'Activo');
INSERT INTO Patients VALUES (963013,'pepito14','tortilla5',1,0,58,'Brazil','United States',1,'Activo');
INSERT INTO Patients VALUES (928189,'pepito12','tortilla13',1,0,70,'Costa Rica','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (399185,'pepito3','tortilla18',0,1,61,'Costa Rica','United States',3,'Recuperado');
INSERT INTO Patients VALUES (409772,'pepito10','tortilla4',0,0,66,'Brazil','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (490942,'pepito20','tortilla3',0,1,22,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (724006,'pepito17','tortilla9',1,1,71,'United States','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (651664,'pepito0','tortilla20',0,0,80,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (455670,'pepito12','tortilla3',1,1,91,'Spain','China',4,'Activo');
INSERT INTO Patients VALUES (532119,'pepito2','tortilla17',1,0,71,'United States','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (592522,'pepito6','tortilla16',0,0,29,'Spain','Spain',3,'Muerto');
INSERT INTO Patients VALUES (720492,'pepito0','tortilla13',1,1,22,'Brazil','Spain',3,'Activo');
INSERT INTO Patients VALUES (220845,'pepito9','tortilla18',0,0,20,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (213218,'pepito16','tortilla2',1,1,55,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (777075,'pepito16','tortilla10',1,0,85,'China','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (904172,'pepito16','tortilla15',0,1,76,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (809477,'pepito18','tortilla14',1,1,31,'Costa Rica','United States',4,'Muerto');
INSERT INTO Patients VALUES (934190,'pepito17','tortilla5',0,1,65,'Costa Rica','China',4,'Activo');
INSERT INTO Patients VALUES (862318,'pepito19','tortilla19',1,1,30,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (531588,'pepito19','tortilla17',1,1,98,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (697171,'pepito16','tortilla19',0,1,77,'Spain','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (735598,'pepito20','tortilla1',1,1,79,'Brazil','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (694029,'pepito4','tortilla17',0,0,65,'Spain','United States',1,'Muerto');
INSERT INTO Patients VALUES (618801,'pepito1','tortilla4',0,0,44,'Spain','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (170016,'pepito20','tortilla7',1,1,46,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (692801,'pepito1','tortilla11',1,1,74,'China','United States',1,'Recuperado');
INSERT INTO Patients VALUES (763875,'pepito3','tortilla7',1,1,89,'Brazil','China',4,'Activo');
INSERT INTO Patients VALUES (111318,'pepito8','tortilla0',0,1,46,'Spain','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (247009,'pepito19','tortilla1',0,0,73,'Costa Rica','Spain',4,'Activo');
INSERT INTO Patients VALUES (543133,'pepito16','tortilla14',0,1,28,'United States','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (682977,'pepito12','tortilla17',0,1,84,'Brazil','China',4,'Recuperado');
INSERT INTO Patients VALUES (720813,'pepito12','tortilla20',1,0,88,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (774109,'pepito0','tortilla11',1,1,69,'Costa Rica','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (623601,'pepito3','tortilla16',0,0,44,'United States','Brazil',4,'Activo');
INSERT INTO Patients VALUES (525594,'pepito17','tortilla6',0,1,65,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (694114,'pepito17','tortilla8',0,0,26,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (189688,'pepito16','tortilla8',1,1,51,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (598843,'pepito1','tortilla12',1,0,32,'Costa Rica','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (882836,'pepito10','tortilla20',1,0,61,'Brazil','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (531896,'pepito14','tortilla1',0,0,97,'United States','United States',1,'Recuperado');
INSERT INTO Patients VALUES (347133,'pepito10','tortilla17',0,1,43,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (634783,'pepito4','tortilla5',1,0,84,'Brazil','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (137160,'pepito5','tortilla15',1,1,88,'Spain','Spain',1,'Muerto');
INSERT INTO Patients VALUES (579348,'pepito11','tortilla13',1,0,39,'China','United States',4,'Muerto');
INSERT INTO Patients VALUES (734397,'pepito20','tortilla1',0,0,27,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (671236,'pepito7','tortilla7',1,1,45,'Brazil','United States',1,'Recuperado');
INSERT INTO Patients VALUES (590323,'pepito19','tortilla5',1,0,60,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (284908,'pepito2','tortilla18',1,0,89,'Spain','Spain',3,'Muerto');
INSERT INTO Patients VALUES (629999,'pepito7','tortilla2',0,1,85,'China','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (890203,'pepito12','tortilla5',1,1,55,'Spain','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (552017,'pepito6','tortilla1',1,1,56,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (851650,'pepito2','tortilla11',0,1,50,'Brazil','United States',4,'Activo');
INSERT INTO Patients VALUES (959650,'pepito6','tortilla5',0,0,68,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (269184,'pepito13','tortilla4',0,0,83,'Spain','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (994408,'pepito4','tortilla14',1,0,28,'Spain','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (880740,'pepito4','tortilla5',0,0,36,'Costa Rica','United States',1,'Muerto');
INSERT INTO Patients VALUES (271277,'pepito9','tortilla15',0,0,89,'Spain','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (529317,'pepito12','tortilla12',1,0,78,'China','Spain',4,'Activo');
INSERT INTO Patients VALUES (483122,'pepito17','tortilla2',1,0,31,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (484678,'pepito17','tortilla4',0,1,76,'United States','China',3,'Activo');
INSERT INTO Patients VALUES (426721,'pepito4','tortilla15',1,0,55,'Brazil','United States',1,'Recuperado');
INSERT INTO Patients VALUES (533939,'pepito18','tortilla7',0,0,83,'China','Brazil',3,'Activo');
INSERT INTO Patients VALUES (845208,'pepito0','tortilla11',0,0,61,'China','Brazil',1,'Activo');
INSERT INTO Patients VALUES (736642,'pepito1','tortilla15',1,0,20,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (151176,'pepito10','tortilla3',0,1,93,'Brazil','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (468044,'pepito20','tortilla4',0,1,52,'United States','China',1,'Recuperado');
INSERT INTO Patients VALUES (377050,'pepito14','tortilla11',0,0,58,'Costa Rica','China',3,'Muerto');
INSERT INTO Patients VALUES (445737,'pepito18','tortilla1',0,0,36,'United States','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (293715,'pepito11','tortilla20',0,1,75,'United States','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (806879,'pepito10','tortilla11',1,1,64,'United States','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (192800,'pepito20','tortilla19',0,1,28,'Costa Rica','United States',4,'Muerto');
INSERT INTO Patients VALUES (460906,'pepito2','tortilla15',1,1,97,'Brazil','United States',1,'Activo');
INSERT INTO Patients VALUES (928957,'pepito4','tortilla17',0,0,59,'Spain','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (538894,'pepito6','tortilla7',0,1,98,'United States','China',4,'Muerto');
INSERT INTO Patients VALUES (591531,'pepito5','tortilla4',1,1,25,'Spain','China',3,'Muerto');
INSERT INTO Patients VALUES (616220,'pepito13','tortilla9',0,1,39,'Spain','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (198809,'pepito20','tortilla8',0,1,95,'United States','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (557313,'pepito14','tortilla7',0,0,42,'China','United States',1,'Activo');
INSERT INTO Patients VALUES (657660,'pepito9','tortilla0',0,1,81,'Costa Rica','Spain',3,'Activo');
INSERT INTO Patients VALUES (520299,'pepito2','tortilla20',1,1,74,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (353615,'pepito9','tortilla9',0,1,76,'United States','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (223768,'pepito13','tortilla1',0,1,80,'Spain','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (628285,'pepito10','tortilla6',0,0,88,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (890209,'pepito16','tortilla5',1,0,79,'Spain','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (682492,'pepito20','tortilla0',1,0,27,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (636746,'pepito14','tortilla0',1,1,41,'Brazil','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (547398,'pepito4','tortilla14',1,1,52,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (579709,'pepito16','tortilla8',1,0,46,'Brazil','Spain',3,'Muerto');
INSERT INTO Patients VALUES (957902,'pepito4','tortilla19',0,1,78,'Costa Rica','China',3,'Recuperado');
INSERT INTO Patients VALUES (576165,'pepito19','tortilla17',1,0,44,'Brazil','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (107003,'pepito13','tortilla3',1,0,77,'Brazil','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (475404,'pepito1','tortilla5',0,0,80,'China','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (872081,'pepito2','tortilla7',1,1,38,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (291541,'pepito11','tortilla16',1,0,43,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (764252,'pepito3','tortilla1',1,0,85,'China','Spain',1,'Activo');
INSERT INTO Patients VALUES (298836,'pepito14','tortilla5',1,1,80,'Spain','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (626185,'pepito11','tortilla20',1,0,75,'Brazil','China',4,'Recuperado');
INSERT INTO Patients VALUES (330443,'pepito13','tortilla17',0,1,88,'China','United States',4,'Recuperado');
INSERT INTO Patients VALUES (599675,'pepito9','tortilla8',0,1,98,'Costa Rica','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (678515,'pepito12','tortilla4',1,1,64,'China','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (784376,'pepito1','tortilla1',0,0,71,'United States','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (376586,'pepito6','tortilla14',1,0,68,'Spain','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (224118,'pepito1','tortilla5',0,1,32,'Spain','China',3,'Muerto');
INSERT INTO Patients VALUES (680000,'pepito6','tortilla13',0,0,58,'China','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (303756,'pepito0','tortilla20',0,0,78,'Brazil','United States',3,'Muerto');
INSERT INTO Patients VALUES (984576,'pepito9','tortilla17',0,1,94,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (170106,'pepito2','tortilla5',0,1,20,'Spain','China',1,'Muerto');
INSERT INTO Patients VALUES (483499,'pepito4','tortilla11',0,0,83,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (454481,'pepito1','tortilla16',1,0,80,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (970153,'pepito9','tortilla20',0,0,92,'United States','China',4,'Activo');
INSERT INTO Patients VALUES (430287,'pepito1','tortilla9',0,1,52,'China','United States',3,'Activo');
INSERT INTO Patients VALUES (649019,'pepito16','tortilla9',1,0,87,'Costa Rica','United States',4,'Activo');
INSERT INTO Patients VALUES (798828,'pepito14','tortilla19',0,1,70,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (414348,'pepito16','tortilla19',1,0,89,'Costa Rica','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (387300,'pepito12','tortilla12',0,0,93,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (689182,'pepito9','tortilla13',0,1,58,'United States','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (484863,'pepito7','tortilla10',0,1,44,'China','United States',1,'Activo');
INSERT INTO Patients VALUES (509674,'pepito16','tortilla15',1,1,40,'China','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (348781,'pepito18','tortilla6',1,1,81,'China','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (999121,'pepito5','tortilla11',1,1,57,'Spain','United States',1,'Muerto');
INSERT INTO Patients VALUES (355688,'pepito2','tortilla11',1,0,63,'Costa Rica','China',4,'Activo');
INSERT INTO Patients VALUES (309100,'pepito9','tortilla9',0,1,54,'China','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (759713,'pepito13','tortilla8',1,0,49,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (436193,'pepito11','tortilla9',0,0,49,'Costa Rica','Brazil',1,'Muerto');
INSERT INTO Patients VALUES (606324,'pepito1','tortilla6',0,0,50,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (767727,'pepito13','tortilla9',0,1,22,'United States','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (573314,'pepito0','tortilla11',1,0,20,'United States','Spain',3,'Activo');
INSERT INTO Patients VALUES (819273,'pepito8','tortilla1',1,1,21,'Brazil','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (944956,'pepito17','tortilla18',1,1,47,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (177995,'pepito17','tortilla3',0,1,70,'Spain','Brazil',4,'Activo');
INSERT INTO Patients VALUES (472709,'pepito7','tortilla3',1,1,28,'Brazil','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (857875,'pepito19','tortilla2',0,1,98,'Costa Rica','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (517877,'pepito10','tortilla19',0,1,29,'Brazil','United States',4,'Muerto');
INSERT INTO Patients VALUES (772441,'pepito0','tortilla6',1,1,34,'Costa Rica','Brazil',1,'Activo');
INSERT INTO Patients VALUES (859927,'pepito11','tortilla6',0,0,74,'Brazil','United States',4,'Muerto');
INSERT INTO Patients VALUES (664213,'pepito20','tortilla20',1,0,51,'Costa Rica','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (563431,'pepito1','tortilla16',0,0,61,'United States','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (201342,'pepito6','tortilla7',0,1,40,'Costa Rica','Brazil',3,'Activo');
INSERT INTO Patients VALUES (290686,'pepito2','tortilla6',0,1,63,'China','Spain',3,'Activo');
INSERT INTO Patients VALUES (720742,'pepito8','tortilla1',0,0,28,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (463885,'pepito18','tortilla17',1,1,72,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (181714,'pepito19','tortilla12',1,0,70,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (656066,'pepito12','tortilla13',0,1,65,'Spain','China',3,'Recuperado');
INSERT INTO Patients VALUES (664051,'pepito9','tortilla18',1,0,52,'Costa Rica','United States',3,'Activo');
INSERT INTO Patients VALUES (663866,'pepito10','tortilla18',1,0,99,'China','United States',1,'Recuperado');
INSERT INTO Patients VALUES (825865,'pepito16','tortilla8',1,1,28,'United States','China',4,'Activo');
INSERT INTO Patients VALUES (733694,'pepito9','tortilla3',0,1,79,'Brazil','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (949121,'pepito13','tortilla10',0,1,80,'Brazil','Brazil',3,'Recuperado');
INSERT INTO Patients VALUES (579759,'pepito7','tortilla14',0,1,78,'Costa Rica','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (914768,'pepito19','tortilla0',0,1,84,'United States','China',3,'Activo');
INSERT INTO Patients VALUES (509408,'pepito3','tortilla16',1,1,29,'United States','Brazil',1,'Recuperado');
INSERT INTO Patients VALUES (785285,'pepito19','tortilla11',0,1,36,'Brazil','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (553266,'pepito6','tortilla5',1,0,40,'China','Brazil',4,'Activo');
INSERT INTO Patients VALUES (204423,'pepito6','tortilla12',0,1,38,'China','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (420990,'pepito3','tortilla5',1,1,58,'Brazil','Brazil',4,'Recuperado');
INSERT INTO Patients VALUES (646541,'pepito14','tortilla19',1,0,58,'Costa Rica','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (169266,'pepito10','tortilla10',0,1,88,'United States','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (328895,'pepito20','tortilla8',1,0,23,'Brazil','China',1,'Recuperado');
INSERT INTO Patients VALUES (255871,'pepito2','tortilla0',0,1,84,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (159271,'pepito13','tortilla3',0,0,25,'Brazil','United States',1,'Muerto');
INSERT INTO Patients VALUES (973607,'pepito20','tortilla1',0,1,71,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (968556,'pepito9','tortilla12',0,0,31,'Brazil','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (321679,'pepito13','tortilla19',1,1,94,'Brazil','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (117357,'pepito5','tortilla12',1,1,75,'Brazil','China',4,'Activo');
INSERT INTO Patients VALUES (122400,'pepito12','tortilla17',0,1,35,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (100283,'pepito17','tortilla2',1,1,60,'United States','Brazil',4,'Muerto');
INSERT INTO Patients VALUES (954400,'pepito16','tortilla5',1,0,90,'China','Spain',4,'Activo');
INSERT INTO Patients VALUES (111278,'pepito17','tortilla8',0,0,63,'Spain','Brazil',1,'Activo');
INSERT INTO Patients VALUES (875110,'pepito19','tortilla12',0,0,42,'Brazil','China',4,'Muerto');
INSERT INTO Patients VALUES (987064,'pepito9','tortilla4',1,0,45,'Spain','China',1,'Activo');
INSERT INTO Patients VALUES (650426,'pepito7','tortilla2',1,0,89,'Costa Rica','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (870845,'pepito17','tortilla14',1,0,89,'Brazil','Brazil',3,'Muerto');
INSERT INTO Patients VALUES (774435,'pepito14','tortilla17',1,1,90,'United States','China',4,'Activo');
INSERT INTO Patients VALUES (338705,'pepito19','tortilla17',1,1,85,'Brazil','Brazil',3,'Recuperado');


INSERT INTO Patient_Pathologies (Patient_SSN,Pathology_Name)
VALUES
(100001,'Covid'),
(100002,'Denge'),
(100000,'Covid');

INSERT INTO Patient_Medications (Patient_SSN,Medication_Id)
VALUES
(100001,22),
(100002,22),
(100000,24);

INSERT INTO Contacted_Person (SSN,Patient_SSN,First_Name,Last_Name,Address,Email,Age,Country_Birth)
VALUES
(100003,100001,'colateral1','papita1','mi casa','tortilla@gmail.com',20,'Costa Rica'),
(100004,100001,'colateral2','papita2','mi casa x2','tortillita@gmail.com',21,'Costa Rica'),
(100005,100000,'colateral3','papita3','mi casa x3','tortillon@gmail.com',22,'Costa Rica');

INSERT INTO Events (Status_Event,Date,Patient_SSN)
VALUES 
('Activo','2020-07-14',419928),
('Activo','2020-06-18',506482),
('Activo','2020-06-24',541294),
('Activo','2020-06-30',770460),
('Recuperado','2020-07-09',963013),
('Activo','2020-07-10',913548),
('Activo','2020-06-18',107003),
('Activo','2020-06-30',538894),
('Activo','2020-07-01',414348),
('Muerto','2020-06-18',877999),
('Activo','2020-07-10',658577),
('Recuperado','2020-07-08',828857),
('Activo','2020-07-08',426721),
('Muerto','2020-06-28',865331),
('Muerto','2020-07-11',949121),
('Activo','2020-07-02',860070),
('Activo','2020-07-05',177396),
('Muerto','2020-06-23',616220),
('Muerto','2020-06-29',272371),
('Activo','2020-06-15',575627),
('Activo','2020-07-03',797084),
('Activo','2020-06-29',806879),
('Activo','2020-07-04',722143),
('Activo','2020-07-14',668380),
('Muerto','2020-07-13',297192),
('Activo','2020-07-15',978679),
('Activo','2020-06-25',709354),
('Activo','2020-07-15',784376),
('Muerto','2020-06-16',806307),
('Muerto','2020-06-25',618731),
('Activo','2020-06-27',266189),
('Activo','2020-06-24',792812),
('Muerto','2020-06-22',213218),
('Activo','2020-06-22',531588),
('Activo','2020-06-15',616348),
('Activo','2020-07-05',962872),
('Activo','2020-06-17',179044),
('Activo','2020-07-11',885666),
('Recuperado','2020-06-24',655596),
('Activo','2020-07-05',530265),
('Recuperado','2020-07-05',759890),
('Activo','2020-06-29',818130),
('Muerto','2020-07-07',174414),
('Recuperado','2020-06-24',237851),
('Activo','2020-06-21',781689),
('Activo','2020-06-22',267661),
('Activo','2020-06-29',855850),
('Activo','2020-07-01',764252),
('Activo','2020-07-14',297192),
('Activo','2020-06-21',524876),
('Activo','2020-06-17',674073),
('Recuperado','2020-07-15',328226),
('Activo','2020-07-04',627837),
('Activo','2020-07-03',835514),
('Activo','2020-06-28',649019),
('Muerto','2020-07-12',291541),
('Activo','2020-07-08',462821),
('Recuperado','2020-06-24',255591),
('Muerto','2020-07-07',465547),
('Recuperado','2020-06-15',883251),
('Muerto','2020-06-29',955953),
('Recuperado','2020-07-09',855299),
('Activo','2020-07-04',694114),
('Recuperado','2020-07-09',366400),
('Recuperado','2020-06-30',778940),
('Recuperado','2020-06-18',663866),
('Activo','2020-06-15',475983),
('Activo','2020-07-02',251065),
('Recuperado','2020-06-27',265573),
('Activo','2020-07-06',376586),
('Muerto','2020-07-13',774435),
('Activo','2020-06-29',845691),
('Muerto','2020-06-19',695397),
('Recuperado','2020-06-25',130928),
('Muerto','2020-07-03',820158),
('Muerto','2020-06-21',660834),
('Muerto','2020-06-19',689941),
('Activo','2020-06-30',970153),
('Muerto','2020-06-30',500792),
('Activo','2020-06-24',649864),
('Muerto','2020-07-12',165450),
('Activo','2020-06-24',768691),
('Activo','2020-06-18',606888),
('Activo','2020-06-28',681403),
('Muerto','2020-07-09',459287),
('Muerto','2020-07-01',994408),
('Muerto','2020-07-14',694022),
('Recuperado','2020-06-29',488359),
('Activo','2020-07-05',418695),
('Recuperado','2020-07-10',934115),
('Activo','2020-06-26',626185),
('Activo','2020-07-03',607130),
('Activo','2020-06-21',619024),
('Activo','2020-06-19',292992),
('Activo','2020-06-21',924116),
('Muerto','2020-07-12',415386),
('Recuperado','2020-07-12',888581),
('Muerto','2020-07-15',609794),
('Activo','2020-06-28',928957),
('Recuperado','2020-06-24',611557),
('Activo','2020-06-28',782355),
('Activo','2020-07-01',898650),
('Recuperado','2020-06-18',959761),
('Activo','2020-07-05',403864),
('Activo','2020-07-04',276866),
('Activo','2020-07-08',864455),
('Muerto','2020-06-15',310812),
('Muerto','2020-06-22',246088),
('Recuperado','2020-06-17',185309),
('Activo','2020-06-20',734543),
('Recuperado','2020-07-07',317570),
('Muerto','2020-07-08',846487),
('Activo','2020-07-07',980658),
('Recuperado','2020-07-12',420442),
('Activo','2020-07-06',803316),
('Activo','2020-07-03',540037),
('Activo','2020-07-09',883251),
('Activo','2020-07-10',164951),
('Recuperado','2020-06-21',934190),
('Activo','2020-06-30',590323),
('Activo','2020-07-05',770182),
('Activo','2020-07-02',872741),
('Activo','2020-07-06',230708),
('Activo','2020-07-08',557313),
('Activo','2020-06-16',784376),
('Activo','2020-07-06',698724),
('Recuperado','2020-06-21',880740),
('Activo','2020-07-13',825865),
('Activo','2020-07-11',227991),
('Muerto','2020-06-19',956876),
('Activo','2020-07-05',862683),
('Activo','2020-07-08',607690),
('Recuperado','2020-06-16',347598),
('Activo','2020-07-14',440245),
('Activo','2020-06-16',208275),
('Recuperado','2020-07-13',664213),
('Activo','2020-07-11',612435),
('Recuperado','2020-07-14',863660),
('Activo','2020-07-15',683876),
('Activo','2020-07-11',888544),
('Activo','2020-06-22',235416),
('Activo','2020-07-06',683876),
('Activo','2020-06-23',689004),
('Activo','2020-06-30',822497),
('Activo','2020-06-19',994408),
('Activo','2020-07-09',400116),
('Activo','2020-07-08',664051),
('Muerto','2020-07-07',227160),
('Activo','2020-07-04',485170),
('Activo','2020-07-10',550890),
('Activo','2020-06-19',591184),
('Recuperado','2020-06-21',680000),
('Activo','2020-07-08',955953),
('Recuperado','2020-07-01',418695),
('Muerto','2020-06-26',399185),
('Activo','2020-06-23',596571),
('Activo','2020-07-06',261215),
('Activo','2020-06-18',957902),
('Activo','2020-06-21',276890),
('Muerto','2020-06-23',588936),
('Recuperado','2020-07-05',264090),
('Muerto','2020-06-26',668380),
('Activo','2020-06-30',843779),
('Recuperado','2020-06-28',736642),
('Activo','2020-06-23',201342),
('Recuperado','2020-07-06',566480),
('Muerto','2020-06-20',214765),
('Recuperado','2020-06-15',770804),
('Activo','2020-06-23',782299),
('Activo','2020-06-23',147453),
('Activo','2020-06-19',697167),
('Recuperado','2020-06-19',217976),
('Recuperado','2020-07-13',196483),
('Muerto','2020-07-11',714697),
('Activo','2020-06-30',764252),
('Activo','2020-07-01',416760),
('Activo','2020-07-07',980806),
('Activo','2020-07-04',701671),
('Muerto','2020-06-29',606324),
('Recuperado','2020-07-07',582765),
('Recuperado','2020-06-17',695397),
('Muerto','2020-06-23',640304),
('Activo','2020-07-14',913405),
('Recuperado','2020-06-19',330443),
('Recuperado','2020-07-01',179044),
('Activo','2020-07-08',276866),
('Activo','2020-06-16',489234),
('Activo','2020-07-12',777075),
('Recuperado','2020-07-07',212745),
('Recuperado','2020-06-30',857875),
('Recuperado','2020-06-24',825696),
('Muerto','2020-07-13',870520),
('Activo','2020-06-20',985243),
('Muerto','2020-07-02',468044),
('Recuperado','2020-07-08',913405),
('Activo','2020-06-18',851650),
('Recuperado','2020-06-27',409772),
('Muerto','2020-07-12',667999),
('Activo','2020-06-24',169266),
('Activo','2020-07-09',893878),
('Activo','2020-07-02',190052),
('Muerto','2020-07-09',169266),
('Activo','2020-07-06',859927),
('Activo','2020-06-29',590323),
('Activo','2020-06-17',258666),
('Activo','2020-06-29',689941),
('Activo','2020-07-09',111278),
('Activo','2020-07-07',653270),
('Recuperado','2020-06-24',957902),
('Activo','2020-06-26',701360),
('Activo','2020-07-14',394448),
('Activo','2020-07-04',426721),
('Muerto','2020-07-07',186174),
('Activo','2020-06-16',548101),
('Recuperado','2020-07-06',179508),
('Activo','2020-07-10',803072),
('Activo','2020-06-21',693719),
('Activo','2020-06-24',234859),
('Activo','2020-06-19',400116),
('Activo','2020-06-16',650426),
('Recuperado','2020-06-21',789409),
('Activo','2020-06-17',223768),
('Recuperado','2020-06-24',796462),
('Activo','2020-07-14',763038),
('Activo','2020-06-26',436031),
('Recuperado','2020-06-23',609794),
('Activo','2020-07-07',954400),
('Recuperado','2020-07-10',315946),
('Activo','2020-07-03',263175),
('Recuperado','2020-07-15',988813),
('Muerto','2020-07-10',290502),
('Activo','2020-07-12',941828),
('Activo','2020-06-26',370267),
('Recuperado','2020-06-23',652423),
('Recuperado','2020-06-22',519995),
('Muerto','2020-06-24',984576),
('Activo','2020-07-10',404437),
('Recuperado','2020-07-13',803072),
('Recuperado','2020-07-12',348781),
('Activo','2020-06-23',224997),
('Activo','2020-07-02',264073),
('Muerto','2020-06-18',836796),
('Muerto','2020-07-12',950934),
('Recuperado','2020-07-11',423260),
('Muerto','2020-07-15',501514),
('Activo','2020-06-28',317730),
('Recuperado','2020-07-04',643218),
('Muerto','2020-07-03',570967),
('Activo','2020-07-05',784376),
('Activo','2020-06-27',848672),
('Recuperado','2020-07-12',547398),
('Activo','2020-07-05',392654),
('Activo','2020-07-15',255591),
('Activo','2020-07-12',832876),
('Muerto','2020-07-14',996849),
('Activo','2020-06-15',906967),
('Muerto','2020-07-12',260190),
('Activo','2020-06-15',649864),
('Muerto','2020-06-28',694029),
('Recuperado','2020-07-11',694029),
('Activo','2020-07-03',668941),
('Activo','2020-06-16',297510),
('Activo','2020-06-23',619963),
('Activo','2020-07-01',600566),
('Muerto','2020-06-22',345188),
('Recuperado','2020-07-07',217976),
('Activo','2020-06-17',422649),
('Activo','2020-07-11',723321),
('Muerto','2020-07-13',751463),
('Activo','2020-06-24',625529),
('Activo','2020-07-02',223768),
('Activo','2020-06-29',491804),
('Activo','2020-07-06',313539),
('Activo','2020-07-04',845208),
('Activo','2020-06-26',694114),
('Activo','2020-07-10',705778),
('Activo','2020-07-07',977769),
('Activo','2020-07-04',373373),
('Activo','2020-06-28',633315),
('Activo','2020-07-08',923784),
('Activo','2020-07-12',638539),
('Muerto','2020-06-29',721679),
('Activo','2020-07-07',264073),
('Activo','2020-06-23',791316),
('Recuperado','2020-06-15',941424),
('Activo','2020-07-08',606365),
('Activo','2020-06-17',657582),
('Activo','2020-07-02',326044),
('Recuperado','2020-06-15',298836),
('Recuperado','2020-06-28',537033),
('Activo','2020-06-24',961074),
('Recuperado','2020-07-07',309191),
('Activo','2020-07-04',475983),
('Activo','2020-06-17',759713),
('Activo','2020-06-23',260957),
('Recuperado','2020-07-08',245691),
('Activo','2020-06-21',624109),
('Muerto','2020-07-15',457423),
('Activo','2020-07-12',990010),
('Activo','2020-06-19',577054),
('Muerto','2020-07-06',923080),
('Muerto','2020-06-17',474173),
('Activo','2020-06-19',506971),
('Activo','2020-07-10',151144),
('Recuperado','2020-06-30',607130),
('Activo','2020-07-05',468044),
('Activo','2020-07-06',624109),
('Activo','2020-06-26',697167),
('Activo','2020-06-30',319529),
('Activo','2020-07-05',375642),
('Muerto','2020-06-17',680000),
('Activo','2020-06-21',336006),
('Activo','2020-07-02',461755),
('Activo','2020-07-13',468362),
('Muerto','2020-06-25',237626),
('Muerto','2020-07-02',844188),
('Activo','2020-07-08',468938),
('Activo','2020-07-01',759890),
('Recuperado','2020-06-29',917500),
('Activo','2020-06-17',506459),
('Muerto','2020-07-06',636746),
('Activo','2020-06-18',626185),
('Recuperado','2020-06-24',298854),
('Activo','2020-07-04',423260),
('Activo','2020-06-15',995879),
('Recuperado','2020-07-05',734397),
('Activo','2020-06-22',577546),
('Muerto','2020-07-10',491804),
('Muerto','2020-07-14',170016),
('Activo','2020-07-15',653270),
('Recuperado','2020-06-20',373756),
('Recuperado','2020-07-12',619963),
('Activo','2020-07-11',884873),
('Activo','2020-07-11',325641),
('Muerto','2020-07-07',718345),
('Recuperado','2020-06-22',452221),
('Activo','2020-07-14',773366),
('Activo','2020-07-03',538539),
('Recuperado','2020-07-08',352009),
('Activo','2020-07-07',951907),
('Activo','2020-06-24',928957),
('Muerto','2020-07-12',637059),
('Activo','2020-06-27',687502),
('Activo','2020-07-12',160200),
('Activo','2020-07-04',418695),
('Activo','2020-07-15',803316),
('Recuperado','2020-06-20',506482),
('Activo','2020-07-12',664051),
('Muerto','2020-07-13',227753),
('Activo','2020-07-12',553266),
('Muerto','2020-06-19',678503),
('Activo','2020-07-11',454119),
('Activo','2020-07-13',347598),
('Muerto','2020-07-09',563431),
('Activo','2020-06-23',569652),
('Activo','2020-07-05',159271),
('Recuperado','2020-07-13',260957),
('Activo','2020-06-16',850158),
('Muerto','2020-07-01',860070),
('Muerto','2020-06-15',923080),
('Recuperado','2020-07-05',179044),
('Muerto','2020-07-07',857914),
('Activo','2020-06-25',732456),
('Activo','2020-07-07',278729),
('Recuperado','2020-07-01',652423),
('Activo','2020-06-30',776725),
('Recuperado','2020-06-23',375642),
('Muerto','2020-06-15',117984),
('Activo','2020-06-19',978679),
('Activo','2020-06-20',260616),
('Activo','2020-06-30',548350),
('Activo','2020-06-27',678503),
('Muerto','2020-06-16',637311),
('Activo','2020-06-21',162123),
('Muerto','2020-07-11',462821),
('Recuperado','2020-07-07',348781),
('Recuperado','2020-06-16',274394),
('Recuperado','2020-07-02',618775),
('Activo','2020-06-27',585504),
('Muerto','2020-06-29',157950),
('Activo','2020-07-09',637480),
('Muerto','2020-06-20',220845),
('Activo','2020-06-19',551480),
('Recuperado','2020-07-10',697171),
('Activo','2020-07-08',102289),
('Activo','2020-07-13',716642),
('Recuperado','2020-06-20',117984),
('Activo','2020-06-17',100810),
('Activo','2020-06-23',117233),
('Activo','2020-07-08',230708),
('Muerto','2020-06-28',574807),
('Activo','2020-07-11',591184),
('Activo','2020-07-13',999262),
('Activo','2020-07-14',607690),
('Recuperado','2020-06-23',239106),
('Muerto','2020-07-10',793988),
('Activo','2020-06-24',445737),
('Activo','2020-07-10',350013),
('Activo','2020-06-27',574807),
('Activo','2020-07-15',474173),
('Recuperado','2020-07-12',343237),
('Recuperado','2020-07-01',317570),
('Activo','2020-06-29',377050),
('Recuperado','2020-06-27',163311),
('Activo','2020-06-17',629108),
('Activo','2020-06-18',971579),
('Activo','2020-06-18',303756),
('Activo','2020-06-18',566456),
('Activo','2020-06-27',875040),
('Muerto','2020-06-17',223768),
('Muerto','2020-07-08',859927),
('Muerto','2020-07-04',256660),
('Muerto','2020-06-21',913548),
('Muerto','2020-06-15',442837),
('Activo','2020-07-04',930984),
('Muerto','2020-07-05',895483),
('Activo','2020-06-18',264073),
('Activo','2020-06-25',201342),
('Recuperado','2020-07-10',120333),
('Activo','2020-07-05',893878),
('Recuperado','2020-07-14',163171),
('Recuperado','2020-07-10',640304),
('Muerto','2020-06-18',514620),
('Activo','2020-07-01',509408),
('Activo','2020-07-02',411206),
('Recuperado','2020-07-06',538539),
('Muerto','2020-06-19',720492),
('Activo','2020-07-14',763875),
('Activo','2020-06-27',945630),
('Muerto','2020-06-27',468196),
('Recuperado','2020-06-25',934127),
('Activo','2020-06-27',957902),
('Muerto','2020-06-23',488359),
('Muerto','2020-06-28',880740),
('Activo','2020-07-07',962872),
('Muerto','2020-07-13',494601),
('Recuperado','2020-07-01',343237),
('Muerto','2020-07-02',859905),
('Activo','2020-06-18',668553),
('Activo','2020-06-23',186333),
('Activo','2020-07-05',950934),
('Recuperado','2020-07-09',699801),
('Recuperado','2020-06-26',994765),
('Recuperado','2020-06-21',870520),
('Activo','2020-07-13',494601),
('Muerto','2020-06-23',123430),
('Activo','2020-06-17',255591),
('Activo','2020-06-19',561490),
('Muerto','2020-06-21',198809),
('Muerto','2020-06-26',366681),
('Activo','2020-06-21',234859),
('Muerto','2020-07-14',246088),
('Recuperado','2020-06-22',646015),
('Muerto','2020-07-05',961074),
('Activo','2020-07-01',951925),
('Recuperado','2020-06-18',629999),
('Activo','2020-07-04',612435),
('Muerto','2020-07-04',975752),
('Activo','2020-07-08',468938),
('Activo','2020-07-01',803316),
('Activo','2020-06-20',862318),
('Activo','2020-07-06',724680),
('Activo','2020-07-08',185309),
('Activo','2020-07-07',537829),
('Activo','2020-06-16',157950),
('Activo','2020-06-22',440245),
('Muerto','2020-07-10',394448),
('Activo','2020-06-28',686726),
('Muerto','2020-07-13',778940),
('Activo','2020-07-12',599675),
('Activo','2020-06-26',157275),
('Activo','2020-06-29',260190),
('Activo','2020-07-03',151176),
('Recuperado','2020-06-28',664213),
('Muerto','2020-07-12',750227),
('Activo','2020-06-29',310812),
('Muerto','2020-07-06',117357),
('Muerto','2020-06-15',329237),
('Activo','2020-06-15',506459),
('Activo','2020-07-11',934190),
('Recuperado','2020-06-26',193618),
('Recuperado','2020-06-25',223296),
('Activo','2020-06-27',460774),
('Activo','2020-07-07',618731),
('Activo','2020-06-28',192800),
('Activo','2020-06-19',472709),
('Activo','2020-06-23',540078),
('Activo','2020-06-16',320040),
('Muerto','2020-06-18',765089),
('Muerto','2020-06-17',292322),
('Activo','2020-06-27',443751),
('Activo','2020-06-29',531896),
('Activo','2020-06-27',567113),
('Activo','2020-07-10',112747),
('Activo','2020-06-29',691972),
('Recuperado','2020-06-15',913097),
('Activo','2020-07-01',879236),
('Recuperado','2020-06-24',355688),
('Activo','2020-07-10',650115),
('Recuperado','2020-06-22',776725);


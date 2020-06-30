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

INSERT INTO EnforcedMeasurements (Country_Name,Measurement_Id,Start_Date,End_Date)
VALUES
('Spain',1,'2020-01-20','2020-03-20'),
('Spain',3,'2020-02-20','2020-03-20'),
('Spain',2,'2020-02-25','2020-03-20'),
('Costa Rica',1,'2020-03-20','2020-05-20');

INSERT INTO Hospitals (Id,Name,ICU_Capacity,Capacity,Manager_Name,Phone)
VALUES
(1,'Hospital del sur',7,80,'Pepito','22223333'),
(3,'Hospital del norte',10,200,'Pepito','22224444'),
(4,'Hospital del este',5,150,'Pepito','33332222');

INSERT INTO Hospital_ICUs 
VALUES
('225225',1),
('334334',3),
('554554',3);

INSERT INTO Hospital_Patients 
VALUES
('225225',1),
('334334',4),
('554554',4);

INSERT INTO Medications 
VALUES
(22,'paracetamol','pulpería'),
(23,'sopita','pulpería'),
(24,'hierba','farmacia');

INSERT INTO Hospital_Medications 
VALUES
(1,22),
(3,23),
(4,24);

INSERT INTO Pathologies 
VALUES
('Ebola','hemorragia','solo en africa','no hay'),
('Covid','tos','mundial','respirador'),
('Denge','fiebre','mosquitos','antiinflamatorios');

INSERT INTO Patient_Status 
VALUES
('Muerto'),
('Activo'),
('Recuperado');

INSERT INTO Patients 
VALUES
(100000,'pepito1','papu',1,1,25,'Costa Rica','Costa Rica',1,'Activo'),
(100001,'pepito2','papu',0,0,35,'Costa Rica','Spain',1,'Recuperado'),
(100002,'pepito3','papu',0,0,45,'Spain','Costa Rica',1,'Activo');

INSERT INTO Patients VALUES (156385,'pepito16','tortilla14',1,0,82,'China','United States',3,'Recuperado');
INSERT INTO Patients VALUES (589123,'pepito11','tortilla0',0,0,87,'Costa Rica','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (242337,'pepito6','tortilla9',0,1,49,'China','Spain',4,'Activo');
INSERT INTO Patients VALUES (864648,'pepito1','tortilla6',0,1,39,'China','Spain',3,'Activo');
INSERT INTO Patients VALUES (903981,'pepito2','tortilla0',1,0,29,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (455409,'pepito9','tortilla14',1,0,65,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (465354,'pepito13','tortilla0',1,1,79,'Spain','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (671767,'pepito14','tortilla17',0,1,88,'Spain','United States',4,'Muerto');
INSERT INTO Patients VALUES (721873,'pepito14','tortilla5',1,0,98,'China','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (279960,'pepito15','tortilla13',1,1,91,'China','United States',3,'Activo');
INSERT INTO Patients VALUES (446201,'pepito2','tortilla2',1,0,39,'Spain','United States',1,'Activo');
INSERT INTO Patients VALUES (798008,'pepito17','tortilla20',0,0,28,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (616882,'pepito3','tortilla7',0,0,75,'China','China',4,'Activo');
INSERT INTO Patients VALUES (539966,'pepito15','tortilla3',0,0,45,'Spain','Spain',4,'Activo');
INSERT INTO Patients VALUES (906530,'pepito12','tortilla13',0,1,92,'China','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (618662,'pepito5','tortilla9',1,0,77,'China','United States',4,'Muerto');
INSERT INTO Patients VALUES (366303,'pepito17','tortilla10',0,0,92,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (742879,'pepito13','tortilla8',0,0,28,'Costa Rica','United States',1,'Muerto');
INSERT INTO Patients VALUES (661655,'pepito13','tortilla10',1,1,94,'China','China',3,'Activo');
INSERT INTO Patients VALUES (242776,'pepito11','tortilla13',1,1,79,'Spain','China',4,'Activo');
INSERT INTO Patients VALUES (855537,'pepito11','tortilla9',0,0,74,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (102137,'pepito16','tortilla18',1,1,94,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (676708,'pepito11','tortilla11',0,0,20,'United States','Spain',1,'Activo');
INSERT INTO Patients VALUES (905925,'pepito17','tortilla10',0,1,68,'China','Spain',4,'Activo');
INSERT INTO Patients VALUES (406856,'pepito9','tortilla3',1,1,64,'China','United States',1,'Recuperado');
INSERT INTO Patients VALUES (874392,'pepito15','tortilla6',0,0,31,'United States','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (122865,'pepito2','tortilla7',1,1,80,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (819961,'pepito20','tortilla3',0,1,43,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (744671,'pepito14','tortilla17',0,1,43,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (654005,'pepito0','tortilla0',1,0,21,'China','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (305182,'pepito1','tortilla19',1,1,30,'China','United States',4,'Muerto');
INSERT INTO Patients VALUES (905194,'pepito13','tortilla0',0,1,59,'United States','China',4,'Activo');
INSERT INTO Patients VALUES (579808,'pepito0','tortilla3',1,1,76,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (510934,'pepito3','tortilla5',1,0,26,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (355299,'pepito13','tortilla12',1,1,80,'Costa Rica','Spain',3,'Activo');
INSERT INTO Patients VALUES (550082,'pepito4','tortilla8',1,0,90,'China','China',4,'Activo');
INSERT INTO Patients VALUES (474688,'pepito4','tortilla10',1,1,93,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (904230,'pepito3','tortilla20',1,0,91,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (738461,'pepito5','tortilla19',0,0,28,'China','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (250237,'pepito14','tortilla4',1,1,63,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (903631,'pepito7','tortilla5',0,1,53,'Costa Rica','United States',4,'Muerto');
INSERT INTO Patients VALUES (859910,'pepito4','tortilla1',0,0,55,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (697343,'pepito11','tortilla18',1,0,43,'United States','China',1,'Recuperado');
INSERT INTO Patients VALUES (808426,'pepito14','tortilla4',0,1,56,'Spain','China',1,'Activo');
INSERT INTO Patients VALUES (988818,'pepito8','tortilla6',0,1,28,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (605884,'pepito20','tortilla10',1,0,91,'China','United States',1,'Recuperado');
INSERT INTO Patients VALUES (650779,'pepito14','tortilla17',1,1,76,'China','China',1,'Activo');
INSERT INTO Patients VALUES (766442,'pepito12','tortilla18',0,1,94,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (433859,'pepito19','tortilla7',0,1,83,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (314823,'pepito9','tortilla13',0,0,91,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (687000,'pepito16','tortilla5',1,1,88,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (523549,'pepito6','tortilla5',0,0,79,'China','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (402284,'pepito15','tortilla11',0,1,31,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (704955,'pepito18','tortilla3',0,1,74,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (325896,'pepito10','tortilla9',0,1,44,'China','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (890958,'pepito0','tortilla4',1,1,38,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (984830,'pepito9','tortilla11',1,0,22,'China','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (452480,'pepito19','tortilla8',1,1,98,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (134052,'pepito0','tortilla17',1,1,76,'United States','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (267419,'pepito15','tortilla9',1,1,60,'Costa Rica','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (251297,'pepito3','tortilla15',0,1,31,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (134620,'pepito11','tortilla19',1,0,39,'United States','United States',3,'Muerto');
INSERT INTO Patients VALUES (548758,'pepito20','tortilla12',0,0,71,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (423120,'pepito9','tortilla7',1,0,27,'United States','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (849644,'pepito15','tortilla16',1,0,69,'Spain','China',3,'Muerto');
INSERT INTO Patients VALUES (147815,'pepito8','tortilla17',0,1,52,'United States','China',4,'Muerto');
INSERT INTO Patients VALUES (675325,'pepito0','tortilla13',1,0,83,'China','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (180993,'pepito11','tortilla20',0,0,32,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (314281,'pepito5','tortilla10',0,1,60,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (889196,'pepito3','tortilla8',0,1,63,'Costa Rica','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (641609,'pepito4','tortilla18',0,1,100,'China','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (317240,'pepito16','tortilla17',1,0,94,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (266943,'pepito14','tortilla11',1,1,75,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (937445,'pepito16','tortilla9',1,1,88,'United States','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (417967,'pepito10','tortilla8',0,0,28,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (750437,'pepito16','tortilla6',0,1,49,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (522303,'pepito7','tortilla4',1,1,42,'China','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (806190,'pepito1','tortilla13',1,1,88,'China','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (506791,'pepito14','tortilla15',0,1,83,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (762034,'pepito7','tortilla10',0,0,25,'China','United States',1,'Muerto');
INSERT INTO Patients VALUES (641019,'pepito20','tortilla5',1,1,97,'China','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (969398,'pepito3','tortilla4',0,0,81,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (273422,'pepito20','tortilla20',0,1,23,'China','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (516882,'pepito20','tortilla13',0,0,64,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (246091,'pepito12','tortilla8',0,1,39,'China','United States',3,'Recuperado');
INSERT INTO Patients VALUES (297449,'pepito15','tortilla14',0,0,69,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (806737,'pepito4','tortilla1',1,1,68,'Spain','China',4,'Muerto');
INSERT INTO Patients VALUES (941239,'pepito8','tortilla7',1,1,42,'United States','China',3,'Activo');
INSERT INTO Patients VALUES (803729,'pepito10','tortilla2',0,1,78,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (199359,'pepito4','tortilla5',0,0,72,'China','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (459378,'pepito13','tortilla12',1,1,86,'China','Spain',1,'Activo');
INSERT INTO Patients VALUES (287217,'pepito13','tortilla3',0,1,60,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (173720,'pepito0','tortilla18',0,1,72,'United States','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (902916,'pepito11','tortilla8',0,1,91,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (279816,'pepito17','tortilla4',1,1,72,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (566174,'pepito12','tortilla2',0,1,80,'Spain','Spain',1,'Muerto');
INSERT INTO Patients VALUES (784870,'pepito0','tortilla18',1,1,46,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (481343,'pepito19','tortilla3',1,1,57,'Costa Rica','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (191804,'pepito0','tortilla2',1,1,82,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (473383,'pepito3','tortilla12',1,1,53,'United States','China',1,'Recuperado');
INSERT INTO Patients VALUES (573600,'pepito16','tortilla13',0,0,22,'Spain','China',3,'Activo');
INSERT INTO Patients VALUES (351945,'pepito2','tortilla15',0,1,49,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (400642,'pepito11','tortilla14',1,1,69,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (277781,'pepito8','tortilla7',0,1,50,'Spain','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (220733,'pepito18','tortilla16',0,1,42,'Spain','China',1,'Activo');
INSERT INTO Patients VALUES (798800,'pepito15','tortilla6',0,0,45,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (997738,'pepito10','tortilla16',1,0,64,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (132200,'pepito15','tortilla19',0,0,60,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (781311,'pepito7','tortilla9',1,0,95,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (847238,'pepito6','tortilla3',0,1,64,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (216312,'pepito2','tortilla18',0,1,47,'Costa Rica','China',4,'Muerto');
INSERT INTO Patients VALUES (314993,'pepito4','tortilla2',1,1,25,'United States','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (790308,'pepito10','tortilla8',1,1,39,'United States','United States',3,'Activo');
INSERT INTO Patients VALUES (455178,'pepito12','tortilla19',1,0,82,'United States','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (483712,'pepito16','tortilla1',0,0,32,'Costa Rica','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (829956,'pepito19','tortilla8',1,1,27,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (665876,'pepito8','tortilla6',1,1,63,'China','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (488403,'pepito2','tortilla16',1,0,47,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (275771,'pepito2','tortilla15',1,0,91,'United States','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (557180,'pepito8','tortilla0',1,1,75,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (879298,'pepito7','tortilla7',0,0,81,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (559218,'pepito19','tortilla8',1,0,53,'United States','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (180661,'pepito12','tortilla3',1,1,41,'Costa Rica','Spain',4,'Activo');
INSERT INTO Patients VALUES (111837,'pepito11','tortilla20',0,1,56,'United States','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (178269,'pepito17','tortilla14',1,1,41,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (124617,'pepito5','tortilla19',0,1,20,'China','China',4,'Activo');
INSERT INTO Patients VALUES (285588,'pepito9','tortilla17',1,1,76,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (737606,'pepito9','tortilla15',0,0,60,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (723186,'pepito8','tortilla10',1,0,23,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (770302,'pepito0','tortilla15',0,1,39,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (488566,'pepito3','tortilla14',1,1,21,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (390195,'pepito18','tortilla0',0,0,99,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (612496,'pepito7','tortilla3',1,1,64,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (632136,'pepito10','tortilla7',0,0,43,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (355962,'pepito20','tortilla19',1,1,57,'Spain','China',4,'Recuperado');
INSERT INTO Patients VALUES (402108,'pepito10','tortilla6',1,1,68,'United States','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (662447,'pepito20','tortilla17',1,1,74,'Spain','United States',4,'Muerto');
INSERT INTO Patients VALUES (525170,'pepito8','tortilla19',1,0,95,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (165514,'pepito1','tortilla10',0,1,74,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (816393,'pepito19','tortilla18',1,0,83,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (992928,'pepito16','tortilla2',1,0,26,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (727570,'pepito12','tortilla18',0,1,26,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (572424,'pepito5','tortilla10',1,1,64,'United States','Spain',4,'Muerto');
INSERT INTO Patients VALUES (731416,'pepito18','tortilla4',0,0,41,'China','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (914566,'pepito4','tortilla3',1,0,88,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (410544,'pepito11','tortilla3',1,1,34,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (217088,'pepito7','tortilla19',1,1,82,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (493829,'pepito3','tortilla11',1,0,24,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (568184,'pepito2','tortilla2',0,0,93,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (522288,'pepito10','tortilla12',1,0,72,'United States','United States',3,'Activo');
INSERT INTO Patients VALUES (720002,'pepito10','tortilla1',1,0,37,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (223766,'pepito19','tortilla3',0,1,34,'United States','China',1,'Recuperado');
INSERT INTO Patients VALUES (650990,'pepito7','tortilla7',1,0,63,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (611623,'pepito15','tortilla16',0,0,72,'Spain','China',3,'Activo');
INSERT INTO Patients VALUES (408190,'pepito0','tortilla14',1,1,41,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (190471,'pepito4','tortilla2',0,0,81,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (233825,'pepito8','tortilla2',1,1,93,'China','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (322595,'pepito6','tortilla2',1,1,45,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (999931,'pepito12','tortilla9',0,0,94,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (211231,'pepito18','tortilla7',1,1,30,'Spain','China',4,'Activo');
INSERT INTO Patients VALUES (982129,'pepito4','tortilla18',0,1,47,'Costa Rica','China',3,'Recuperado');
INSERT INTO Patients VALUES (372967,'pepito19','tortilla12',0,0,66,'United States','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (394513,'pepito0','tortilla14',1,1,43,'United States','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (750227,'pepito5','tortilla5',1,0,78,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (363986,'pepito6','tortilla10',0,0,98,'United States','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (707631,'pepito3','tortilla14',0,0,67,'United States','Spain',3,'Muerto');
INSERT INTO Patients VALUES (809529,'pepito7','tortilla10',0,0,22,'China','United States',3,'Activo');
INSERT INTO Patients VALUES (806559,'pepito7','tortilla18',1,1,63,'China','China',1,'Activo');
INSERT INTO Patients VALUES (440723,'pepito8','tortilla7',1,1,46,'Spain','China',3,'Recuperado');
INSERT INTO Patients VALUES (496461,'pepito18','tortilla18',0,0,54,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (471335,'pepito7','tortilla1',0,1,77,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (571194,'pepito13','tortilla6',0,1,71,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (813737,'pepito5','tortilla6',1,1,77,'Spain','Spain',4,'Activo');
INSERT INTO Patients VALUES (475773,'pepito16','tortilla11',1,1,42,'United States','China',4,'Muerto');
INSERT INTO Patients VALUES (972454,'pepito18','tortilla5',0,0,28,'United States','Spain',4,'Activo');
INSERT INTO Patients VALUES (549786,'pepito18','tortilla1',1,1,92,'China','China',3,'Recuperado');
INSERT INTO Patients VALUES (949919,'pepito8','tortilla7',0,1,25,'Spain','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (412684,'pepito20','tortilla7',0,1,98,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (938385,'pepito17','tortilla20',1,0,23,'Costa Rica','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (216056,'pepito19','tortilla12',1,1,99,'Costa Rica','United States',4,'Recuperado');
INSERT INTO Patients VALUES (293136,'pepito0','tortilla2',1,0,83,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (667059,'pepito8','tortilla0',1,1,28,'Spain','China',1,'Muerto');
INSERT INTO Patients VALUES (930395,'pepito16','tortilla18',0,0,74,'Spain','Spain',4,'Activo');
INSERT INTO Patients VALUES (150174,'pepito6','tortilla4',0,1,33,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (593949,'pepito6','tortilla0',1,0,62,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (248415,'pepito15','tortilla13',1,0,98,'United States','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (818263,'pepito4','tortilla3',1,1,67,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (132112,'pepito4','tortilla20',0,0,51,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (510321,'pepito17','tortilla1',0,0,84,'Costa Rica','China',4,'Activo');
INSERT INTO Patients VALUES (368612,'pepito5','tortilla17',1,0,72,'Costa Rica','United States',3,'Recuperado');
INSERT INTO Patients VALUES (917518,'pepito5','tortilla4',0,0,55,'China','United States',4,'Activo');
INSERT INTO Patients VALUES (514869,'pepito1','tortilla10',0,1,70,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (613157,'pepito1','tortilla16',1,1,69,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (550591,'pepito18','tortilla0',0,0,80,'Costa Rica','United States',1,'Activo');
INSERT INTO Patients VALUES (762624,'pepito9','tortilla14',0,1,64,'Costa Rica','China',3,'Recuperado');
INSERT INTO Patients VALUES (160196,'pepito20','tortilla5',0,0,34,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (642264,'pepito2','tortilla20',1,1,42,'United States','United States',3,'Muerto');
INSERT INTO Patients VALUES (123989,'pepito12','tortilla20',0,1,29,'Spain','Spain',4,'Activo');
INSERT INTO Patients VALUES (908114,'pepito9','tortilla10',1,1,28,'Spain','United States',4,'Muerto');
INSERT INTO Patients VALUES (899949,'pepito19','tortilla14',0,1,75,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (314683,'pepito20','tortilla10',1,1,46,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (917232,'pepito0','tortilla5',0,0,27,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (885759,'pepito4','tortilla4',0,0,72,'Costa Rica','United States',1,'Muerto');
INSERT INTO Patients VALUES (592260,'pepito17','tortilla8',0,1,75,'United States','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (147073,'pepito18','tortilla7',0,0,72,'Spain','United States',4,'Muerto');
INSERT INTO Patients VALUES (354188,'pepito2','tortilla14',0,0,98,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (559287,'pepito13','tortilla8',1,1,94,'Spain','United States',4,'Muerto');
INSERT INTO Patients VALUES (907754,'pepito19','tortilla15',0,1,28,'Costa Rica','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (626365,'pepito0','tortilla2',1,0,58,'United States','United States',1,'Activo');
INSERT INTO Patients VALUES (954223,'pepito17','tortilla8',0,0,83,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (633663,'pepito16','tortilla17',0,1,72,'China','United States',4,'Recuperado');
INSERT INTO Patients VALUES (759343,'pepito2','tortilla7',1,0,91,'Costa Rica','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (887073,'pepito10','tortilla0',1,0,39,'United States','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (180670,'pepito11','tortilla17',0,0,28,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (310397,'pepito5','tortilla6',1,0,86,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (519414,'pepito7','tortilla10',0,0,52,'Costa Rica','China',3,'Recuperado');
INSERT INTO Patients VALUES (450851,'pepito7','tortilla1',0,1,37,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (420333,'pepito9','tortilla1',0,1,86,'United States','Spain',3,'Muerto');
INSERT INTO Patients VALUES (479484,'pepito16','tortilla20',1,1,25,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (233317,'pepito10','tortilla20',1,1,94,'China','Spain',3,'Activo');
INSERT INTO Patients VALUES (184529,'pepito2','tortilla14',0,0,49,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (711849,'pepito19','tortilla6',0,1,93,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (221716,'pepito5','tortilla1',1,0,89,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (968959,'pepito1','tortilla3',1,0,68,'Spain','Spain',1,'Muerto');
INSERT INTO Patients VALUES (739716,'pepito8','tortilla19',1,1,76,'Spain','United States',4,'Muerto');
INSERT INTO Patients VALUES (553237,'pepito2','tortilla1',0,1,30,'United States','China',1,'Recuperado');
INSERT INTO Patients VALUES (981240,'pepito14','tortilla14',0,1,20,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (884987,'pepito20','tortilla13',0,0,72,'United States','China',1,'Recuperado');
INSERT INTO Patients VALUES (477591,'pepito17','tortilla1',1,1,79,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (920793,'pepito5','tortilla12',0,1,85,'Spain','Spain',3,'Muerto');
INSERT INTO Patients VALUES (255246,'pepito20','tortilla7',1,1,99,'Costa Rica','Spain',4,'Activo');
INSERT INTO Patients VALUES (278788,'pepito17','tortilla9',1,1,57,'Spain','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (520893,'pepito13','tortilla13',1,0,43,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (215031,'pepito15','tortilla6',1,1,52,'Costa Rica','United States',3,'Activo');
INSERT INTO Patients VALUES (859327,'pepito9','tortilla19',1,0,49,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (638338,'pepito9','tortilla10',1,0,21,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (956375,'pepito16','tortilla11',0,0,25,'United States','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (506163,'pepito20','tortilla17',0,1,78,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (588520,'pepito13','tortilla3',0,0,100,'Costa Rica','Spain',1,'Activo');
INSERT INTO Patients VALUES (411102,'pepito0','tortilla5',1,0,84,'Spain','Spain',3,'Muerto');
INSERT INTO Patients VALUES (246483,'pepito2','tortilla12',0,1,100,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (352337,'pepito14','tortilla2',1,1,46,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (850099,'pepito15','tortilla2',1,0,73,'Spain','Spain',3,'Muerto');
INSERT INTO Patients VALUES (856419,'pepito4','tortilla17',0,0,66,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (308121,'pepito10','tortilla2',1,1,20,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (547441,'pepito13','tortilla8',1,0,86,'Costa Rica','China',3,'Recuperado');
INSERT INTO Patients VALUES (929142,'pepito11','tortilla9',1,1,36,'China','Spain',1,'Activo');
INSERT INTO Patients VALUES (590418,'pepito5','tortilla6',0,1,74,'Spain','China',4,'Muerto');
INSERT INTO Patients VALUES (327875,'pepito2','tortilla10',1,1,70,'Spain','China',3,'Recuperado');
INSERT INTO Patients VALUES (899134,'pepito11','tortilla10',1,1,39,'Spain','China',4,'Recuperado');
INSERT INTO Patients VALUES (759194,'pepito15','tortilla0',0,1,68,'Spain','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (574460,'pepito2','tortilla17',0,0,79,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (246769,'pepito1','tortilla19',1,1,52,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (734134,'pepito9','tortilla6',0,0,45,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (983999,'pepito20','tortilla15',0,1,56,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (140362,'pepito6','tortilla5',1,1,83,'Spain','China',1,'Recuperado');
INSERT INTO Patients VALUES (143248,'pepito20','tortilla9',1,0,100,'Costa Rica','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (539136,'pepito1','tortilla11',1,1,55,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (270476,'pepito1','tortilla8',1,1,97,'United States','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (991611,'pepito0','tortilla8',1,1,50,'United States','United States',1,'Activo');
INSERT INTO Patients VALUES (799983,'pepito5','tortilla20',0,0,93,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (423739,'pepito4','tortilla10',1,0,40,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (723380,'pepito13','tortilla8',1,0,84,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (268037,'pepito5','tortilla18',0,0,27,'Spain','China',3,'Muerto');
INSERT INTO Patients VALUES (828351,'pepito2','tortilla12',0,1,94,'China','Spain',1,'Activo');
INSERT INTO Patients VALUES (256496,'pepito2','tortilla13',0,1,50,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (143988,'pepito3','tortilla6',0,1,83,'United States','China',4,'Activo');
INSERT INTO Patients VALUES (924163,'pepito14','tortilla17',0,0,74,'Costa Rica','United States',3,'Activo');
INSERT INTO Patients VALUES (406199,'pepito10','tortilla20',0,0,21,'China','China',4,'Activo');
INSERT INTO Patients VALUES (141719,'pepito10','tortilla6',0,1,36,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (496440,'pepito11','tortilla8',0,1,56,'United States','China',4,'Activo');
INSERT INTO Patients VALUES (364464,'pepito11','tortilla5',0,1,79,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (338611,'pepito14','tortilla17',0,1,68,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (763044,'pepito0','tortilla19',0,1,95,'Costa Rica','China',3,'Recuperado');
INSERT INTO Patients VALUES (338434,'pepito1','tortilla16',1,0,36,'China','Spain',3,'Activo');
INSERT INTO Patients VALUES (125853,'pepito13','tortilla8',0,1,56,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (186213,'pepito15','tortilla11',0,0,44,'United States','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (280365,'pepito18','tortilla2',0,0,100,'United States','United States',4,'Recuperado');
INSERT INTO Patients VALUES (375229,'pepito13','tortilla19',0,1,35,'United States','Spain',4,'Muerto');
INSERT INTO Patients VALUES (670925,'pepito12','tortilla12',1,0,97,'United States','China',1,'Recuperado');
INSERT INTO Patients VALUES (945593,'pepito7','tortilla20',1,0,88,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (826024,'pepito17','tortilla5',0,0,23,'Costa Rica','United States',3,'Recuperado');
INSERT INTO Patients VALUES (496043,'pepito15','tortilla10',1,1,57,'China','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (406916,'pepito14','tortilla11',0,0,36,'Costa Rica','United States',1,'Muerto');
INSERT INTO Patients VALUES (750300,'pepito20','tortilla12',0,1,28,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (309705,'pepito1','tortilla15',1,1,41,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (291340,'pepito13','tortilla8',1,0,63,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (314448,'pepito12','tortilla14',0,0,58,'United States','United States',3,'Muerto');
INSERT INTO Patients VALUES (214571,'pepito1','tortilla19',0,1,67,'Spain','China',3,'Muerto');
INSERT INTO Patients VALUES (526153,'pepito11','tortilla17',0,1,89,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (521843,'pepito16','tortilla16',0,1,41,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (229302,'pepito1','tortilla8',1,0,90,'United States','Spain',1,'Activo');
INSERT INTO Patients VALUES (370329,'pepito2','tortilla16',0,0,61,'Spain','United States',1,'Activo');
INSERT INTO Patients VALUES (649309,'pepito8','tortilla10',1,1,23,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (358347,'pepito5','tortilla9',0,0,48,'Costa Rica','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (633643,'pepito14','tortilla5',0,1,72,'United States','United States',3,'Muerto');
INSERT INTO Patients VALUES (842993,'pepito19','tortilla19',0,0,38,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (138609,'pepito10','tortilla18',1,0,90,'China','China',1,'Activo');
INSERT INTO Patients VALUES (478249,'pepito16','tortilla6',1,0,23,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (280033,'pepito2','tortilla7',0,0,58,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (534548,'pepito2','tortilla1',1,1,59,'China','Spain',3,'Muerto');
INSERT INTO Patients VALUES (613081,'pepito1','tortilla10',0,0,85,'China','United States',4,'Activo');
INSERT INTO Patients VALUES (285071,'pepito13','tortilla18',0,0,79,'Costa Rica','Spain',3,'Activo');
INSERT INTO Patients VALUES (309871,'pepito3','tortilla1',0,0,77,'Spain','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (436556,'pepito20','tortilla11',0,0,76,'China','United States',3,'Activo');
INSERT INTO Patients VALUES (660698,'pepito8','tortilla7',1,0,45,'Spain','China',3,'Recuperado');
INSERT INTO Patients VALUES (382438,'pepito16','tortilla5',0,1,38,'Costa Rica','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (912298,'pepito7','tortilla10',0,1,83,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (622758,'pepito19','tortilla6',0,0,33,'Spain','United States',1,'Activo');
INSERT INTO Patients VALUES (954997,'pepito10','tortilla1',1,0,89,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (892674,'pepito2','tortilla19',0,0,38,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (374010,'pepito2','tortilla11',1,1,36,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (847091,'pepito20','tortilla18',0,1,100,'Costa Rica','United States',1,'Recuperado');
INSERT INTO Patients VALUES (149449,'pepito20','tortilla0',0,1,89,'Costa Rica','China',4,'Activo');
INSERT INTO Patients VALUES (281570,'pepito16','tortilla17',1,0,71,'Costa Rica','United States',4,'Activo');
INSERT INTO Patients VALUES (980905,'pepito0','tortilla8',1,1,41,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (427243,'pepito8','tortilla11',0,0,67,'Spain','China',3,'Recuperado');
INSERT INTO Patients VALUES (230625,'pepito1','tortilla14',1,1,35,'China','United States',1,'Muerto');
INSERT INTO Patients VALUES (827206,'pepito3','tortilla5',0,0,60,'China','United States',1,'Muerto');
INSERT INTO Patients VALUES (552439,'pepito19','tortilla9',0,1,86,'Costa Rica','China',4,'Muerto');
INSERT INTO Patients VALUES (496687,'pepito15','tortilla8',1,0,86,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (528342,'pepito14','tortilla18',0,1,99,'United States','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (213993,'pepito12','tortilla7',0,0,67,'United States','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (751540,'pepito14','tortilla7',0,1,52,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (602517,'pepito2','tortilla16',1,1,66,'Spain','China',1,'Recuperado');
INSERT INTO Patients VALUES (541651,'pepito8','tortilla5',1,0,82,'Costa Rica','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (909295,'pepito16','tortilla8',1,1,92,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (656619,'pepito8','tortilla14',0,0,60,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (258656,'pepito16','tortilla10',1,1,54,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (401457,'pepito8','tortilla10',1,1,69,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (418212,'pepito18','tortilla6',1,0,88,'United States','Spain',1,'Activo');
INSERT INTO Patients VALUES (458862,'pepito5','tortilla19',0,0,59,'Costa Rica','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (995443,'pepito17','tortilla8',0,1,57,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (446142,'pepito2','tortilla5',1,1,57,'United States','United States',1,'Recuperado');
INSERT INTO Patients VALUES (563894,'pepito0','tortilla13',1,1,82,'Spain','United States',1,'Muerto');
INSERT INTO Patients VALUES (949018,'pepito13','tortilla16',0,1,87,'United States','Spain',4,'Muerto');
INSERT INTO Patients VALUES (346596,'pepito20','tortilla13',0,1,95,'Spain','Spain',4,'Activo');
INSERT INTO Patients VALUES (302255,'pepito18','tortilla8',0,0,84,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (174479,'pepito3','tortilla4',1,1,82,'China','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (589291,'pepito10','tortilla16',1,0,87,'China','Spain',1,'Activo');
INSERT INTO Patients VALUES (559193,'pepito1','tortilla9',0,1,56,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (317500,'pepito6','tortilla19',1,0,36,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (759873,'pepito18','tortilla15',0,1,50,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (601053,'pepito12','tortilla20',1,1,26,'Spain','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (531645,'pepito16','tortilla6',1,1,81,'United States','Spain',1,'Activo');
INSERT INTO Patients VALUES (133855,'pepito19','tortilla14',1,0,67,'Costa Rica','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (904338,'pepito11','tortilla3',0,0,65,'United States','Spain',3,'Muerto');
INSERT INTO Patients VALUES (874807,'pepito1','tortilla8',0,1,20,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (936397,'pepito11','tortilla19',0,0,51,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (492926,'pepito1','tortilla4',0,1,80,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (240097,'pepito10','tortilla14',1,0,77,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (233290,'pepito19','tortilla8',0,1,69,'Spain','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (530033,'pepito0','tortilla4',0,1,84,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (224651,'pepito9','tortilla12',0,0,35,'United States','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (204146,'pepito2','tortilla9',1,1,51,'United States','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (902902,'pepito10','tortilla19',1,1,36,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (289542,'pepito5','tortilla4',0,0,46,'Costa Rica','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (355365,'pepito10','tortilla11',1,1,77,'China','China',3,'Activo');
INSERT INTO Patients VALUES (680059,'pepito19','tortilla6',1,1,96,'United States','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (258879,'pepito17','tortilla6',1,0,54,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (637660,'pepito0','tortilla15',1,0,47,'Spain','China',4,'Muerto');
INSERT INTO Patients VALUES (623959,'pepito14','tortilla0',1,1,39,'Costa Rica','United States',3,'Recuperado');
INSERT INTO Patients VALUES (686488,'pepito16','tortilla8',1,0,36,'Costa Rica','China',4,'Muerto');
INSERT INTO Patients VALUES (531477,'pepito8','tortilla17',0,1,93,'United States','Spain',4,'Muerto');
INSERT INTO Patients VALUES (343877,'pepito17','tortilla9',0,1,51,'China','Spain',3,'Activo');
INSERT INTO Patients VALUES (625059,'pepito17','tortilla7',1,0,39,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (986065,'pepito11','tortilla12',0,1,32,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (215385,'pepito9','tortilla2',0,1,72,'China','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (820400,'pepito0','tortilla6',1,0,35,'Spain','Spain',1,'Muerto');
INSERT INTO Patients VALUES (539232,'pepito6','tortilla3',1,0,73,'China','China',1,'Recuperado');
INSERT INTO Patients VALUES (457582,'pepito2','tortilla12',0,0,36,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (164789,'pepito7','tortilla13',1,1,43,'China','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (874240,'pepito16','tortilla19',1,0,44,'Costa Rica','United States',1,'Activo');
INSERT INTO Patients VALUES (655528,'pepito7','tortilla12',0,0,60,'Costa Rica','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (927500,'pepito1','tortilla14',0,1,52,'Spain','Spain',3,'Muerto');
INSERT INTO Patients VALUES (912848,'pepito0','tortilla17',1,1,34,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (772661,'pepito7','tortilla5',1,0,27,'Spain','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (536507,'pepito13','tortilla14',1,1,92,'China','United States',4,'Recuperado');
INSERT INTO Patients VALUES (302565,'pepito16','tortilla15',1,0,60,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (736765,'pepito20','tortilla12',0,0,25,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (218773,'pepito3','tortilla9',0,0,72,'Costa Rica','United States',4,'Muerto');
INSERT INTO Patients VALUES (133394,'pepito8','tortilla9',1,0,48,'Costa Rica','United States',4,'Recuperado');
INSERT INTO Patients VALUES (366687,'pepito14','tortilla5',0,1,40,'United States','Spain',1,'Activo');
INSERT INTO Patients VALUES (636554,'pepito20','tortilla6',0,0,44,'United States','Spain',3,'Activo');
INSERT INTO Patients VALUES (530944,'pepito11','tortilla11',0,0,56,'Spain','Spain',3,'Activo');
INSERT INTO Patients VALUES (634925,'pepito2','tortilla12',1,1,25,'Spain','Spain',1,'Muerto');
INSERT INTO Patients VALUES (775214,'pepito0','tortilla2',0,0,43,'China','Spain',3,'Muerto');
INSERT INTO Patients VALUES (365670,'pepito17','tortilla10',0,1,66,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (770029,'pepito2','tortilla11',1,0,99,'China','Spain',1,'Activo');
INSERT INTO Patients VALUES (737951,'pepito17','tortilla15',1,0,73,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (973422,'pepito3','tortilla18',1,1,57,'Spain','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (497099,'pepito14','tortilla8',1,1,56,'China','Spain',4,'Activo');
INSERT INTO Patients VALUES (831105,'pepito19','tortilla12',0,1,31,'Spain','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (408289,'pepito17','tortilla3',0,1,55,'China','Spain',3,'Activo');
INSERT INTO Patients VALUES (305804,'pepito15','tortilla4',1,1,50,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (304339,'pepito4','tortilla8',1,0,80,'China','United States',1,'Recuperado');
INSERT INTO Patients VALUES (667073,'pepito14','tortilla12',1,0,30,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (764908,'pepito5','tortilla13',1,0,63,'United States','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (292136,'pepito14','tortilla0',0,1,48,'China','United States',1,'Muerto');
INSERT INTO Patients VALUES (106593,'pepito10','tortilla17',1,0,90,'Spain','China',3,'Activo');
INSERT INTO Patients VALUES (755084,'pepito20','tortilla0',1,0,67,'Spain','China',4,'Muerto');
INSERT INTO Patients VALUES (959114,'pepito18','tortilla2',1,0,39,'China','China',3,'Activo');
INSERT INTO Patients VALUES (998410,'pepito19','tortilla20',0,0,90,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (784780,'pepito7','tortilla20',0,0,78,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (466630,'pepito18','tortilla20',0,0,55,'Costa Rica','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (915729,'pepito11','tortilla16',1,0,74,'United States','United States',3,'Activo');
INSERT INTO Patients VALUES (224637,'pepito1','tortilla6',1,0,45,'China','United States',4,'Muerto');
INSERT INTO Patients VALUES (390458,'pepito5','tortilla1',0,1,73,'Spain','United States',4,'Muerto');
INSERT INTO Patients VALUES (333240,'pepito0','tortilla16',0,1,43,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (673416,'pepito14','tortilla15',1,0,48,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (950117,'pepito6','tortilla11',1,1,69,'Spain','China',3,'Activo');
INSERT INTO Patients VALUES (730888,'pepito10','tortilla0',0,0,31,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (182882,'pepito16','tortilla2',1,1,65,'Costa Rica','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (126235,'pepito15','tortilla4',1,0,86,'Spain','China',3,'Activo');
INSERT INTO Patients VALUES (467715,'pepito20','tortilla12',0,0,78,'China','China',3,'Activo');
INSERT INTO Patients VALUES (691145,'pepito14','tortilla7',0,0,75,'China','Spain',3,'Muerto');
INSERT INTO Patients VALUES (930416,'pepito7','tortilla1',0,1,82,'Spain','China',3,'Muerto');
INSERT INTO Patients VALUES (706543,'pepito17','tortilla14',1,0,53,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (561950,'pepito6','tortilla15',0,0,91,'Costa Rica','United States',4,'Activo');
INSERT INTO Patients VALUES (134859,'pepito4','tortilla3',0,0,59,'United States','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (840355,'pepito8','tortilla17',0,0,38,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (206191,'pepito9','tortilla10',0,0,26,'Spain','China',4,'Recuperado');
INSERT INTO Patients VALUES (671060,'pepito5','tortilla2',0,0,88,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (229706,'pepito10','tortilla2',0,0,82,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (369866,'pepito5','tortilla10',1,0,22,'Costa Rica','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (999124,'pepito17','tortilla15',0,0,35,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (572304,'pepito17','tortilla12',1,1,49,'Costa Rica','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (272381,'pepito13','tortilla4',1,0,67,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (559216,'pepito12','tortilla16',1,0,100,'United States','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (137688,'pepito7','tortilla20',1,0,32,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (438108,'pepito6','tortilla17',0,1,62,'China','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (854863,'pepito19','tortilla3',1,1,52,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (260620,'pepito15','tortilla4',0,0,50,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (155964,'pepito0','tortilla0',1,1,94,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (842133,'pepito2','tortilla7',1,1,84,'Spain','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (372972,'pepito10','tortilla11',0,0,38,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (147700,'pepito11','tortilla10',0,1,36,'Costa Rica','United States',3,'Recuperado');
INSERT INTO Patients VALUES (782503,'pepito19','tortilla20',0,0,50,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (159164,'pepito8','tortilla5',1,0,30,'United States','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (291892,'pepito7','tortilla18',0,1,44,'Costa Rica','Spain',4,'Activo');
INSERT INTO Patients VALUES (149694,'pepito0','tortilla13',0,1,56,'United States','China',4,'Muerto');
INSERT INTO Patients VALUES (131257,'pepito6','tortilla0',1,1,57,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (858800,'pepito18','tortilla15',0,1,86,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (455482,'pepito11','tortilla13',1,0,46,'Costa Rica','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (514238,'pepito0','tortilla11',1,1,100,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (659232,'pepito17','tortilla20',0,1,57,'Costa Rica','United States',4,'Recuperado');
INSERT INTO Patients VALUES (868217,'pepito13','tortilla1',0,1,53,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (943751,'pepito1','tortilla8',1,0,26,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (314541,'pepito17','tortilla1',0,1,89,'China','United States',4,'Muerto');
INSERT INTO Patients VALUES (260090,'pepito7','tortilla8',1,1,83,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (679247,'pepito12','tortilla10',0,1,24,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (395320,'pepito20','tortilla13',1,0,61,'Costa Rica','United States',1,'Activo');
INSERT INTO Patients VALUES (506775,'pepito7','tortilla2',1,1,76,'China','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (950035,'pepito5','tortilla16',0,1,52,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (386783,'pepito6','tortilla16',0,1,88,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (560942,'pepito14','tortilla0',0,0,34,'China','United States',4,'Muerto');
INSERT INTO Patients VALUES (441873,'pepito6','tortilla2',0,1,37,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (208128,'pepito4','tortilla6',1,0,84,'China','United States',1,'Recuperado');
INSERT INTO Patients VALUES (920453,'pepito18','tortilla9',0,1,65,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (897741,'pepito19','tortilla14',1,0,82,'Costa Rica','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (910179,'pepito10','tortilla3',0,0,22,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (873712,'pepito19','tortilla13',1,0,77,'Spain','China',3,'Muerto');
INSERT INTO Patients VALUES (927351,'pepito7','tortilla7',0,1,58,'United States','China',3,'Activo');
INSERT INTO Patients VALUES (316380,'pepito5','tortilla0',0,0,78,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (111529,'pepito18','tortilla0',0,0,91,'Costa Rica','United States',4,'Activo');
INSERT INTO Patients VALUES (175501,'pepito15','tortilla5',0,1,30,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (953336,'pepito8','tortilla6',1,1,96,'China','Spain',1,'Activo');
INSERT INTO Patients VALUES (212881,'pepito10','tortilla6',1,1,63,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (195260,'pepito11','tortilla2',0,1,61,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (636006,'pepito4','tortilla20',1,1,67,'Spain','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (608401,'pepito12','tortilla7',0,0,54,'China','China',4,'Activo');
INSERT INTO Patients VALUES (679718,'pepito14','tortilla4',1,0,25,'Costa Rica','China',4,'Muerto');
INSERT INTO Patients VALUES (329685,'pepito8','tortilla5',0,0,32,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (845037,'pepito3','tortilla10',0,1,33,'United States','Spain',3,'Muerto');
INSERT INTO Patients VALUES (597753,'pepito19','tortilla19',0,1,39,'Costa Rica','United States',4,'Recuperado');
INSERT INTO Patients VALUES (925010,'pepito19','tortilla5',1,1,53,'Costa Rica','Spain',1,'Activo');
INSERT INTO Patients VALUES (980485,'pepito4','tortilla5',1,0,94,'Costa Rica','United States',3,'Muerto');
INSERT INTO Patients VALUES (753573,'pepito1','tortilla7',0,1,26,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (195566,'pepito14','tortilla4',1,0,52,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (281476,'pepito19','tortilla15',0,1,34,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (189297,'pepito20','tortilla2',1,1,37,'United States','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (127925,'pepito3','tortilla15',0,0,71,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (539162,'pepito10','tortilla3',0,1,74,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (569960,'pepito7','tortilla16',1,0,23,'Spain','China',1,'Muerto');
INSERT INTO Patients VALUES (594636,'pepito13','tortilla9',0,1,69,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (511426,'pepito6','tortilla14',1,1,28,'Spain','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (914209,'pepito8','tortilla13',1,0,31,'Spain','China',4,'Recuperado');
INSERT INTO Patients VALUES (939814,'pepito14','tortilla13',0,0,37,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (457608,'pepito8','tortilla5',1,1,31,'United States','United States',1,'Muerto');
INSERT INTO Patients VALUES (236067,'pepito8','tortilla6',0,0,33,'Spain','China',4,'Muerto');
INSERT INTO Patients VALUES (671844,'pepito15','tortilla3',1,1,25,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (213741,'pepito2','tortilla15',0,0,85,'Costa Rica','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (885991,'pepito14','tortilla15',0,0,78,'Spain','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (864321,'pepito2','tortilla9',1,1,66,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (668246,'pepito18','tortilla11',0,1,34,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (330820,'pepito5','tortilla6',1,1,41,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (954701,'pepito8','tortilla10',1,0,65,'United States','United States',3,'Muerto');
INSERT INTO Patients VALUES (810840,'pepito0','tortilla5',0,1,29,'China','China',1,'Activo');
INSERT INTO Patients VALUES (162817,'pepito16','tortilla7',0,1,60,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (625689,'pepito18','tortilla7',0,1,95,'Spain','China',3,'Activo');
INSERT INTO Patients VALUES (577893,'pepito5','tortilla5',1,0,31,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (921365,'pepito10','tortilla13',0,1,93,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (439137,'pepito5','tortilla20',0,1,44,'China','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (655602,'pepito7','tortilla15',1,0,61,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (456704,'pepito15','tortilla14',0,0,86,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (563156,'pepito10','tortilla17',0,0,74,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (848130,'pepito20','tortilla18',0,0,71,'China','United States',1,'Recuperado');
INSERT INTO Patients VALUES (584379,'pepito14','tortilla11',1,0,44,'Costa Rica','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (696631,'pepito20','tortilla12',1,1,81,'Costa Rica','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (709133,'pepito8','tortilla12',1,0,74,'United States','China',4,'Activo');
INSERT INTO Patients VALUES (810642,'pepito16','tortilla6',1,0,31,'Costa Rica','United States',1,'Activo');
INSERT INTO Patients VALUES (297843,'pepito10','tortilla2',0,1,29,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (103083,'pepito8','tortilla4',1,1,85,'China','United States',4,'Muerto');
INSERT INTO Patients VALUES (800696,'pepito4','tortilla13',0,1,84,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (851049,'pepito19','tortilla13',1,0,31,'Costa Rica','United States',3,'Muerto');
INSERT INTO Patients VALUES (185388,'pepito7','tortilla12',0,1,29,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (252274,'pepito17','tortilla16',0,1,68,'Spain','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (350882,'pepito1','tortilla3',1,0,97,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (351213,'pepito3','tortilla16',1,0,75,'Spain','Spain',4,'Activo');
INSERT INTO Patients VALUES (754044,'pepito4','tortilla7',1,1,97,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (460608,'pepito15','tortilla4',0,0,98,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (970529,'pepito15','tortilla15',0,1,71,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (288218,'pepito9','tortilla0',0,1,44,'China','United States',4,'Activo');
INSERT INTO Patients VALUES (735336,'pepito17','tortilla0',0,1,22,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (951863,'pepito20','tortilla8',1,1,97,'United States','Spain',4,'Activo');
INSERT INTO Patients VALUES (107271,'pepito1','tortilla11',1,0,99,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (282860,'pepito2','tortilla5',0,1,92,'United States','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (164216,'pepito7','tortilla1',1,1,24,'United States','Spain',3,'Activo');
INSERT INTO Patients VALUES (524882,'pepito10','tortilla14',0,1,34,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (227055,'pepito17','tortilla17',1,1,62,'Costa Rica','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (808225,'pepito15','tortilla14',0,0,97,'China','United States',1,'Muerto');
INSERT INTO Patients VALUES (341394,'pepito9','tortilla15',0,0,66,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (639395,'pepito0','tortilla18',0,1,73,'United States','China',3,'Activo');
INSERT INTO Patients VALUES (400685,'pepito16','tortilla1',1,1,43,'Spain','United States',1,'Activo');
INSERT INTO Patients VALUES (745864,'pepito8','tortilla1',1,0,81,'United States','China',1,'Recuperado');
INSERT INTO Patients VALUES (132098,'pepito16','tortilla5',0,0,63,'China','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (876008,'pepito11','tortilla14',1,0,32,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (331065,'pepito20','tortilla6',1,0,94,'Costa Rica','Spain',1,'Activo');
INSERT INTO Patients VALUES (616926,'pepito20','tortilla7',1,0,70,'China','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (587889,'pepito11','tortilla15',1,1,83,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (931130,'pepito13','tortilla7',0,0,88,'Costa Rica','China',4,'Muerto');
INSERT INTO Patients VALUES (196591,'pepito1','tortilla20',0,0,41,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (569184,'pepito9','tortilla11',0,1,33,'United States','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (580741,'pepito4','tortilla9',1,1,100,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (946394,'pepito13','tortilla3',0,1,24,'China','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (385058,'pepito19','tortilla17',1,1,37,'United States','United States',1,'Muerto');
INSERT INTO Patients VALUES (849559,'pepito12','tortilla12',1,1,66,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (516966,'pepito20','tortilla9',0,1,70,'China','United States',4,'Activo');
INSERT INTO Patients VALUES (155801,'pepito1','tortilla9',1,1,40,'China','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (390168,'pepito4','tortilla16',1,0,63,'China','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (671493,'pepito0','tortilla1',0,0,66,'Spain','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (440020,'pepito11','tortilla5',0,0,90,'Costa Rica','United States',3,'Recuperado');
INSERT INTO Patients VALUES (397633,'pepito12','tortilla2',0,1,76,'United States','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (586874,'pepito1','tortilla20',1,0,38,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (650521,'pepito2','tortilla19',0,0,46,'China','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (879200,'pepito4','tortilla0',1,0,31,'Spain','United States',1,'Activo');
INSERT INTO Patients VALUES (137374,'pepito14','tortilla8',0,1,90,'China','China',1,'Recuperado');
INSERT INTO Patients VALUES (868332,'pepito19','tortilla13',1,0,54,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (104214,'pepito8','tortilla11',1,1,67,'United States','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (826652,'pepito15','tortilla4',1,1,29,'China','China',1,'Activo');
INSERT INTO Patients VALUES (309476,'pepito4','tortilla8',0,1,49,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (988907,'pepito9','tortilla5',0,0,56,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (786671,'pepito6','tortilla20',0,1,95,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (437528,'pepito16','tortilla13',0,1,31,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (797954,'pepito0','tortilla17',1,0,66,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (241710,'pepito13','tortilla6',0,0,54,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (950096,'pepito18','tortilla11',0,0,40,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (730186,'pepito16','tortilla16',1,1,31,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (421513,'pepito8','tortilla14',0,1,61,'Costa Rica','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (571824,'pepito13','tortilla1',0,0,35,'China','China',1,'Activo');
INSERT INTO Patients VALUES (779639,'pepito6','tortilla15',0,0,41,'Spain','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (815316,'pepito17','tortilla5',1,1,95,'United States','Spain',4,'Activo');
INSERT INTO Patients VALUES (677919,'pepito3','tortilla16',0,1,74,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (462420,'pepito7','tortilla2',0,1,84,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (274435,'pepito15','tortilla19',0,0,49,'Costa Rica','United States',3,'Muerto');
INSERT INTO Patients VALUES (414235,'pepito15','tortilla4',0,0,47,'Costa Rica','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (298027,'pepito4','tortilla7',0,0,47,'China','United States',4,'Activo');
INSERT INTO Patients VALUES (925865,'pepito0','tortilla15',1,0,74,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (975583,'pepito6','tortilla15',1,0,47,'Spain','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (448180,'pepito17','tortilla8',0,1,42,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (256553,'pepito20','tortilla8',0,1,28,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (736089,'pepito2','tortilla7',1,0,35,'Costa Rica','China',3,'Muerto');
INSERT INTO Patients VALUES (907316,'pepito14','tortilla1',0,0,89,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (126153,'pepito7','tortilla3',0,1,91,'China','United States',4,'Recuperado');
INSERT INTO Patients VALUES (655066,'pepito0','tortilla9',0,1,67,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (893146,'pepito3','tortilla20',1,0,68,'United States','United States',1,'Muerto');
INSERT INTO Patients VALUES (849788,'pepito2','tortilla9',1,1,31,'China','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (341512,'pepito14','tortilla14',0,1,50,'Spain','Spain',3,'Muerto');
INSERT INTO Patients VALUES (864270,'pepito0','tortilla17',1,0,78,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (355739,'pepito13','tortilla4',1,0,57,'Costa Rica','China',4,'Muerto');
INSERT INTO Patients VALUES (449452,'pepito5','tortilla5',0,0,54,'China','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (651173,'pepito14','tortilla11',1,1,69,'Costa Rica','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (618931,'pepito14','tortilla16',1,0,28,'China','United States',3,'Activo');
INSERT INTO Patients VALUES (402079,'pepito16','tortilla2',0,1,25,'China','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (960521,'pepito11','tortilla4',0,0,34,'Spain','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (675117,'pepito10','tortilla16',1,1,66,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (790731,'pepito7','tortilla5',1,0,98,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (468162,'pepito19','tortilla12',0,1,48,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (462437,'pepito2','tortilla1',0,0,87,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (905464,'pepito3','tortilla17',0,1,44,'Costa Rica','United States',3,'Activo');
INSERT INTO Patients VALUES (105194,'pepito0','tortilla1',0,0,75,'Spain','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (493952,'pepito17','tortilla5',1,1,91,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (254845,'pepito6','tortilla6',0,1,45,'United States','Spain',3,'Muerto');
INSERT INTO Patients VALUES (821879,'pepito14','tortilla5',1,0,87,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (183137,'pepito11','tortilla5',1,0,32,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (427491,'pepito18','tortilla14',1,0,69,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (597100,'pepito10','tortilla3',0,0,100,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (234354,'pepito18','tortilla16',1,0,40,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (778030,'pepito3','tortilla6',1,0,47,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (841410,'pepito12','tortilla18',0,1,46,'China','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (818261,'pepito20','tortilla20',1,0,85,'Costa Rica','Spain',4,'Activo');
INSERT INTO Patients VALUES (652440,'pepito18','tortilla20',0,0,35,'China','Spain',1,'Muerto');
INSERT INTO Patients VALUES (481143,'pepito19','tortilla4',0,0,97,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (460518,'pepito20','tortilla12',0,0,28,'Costa Rica','Spain',3,'Activo');
INSERT INTO Patients VALUES (252422,'pepito20','tortilla5',0,1,50,'Spain','Spain',1,'Muerto');
INSERT INTO Patients VALUES (377370,'pepito12','tortilla9',1,0,66,'Costa Rica','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (976548,'pepito16','tortilla15',1,0,52,'Costa Rica','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (218985,'pepito16','tortilla10',1,1,83,'United States','Spain',3,'Muerto');
INSERT INTO Patients VALUES (718251,'pepito12','tortilla13',0,0,71,'China','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (933880,'pepito5','tortilla14',0,0,41,'Costa Rica','United States',4,'Recuperado');
INSERT INTO Patients VALUES (657838,'pepito17','tortilla18',0,1,70,'Costa Rica','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (277266,'pepito2','tortilla12',1,1,75,'United States','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (856229,'pepito0','tortilla12',1,1,45,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (449185,'pepito0','tortilla7',1,1,31,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (760286,'pepito20','tortilla17',0,1,29,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (232999,'pepito7','tortilla8',1,0,71,'Spain','United States',1,'Muerto');
INSERT INTO Patients VALUES (983333,'pepito6','tortilla3',1,1,29,'United States','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (949239,'pepito17','tortilla15',1,0,48,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (724458,'pepito5','tortilla11',0,0,74,'United States','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (673968,'pepito15','tortilla2',0,1,65,'China','United States',4,'Activo');
INSERT INTO Patients VALUES (975831,'pepito2','tortilla1',1,1,89,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (590341,'pepito14','tortilla17',0,0,87,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (839742,'pepito9','tortilla17',1,0,26,'United States','United States',1,'Activo');
INSERT INTO Patients VALUES (837722,'pepito3','tortilla13',0,1,80,'Spain','China',1,'Activo');
INSERT INTO Patients VALUES (791090,'pepito10','tortilla2',0,1,25,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (796116,'pepito16','tortilla19',1,0,50,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (602072,'pepito10','tortilla3',1,1,22,'Spain','United States',4,'Recuperado');
INSERT INTO Patients VALUES (849578,'pepito16','tortilla16',1,1,36,'China','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (521880,'pepito10','tortilla0',0,0,55,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (766435,'pepito7','tortilla15',0,1,81,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (375766,'pepito9','tortilla13',1,0,67,'Spain','China',3,'Activo');
INSERT INTO Patients VALUES (781080,'pepito16','tortilla13',0,1,30,'China','United States',3,'Activo');
INSERT INTO Patients VALUES (857110,'pepito3','tortilla6',1,0,28,'Costa Rica','United States',1,'Activo');
INSERT INTO Patients VALUES (651861,'pepito8','tortilla6',0,1,86,'China','United States',4,'Muerto');
INSERT INTO Patients VALUES (997645,'pepito15','tortilla7',1,1,82,'Spain','Spain',3,'Activo');
INSERT INTO Patients VALUES (867206,'pepito18','tortilla18',0,1,73,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (381567,'pepito14','tortilla18',1,0,66,'United States','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (638320,'pepito15','tortilla6',0,0,34,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (252837,'pepito0','tortilla1',0,1,83,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (768193,'pepito5','tortilla18',1,1,87,'United States','United States',4,'Recuperado');
INSERT INTO Patients VALUES (175824,'pepito4','tortilla13',1,1,61,'Costa Rica','United States',3,'Muerto');
INSERT INTO Patients VALUES (370755,'pepito0','tortilla17',1,0,27,'China','Spain',3,'Muerto');
INSERT INTO Patients VALUES (711711,'pepito16','tortilla10',1,0,24,'Costa Rica','Spain',3,'Muerto');
INSERT INTO Patients VALUES (356855,'pepito19','tortilla20',0,1,74,'Spain','United States',1,'Activo');
INSERT INTO Patients VALUES (949684,'pepito9','tortilla15',0,1,95,'Costa Rica','United States',3,'Activo');
INSERT INTO Patients VALUES (362939,'pepito5','tortilla17',1,0,62,'Costa Rica','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (367173,'pepito11','tortilla11',0,0,96,'Costa Rica','United States',3,'Muerto');
INSERT INTO Patients VALUES (347517,'pepito18','tortilla9',1,1,72,'Spain','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (737954,'pepito14','tortilla18',1,1,46,'Spain','Spain',3,'Muerto');
INSERT INTO Patients VALUES (907458,'pepito9','tortilla20',0,1,78,'United States','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (112265,'pepito3','tortilla16',1,1,66,'China','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (195688,'pepito13','tortilla2',1,0,90,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (105367,'pepito4','tortilla9',0,1,64,'Costa Rica','United States',1,'Recuperado');
INSERT INTO Patients VALUES (173375,'pepito18','tortilla1',0,1,84,'Spain','China',4,'Activo');
INSERT INTO Patients VALUES (250800,'pepito10','tortilla18',0,0,77,'United States','United States',1,'Recuperado');
INSERT INTO Patients VALUES (366322,'pepito9','tortilla20',1,0,80,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (363945,'pepito9','tortilla14',0,0,78,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (431865,'pepito5','tortilla3',1,1,42,'Spain','Spain',1,'Muerto');
INSERT INTO Patients VALUES (583323,'pepito9','tortilla13',1,1,45,'Costa Rica','Spain',4,'Activo');
INSERT INTO Patients VALUES (204767,'pepito2','tortilla7',0,1,40,'Costa Rica','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (103131,'pepito20','tortilla2',0,0,27,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (685877,'pepito1','tortilla5',1,0,77,'China','China',4,'Activo');
INSERT INTO Patients VALUES (816021,'pepito7','tortilla16',0,0,48,'China','United States',3,'Recuperado');
INSERT INTO Patients VALUES (378819,'pepito20','tortilla9',1,0,30,'China','Spain',3,'Activo');
INSERT INTO Patients VALUES (547127,'pepito13','tortilla1',1,0,46,'China','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (300812,'pepito9','tortilla4',0,1,84,'Spain','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (404884,'pepito11','tortilla2',1,0,35,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (215900,'pepito14','tortilla20',1,0,95,'United States','United States',4,'Recuperado');
INSERT INTO Patients VALUES (290820,'pepito4','tortilla7',1,0,90,'China','United States',4,'Recuperado');
INSERT INTO Patients VALUES (727549,'pepito19','tortilla17',0,1,42,'Costa Rica','China',1,'Activo');
INSERT INTO Patients VALUES (392839,'pepito6','tortilla6',1,1,51,'Spain','United States',4,'Muerto');
INSERT INTO Patients VALUES (921027,'pepito1','tortilla19',1,0,35,'United States','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (334640,'pepito19','tortilla16',0,0,34,'Costa Rica','United States',1,'Muerto');
INSERT INTO Patients VALUES (718081,'pepito4','tortilla9',1,0,54,'United States','United States',1,'Activo');
INSERT INTO Patients VALUES (453861,'pepito12','tortilla10',1,0,75,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (484505,'pepito17','tortilla12',0,1,77,'Costa Rica','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (872856,'pepito5','tortilla4',1,0,64,'China','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (762334,'pepito4','tortilla16',0,1,22,'Costa Rica','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (581602,'pepito12','tortilla15',1,1,82,'Costa Rica','Spain',3,'Activo');
INSERT INTO Patients VALUES (773974,'pepito10','tortilla7',1,1,39,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (310632,'pepito15','tortilla15',1,1,96,'Spain','China',4,'Activo');
INSERT INTO Patients VALUES (750440,'pepito19','tortilla5',0,0,34,'China','China',3,'Recuperado');
INSERT INTO Patients VALUES (487986,'pepito13','tortilla12',0,0,88,'Spain','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (770508,'pepito7','tortilla4',0,1,22,'United States','United States',1,'Activo');
INSERT INTO Patients VALUES (227642,'pepito7','tortilla13',0,0,82,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (674261,'pepito2','tortilla13',0,0,84,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (322268,'pepito11','tortilla5',0,0,65,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (970572,'pepito5','tortilla2',1,0,42,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (650750,'pepito7','tortilla8',1,1,43,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (674589,'pepito19','tortilla3',1,1,31,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (906251,'pepito10','tortilla20',1,1,31,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (506292,'pepito5','tortilla8',1,1,33,'United States','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (176415,'pepito13','tortilla16',1,1,38,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (171067,'pepito7','tortilla16',1,0,93,'Spain','Spain',3,'Muerto');
INSERT INTO Patients VALUES (694875,'pepito2','tortilla17',0,1,21,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (349392,'pepito13','tortilla2',0,1,46,'China','China',3,'Recuperado');
INSERT INTO Patients VALUES (238076,'pepito16','tortilla1',0,1,24,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (819153,'pepito15','tortilla11',0,0,72,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (903641,'pepito18','tortilla7',1,1,71,'China','United States',1,'Recuperado');
INSERT INTO Patients VALUES (678014,'pepito14','tortilla5',0,0,22,'China','United States',3,'Recuperado');
INSERT INTO Patients VALUES (542634,'pepito15','tortilla1',0,0,66,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (695322,'pepito19','tortilla3',0,0,48,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (616780,'pepito3','tortilla4',0,0,83,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (678384,'pepito3','tortilla19',0,0,33,'United States','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (507022,'pepito7','tortilla18',1,1,85,'Costa Rica','United States',1,'Recuperado');
INSERT INTO Patients VALUES (348383,'pepito18','tortilla16',1,0,61,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (405520,'pepito15','tortilla16',0,0,43,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (918885,'pepito6','tortilla5',1,0,79,'Spain','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (136655,'pepito3','tortilla15',1,1,99,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (286712,'pepito6','tortilla6',0,0,87,'Costa Rica','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (480599,'pepito9','tortilla12',1,1,26,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (540152,'pepito11','tortilla19',0,1,76,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (335643,'pepito10','tortilla2',0,1,58,'Costa Rica','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (517442,'pepito17','tortilla14',1,0,85,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (765707,'pepito20','tortilla20',1,1,59,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (201077,'pepito7','tortilla19',1,0,42,'China','China',4,'Activo');
INSERT INTO Patients VALUES (710821,'pepito16','tortilla1',0,0,77,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (496613,'pepito10','tortilla14',1,0,48,'Costa Rica','Spain',1,'Activo');
INSERT INTO Patients VALUES (143916,'pepito6','tortilla20',0,1,31,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (328986,'pepito17','tortilla12',0,0,84,'United States','Spain',3,'Activo');
INSERT INTO Patients VALUES (776331,'pepito17','tortilla19',0,0,46,'Costa Rica','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (863034,'pepito0','tortilla2',0,0,64,'China','United States',3,'Muerto');
INSERT INTO Patients VALUES (925488,'pepito9','tortilla2',1,0,71,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (743021,'pepito20','tortilla7',0,1,63,'United States','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (129378,'pepito13','tortilla11',1,1,74,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (500095,'pepito10','tortilla8',1,0,90,'Spain','China',1,'Muerto');
INSERT INTO Patients VALUES (228621,'pepito11','tortilla11',1,0,60,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (543321,'pepito11','tortilla5',0,0,25,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (634914,'pepito3','tortilla13',1,0,26,'Spain','Spain',3,'Activo');
INSERT INTO Patients VALUES (291452,'pepito3','tortilla19',0,0,67,'Spain','China',1,'Activo');
INSERT INTO Patients VALUES (834521,'pepito13','tortilla3',1,0,59,'China','United States',3,'Recuperado');
INSERT INTO Patients VALUES (476656,'pepito7','tortilla13',1,1,95,'Costa Rica','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (558995,'pepito2','tortilla20',1,1,89,'Spain','China',3,'Muerto');
INSERT INTO Patients VALUES (748198,'pepito8','tortilla0',0,1,56,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (884195,'pepito18','tortilla11',1,1,55,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (758601,'pepito9','tortilla4',1,0,99,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (677615,'pepito3','tortilla12',0,0,87,'China','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (649819,'pepito13','tortilla3',1,1,26,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (721378,'pepito19','tortilla6',1,1,74,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (512979,'pepito12','tortilla6',1,1,42,'Costa Rica','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (187164,'pepito3','tortilla18',0,1,36,'Costa Rica','Spain',3,'Activo');
INSERT INTO Patients VALUES (318206,'pepito5','tortilla1',0,0,94,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (130456,'pepito14','tortilla17',1,1,97,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (102059,'pepito6','tortilla5',0,0,35,'China','China',3,'Recuperado');
INSERT INTO Patients VALUES (542062,'pepito0','tortilla2',1,0,83,'China','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (155684,'pepito1','tortilla20',1,0,83,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (381556,'pepito11','tortilla15',0,1,97,'China','China',1,'Activo');
INSERT INTO Patients VALUES (803718,'pepito5','tortilla18',0,0,20,'China','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (293021,'pepito5','tortilla14',0,1,68,'Costa Rica','China',4,'Recuperado');
INSERT INTO Patients VALUES (318438,'pepito13','tortilla20',0,1,68,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (152181,'pepito20','tortilla5',1,0,44,'Costa Rica','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (940985,'pepito20','tortilla10',0,0,85,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (797734,'pepito18','tortilla13',0,1,24,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (212739,'pepito19','tortilla17',0,0,76,'Spain','United States',1,'Muerto');
INSERT INTO Patients VALUES (659034,'pepito1','tortilla9',0,1,77,'China','Spain',1,'Activo');
INSERT INTO Patients VALUES (859083,'pepito1','tortilla5',0,1,35,'Spain','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (412088,'pepito11','tortilla20',1,0,48,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (562251,'pepito20','tortilla10',1,0,70,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (603455,'pepito15','tortilla1',1,0,66,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (651850,'pepito18','tortilla1',0,1,24,'Spain','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (321015,'pepito15','tortilla7',1,1,58,'Spain','China',1,'Muerto');
INSERT INTO Patients VALUES (210001,'pepito11','tortilla15',0,0,82,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (410868,'pepito19','tortilla5',1,1,48,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (633443,'pepito0','tortilla4',0,0,81,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (263429,'pepito15','tortilla14',0,0,76,'Costa Rica','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (416712,'pepito19','tortilla11',1,1,76,'United States','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (865244,'pepito0','tortilla2',0,0,94,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (106108,'pepito16','tortilla17',0,1,51,'United States','Spain',3,'Muerto');
INSERT INTO Patients VALUES (495006,'pepito16','tortilla4',0,0,21,'China','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (142197,'pepito1','tortilla11',1,1,60,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (389779,'pepito2','tortilla13',1,1,50,'United States','United States',1,'Recuperado');
INSERT INTO Patients VALUES (136439,'pepito9','tortilla13',0,0,76,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (106576,'pepito13','tortilla17',1,1,89,'China','China',3,'Activo');
INSERT INTO Patients VALUES (685503,'pepito5','tortilla11',0,0,36,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (581949,'pepito4','tortilla9',1,0,31,'Costa Rica','Spain',4,'Activo');
INSERT INTO Patients VALUES (897324,'pepito20','tortilla18',0,0,30,'China','China',1,'Recuperado');
INSERT INTO Patients VALUES (831497,'pepito11','tortilla19',1,1,41,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (794769,'pepito9','tortilla8',1,0,88,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (995283,'pepito15','tortilla7',0,1,60,'Spain','Spain',4,'Activo');
INSERT INTO Patients VALUES (999967,'pepito15','tortilla18',1,0,49,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (947152,'pepito20','tortilla17',0,0,45,'China','United States',1,'Activo');
INSERT INTO Patients VALUES (606833,'pepito10','tortilla15',0,1,94,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (409384,'pepito12','tortilla8',0,0,99,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (809842,'pepito12','tortilla12',1,1,79,'United States','China',1,'Recuperado');
INSERT INTO Patients VALUES (103084,'pepito16','tortilla7',1,1,100,'China','Spain',1,'Muerto');
INSERT INTO Patients VALUES (277654,'pepito3','tortilla18',1,1,24,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (848150,'pepito6','tortilla4',0,0,68,'Costa Rica','China',3,'Muerto');
INSERT INTO Patients VALUES (468590,'pepito2','tortilla13',0,1,96,'Spain','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (722083,'pepito12','tortilla6',0,1,73,'China','China',3,'Activo');
INSERT INTO Patients VALUES (686217,'pepito2','tortilla14',0,1,23,'China','China',4,'Activo');
INSERT INTO Patients VALUES (377155,'pepito19','tortilla4',0,0,41,'Spain','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (215728,'pepito19','tortilla5',0,0,68,'Spain','China',1,'Activo');
INSERT INTO Patients VALUES (359777,'pepito18','tortilla16',1,1,96,'China','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (451226,'pepito18','tortilla0',1,0,94,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (242424,'pepito8','tortilla12',1,0,68,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (801163,'pepito11','tortilla6',0,0,77,'Costa Rica','United States',1,'Recuperado');
INSERT INTO Patients VALUES (171192,'pepito1','tortilla3',0,0,59,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (104831,'pepito17','tortilla7',1,0,90,'China','China',4,'Activo');
INSERT INTO Patients VALUES (167585,'pepito2','tortilla11',1,0,39,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (877725,'pepito2','tortilla12',1,1,88,'China','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (774599,'pepito12','tortilla18',0,0,74,'China','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (381540,'pepito1','tortilla0',1,1,42,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (518911,'pepito15','tortilla17',1,1,40,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (342681,'pepito3','tortilla13',1,0,73,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (314494,'pepito17','tortilla5',1,1,47,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (706580,'pepito19','tortilla1',0,0,84,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (800027,'pepito20','tortilla12',1,0,46,'United States','Spain',4,'Activo');
INSERT INTO Patients VALUES (444129,'pepito13','tortilla19',0,1,85,'China','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (139326,'pepito5','tortilla5',1,0,66,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (244593,'pepito13','tortilla9',0,0,42,'Costa Rica','United States',1,'Activo');
INSERT INTO Patients VALUES (311688,'pepito1','tortilla1',0,0,50,'China','Spain',1,'Activo');
INSERT INTO Patients VALUES (216399,'pepito12','tortilla18',0,1,41,'China','China',1,'Recuperado');
INSERT INTO Patients VALUES (370792,'pepito1','tortilla11',1,0,60,'Spain','Spain',1,'Muerto');
INSERT INTO Patients VALUES (102412,'pepito10','tortilla14',1,1,80,'China','Spain',4,'Activo');
INSERT INTO Patients VALUES (232117,'pepito8','tortilla10',1,0,97,'United States','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (692922,'pepito10','tortilla11',1,0,69,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (959431,'pepito6','tortilla5',0,1,95,'China','China',4,'Muerto');
INSERT INTO Patients VALUES (908933,'pepito4','tortilla8',1,1,85,'China','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (753759,'pepito2','tortilla6',1,1,88,'United States','Spain',4,'Muerto');
INSERT INTO Patients VALUES (529751,'pepito13','tortilla16',1,0,45,'Spain','United States',3,'Activo');
INSERT INTO Patients VALUES (264858,'pepito10','tortilla14',1,0,43,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (557370,'pepito18','tortilla16',1,0,84,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (722126,'pepito8','tortilla8',0,1,94,'Costa Rica','China',4,'Muerto');
INSERT INTO Patients VALUES (394249,'pepito16','tortilla5',0,1,41,'Costa Rica','United States',3,'Muerto');
INSERT INTO Patients VALUES (645098,'pepito13','tortilla16',0,1,44,'Costa Rica','United States',1,'Muerto');
INSERT INTO Patients VALUES (632169,'pepito18','tortilla14',0,0,94,'China','Spain',3,'Muerto');
INSERT INTO Patients VALUES (747492,'pepito14','tortilla14',1,1,35,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (714389,'pepito17','tortilla15',0,0,48,'China','Spain',4,'Activo');
INSERT INTO Patients VALUES (187533,'pepito2','tortilla19',1,0,28,'China','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (152358,'pepito10','tortilla18',0,1,74,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (781586,'pepito7','tortilla9',0,1,72,'United States','United States',4,'Activo');
INSERT INTO Patients VALUES (850745,'pepito9','tortilla20',0,1,27,'China','United States',3,'Recuperado');
INSERT INTO Patients VALUES (783108,'pepito8','tortilla14',0,0,78,'China','United States',1,'Activo');
INSERT INTO Patients VALUES (290255,'pepito14','tortilla18',0,0,26,'Spain','China',1,'Recuperado');
INSERT INTO Patients VALUES (694104,'pepito6','tortilla10',0,0,69,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (143943,'pepito2','tortilla13',0,1,36,'China','United States',4,'Muerto');
INSERT INTO Patients VALUES (927578,'pepito10','tortilla8',0,0,21,'United States','United States',3,'Activo');
INSERT INTO Patients VALUES (603488,'pepito20','tortilla16',1,0,32,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (101526,'pepito8','tortilla15',0,0,90,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (505431,'pepito20','tortilla10',0,0,49,'Spain','United States',4,'Muerto');
INSERT INTO Patients VALUES (806466,'pepito0','tortilla0',1,0,24,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (320452,'pepito11','tortilla16',0,1,92,'United States','Spain',1,'Muerto');
INSERT INTO Patients VALUES (171856,'pepito16','tortilla12',0,1,63,'Spain','United States',4,'Activo');
INSERT INTO Patients VALUES (861268,'pepito18','tortilla20',1,1,42,'United States','United States',1,'Recuperado');
INSERT INTO Patients VALUES (943397,'pepito11','tortilla2',1,1,50,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (108239,'pepito4','tortilla16',1,1,87,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (424880,'pepito7','tortilla12',0,1,28,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (970957,'pepito8','tortilla20',0,0,25,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (352071,'pepito11','tortilla3',1,0,66,'Costa Rica','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (323400,'pepito18','tortilla1',1,1,46,'China','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (468099,'pepito11','tortilla2',1,1,47,'Spain','China',4,'Activo');
INSERT INTO Patients VALUES (220605,'pepito1','tortilla3',1,0,76,'Costa Rica','United States',4,'Recuperado');
INSERT INTO Patients VALUES (161135,'pepito2','tortilla16',0,0,82,'China','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (160935,'pepito11','tortilla3',0,0,62,'Costa Rica','United States',4,'Muerto');
INSERT INTO Patients VALUES (540573,'pepito1','tortilla2',0,0,91,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (987555,'pepito3','tortilla1',0,0,36,'United States','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (763425,'pepito3','tortilla2',1,0,84,'Costa Rica','United States',3,'Activo');
INSERT INTO Patients VALUES (359837,'pepito11','tortilla5',0,1,64,'Costa Rica','Spain',3,'Activo');
INSERT INTO Patients VALUES (116986,'pepito8','tortilla16',0,1,80,'United States','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (940290,'pepito17','tortilla1',1,0,80,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (699949,'pepito13','tortilla2',0,1,38,'Spain','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (692111,'pepito0','tortilla19',0,0,35,'China','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (837311,'pepito7','tortilla20',0,1,72,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (491318,'pepito17','tortilla18',0,1,99,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (378354,'pepito11','tortilla3',1,0,50,'United States','China',3,'Activo');
INSERT INTO Patients VALUES (614240,'pepito18','tortilla4',1,1,98,'Spain','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (234025,'pepito19','tortilla15',1,1,43,'Spain','China',3,'Activo');
INSERT INTO Patients VALUES (957619,'pepito12','tortilla13',0,1,68,'Spain','Spain',4,'Muerto');
INSERT INTO Patients VALUES (734082,'pepito10','tortilla6',1,0,20,'China','United States',3,'Activo');
INSERT INTO Patients VALUES (914561,'pepito7','tortilla8',0,0,97,'United States','United States',4,'Muerto');
INSERT INTO Patients VALUES (492302,'pepito11','tortilla6',0,1,27,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (680815,'pepito9','tortilla4',0,1,36,'Spain','United States',1,'Muerto');
INSERT INTO Patients VALUES (599531,'pepito9','tortilla3',0,1,68,'China','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (795267,'pepito12','tortilla19',1,1,30,'United States','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (265534,'pepito13','tortilla19',1,0,40,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (846574,'pepito0','tortilla1',0,0,97,'Spain','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (105739,'pepito6','tortilla18',0,0,56,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (665856,'pepito19','tortilla0',0,0,96,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (700098,'pepito1','tortilla1',1,0,89,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (311356,'pepito18','tortilla10',0,0,80,'United States','Spain',3,'Activo');
INSERT INTO Patients VALUES (263812,'pepito20','tortilla19',0,1,33,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (435148,'pepito7','tortilla3',1,1,77,'United States','China',3,'Recuperado');
INSERT INTO Patients VALUES (647261,'pepito0','tortilla5',0,0,75,'United States','China',4,'Activo');
INSERT INTO Patients VALUES (440798,'pepito0','tortilla10',0,0,29,'United States','Spain',4,'Activo');
INSERT INTO Patients VALUES (231213,'pepito17','tortilla15',1,0,28,'Spain','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (850055,'pepito12','tortilla11',0,1,22,'China','United States',4,'Muerto');
INSERT INTO Patients VALUES (869514,'pepito4','tortilla20',1,1,40,'Spain','China',4,'Muerto');
INSERT INTO Patients VALUES (841521,'pepito18','tortilla14',0,1,56,'China','China',1,'Recuperado');
INSERT INTO Patients VALUES (623940,'pepito2','tortilla9',1,0,50,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (159385,'pepito9','tortilla4',1,0,23,'China','Costa Rica',3,'Recuperado');
INSERT INTO Patients VALUES (306876,'pepito4','tortilla1',0,1,67,'Spain','China',4,'Activo');
INSERT INTO Patients VALUES (123763,'pepito10','tortilla16',1,1,52,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (957577,'pepito4','tortilla20',1,0,61,'Costa Rica','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (614299,'pepito7','tortilla20',0,1,47,'United States','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (403403,'pepito15','tortilla14',1,1,99,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (760340,'pepito19','tortilla16',0,0,55,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (319465,'pepito4','tortilla10',0,1,33,'China','China',1,'Recuperado');
INSERT INTO Patients VALUES (165799,'pepito18','tortilla11',0,1,33,'China','United States',4,'Activo');
INSERT INTO Patients VALUES (889368,'pepito4','tortilla2',0,0,62,'United States','United States',4,'Recuperado');
INSERT INTO Patients VALUES (168692,'pepito0','tortilla10',1,1,71,'China','China',4,'Activo');
INSERT INTO Patients VALUES (415035,'pepito3','tortilla5',0,1,85,'Costa Rica','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (543208,'pepito18','tortilla5',1,1,72,'United States','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (797719,'pepito0','tortilla9',1,1,29,'Costa Rica','United States',3,'Recuperado');
INSERT INTO Patients VALUES (892129,'pepito5','tortilla11',1,1,33,'United States','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (767713,'pepito7','tortilla7',0,0,36,'Spain','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (948628,'pepito16','tortilla11',1,1,84,'Costa Rica','Spain',4,'Muerto');
INSERT INTO Patients VALUES (730944,'pepito5','tortilla16',1,1,96,'Costa Rica','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (547391,'pepito9','tortilla0',0,1,92,'China','United States',3,'Activo');
INSERT INTO Patients VALUES (729148,'pepito4','tortilla13',1,0,75,'Spain','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (217110,'pepito5','tortilla9',0,0,58,'United States','Spain',3,'Activo');
INSERT INTO Patients VALUES (836451,'pepito14','tortilla12',1,0,77,'Spain','China',1,'Recuperado');
INSERT INTO Patients VALUES (645944,'pepito20','tortilla19',1,1,56,'Costa Rica','Spain',1,'Activo');
INSERT INTO Patients VALUES (107015,'pepito7','tortilla1',0,1,40,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (883494,'pepito10','tortilla1',1,0,77,'Costa Rica','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (873227,'pepito16','tortilla7',0,1,47,'Spain','China',4,'Activo');
INSERT INTO Patients VALUES (468105,'pepito6','tortilla5',0,0,88,'Costa Rica','China',4,'Activo');
INSERT INTO Patients VALUES (411396,'pepito12','tortilla20',1,0,79,'China','Spain',3,'Muerto');
INSERT INTO Patients VALUES (598716,'pepito4','tortilla14',1,1,77,'United States','Spain',3,'Muerto');
INSERT INTO Patients VALUES (588047,'pepito10','tortilla1',0,1,81,'China','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (825163,'pepito20','tortilla3',1,0,90,'United States','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (727708,'pepito7','tortilla8',0,1,80,'Spain','United States',3,'Muerto');
INSERT INTO Patients VALUES (607612,'pepito15','tortilla12',1,0,91,'United States','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (295997,'pepito17','tortilla3',1,0,58,'Spain','Spain',1,'Recuperado');
INSERT INTO Patients VALUES (943604,'pepito11','tortilla18',0,1,34,'China','China',4,'Recuperado');
INSERT INTO Patients VALUES (766055,'pepito20','tortilla3',1,1,98,'United States','China',1,'Activo');
INSERT INTO Patients VALUES (143479,'pepito7','tortilla2',1,1,47,'United States','China',1,'Muerto');
INSERT INTO Patients VALUES (899274,'pepito2','tortilla5',0,0,75,'China','United States',4,'Recuperado');
INSERT INTO Patients VALUES (207857,'pepito20','tortilla19',0,0,53,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (107792,'pepito18','tortilla3',1,0,70,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (117724,'pepito1','tortilla1',1,0,61,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (912194,'pepito0','tortilla11',1,1,37,'Costa Rica','Spain',4,'Activo');
INSERT INTO Patients VALUES (377193,'pepito15','tortilla17',0,0,23,'Spain','Spain',4,'Activo');
INSERT INTO Patients VALUES (654327,'pepito17','tortilla18',1,1,77,'Spain','China',1,'Activo');
INSERT INTO Patients VALUES (759407,'pepito16','tortilla5',0,0,45,'China','Spain',3,'Muerto');
INSERT INTO Patients VALUES (829457,'pepito6','tortilla19',0,0,49,'Spain','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (860273,'pepito4','tortilla5',0,0,21,'Costa Rica','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (522489,'pepito13','tortilla1',1,0,51,'China','United States',4,'Activo');
INSERT INTO Patients VALUES (198229,'pepito3','tortilla1',0,0,21,'China','China',3,'Muerto');
INSERT INTO Patients VALUES (965782,'pepito19','tortilla19',1,0,41,'Costa Rica','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (866095,'pepito12','tortilla9',1,1,30,'Spain','China',4,'Recuperado');
INSERT INTO Patients VALUES (293629,'pepito7','tortilla6',0,0,85,'Costa Rica','Spain',4,'Activo');
INSERT INTO Patients VALUES (881452,'pepito11','tortilla14',1,0,20,'Spain','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (447141,'pepito13','tortilla5',0,1,61,'Costa Rica','China',3,'Muerto');
INSERT INTO Patients VALUES (369949,'pepito19','tortilla11',0,0,33,'Costa Rica','China',1,'Muerto');
INSERT INTO Patients VALUES (475974,'pepito18','tortilla20',1,1,55,'Spain','Spain',3,'Activo');
INSERT INTO Patients VALUES (530676,'pepito10','tortilla10',0,1,24,'United States','United States',1,'Muerto');
INSERT INTO Patients VALUES (221118,'pepito17','tortilla14',0,0,38,'United States','Costa Rica',3,'Activo');
INSERT INTO Patients VALUES (809445,'pepito11','tortilla5',0,1,99,'Costa Rica','Costa Rica',4,'Muerto');
INSERT INTO Patients VALUES (849905,'pepito13','tortilla11',1,0,71,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (674356,'pepito17','tortilla16',0,0,70,'Costa Rica','United States',4,'Activo');
INSERT INTO Patients VALUES (674307,'pepito17','tortilla19',1,0,39,'Costa Rica','United States',4,'Muerto');
INSERT INTO Patients VALUES (254930,'pepito17','tortilla1',0,1,41,'China','China',3,'Recuperado');
INSERT INTO Patients VALUES (643881,'pepito5','tortilla6',1,1,37,'China','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (220339,'pepito18','tortilla7',1,0,53,'Costa Rica','China',3,'Activo');
INSERT INTO Patients VALUES (960728,'pepito5','tortilla8',1,0,23,'Spain','China',4,'Recuperado');
INSERT INTO Patients VALUES (569138,'pepito19','tortilla2',0,1,95,'Costa Rica','China',4,'Activo');
INSERT INTO Patients VALUES (150015,'pepito0','tortilla17',0,0,48,'United States','China',4,'Recuperado');
INSERT INTO Patients VALUES (675959,'pepito3','tortilla10',1,1,32,'United States','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (611761,'pepito19','tortilla16',0,0,100,'Spain','China',4,'Recuperado');
INSERT INTO Patients VALUES (387760,'pepito16','tortilla12',1,1,73,'United States','Spain',4,'Recuperado');
INSERT INTO Patients VALUES (988435,'pepito5','tortilla1',1,1,58,'Spain','China',4,'Activo');
INSERT INTO Patients VALUES (651072,'pepito4','tortilla12',1,0,60,'Costa Rica','Spain',1,'Activo');
INSERT INTO Patients VALUES (754397,'pepito7','tortilla15',0,1,90,'United States','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (310836,'pepito4','tortilla9',0,1,59,'China','Spain',3,'Muerto');
INSERT INTO Patients VALUES (252577,'pepito16','tortilla11',1,0,49,'Costa Rica','Costa Rica',3,'Muerto');
INSERT INTO Patients VALUES (426334,'pepito20','tortilla5',1,0,83,'Costa Rica','Spain',1,'Muerto');
INSERT INTO Patients VALUES (280328,'pepito14','tortilla20',1,1,90,'Spain','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (233698,'pepito20','tortilla0',1,1,37,'United States','United States',3,'Recuperado');
INSERT INTO Patients VALUES (228776,'pepito1','tortilla5',0,0,76,'China','Costa Rica',4,'Recuperado');
INSERT INTO Patients VALUES (267721,'pepito18','tortilla6',1,1,23,'Spain','China',1,'Recuperado');
INSERT INTO Patients VALUES (102639,'pepito20','tortilla15',0,0,84,'United States','China',3,'Muerto');
INSERT INTO Patients VALUES (434891,'pepito17','tortilla14',1,0,50,'Costa Rica','Costa Rica',1,'Recuperado');
INSERT INTO Patients VALUES (393777,'pepito2','tortilla11',0,1,42,'Spain','Spain',1,'Muerto');
INSERT INTO Patients VALUES (318564,'pepito8','tortilla16',1,1,51,'China','Spain',4,'Activo');
INSERT INTO Patients VALUES (198445,'pepito8','tortilla14',1,0,62,'Spain','Costa Rica',1,'Activo');
INSERT INTO Patients VALUES (228092,'pepito3','tortilla15',0,0,84,'United States','Costa Rica',4,'Activo');
INSERT INTO Patients VALUES (219288,'pepito15','tortilla9',1,0,25,'China','China',1,'Muerto');
INSERT INTO Patients VALUES (820845,'pepito8','tortilla2',1,0,33,'Spain','Spain',1,'Activo');
INSERT INTO Patients VALUES (369824,'pepito7','tortilla3',1,1,34,'China','China',3,'Recuperado');
INSERT INTO Patients VALUES (296541,'pepito3','tortilla3',1,0,21,'Spain','Spain',3,'Recuperado');
INSERT INTO Patients VALUES (202654,'pepito10','tortilla8',0,0,45,'China','United States',3,'Recuperado');
INSERT INTO Patients VALUES (682603,'pepito15','tortilla14',1,0,27,'United States','Spain',4,'Activo');
INSERT INTO Patients VALUES (415305,'pepito11','tortilla12',0,1,89,'China','Spain',4,'Muerto');
INSERT INTO Patients VALUES (968150,'pepito11','tortilla2',1,0,59,'China','United States',1,'Activo');
INSERT INTO Patients VALUES (446899,'pepito20','tortilla10',0,0,73,'China','China',1,'Recuperado');
INSERT INTO Patients VALUES (192812,'pepito17','tortilla11',0,1,54,'Spain','United States',3,'Recuperado');
INSERT INTO Patients VALUES (992107,'pepito9','tortilla8',1,0,24,'Costa Rica','China',1,'Recuperado');
INSERT INTO Patients VALUES (722241,'pepito20','tortilla4',0,0,59,'Spain','United States',1,'Recuperado');
INSERT INTO Patients VALUES (470005,'pepito17','tortilla14',1,0,62,'Costa Rica','Costa Rica',1,'Muerto');
INSERT INTO Patients VALUES (592781,'pepito4','tortilla4',1,1,70,'United States','China',1,'Muerto');


INSERT INTO Patient_Pathologies 
VALUES
(100001,'Covid'),
(100002,'Denge'),
(100000,'Covid');

INSERT INTO Patient_Medications 
VALUES
(100001,22),
(100002,22),
(100000,24);

INSERT INTO Contacted_Person 
VALUES
(100003,100001,'colateral1','papu','mi casa','tortilla@gmail.com',20),
(100004,100001,'colateral1','papu','mi casa x2','tortillita@gmail.com',21),
(100005,100000,'colateral1','papu','mi casa x3','tortillon@gmail.com',22);

INSERT INTO Events 
VALUES
('Activo','2020-03-08',100001),
('Muerto','2020-03-09',100002),
('Activo','2020-03-05',100002),
('Activo','2020-03-08',100002),
('Recuperado','2020-03-02',100002),
('Recuperado','2020-03-06',100002),
('Recuperado','2020-03-05',100002),
('Muerto','2020-03-06',100002),
('Muerto','2020-03-06',100001),
('Recuperado','2020-03-06',100002),
('Recuperado','2020-03-03',100001),
('Activo','2020-03-06',100002),
('Muerto','2020-03-02',100001),
('Muerto','2020-03-08',100001),
('Recuperado','2020-03-07',100001),
('Recuperado','2020-03-03',100001),
('Muerto','2020-03-04',100001),
('Muerto','2020-03-02',100002),
('Activo','2020-03-06',100002),
('Muerto','2020-03-04',100001),
('Muerto','2020-03-04',100001),
('Recuperado','2020-03-06',100002),
('Recuperado','2020-03-06',100001),
('Recuperado','2020-03-09',100001),
('Activo','2020-03-02',100001),
('Recuperado','2020-03-05',100002),
('Muerto','2020-03-06',100001),
('Muerto','2020-03-09',100002),
('Muerto','2020-03-03',100001),
('Recuperado','2020-03-05',100002),
('Muerto','2020-03-01',100002),
('Activo','2020-03-03',100001),
('Recuperado','2020-03-07',100001),
('Activo','2020-03-08',100002),
('Recuperado','2020-03-03',100002),
('Muerto','2020-03-04',100001),
('Activo','2020-03-05',100002),
('Muerto','2020-03-02',100001),
('Activo','2020-03-09',100001),
('Activo','2020-03-06',100002),
('Recuperado','2020-03-07',100001),
('Muerto','2020-03-07',100002),
('Recuperado','2020-03-09',100002),
('Recuperado','2020-03-03',100001),
('Recuperado','2020-03-07',100001),
('Muerto','2020-03-09',100001),
('Muerto','2020-03-02',100001),
('Activo','2020-03-01',100001),
('Recuperado','2020-03-05',100002),
('Muerto','2020-03-03',100002),
('Activo','2020-03-06',100002),
('Activo','2020-03-04',100002),
('Activo','2020-03-02',100001),
('Muerto','2020-03-07',100002),
('Recuperado','2020-03-08',100001),
('Activo','2020-03-02',100001),
('Recuperado','2020-03-06',100001),
('Activo','2020-03-07',100002),
('Muerto','2020-03-09',100001),
('Muerto','2020-03-07',100001),
('Recuperado','2020-03-01',100001),
('Muerto','2020-03-03',100001),
('Recuperado','2020-03-04',100002),
('Muerto','2020-03-03',100002),
('Activo','2020-03-04',100002),
('Muerto','2020-03-05',100001),
('Recuperado','2020-03-05',100001),
('Muerto','2020-03-05',100001),
('Muerto','2020-03-07',100002),
('Muerto','2020-03-08',100002),
('Recuperado','2020-03-03',100002),
('Activo','2020-03-04',100002),
('Activo','2020-03-04',100002),
('Recuperado','2020-03-03',100001),
('Activo','2020-03-03',100002),
('Muerto','2020-03-09',100001),
('Recuperado','2020-03-08',100002),
('Activo','2020-03-04',100002),
('Muerto','2020-03-06',100001),
('Activo','2020-03-03',100002),
('Muerto','2020-03-01',100001),
('Muerto','2020-03-03',100002),
('Activo','2020-03-06',100001),
('Muerto','2020-03-03',100001),
('Recuperado','2020-03-05',100002),
('Recuperado','2020-03-04',100001),
('Recuperado','2020-03-09',100001),
('Activo','2020-03-03',100001),
('Activo','2020-03-05',100001),
('Muerto','2020-03-04',100001),
('Recuperado','2020-03-09',100002),
('Activo','2020-03-06',100001),
('Muerto','2020-03-09',100002),
('Muerto','2020-03-05',100002),
('Muerto','2020-03-05',100001),
('Activo','2020-03-06',100001),
('Muerto','2020-03-08',100001),
('Recuperado','2020-03-03',100001),
('Muerto','2020-03-03',100002),
('Muerto','2020-03-07',100001),
('Recuperado','2020-03-05',100002),
('Recuperado','2020-03-04',100002),
('Activo','2020-03-05',100001),
('Muerto','2020-03-02',100002),
('Muerto','2020-03-07',100001),
('Recuperado','2020-03-02',100001),
('Recuperado','2020-03-06',100002),
('Muerto','2020-03-06',100002),
('Recuperado','2020-03-04',100001),
('Muerto','2020-03-08',100001),
('Activo','2020-03-07',100002),
('Recuperado','2020-03-01',100001),
('Muerto','2020-03-06',100001),
('Activo','2020-03-04',100002),
('Activo','2020-03-06',100001),
('Recuperado','2020-03-01',100002),
('Recuperado','2020-03-07',100002),
('Recuperado','2020-03-04',100001),
('Muerto','2020-03-05',100001),
('Muerto','2020-03-08',100001),
('Muerto','2020-03-02',100001),
('Recuperado','2020-03-04',100001),
('Muerto','2020-03-04',100001),
('Activo','2020-03-03',100001),
('Recuperado','2020-03-01',100001),
('Recuperado','2020-03-01',100002),
('Activo','2020-03-05',100002),
('Recuperado','2020-03-07',100002),
('Muerto','2020-03-08',100001),
('Muerto','2020-03-08',100001),
('Activo','2020-03-02',100001),
('Recuperado','2020-03-04',100002),
('Muerto','2020-03-09',100001),
('Muerto','2020-03-06',100002),
('Muerto','2020-03-02',100002),
('Muerto','2020-03-04',100001),
('Recuperado','2020-03-05',100002),
('Activo','2020-03-02',100001),
('Activo','2020-03-03',100001),
('Recuperado','2020-03-01',100001),
('Recuperado','2020-03-06',100002),
('Activo','2020-03-02',100002),
('Muerto','2020-03-02',100002),
('Recuperado','2020-03-04',100001),
('Recuperado','2020-03-07',100002),
('Muerto','2020-03-05',100001),
('Muerto','2020-03-01',100002),
('Activo','2020-03-02',100002),
('Recuperado','2020-03-01',100002),
('Activo','2020-03-04',100002),
('Recuperado','2020-03-09',100002),
('Recuperado','2020-03-07',100002),
('Muerto','2020-03-04',100002),
('Muerto','2020-03-05',100001),
('Recuperado','2020-03-01',100001),
('Muerto','2020-03-07',100001),
('Muerto','2020-03-06',100002),
('Activo','2020-03-07',100001),
('Muerto','2020-03-02',100002),
('Recuperado','2020-03-01',100002),
('Recuperado','2020-03-08',100001),
('Muerto','2020-03-04',100002),
('Recuperado','2020-03-05',100001),
('Muerto','2020-03-04',100002),
('Muerto','2020-03-02',100001),
('Muerto','2020-03-03',100001),
('Activo','2020-03-01',100001),
('Activo','2020-03-06',100002),
('Recuperado','2020-03-01',100001),
('Activo','2020-03-03',100001),
('Recuperado','2020-03-06',100001),
('Muerto','2020-03-02',100002),
('Activo','2020-03-06',100001),
('Recuperado','2020-03-02',100002),
('Activo','2020-03-06',100002),
('Activo','2020-03-02',100001),
('Muerto','2020-03-05',100002),
('Muerto','2020-03-02',100001),
('Muerto','2020-03-09',100002),
('Recuperado','2020-03-09',100002),
('Recuperado','2020-03-02',100001),
('Recuperado','2020-03-03',100001),
('Activo','2020-03-07',100002),
('Recuperado','2020-03-05',100002),
('Activo','2020-03-04',100001),
('Muerto','2020-03-07',100002),
('Muerto','2020-03-02',100002),
('Recuperado','2020-03-09',100002),
('Recuperado','2020-03-04',100001),
('Recuperado','2020-03-02',100001),
('Muerto','2020-03-06',100002),
('Muerto','2020-03-06',100002),
('Recuperado','2020-03-08',100002),
('Recuperado','2020-03-07',100002),
('Activo','2020-03-07',100001),
('Recuperado','2020-03-06',100001),
('Recuperado','2020-03-01',100002),
('Recuperado','2020-03-03',100001),
('Muerto','2020-03-02',100002),
('Recuperado','2020-03-07',100001),
('Recuperado','2020-03-06',100002),
('Recuperado','2020-03-01',100001),
('Muerto','2020-03-02',100002),
('Recuperado','2020-03-08',100002),
('Activo','2020-03-03',100002),
('Muerto','2020-03-06',100002),
('Muerto','2020-03-01',100002),
('Recuperado','2020-03-05',100001),
('Activo','2020-03-05',100001),
('Activo','2020-03-04',100002),
('Activo','2020-03-09',100001),
('Muerto','2020-03-02',100002),
('Muerto','2020-03-09',100002),
('Muerto','2020-03-05',100001),
('Recuperado','2020-03-04',100002),
('Activo','2020-03-09',100002),
('Muerto','2020-03-03',100001),
('Muerto','2020-03-07',100001),
('Recuperado','2020-03-03',100001),
('Recuperado','2020-03-02',100001),
('Activo','2020-03-04',100001),
('Recuperado','2020-03-04',100002),
('Recuperado','2020-03-07',100002),
('Recuperado','2020-03-04',100002),
('Activo','2020-03-04',100001),
('Muerto','2020-03-04',100001),
('Muerto','2020-03-06',100002),
('Activo','2020-03-09',100001),
('Activo','2020-03-06',100001),
('Activo','2020-03-01',100002),
('Activo','2020-03-09',100001),
('Activo','2020-03-04',100002),
('Recuperado','2020-03-04',100002),
('Recuperado','2020-03-07',100002),
('Activo','2020-03-02',100001),
('Activo','2020-03-02',100001),
('Recuperado','2020-03-02',100001),
('Recuperado','2020-03-05',100002),
('Recuperado','2020-03-01',100001),
('Recuperado','2020-03-09',100001),
('Activo','2020-03-08',100002),
('Recuperado','2020-03-08',100002),
('Activo','2020-03-08',100002),
('Recuperado','2020-03-07',100001),
('Activo','2020-03-04',100002),
('Recuperado','2020-03-02',100002),
('Muerto','2020-03-09',100001),
('Activo','2020-03-03',100002),
('Muerto','2020-03-05',100002),
('Recuperado','2020-03-08',100001),
('Activo','2020-03-08',100002),
('Recuperado','2020-03-04',100002),
('Activo','2020-03-08',100001),
('Recuperado','2020-03-02',100002),
('Muerto','2020-03-06',100001),
('Recuperado','2020-03-05',100001),
('Recuperado','2020-03-04',100002),
('Muerto','2020-03-06',100001),
('Muerto','2020-03-05',100002),
('Muerto','2020-03-07',100002),
('Recuperado','2020-03-09',100002),
('Muerto','2020-03-04',100001),
('Muerto','2020-03-01',100001),
('Muerto','2020-03-09',100002),
('Activo','2020-03-08',100002),
('Muerto','2020-03-03',100002),
('Muerto','2020-03-03',100001),
('Muerto','2020-03-09',100002),
('Recuperado','2020-03-06',100001),
('Recuperado','2020-03-01',100001),
('Recuperado','2020-03-08',100001),
('Muerto','2020-03-07',100001),
('Activo','2020-03-01',100002),
('Activo','2020-03-08',100002),
('Activo','2020-03-08',100002),
('Activo','2020-03-08',100002),
('Muerto','2020-03-07',100002),
('Recuperado','2020-03-04',100001),
('Activo','2020-03-05',100001),
('Recuperado','2020-03-03',100002),
('Muerto','2020-03-05',100001),
('Muerto','2020-03-08',100001),
('Activo','2020-03-07',100001),
('Recuperado','2020-03-06',100001),
('Muerto','2020-03-05',100001),
('Activo','2020-03-03',100002),
('Recuperado','2020-03-06',100002),
('Activo','2020-03-08',100002),
('Muerto','2020-03-04',100002),
('Activo','2020-03-01',100001),
('Recuperado','2020-03-02',100002),
('Recuperado','2020-03-08',100001),
('Activo','2020-03-08',100002),
('Muerto','2020-03-08',100001),
('Activo','2020-03-03',100002),
('Recuperado','2020-03-03',100002),
('Activo','2020-03-01',100001),
('Muerto','2020-03-07',100001),
('Activo','2020-03-07',100001),
('Activo','2020-03-08',100001),
('Recuperado','2020-03-04',100002),
('Recuperado','2020-03-04',100001),
('Recuperado','2020-03-09',100001),
('Activo','2020-03-09',100001),
('Recuperado','2020-03-01',100001),
('Muerto','2020-03-04',100001),
('Muerto','2020-03-06',100002),
('Activo','2020-03-08',100001),
('Recuperado','2020-03-02',100002),
('Recuperado','2020-03-06',100002),
('Activo','2020-03-09',100002),
('Activo','2020-03-08',100001),
('Muerto','2020-03-04',100001),
('Muerto','2020-03-03',100002),
('Muerto','2020-03-04',100001),
('Muerto','2020-03-04',100002),
('Activo','2020-03-07',100002),
('Muerto','2020-03-01',100001),
('Muerto','2020-03-02',100002),
('Muerto','2020-03-07',100002),
('Recuperado','2020-03-03',100002),
('Recuperado','2020-03-04',100001),
('Muerto','2020-03-05',100002),
('Muerto','2020-03-09',100002),
('Recuperado','2020-03-09',100002),
('Muerto','2020-03-02',100002),
('Muerto','2020-03-09',100002),
('Muerto','2020-03-05',100001),
('Activo','2020-03-03',100002),
('Muerto','2020-03-01',100002),
('Activo','2020-03-08',100001),
('Muerto','2020-03-05',100001),
('Muerto','2020-03-04',100001),
('Activo','2020-03-02',100001),
('Muerto','2020-03-09',100002),
('Recuperado','2020-03-04',100002),
('Activo','2020-03-03',100002),
('Recuperado','2020-03-02',100002),
('Recuperado','2020-03-04',100002),
('Recuperado','2020-03-07',100002),
('Activo','2020-03-02',100002),
('Activo','2020-03-08',100001),
('Recuperado','2020-03-03',100001),
('Activo','2020-03-08',100001),
('Muerto','2020-03-05',100002),
('Activo','2020-03-03',100001),
('Muerto','2020-03-02',100001),
('Recuperado','2020-03-05',100002),
('Muerto','2020-03-06',100001),
('Recuperado','2020-03-08',100002),
('Recuperado','2020-03-08',100002),
('Muerto','2020-03-02',100001),
('Muerto','2020-03-01',100002),
('Activo','2020-03-05',100001),
('Activo','2020-03-05',100001),
('Muerto','2020-03-01',100001),
('Activo','2020-03-04',100001),
('Muerto','2020-03-09',100001),
('Muerto','2020-03-01',100002),
('Muerto','2020-03-08',100002),
('Recuperado','2020-03-02',100002),
('Activo','2020-03-06',100001),
('Activo','2020-03-09',100001),
('Activo','2020-03-03',100001),
('Activo','2020-03-01',100002),
('Muerto','2020-03-05',100002),
('Recuperado','2020-03-05',100001),
('Activo','2020-03-08',100002),
('Recuperado','2020-03-06',100001),
('Muerto','2020-03-05',100002),
('Muerto','2020-03-01',100001),
('Activo','2020-03-02',100002),
('Activo','2020-03-05',100001),
('Activo','2020-03-04',100001),
('Recuperado','2020-03-06',100002),
('Activo','2020-03-05',100002),
('Muerto','2020-03-01',100002),
('Muerto','2020-03-07',100001),
('Muerto','2020-03-05',100001),
('Muerto','2020-03-03',100002),
('Activo','2020-03-01',100002),
('Muerto','2020-03-05',100002),
('Muerto','2020-03-06',100001),
('Recuperado','2020-03-03',100001),
('Activo','2020-03-01',100002),
('Recuperado','2020-03-07',100001),
('Activo','2020-03-01',100002),
('Activo','2020-03-06',100002),
('Muerto','2020-03-02',100001),
('Activo','2020-03-01',100002),
('Activo','2020-03-05',100001),
('Muerto','2020-03-06',100001),
('Recuperado','2020-03-02',100001),
('Activo','2020-03-09',100002),
('Recuperado','2020-03-04',100002),
('Recuperado','2020-03-01',100001),
('Activo','2020-03-03',100002),
('Muerto','2020-03-01',100001),
('Recuperado','2020-03-06',100001),
('Recuperado','2020-03-03',100001),
('Activo','2020-03-06',100001),
('Muerto','2020-03-09',100002),
('Recuperado','2020-03-01',100001),
('Muerto','2020-03-01',100002),
('Activo','2020-03-01',100001),
('Muerto','2020-03-06',100001),
('Muerto','2020-03-02',100001),
('Activo','2020-03-09',100001),
('Recuperado','2020-03-03',100002),
('Recuperado','2020-03-02',100002),
('Recuperado','2020-03-07',100001),
('Muerto','2020-03-02',100002),
('Activo','2020-03-08',100002),
('Recuperado','2020-03-09',100001),
('Muerto','2020-03-05',100002),
('Recuperado','2020-03-01',100002),
('Muerto','2020-03-05',100002),
('Recuperado','2020-03-01',100002),
('Activo','2020-03-04',100001),
('Activo','2020-03-01',100002),
('Activo','2020-03-05',100001),
('Recuperado','2020-03-09',100002),
('Activo','2020-03-02',100002),
('Recuperado','2020-03-09',100002),
('Muerto','2020-03-03',100001),
('Muerto','2020-03-04',100002),
('Muerto','2020-03-06',100002),
('Activo','2020-03-08',100002),
('Recuperado','2020-03-06',100002),
('Activo','2020-03-05',100001),
('Recuperado','2020-03-06',100002),
('Recuperado','2020-03-09',100001),
('Muerto','2020-03-03',100001),
('Muerto','2020-03-01',100002),
('Activo','2020-03-03',100002),
('Muerto','2020-03-02',100001),
('Recuperado','2020-03-09',100001),
('Activo','2020-03-02',100001),
('Recuperado','2020-03-09',100001),
('Activo','2020-03-06',100001),
('Activo','2020-03-05',100001),
('Recuperado','2020-03-08',100001),
('Activo','2020-03-07',100001),
('Recuperado','2020-03-01',100002),
('Recuperado','2020-03-04',100001),
('Activo','2020-03-09',100001),
('Recuperado','2020-03-06',100002),
('Muerto','2020-03-08',100001),
('Activo','2020-03-07',100001),
('Muerto','2020-03-04',100001),
('Muerto','2020-03-05',100001),
('Muerto','2020-03-02',100002),
('Muerto','2020-03-02',100002),
('Muerto','2020-03-01',100001),
('Recuperado','2020-03-07',100002),
('Activo','2020-03-02',100001),
('Recuperado','2020-03-09',100002),
('Activo','2020-03-07',100002),
('Muerto','2020-03-02',100001),
('Recuperado','2020-03-07',100001),
('Muerto','2020-03-08',100002),
('Recuperado','2020-03-06',100001),
('Activo','2020-03-02',100001),
('Recuperado','2020-03-07',100001),
('Recuperado','2020-03-03',100002),
('Recuperado','2020-03-08',100001),
('Recuperado','2020-03-06',100002),
('Muerto','2020-03-03',100002),
('Activo','2020-03-09',100002),
('Activo','2020-03-04',100002),
('Muerto','2020-03-02',100001),
('Muerto','2020-03-08',100001),
('Activo','2020-03-07',100001),
('Recuperado','2020-03-06',100002),
('Activo','2020-03-07',100002),
('Recuperado','2020-03-04',100002),
('Muerto','2020-03-08',100002),
('Recuperado','2020-03-06',100002),
('Muerto','2020-03-04',100001),
('Activo','2020-03-09',100001),
('Activo','2020-03-06',100002),
('Recuperado','2020-03-06',100002),
('Activo','2020-03-03',100001),
('Muerto','2020-03-06',100002),
('Activo','2020-03-03',100002),
('Recuperado','2020-03-09',100001),
('Muerto','2020-03-04',100002),
('Muerto','2020-03-07',100001),
('Muerto','2020-03-01',100001),
('Recuperado','2020-03-05',100001),
('Muerto','2020-03-07',100001),
('Muerto','2020-03-07',100002),
('Recuperado','2020-03-07',100001),
('Recuperado','2020-03-08',100001),
('Activo','2020-03-09',100001),
('Muerto','2020-03-06',100002),
('Muerto','2020-03-03',100002),
('Muerto','2020-03-06',100001),
('Recuperado','2020-03-04',100001),
('Muerto','2020-03-01',100001);
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
('Spain',2,'2020-02-30','2020-03-20'),
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
('225225','pepito1','papu','yes','yes',25,'Costa Rica','Costa Rica',1,'Activo'),
('334334','pepito2','papu','no','no',35,'Costa Rica','Spain',1,'Recuperado'),
('554554','pepito3','papu','no','no',45,'Spain','Costa Rica',1,'Activo');

INSERT INTO Patient_Pathologies 
VALUES
('225225','Covid'),
('334334','Denge'),
('554554','Covid');

INSERT INTO Patient_Medications 
VALUES
('225225',22),
('334334',22),
('554554',24);

INSERT INTO Contacted_Person 
VALUES
('225225','334334','colateral1','papu','mi casa','tortilla@gmail.com',20),
('554554','225225','colateral1','papu','mi casa x2','tortillita@gmail.com',21),
('774774','225225','colateral1','papu','mi casa x3','tortillon@gmail.com',22);

INSERT INTO Events 
VALUES
(1,'nuevo activo','2020-03-20','Costa Rica'),
(2,'nuevo muerto','2020-03-20','Costa Rica'),
(3,'nuevo activo','2020-03-20','Costa Rica'),
(4,'nuevo recuperado','2020-03-20','Costa Rica'),
(5,'nuevo activo','2020-03-21','Costa Rica'),
(6,'nuevo recuperado','2020-03-21','Costa Rica'),
(7,'nuevo activo','2020-03-21','Costa Rica'),
(8,'nuevo muerto','2020-03-21','Costa Rica'),
(9,'nuevo activo','2020-03-20','Costa Rica'),
(10,'nuevo muerto','2020-03-20','Costa Rica'),
(11,'nuevo activo','2020-03-20','Costa Rica'),
(12,'nuevo recuperado','2020-03-20','Costa Rica');
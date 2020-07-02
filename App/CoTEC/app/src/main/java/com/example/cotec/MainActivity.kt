package com.example.cotec

import android.content.Intent
import android.database.sqlite.SQLiteDatabase
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.Toast

/**
 * Pantalla de inicio con botones para especificar el servidor o bien realizar la populación
 */
class MainActivity : AppCompatActivity() {
    private var dataBaseAdmin:AdminSQLiteOpenHelper? = null
    private var dataBase:SQLiteDatabase? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        dataBaseAdmin =  AdminSQLiteOpenHelper(this)
        dataBase = dataBaseAdmin?.writableDatabase

    }

    fun onConfirm(view: View){
        val et1 = findViewById<EditText>(R.id.et1);
        val server = et1.text.toString()
        val int1 = Intent(this, PatientActivity::class.java)
        int1.putExtra("server", server)
        Toast.makeText(this,server,Toast.LENGTH_SHORT).show()
        startActivity(int1)
    }

    fun onPopulate(view: View){

        try {
            dataBase?.execSQL("INSERT INTO Continents (Name)\n" +
                    "VALUES\n" +
                    "    ('Asia'),\n" +
                    "    ('Europe'),\n" +
                    "    ('Africa'),\n" +
                    "    ('Oceania'),\n" +
                    "    ('North America'),\n" +
                    "    ('Antarctica'),\n" +
                    "    ('South America');\n")
            dataBase?.execSQL("INSERT INTO Countries (Name,Continent_Name)\n" +
                    "VALUES\n" +
                    "    ('Afghanistan','Asia'),\n" +
                    "    ('Albania','Europe'),\n" +
                    "    ('Algeria','Africa'),\n" +
                    "    ('American Samoa','Oceania'),\n" +
                    "    ('Andorra','Europe'),\n" +
                    "    ('Angola','Africa'),\n" +
                    "    ('Anguilla','North America'),\n" +
                    "    ('Antarctica','Antarctica'),\n" +
                    "    ('Antigua and Barbuda','North America'),\n" +
                    "    ('Argentina','South America'),\n" +
                    "    ('Armenia','Asia'),\n" +
                    "    ('Aruba','North America'),\n" +
                    "    ('Australia','Oceania'),\n" +
                    "    ('Austria','Europe'),\n" +
                    "    ('Azerbaijan','Asia'),\n" +
                    "    ('Bahamas','North America'),\n" +
                    "    ('Bahrain','Asia'),\n" +
                    "    ('Bangladesh','Asia'),\n" +
                    "    ('Barbados','North America'),\n" +
                    "    ('Belarus','Europe'),\n" +
                    "    ('Belgium','Europe'),\n" +
                    "    ('Belize','North America'),\n" +
                    "    ('Benin','Africa'),\n" +
                    "    ('Bermuda','North America'),\n" +
                    "    ('Bhutan','Asia'),\n" +
                    "    ('Bolivia','South America'),\n" +
                    "    ('Bosnia and Herzegovina','Europe'),\n" +
                    "    ('Botswana','Africa'),\n" +
                    "    ('Bouvet Island','Antarctica'),\n" +
                    "    ('Brazil','South America'),\n" +
                    "    ('British Indian Ocean Territory','Africa'),\n" +
                    "    ('Brunei','Asia'),\n" +
                    "    ('Bulgaria','Europe'),\n" +
                    "    ('Burkina Faso','Africa'),\n" +
                    "    ('Burundi','Africa'),\n" +
                    "    ('Cambodia','Asia'),\n" +
                    "    ('Cameroon','Africa'),\n" +
                    "    ('Canada','North America'),\n" +
                    "    ('Cape Verde','Africa'),\n" +
                    "    ('Cayman Islands','North America'),\n" +
                    "    ('Central African Republic','Africa'),\n" +
                    "    ('Chad','Africa'),\n" +
                    "    ('Chile','South America'),\n" +
                    "    ('China','Asia'),\n" +
                    "    ('Christmas Island','Oceania'),\n" +
                    "    ('Cocos (Keeling) Islands','Oceania'),\n" +
                    "    ('Colombia','South America'),\n" +
                    "    ('Comoros','Africa'),\n" +
                    "    ('Congo','Africa'),\n" +
                    "    ('Cook Islands','Oceania'),\n" +
                    "    ('Costa Rica','North America'),\n" +
                    "    ('Croatia','Europe'),\n" +
                    "    ('Cuba','North America'),\n" +
                    "    ('Cyprus','Asia'),\n" +
                    "    ('Czech Republic','Europe'),\n" +
                    "    ('Denmark','Europe'),\n" +
                    "    ('Djibouti','Africa'),\n" +
                    "    ('Dominica','North America'),\n" +
                    "    ('Dominican Republic','North America'),\n" +
                    "    ('East Timor','Asia'),\n" +
                    "    ('Ecuador','South America'),\n" +
                    "    ('Egypt','Africa'),\n" +
                    "    ('El Salvador','North America'),\n" +
                    "    ('England','Europe'),\n" +
                    "    ('Equatorial Guinea','Africa'),\n" +
                    "    ('Eritrea','Africa'),\n" +
                    "    ('Estonia','Europe'),\n" +
                    "    ('Ethiopia','Africa'),\n" +
                    "    ('Falkland Islands','South America'),\n" +
                    "    ('Faroe Islands','Europe'),\n" +
                    "    ('Fiji Islands','Oceania'),\n" +
                    "    ('Finland','Europe'),\n" +
                    "    ('France','Europe'),\n" +
                    "    ('French Guiana','South America'),\n" +
                    "    ('French Polynesia','Oceania'),\n" +
                    "    ('French Southern territories','Antarctica'),\n" +
                    "    ('Gabon','Africa'),\n" +
                    "    ('Gambia','Africa'),\n" +
                    "    ('Georgia','Asia'),\n" +
                    "    ('Germany','Europe'),\n" +
                    "    ('Ghana','Africa'),\n" +
                    "    ('Gibraltar','Europe'),\n" +
                    "    ('Greece','Europe'),\n" +
                    "    ('Greenland','North America'),\n" +
                    "    ('Grenada','North America'),\n" +
                    "    ('Guadeloupe','North America'),\n" +
                    "    ('Guam','Oceania'),\n" +
                    "    ('Guatemala','North America'),\n" +
                    "    ('Guinea','Africa'),\n" +
                    "    ('Guinea-Bissau','Africa'),\n" +
                    "    ('Guyana','South America'),\n" +
                    "    ('Haiti','North America'),\n" +
                    "    ('Heard Island and McDonald Islands','Antarctica'),\n" +
                    "    ('Holy See (Vatican City State)','Europe'),\n" +
                    "    ('Honduras','North America'),\n" +
                    "    ('Hong Kong','Asia'),\n" +
                    "    ('Hungary','Europe'),\n" +
                    "    ('Iceland','Europe'),\n" +
                    "    ('India','Asia'),\n" +
                    "    ('Indonesia','Asia'),\n" +
                    "    ('Iran','Asia'),\n" +
                    "    ('Iraq','Asia'),\n" +
                    "    ('Ireland','Europe'),\n" +
                    "    ('Israel','Asia'),\n" +
                    "    ('Italy','Europe'),\n" +
                    "    ('Ivory Coast','Africa'),\n" +
                    "    ('Jamaica','North America'),\n" +
                    "    ('Japan','Asia'),\n" +
                    "    ('Jordan','Asia'),\n" +
                    "    ('Kazakhstan','Asia'),\n" +
                    "    ('Kenya','Africa'),\n" +
                    "    ('Kiribati','Oceania'),\n" +
                    "    ('Kuwait','Asia'),\n" +
                    "    ('Kyrgyzstan','Asia'),\n" +
                    "    ('Laos','Asia'),\n" +
                    "    ('Latvia','Europe'),\n" +
                    "    ('Lebanon','Asia'),\n" +
                    "    ('Lesotho','Africa'),\n" +
                    "    ('Liberia','Africa'),\n" +
                    "    ('Libyan Arab Jamahiriya','Africa'),\n" +
                    "    ('Liechtenstein','Europe'),\n" +
                    "    ('Lithuania','Europe'),\n" +
                    "    ('Luxembourg','Europe'),\n" +
                    "    ('Macao','Asia'),\n" +
                    "    ('North Macedonia','Europe'),\n" +
                    "    ('Madagascar','Africa'),\n" +
                    "    ('Malawi','Africa'),\n" +
                    "    ('Malaysia','Asia'),\n" +
                    "    ('Maldives','Asia'),\n" +
                    "    ('Mali','Africa'),\n" +
                    "    ('Malta','Europe'),\n" +
                    "    ('Marshall Islands','Oceania'),\n" +
                    "    ('Martinique','North America'),\n" +
                    "    ('Mauritania','Africa'),\n" +
                    "    ('Mauritius','Africa'),\n" +
                    "    ('Mayotte','Africa'),\n" +
                    "    ('Mexico','North America'),\n" +
                    "    ('Micronesia, Federated States of','Oceania'),\n" +
                    "    ('Moldova','Europe'),\n" +
                    "    ('Monaco','Europe'),\n" +
                    "    ('Mongolia','Asia'),\n" +
                    "    ('Montenegro','Europe'),\n" +
                    "    ('Montserrat','North America'),\n" +
                    "    ('Morocco','Africa'),\n" +
                    "    ('Mozambique','Africa'),\n" +
                    "    ('Myanmar','Asia'),\n" +
                    "    ('Namibia','Africa'),\n" +
                    "    ('Nauru','Oceania'),\n" +
                    "    ('Nepal','Asia'),\n" +
                    "    ('Netherlands','Europe'),\n" +
                    "    ('Netherlands Antilles','North America'),\n" +
                    "    ('New Caledonia','Oceania'),\n" +
                    "    ('New Zealand','Oceania'),\n" +
                    "    ('Nicaragua','North America'),\n" +
                    "    ('Niger','Africa'),\n" +
                    "    ('Nigeria','Africa'),\n" +
                    "    ('Niue','Oceania'),\n" +
                    "    ('Norfolk Island','Oceania'),\n" +
                    "    ('North Korea','Asia'),\n" +
                    "    ('Northern Ireland','Europe'),\n" +
                    "    ('Northern Mariana Islands','Oceania'),\n" +
                    "    ('Norway','Europe'),\n" +
                    "    ('Oman','Asia'),\n" +
                    "    ('Pakistan','Asia'),\n" +
                    "    ('Palau','Oceania'),\n" +
                    "    ('Palestine','Asia'),\n" +
                    "    ('Panama','North America'),\n" +
                    "    ('Papua New Guinea','Oceania'),\n" +
                    "    ('Paraguay','South America'),\n" +
                    "    ('Peru','South America'),\n" +
                    "    ('Philippines','Asia'),\n" +
                    "    ('Pitcairn','Oceania'),\n" +
                    "    ('Poland','Europe'),\n" +
                    "    ('Portugal','Europe'),\n" +
                    "    ('Puerto Rico','North America'),\n" +
                    "    ('Qatar','Asia'),\n" +
                    "    ('Reunion','Africa'),\n" +
                    "    ('Romania','Europe'),\n" +
                    "    ('Russian Federation','Europe'),\n" +
                    "    ('Rwanda','Africa'),\n" +
                    "    ('Saint Helena','Africa'),\n" +
                    "    ('Saint Kitts and Nevis','North America'),\n" +
                    "    ('Saint Lucia','North America'),\n" +
                    "    ('Saint Pierre and Miquelon','North America'),\n" +
                    "    ('Saint Vincent and the Grenadines','North America'),\n" +
                    "    ('Samoa','Oceania'),\n" +
                    "    ('San Marino','Europe'),\n" +
                    "    ('Sao Tome and Principe','Africa'),\n" +
                    "    ('Saudi Arabia','Asia'),\n" +
                    "    ('Scotland','Europe'),\n" +
                    "    ('Senegal','Africa'),\n" +
                    "    ('Seychelles','Africa'),\n" +
                    "    ('Sierra Leone','Africa'),\n" +
                    "    ('Singapore','Asia'),\n" +
                    "    ('Slovakia','Europe'),\n" +
                    "    ('Slovenia','Europe'),\n" +
                    "    ('Solomon Islands','Oceania'),\n" +
                    "    ('Somalia','Africa'),\n" +
                    "    ('South Africa','Africa'),\n" +
                    "    ('South Georgia and the South Sandwich Islands','Antarctica'),\n" +
                    "    ('South Korea','Asia'),\n" +
                    "    ('South Sudan','Africa'),\n" +
                    "    ('Spain','Europe'),\n" +
                    "    ('Sri Lanka','Asia'),\n" +
                    "    ('Sudan','Africa'),\n" +
                    "    ('Suriname','South America'),\n" +
                    "    ('Svalbard and Jan Mayen','Europe'),\n" +
                    "    ('Swaziland','Africa'),\n" +
                    "    ('Sweden','Europe'),\n" +
                    "    ('Switzerland','Europe'),\n" +
                    "    ('Syria','Asia'),\n" +
                    "    ('Tajikistan','Asia'),\n" +
                    "    ('Tanzania','Africa'),\n" +
                    "    ('Thailand','Asia'),\n" +
                    "    ('The Democratic Republic of Congo','Africa'),\n" +
                    "    ('Togo','Africa'),\n" +
                    "    ('Tokelau','Oceania'),\n" +
                    "    ('Tonga','Oceania'),\n" +
                    "    ('Trinidad and Tobago','North America'),\n" +
                    "    ('Tunisia','Africa'),\n" +
                    "    ('Turkey','Asia'),\n" +
                    "    ('Turkmenistan','Asia'),\n" +
                    "    ('Turks and Caicos Islands','North America'),\n" +
                    "    ('Tuvalu','Oceania'),\n" +
                    "    ('Uganda','Africa'),\n" +
                    "    ('Ukraine','Europe'),\n" +
                    "    ('United Arab Emirates','Asia'),\n" +
                    "    ('United Kingdom','Europe'),\n" +
                    "    ('United States','North America'),\n" +
                    "    ('United States Minor Outlying Islands','Oceania'),\n" +
                    "    ('Uruguay','South America'),\n" +
                    "    ('Uzbekistan','Asia'),\n" +
                    "    ('Vanuatu','Oceania'),\n" +
                    "    ('Venezuela','South America'),\n" +
                    "    ('Vietnam','Asia'),\n" +
                    "    ('Virgin Islands, British','North America'),\n" +
                    "    ('Virgin Islands, U.S.','North America'),\n" +
                    "    ('Wales','Europe'),\n" +
                    "    ('Wallis and Futuna','Oceania'),\n" +
                    "    ('Western Sahara','Africa'),\n" +
                    "    ('Yemen','Asia'),\n" +
                    "    ('Yugoslavia','Europe'),\n" +
                    "    ('Zambia','Africa'),\n" +
                    "    ('Zimbabwe','Africa');\n")
            dataBase?.execSQL("INSERT INTO CountryLocations (Name,Country_Name)\n" +
                    "VALUES \n" +
                    "    ('Heredia','Costa Rica'),\n" +
                    "    ('Alajuela','Costa Rica'),\n" +
                    "    ('Limón','Costa Rica'),\n" +
                    "    ('San Jośe','Costa Rica'),\n" +
                    "    ('Cartago','Costa Rica'),\n" +
                    "    ('Puntarenas','Costa Rica'),\n" +
                    "    ('Guanacaste','Costa Rica');\n")
            dataBase?.execSQL("INSERT INTO SanityMeasurements (Id,Name,Description) \n" +
                    "VALUES \n" +
                    "(1,'Cierre de aeropuertos','No se permiten vuelos internacionales'),\n" +
                    "(2,'Mascara obligatoria','Se obliga a todos los ciudadanos a llevar máscara para salir'),\n" +
                    "(3,'Restricción vehicular','Se prohibe circular a ciertos vehículos dependiendo del día y la placa');\n")
            dataBase?.execSQL("INSERT INTO EnforcedMeasurements (Country_Name,Measurement_Id,Start_Date,End_Date)\n" +
                    "VALUES\n" +
                    "('Spain',1,'2020-01-20','2020-03-20'),\n" +
                    "('Spain',3,'2020-02-20','2020-03-20'),\n" +
                    "('Spain',2,'2020-02-25','2020-03-20'),\n" +
                    "('Costa Rica',1,'2020-03-20','2020-05-20');\n")
            dataBase?.execSQL("INSERT INTO Hospitals (Id,Name,ICU_Capacity,Capacity,Manager_Name,Phone)\n" +
                    "VALUES\n" +
                    "(1,'Hospital del sur',7,80,'Pepito','22223333'),\n" +
                    "(3,'Hospital del norte',10,200,'Pepito','22224444'),\n" +
                    "(4,'Hospital del este',5,150,'Pepito','33332222');\n")
            dataBase?.execSQL("INSERT INTO Hospital_ICUs (ICU_Patient,Hospital_Id)\n" +
                    "VALUES\n" +
                    "('225225',1),\n" +
                    "('334334',3),\n" +
                    "('554554',3);\n")
            dataBase?.execSQL("INSERT INTO Hospital_Patients (Patient,Hospital_Id)\n" +
                    "VALUES\n" +
                    "('225225',1),\n" +
                    "('334334',4),\n" +
                    "('554554',4);\n" +
                    "\n")
            dataBase?.execSQL("INSERT INTO Medications (Id,Name,Provider)\n" +
                    "VALUES\n" +
                    "(22,'paracetamol','pulpería'),\n" +
                    "(23,'sopita','pulpería'),\n" +
                    "(24,'hierba','farmacia');\n")
            dataBase?.execSQL("INSERT INTO Hospital_Medications (Hospital_Id,Medication_Id)\n" +
                    "VALUES\n" +
                    "(1,22),\n" +
                    "(3,23),\n" +
                    "(4,24);\n")
            dataBase?.execSQL("INSERT INTO Pathologies (Name,Symptoms,Description,Treatment)\n" +
                    "VALUES\n" +
                    "('Ebola','hemorragia','solo en africa','no hay'),\n" +
                    "('Covid','tos','mundial','respirador'),\n" +
                    "('Denge','fiebre','mosquitos','antiinflamatorios');\n")
            dataBase?.execSQL("INSERT INTO Patient_Status (Name)\n" +
                    "VALUES\n" +
                    "('Muerto'),\n" +
                    "('Activo'),\n" +
                    "('Recuperado');\n" +
                    "\n")
            dataBase?.execSQL("INSERT INTO Patients (SSN,First_Name,Last_Name,Hospitalized,ICU,Age,Residence,Country_Birth,Hospital_Id,Status)\n" +
                    "VALUES\n" +
                    "(100000,'pepito1','tortilla1',1,1,25,'Costa Rica','Costa Rica',1,'Activo'),\n" +
                    "(100001,'pepito2','tortilla2',0,0,35,'Costa Rica','Spain',1,'Recuperado'),\n" +
                    "(100002,'pepito3','tortilla3',0,0,45,'Spain','Costa Rica',1,'Activo');\n")
            dataBase?.execSQL("INSERT INTO Patient_Pathologies (Patient_SSN,Pathology_Name)\n" +
                    "VALUES\n" +
                    "(100001,'Covid'),\n" +
                    "(100002,'Denge'),\n" +
                    "(100000,'Covid');\n")
            dataBase?.execSQL("INSERT INTO Patient_Medications (Patient_SSN,Medication_Id)\n" +
                    "VALUES\n" +
                    "(100001,22),\n" +
                    "(100002,22),\n" +
                    "(100000,24);\n")
            dataBase?.execSQL("INSERT INTO Contacted_Person (SSN,Patient_SSN,First_Name,Last_Name,Address,Email,Age)\n" +
                    "VALUES\n" +
                    "(100003,100001,'colateral1','papita1','mi casa','tortilla@gmail.com',20),\n" +
                    "(100004,100001,'colateral2','papita2','mi casa x2','tortillita@gmail.com',21),\n" +
                    "(100005,100000,'colateral3','papita3','mi casa x3','tortillon@gmail.com',22);\n")


            Toast.makeText(this,"Success",Toast.LENGTH_SHORT).show()
        }
        catch (e:Exception)
        {
            Toast.makeText(this,e.toString(),Toast.LENGTH_LONG).show()
            Log.i("ERROR",e.toString())
        }
    }
}

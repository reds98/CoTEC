package com.example.cotec
import android.content.Context
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper

class AdminSQLiteOpenHelper(context: Context):SQLiteOpenHelper(context, "CoTecDB", null, 2) {

    override fun onCreate(DB: SQLiteDatabase) {
        DB.execSQL("CREATE TABLE Continents (\n" +
                "    Name varchar(20) NOT NULL PRIMARY KEY\n" +
                ");")
        DB.execSQL("CREATE TABLE Countries (\n" +
                "    Name varchar(45) NOT NULL PRIMARY KEY,\n" +
                "    Continent_Name varchar(20),\n" +
                "    FOREIGN KEY (Continent_Name) REFERENCES Continents(Name)\n" +
                ");")
        DB.execSQL("CREATE TABLE CountryLocations (\n" +
                "    Id INTEGER PRIMARY KEY AUTOINCREMENT,\n" +
                "    Name varchar(60) ,\n" +
                "    Country_Name varchar(45),\n" +
                "    FOREIGN KEY (Country_Name) REFERENCES Countries(Name)\n" +
                ");\n")
        DB.execSQL("CREATE TABLE SanityMeasurements (\n" +
                "    Id int NOT NULL PRIMARY KEY,\n" +
                "    Name varchar(50),\n" +
                "    Description varchar(255)\n" +
                ");\n")
        DB.execSQL("CREATE TABLE EnforcedMeasurements (\n" +
                "    Id INTEGER PRIMARY KEY AUTOINCREMENT,\n" +
                "    Country_Name varchar(45),\n" +
                "    Measurement_Id int,\n" +
                "    Start_Date DATE,\n" +
                "    End_Date DATE,\n" +
                "    FOREIGN KEY (Measurement_Id) REFERENCES SanityMeasurements(Id),\n" +
                "    FOREIGN KEY (Country_Name) REFERENCES Countries(Name)\n" +
                ");\n")
        DB.execSQL("CREATE TABLE Hospitals (\n" +
                "    Id int NOT NULL PRIMARY KEY,\n" +
                "    Name varchar(64),\n" +
                "    ICU_Capacity int,\n" +
                "    Capacity int,\n" +
                "    Manager_Name varchar(60),\n" +
                "    Phone varchar(12),\n" +
                "    Country_Name varchar(45),\n" +
                "    FOREIGN KEY (Country_Name) REFERENCES Countries(Name)\n" +
                ");\n")
        DB.execSQL("CREATE TABLE Hospital_Patients (\n" +
                "    Id INTEGER PRIMARY KEY AUTOINCREMENT,\n" +
                "    Patient varchar(255),\n" +
                "    Hospital_Id int,\n" +
                "    FOREIGN KEY (Hospital_Id) REFERENCES Hospitals(Id)\n" +
                ");\n")
        DB.execSQL("CREATE TABLE Hospital_ICUs (\n" +
                "    Id INTEGER PRIMARY KEY AUTOINCREMENT,\n" +
                "    ICU_Patient varchar(255),\n" +
                "    Hospital_Id int,\n" +
                "    FOREIGN KEY (Hospital_Id) REFERENCES Hospitals(Id)\n" +
                ");\n")
        DB.execSQL("CREATE TABLE Medications (\n" +
                "    Id int NOT NULL PRIMARY KEY,\n" +
                "    Name varchar(60),\n" +
                "    Provider varchar(60)\n" +
                ");\n")
        DB.execSQL("CREATE TABLE Hospital_Medications (\n" +
                "    Id INTEGER PRIMARY KEY AUTOINCREMENT,\n" +
                "    Hospital_Id int,\n" +
                "    Medication_Id int,\n" +
                "    FOREIGN KEY (Medication_Id) REFERENCES Medications(Id),\n" +
                "    FOREIGN KEY (Hospital_Id) REFERENCES Hospitals(Id)\n" +
                ");\n")
        DB.execSQL("CREATE TABLE Pathologies (\n" +
                "    Name varchar(60) NOT NULL PRIMARY KEY,\n" +
                "    Symptoms varchar(255),\n" +
                "    Description varchar(255),\n" +
                "    Treatment varchar(255)\n" +
                ");\n")
        DB.execSQL("CREATE TABLE Patient_Status (\n" +
                "    Name varchar(30) NOT NULL PRIMARY KEY\n" +
                ");\n")
        DB.execSQL("CREATE TABLE Patients (\n" +
                "    SSN int NOT NULL PRIMARY KEY,\n" +
                "    First_Name varchar(60),\n" +
                "    Last_Name varchar(60),\n" +
                "    Hospitalized BIT,\n" +
                "    ICU BIT,\n" +
                "    Age int,\n" +
                "    Residence varchar(45),\n" +
                "    Country_Birth varchar(45),\n" +
                "    Hospital_Id int,\n" +
                "    Status varchar(30),\n" +
                "    FOREIGN KEY (Residence) REFERENCES Countries(Name),\n" +
                "    FOREIGN KEY (Country_Birth) REFERENCES Countries(Name),\n" +
                "    FOREIGN KEY (Hospital_Id) REFERENCES Hospitals(Id),\n" +
                "    FOREIGN KEY (Status) REFERENCES Patient_Status(Name)\n" +
                "\n" +
                ");\n")
        DB.execSQL("CREATE TABLE Patient_Pathologies (\n" +
                "    Id INTEGER PRIMARY KEY AUTOINCREMENT,\n" +
                "    Patient_SSN int,\n" +
                "    Pathology_Name varchar(60),\n" +
                "    FOREIGN KEY (Patient_SSN) REFERENCES Patients(SSN),\n" +
                "    FOREIGN KEY (Pathology_Name) REFERENCES Pathologies(Name)\n" +
                ");\n")
        DB.execSQL("CREATE TABLE Patient_Medications (\n" +
                "    Id INTEGER PRIMARY KEY AUTOINCREMENT,\n" +
                "    Patient_SSN int,\n" +
                "    Medication_Id int,\n" +
                "    FOREIGN KEY (Patient_SSN) REFERENCES Patients(SSN),\n" +
                "    FOREIGN KEY (Medication_Id) REFERENCES Medications(Id)\n" +
                ");\n")
        DB.execSQL("CREATE TABLE Contacted_Person (\n" +
                "    Id INTEGER PRIMARY KEY AUTOINCREMENT,\n" +
                "    SSN int,\n" +
                "    Patient_SSN int,\n" +
                "    First_Name varchar(60),\n" +
                "    Last_Name varchar(60),\n" +
                "    Address varchar(60),\n" +
                "    Email varchar(60),\n" +
                "    Age int,\n" +
                "    FOREIGN KEY (Patient_SSN) REFERENCES Patients(SSN)\n" +
                ");\n")
        DB.execSQL("CREATE TABLE Events (\n" +
                "    Id INTEGER PRIMARY KEY AUTOINCREMENT,\n" +
                "    Status_Event varchar(30),\n" +
                "    Date DATE,\n" +
                "    Patient_SSN int,\n" +
                "    FOREIGN KEY (Patient_SSN) REFERENCES Patients(SSN),\n" +
                "    FOREIGN KEY (Status_Event) REFERENCES Patient_Status(Name)\n" +
                ");\n")


    }

    override fun onUpgrade(DB: SQLiteDatabase, p1: Int, p2: Int) {
        DB.execSQL("DROP TABLE IF EXISTS Continents")
        DB.execSQL("DROP TABLE IF EXISTS Countries")
        DB.execSQL("DROP TABLE IF EXISTS CountryLocations")
        DB.execSQL("DROP TABLE IF EXISTS SanityMeasurements")
        DB.execSQL("DROP TABLE IF EXISTS EnforcedMeasurements")
        DB.execSQL("DROP TABLE IF EXISTS Hospitals")
        DB.execSQL("DROP TABLE IF EXISTS Hospital_Patients")
        DB.execSQL("DROP TABLE IF EXISTS Hospital_ICUs")
        DB.execSQL("DROP TABLE IF EXISTS Medications")
        DB.execSQL("DROP TABLE IF EXISTS Hospital_Medications")
        DB.execSQL("DROP TABLE IF EXISTS Pathologies")
        DB.execSQL("DROP TABLE IF EXISTS Patient_Status")
        DB.execSQL("DROP TABLE IF EXISTS Patients")
        DB.execSQL("DROP TABLE IF EXISTS Patient_Pathologies")
        DB.execSQL("DROP TABLE IF EXISTS Patient_Medications")
        DB.execSQL("DROP TABLE IF EXISTS Contacted_Person")
        DB.execSQL("DROP TABLE IF EXISTS Events")
        onCreate(DB)

    }

}
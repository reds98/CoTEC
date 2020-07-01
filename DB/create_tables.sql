USE master;
DROP DATABASE CoTecDB;
/*
Script para crear todas las tablas de la base de datos
Autor: Juan Pablo Alvarado
*/
CREATE DATABASE CoTecDB;

USE CoTecDB;

CREATE TABLE Continents (
    Name varchar(20) NOT NULL PRIMARY KEY
);

CREATE TABLE Countries (
    Name varchar(45) NOT NULL PRIMARY KEY,
    Continent_Name varchar(20),
    FOREIGN KEY (Continent_Name) REFERENCES Continents(Name)
);

CREATE TABLE CountryLocations (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Name varchar(60) ,
    Country_Name varchar(45),
    FOREIGN KEY (Country_Name) REFERENCES Countries(Name)
);

CREATE TABLE SanityMeasurements (
    Id int NOT NULL PRIMARY KEY,
    Name varchar(50),
    Description varchar(255)
);

CREATE TABLE EnforcedMeasurements (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Country_Name varchar(45),
    Measurement_Id int,
    Start_Date DATE,
    End_Date DATE,
    FOREIGN KEY (Measurement_Id) REFERENCES SanityMeasurements(Id),
    FOREIGN KEY (Country_Name) REFERENCES Countries(Name)
);

CREATE TABLE Hospitals (
    Id int NOT NULL PRIMARY KEY,
    Name varchar(64),
    ICU_Capacity int,
    Capacity int,
    Manager_Name varchar(60),
    Phone varchar(12),
    Country_Name varchar(45),
    FOREIGN KEY (Country_Name) REFERENCES Countries(Name)
);

CREATE TABLE Hospital_Patients (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Patient varchar(255),
    Hospital_Id int,
    FOREIGN KEY (Hospital_Id) REFERENCES Hospitals(Id)
);

CREATE TABLE Hospital_ICUs (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    ICU_Patient varchar(255),
    Hospital_Id int,
    FOREIGN KEY (Hospital_Id) REFERENCES Hospitals(Id)
);

CREATE TABLE Medications (
    Id int NOT NULL PRIMARY KEY,
    Name varchar(60),
    Provider varchar(60)
);

CREATE TABLE Hospital_Medications (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Hospital_Id int,
    Medication_Id int,
    FOREIGN KEY (Medication_Id) REFERENCES Medications(Id),
    FOREIGN KEY (Hospital_Id) REFERENCES Hospitals(Id)
);

CREATE TABLE Pathologies (
    Name varchar(60) NOT NULL PRIMARY KEY,
    Symptoms varchar(255),
    Description varchar(255),
    Treatment varchar(255)
);

CREATE TABLE Patient_Status (
    Name varchar(30) NOT NULL PRIMARY KEY
);

CREATE TABLE Patients (
    SSN int NOT NULL PRIMARY KEY,
    First_Name varchar(60),
    Last_Name varchar(60),
    Hospitalized BIT,
    ICU BIT,
    Age int,
    Residence varchar(45),
    Country_Birth varchar(45),
    Hospital_Id int,
    Status varchar(30),
    FOREIGN KEY (Residence) REFERENCES Countries(Name),
    FOREIGN KEY (Country_Birth) REFERENCES Countries(Name),
    FOREIGN KEY (Hospital_Id) REFERENCES Hospitals(Id),
    FOREIGN KEY (Status) REFERENCES Patient_Status(Name)

);

CREATE TABLE Patient_Pathologies (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Patient_SSN int,
    Pathology_Name varchar(60),
    FOREIGN KEY (Patient_SSN) REFERENCES Patients(SSN),
    FOREIGN KEY (Pathology_Name) REFERENCES Pathologies(Name)
);

CREATE TABLE Patient_Medications (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Patient_SSN int,
    Medication_Id int,
    FOREIGN KEY (Patient_SSN) REFERENCES Patients(SSN),
    FOREIGN KEY (Medication_Id) REFERENCES Medications(Id)
);


CREATE TABLE Contacted_Person (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    SSN int,
    Patient_SSN int,
    First_Name varchar(60),
    Last_Name varchar(60),
    Address varchar(60),
    Email varchar(60),
    Age int,
    FOREIGN KEY (Patient_SSN) REFERENCES Patients(SSN)
);


CREATE TABLE Events (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Status_Event varchar(30),
    Date DATE,
    Patient_SSN int,
    FOREIGN KEY (Patient_SSN) REFERENCES Patients(SSN),
    FOREIGN KEY (Status_Event) REFERENCES Patient_Status(Name)
);

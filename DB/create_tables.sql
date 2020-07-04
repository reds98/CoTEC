--USE master;
--DROP DATABASE CoTecDB;
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
    Continent_Name varchar(20) FOREIGN KEY REFERENCES Continents(Name)
);

CREATE TABLE CountryLocations (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Name varchar(60) ,
    Country_Name varchar(45) FOREIGN KEY REFERENCES Countries(Name),
);

CREATE TABLE SanityMeasurements (
    Id int NOT NULL PRIMARY KEY,
    Name varchar(50),
    Description varchar(255)
);

CREATE TABLE EnforcedMeasurements (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Country_Name varchar(45) FOREIGN KEY REFERENCES Countries(Name),
    Measurement_Id int FOREIGN KEY REFERENCES SanityMeasurements(Id),
    Start_Date DATE,
    End_Date DATE,
);

CREATE TABLE Hospitals (
    Id int NOT NULL PRIMARY KEY,
    Name varchar(64),
    ICU_Capacity int,
    Capacity int,
    Manager_Name varchar(60),
    Phone varchar(12),
    Country_Name varchar(45) FOREIGN KEY REFERENCES Countries(Name)
);

CREATE TABLE Hospital_Patients (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Patient varchar(255),
    Hospital_Id int FOREIGN KEY REFERENCES Hospitals(Id),
);

CREATE TABLE Hospital_ICUs (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    ICU_Patient varchar(255),
    Hospital_Id int FOREIGN KEY REFERENCES Hospitals(Id)
);

CREATE TABLE Medications (
    Id int NOT NULL PRIMARY KEY,
    Name varchar(60),
    Provider varchar(60),
);

CREATE TABLE Hospital_Medications (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Hospital_Id int FOREIGN KEY REFERENCES Hospitals(Id),
    Medication_Id int FOREIGN KEY REFERENCES Medications(Id),
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
    Residence varchar(45) FOREIGN KEY REFERENCES Countries(Name),
    Country_Birth varchar(45) FOREIGN KEY REFERENCES Countries(Name),
    Hospital_Id int FOREIGN KEY REFERENCES Hospitals(Id),
    Status varchar(30) FOREIGN KEY REFERENCES Patient_Status(Name),
);

CREATE TABLE Patient_Pathologies (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Patient_SSN int FOREIGN KEY REFERENCES Patients(SSN),
    Pathology_Name varchar(60) FOREIGN KEY REFERENCES Pathologies(Name)
);

CREATE TABLE Patient_Medications (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Patient_SSN int FOREIGN KEY REFERENCES Patients(SSN),
    Medication_Id int FOREIGN KEY REFERENCES Medications(Id),
);


CREATE TABLE Contacted_Person (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    SSN int,
    Patient_SSN int FOREIGN KEY REFERENCES Patients(SSN),
    First_Name varchar(60),
    Last_Name varchar(60),
    Address varchar(60),
    Email varchar(60),
    Age int
);


CREATE TABLE Events (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Status_Event varchar(30) FOREIGN KEY REFERENCES Patient_Status(Name),
    Date DATE,
    Patient_SSN int FOREIGN KEY REFERENCES Patients(SSN)
);

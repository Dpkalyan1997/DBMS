-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-03 16:24:54.005

-- tables
-- Table: Bill
CREATE TABLE Bill (
    id int  NOT NULL,
    Patient_id int  NOT NULL,
    Doctor_id int  NOT NULL,
    Pharmacy_id int  NOT NULL,
    amount int  NOT NULL,
    date Varchar(8)  NOT NULL,
    CONSTRAINT Bill_pk PRIMARY KEY  (id)
);

-- Table: Doctor
CREATE TABLE Doctor (
    id int  NOT NULL,
    name Varchar(30)  NOT NULL,
    specialization Varchar(30)  NOT NULL,
    contact int  NOT NULL,
    CONSTRAINT Doctor_pk PRIMARY KEY  (id)
);

-- Table: Insurance
CREATE TABLE Insurance (
    id int  NOT NULL,
    amount int  NOT NULL,
    validTill Varchar(8)  NOT NULL,
    CONSTRAINT Insurance_pk PRIMARY KEY  (id)
);

-- Table: Patient
CREATE TABLE Patient (
    id int  NOT NULL,
    name Varchar(25)  NOT NULL,
    age int  NOT NULL,
    contact int  NOT NULL,
    Insurance_id int  NOT NULL,
    CONSTRAINT Patient_pk PRIMARY KEY  (id)
);

-- Table: Pharmacy
CREATE TABLE Pharmacy (
    id int  NOT NULL,
    name Varchar(30)  NOT NULL,
    qnty int  NOT NULL,
    validTill Varchar(8)  NOT NULL,
    CONSTRAINT Pharmacy_pk PRIMARY KEY  (id)
);

-- foreign keys
-- Reference: Bill_Doctor (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Doctor
    FOREIGN KEY (Doctor_id)
    REFERENCES Doctor (id);

-- Reference: Bill_Patient (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Patient
    FOREIGN KEY (Patient_id)
    REFERENCES Patient (id);

-- Reference: Bill_Pharmacy (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Pharmacy
    FOREIGN KEY (Pharmacy_id)
    REFERENCES Pharmacy (id);

-- Reference: Patient_Insurance (table: Patient)
ALTER TABLE Patient ADD CONSTRAINT Patient_Insurance
    FOREIGN KEY (Insurance_id)
    REFERENCES Insurance (id);

-- End of file.


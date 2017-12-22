--------------------------------------------------------
--  File created - Friday-December-29-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View VIEW1
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."VIEW1" ("USER_ID", "USERNAME", "PASSWORD") AS 
  SELECT 
   "USER_ID","USERNAME","PASSWORD" 
FROM account
;
--------------------------------------------------------
--  DDL for Table KONTAKT
--------------------------------------------------------

  CREATE TABLE "HR"."KONTAKT" 
   (	"ID_KONTAKT" NUMBER(*,0), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"TELEFON" VARCHAR2(30 BYTE), 
	"ADRESA" VARCHAR2(80 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KORISNIK
--------------------------------------------------------

  CREATE TABLE "HR"."KORISNIK" 
   (	"KORISNICKO" VARCHAR2(30 BYTE), 
	"IME" VARCHAR2(40 BYTE), 
	"PREZIME" VARCHAR2(40 BYTE), 
	"DATUM" VARCHAR2(60 BYTE), 
	"FK_KONTAKT" NUMBER(*,0), 
	"POL" CHAR(1 BYTE), 
	"SIFRA" VARCHAR2(60 BYTE), 
	"OZNAKA_KORISNIKA" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KUPOVINA
--------------------------------------------------------

  CREATE TABLE "HR"."KUPOVINA" 
   (	"ID_KUPOVINA" NUMBER(*,0), 
	"FK_PROIZOVD" NUMBER, 
	"FK_KORISNIK" VARCHAR2(20 BYTE), 
	"DATUM" DATE, 
	"IZNOS" NUMBER, 
	"NACIN_PLACANJA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROIZVOD
--------------------------------------------------------

  CREATE TABLE "HR"."PROIZVOD" 
   (	"PROIZVOD_ID" NUMBER(*,0), 
	"NAZIV" VARCHAR2(20 BYTE), 
	"KOLICINA" NUMBER(*,0), 
	"CENA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TEST
--------------------------------------------------------

  CREATE TABLE "HR"."TEST" 
   (	"COLUMN1" NUMBER(*,0), 
	"A" VARCHAR2(20 BYTE), 
	"B" VARCHAR2(20 BYTE), 
	"C" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TEST2
--------------------------------------------------------

  CREATE TABLE "HR"."TEST2" 
   (	"COLUMN1" NUMBER(*,0), 
	"DATUM" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Sequence ACCOUNT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."ACCOUNT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ADRESA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."ADRESA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ADRESA_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."ADRESA_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KATEGORIJA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KATEGORIJA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KONTAKT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KONTAKT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KONTAKT_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KONTAKT_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KONTAKT_SEQ2
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KONTAKT_SEQ2"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KORISNIK_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KORISNIK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KORISNIK_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KORISNIK_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KORISNIK_SEQ2
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KORISNIK_SEQ2"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KORISNIK_SEQ3
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KORISNIK_SEQ3"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KORISNIK_SEQ4
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KORISNIK_SEQ4"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KUPAC_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KUPAC_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KUPOVINA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KUPOVINA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KUPOVINA_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KUPOVINA_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LICNIPODACI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."LICNIPODACI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRODUCT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."PRODUCT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROFIL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."PROFIL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROIZVOD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."PROIZVOD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PURCHASE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."PURCHASE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REGISTRACIJA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."REGISTRACIJA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REGISTRACIJA_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."REGISTRACIJA_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REGISTRACIJA_SEQ2
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."REGISTRACIJA_SEQ2"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REGISTRACIJA_SEQ3
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."REGISTRACIJA_SEQ3"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REGISTRATION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."REGISTRATION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STUDENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."STUDENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TEST2_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."TEST2_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TEST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."TEST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into HR.KONTAKT
SET DEFINE OFF;
Insert into HR.KONTAKT (ID_KONTAKT,EMAIL,TELEFON,ADRESA) values (15,'user@gmail.com',null,null);
Insert into HR.KONTAKT (ID_KONTAKT,EMAIL,TELEFON,ADRESA) values (14,'asd@gmail.com',null,null);
REM INSERTING into HR.KORISNIK
SET DEFINE OFF;
Insert into HR.KORISNIK (KORISNICKO,IME,PREZIME,DATUM,FK_KONTAKT,POL,SIFRA,OZNAKA_KORISNIKA) values ('asd','asd','asd','Sep 30, 2009',15,'m','123',null);
Insert into HR.KORISNIK (KORISNICKO,IME,PREZIME,DATUM,FK_KONTAKT,POL,SIFRA,OZNAKA_KORISNIKA) values ('admin','stefan','simic','Avg 20, 1993',14,'m','123','a');
REM INSERTING into HR.KUPOVINA
SET DEFINE OFF;
REM INSERTING into HR.PROIZVOD
SET DEFINE OFF;
Insert into HR.PROIZVOD (PROIZVOD_ID,NAZIV,KOLICINA,CENA) values (7,'asd',2,2);
Insert into HR.PROIZVOD (PROIZVOD_ID,NAZIV,KOLICINA,CENA) values (8,'piza',1,32);
Insert into HR.PROIZVOD (PROIZVOD_ID,NAZIV,KOLICINA,CENA) values (14,'mandarina',4,13);
Insert into HR.PROIZVOD (PROIZVOD_ID,NAZIV,KOLICINA,CENA) values (15,'nutela',12,230);
Insert into HR.PROIZVOD (PROIZVOD_ID,NAZIV,KOLICINA,CENA) values (3,'Cokoladica',32,40);
Insert into HR.PROIZVOD (PROIZVOD_ID,NAZIV,KOLICINA,CENA) values (1,'Smoki',110,45);
Insert into HR.PROIZVOD (PROIZVOD_ID,NAZIV,KOLICINA,CENA) values (2,'Cips',34,70);
Insert into HR.PROIZVOD (PROIZVOD_ID,NAZIV,KOLICINA,CENA) values (4,'Bananica',57,12);
Insert into HR.PROIZVOD (PROIZVOD_ID,NAZIV,KOLICINA,CENA) values (5,'ZeleZeka',74,15);
Insert into HR.PROIZVOD (PROIZVOD_ID,NAZIV,KOLICINA,CENA) values (9,'bombonjera',2,32);
Insert into HR.PROIZVOD (PROIZVOD_ID,NAZIV,KOLICINA,CENA) values (12,'jabuka',3,20);
Insert into HR.PROIZVOD (PROIZVOD_ID,NAZIV,KOLICINA,CENA) values (6,'cucla',22,30);
REM INSERTING into HR.TEST
SET DEFINE OFF;
Insert into HR.TEST (COLUMN1,A,B,C) values (3,'asdas','123',null);
Insert into HR.TEST (COLUMN1,A,B,C) values (1,'asdas','123','123');
Insert into HR.TEST (COLUMN1,A,B,C) values (2,'asdas','123','123');
REM INSERTING into HR.TEST2
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index TEST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."TEST_PK" ON "HR"."TEST" ("COLUMN1") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KUPOVINA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."KUPOVINA_PK" ON "HR"."KUPOVINA" ("ID_KUPOVINA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KONTAKT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."KONTAKT_PK" ON "HR"."KONTAKT" ("ID_KONTAKT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TEST2_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."TEST2_PK" ON "HR"."TEST2" ("COLUMN1") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROIZVOD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PROIZVOD_PK" ON "HR"."PROIZVOD" ("PROIZVOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger KONTAKT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."KONTAKT_TRG" 
BEFORE INSERT ON KONTAKT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."KONTAKT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KONTAKT_TRG1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."KONTAKT_TRG1" 
BEFORE INSERT ON KONTAKT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID_KONTAKT IS NULL THEN
      SELECT KONTAKT_SEQ2.NEXTVAL INTO :NEW.ID_KONTAKT FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."KONTAKT_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KORISNIK_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."KORISNIK_TRG" 
BEFORE INSERT ON KORISNIK 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."KORISNIK_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KORISNIK_TRG1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."KORISNIK_TRG1" 
BEFORE INSERT ON KORISNIK 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."KORISNIK_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KORISNIK_TRG2
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."KORISNIK_TRG2" 
BEFORE INSERT ON KORISNIK 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."KORISNIK_TRG2" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KORISNIK_TRG3
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."KORISNIK_TRG3" 
BEFORE INSERT ON KORISNIK 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."KORISNIK_TRG3" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KORISNIK_TRG4
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."KORISNIK_TRG4" 
BEFORE INSERT ON KORISNIK 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."KORISNIK_TRG4" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KUPOVINA_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."KUPOVINA_TRG" 
BEFORE INSERT ON KUPOVINA 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."KUPOVINA_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROIZVOD_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."PROIZVOD_TRG" 
BEFORE INSERT ON PROIZVOD 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.PROIZVOD_ID IS NULL THEN
      SELECT PROIZVOD_SEQ.NEXTVAL INTO :NEW.PROIZVOD_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."PROIZVOD_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TEST2_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TEST2_TRG" 
BEFORE INSERT ON TEST2 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.COLUMN1 IS NULL THEN
      SELECT TEST2_SEQ.NEXTVAL INTO :NEW.COLUMN1 FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."TEST2_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TEST_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TEST_TRG" 
BEFORE INSERT ON TEST 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.COLUMN1 IS NULL THEN
      SELECT TEST_SEQ.NEXTVAL INTO :NEW.COLUMN1 FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."TEST_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Procedure ADD_JOB_HISTORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."ADD_JOB_HISTORY" 
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;

/
--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;

/
--------------------------------------------------------
--  Constraints for Table PROIZVOD
--------------------------------------------------------

  ALTER TABLE "HR"."PROIZVOD" ADD CONSTRAINT "PROIZVOD_PK" PRIMARY KEY ("PROIZVOD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."PROIZVOD" MODIFY ("CENA" NOT NULL ENABLE);
  ALTER TABLE "HR"."PROIZVOD" MODIFY ("KOLICINA" NOT NULL ENABLE);
  ALTER TABLE "HR"."PROIZVOD" MODIFY ("PROIZVOD_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."PROIZVOD" MODIFY ("NAZIV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KONTAKT
--------------------------------------------------------

  ALTER TABLE "HR"."KONTAKT" ADD CONSTRAINT "KONTAKT_PK" PRIMARY KEY ("ID_KONTAKT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."KONTAKT" MODIFY ("ID_KONTAKT" NOT NULL ENABLE);
  ALTER TABLE "HR"."KONTAKT" MODIFY ("EMAIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TEST2
--------------------------------------------------------

  ALTER TABLE "HR"."TEST2" ADD CONSTRAINT "TEST2_PK" PRIMARY KEY ("COLUMN1")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."TEST2" MODIFY ("COLUMN1" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TEST
--------------------------------------------------------

  ALTER TABLE "HR"."TEST" ADD CONSTRAINT "TEST_PK" PRIMARY KEY ("COLUMN1")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."TEST" MODIFY ("COLUMN1" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KUPOVINA
--------------------------------------------------------

  ALTER TABLE "HR"."KUPOVINA" MODIFY ("NACIN_PLACANJA" NOT NULL ENABLE);
  ALTER TABLE "HR"."KUPOVINA" ADD CONSTRAINT "KUPOVINA_PK" PRIMARY KEY ("ID_KUPOVINA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."KUPOVINA" MODIFY ("ID_KUPOVINA" NOT NULL ENABLE);
  ALTER TABLE "HR"."KUPOVINA" MODIFY ("IZNOS" NOT NULL ENABLE);
  ALTER TABLE "HR"."KUPOVINA" MODIFY ("DATUM" NOT NULL ENABLE);
  ALTER TABLE "HR"."KUPOVINA" MODIFY ("FK_KORISNIK" NOT NULL ENABLE);
  ALTER TABLE "HR"."KUPOVINA" MODIFY ("FK_PROIZOVD" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table KORISNIK
--------------------------------------------------------

  ALTER TABLE "HR"."KORISNIK" ADD CONSTRAINT "FK_KONTAKT_ID_KORISNIK" FOREIGN KEY ("FK_KONTAKT")
	  REFERENCES "HR"."KONTAKT" ("ID_KONTAKT") ENABLE;

--------------------------------------------------------
--  File created - Sunday-October-31-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------

  CREATE TABLE "STOCK"."DEPARTMENTS" 
   (	"DEPT_NO" NUMBER(10,0), 
	"DEPT_NAME" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ISSUING
--------------------------------------------------------

  CREATE TABLE "STOCK"."ISSUING" 
   (	"ISSUE_NO" NUMBER(10,0), 
	"ISSUE_ID" NUMBER(6,0), 
	"ISSUE_DATE" DATE, 
	"DEPT_NO" NUMBER(10,0), 
	"STORE_NO" NUMBER(10,0), 
	"USER_NO" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ISSUING_ITEMS
--------------------------------------------------------

  CREATE TABLE "STOCK"."ISSUING_ITEMS" 
   (	"ISSUE_I_NO" NUMBER(10,0), 
	"ISSUE_NO" NUMBER(10,0), 
	"ISSUE_SERIAL" NUMBER(2,0), 
	"ITEM_ID" NUMBER(10,0), 
	"AVAILABLE_QTY" NUMBER(10,3), 
	"ISSUE_QTY" NUMBER(10,2)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ITEMS
--------------------------------------------------------

  CREATE TABLE "STOCK"."ITEMS" 
   (	"ITEM_ID" NUMBER(10,0), 
	"ITEM_NO" VARCHAR2(16 BYTE), 
	"ITME_NAME" VARCHAR2(300 BYTE), 
	"UNIT_NO" NUMBER(10,0), 
	"STORE_NO" NUMBER(10,0), 
	"UNIT_PRICE" NUMBER(10,2)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RECEIVING
--------------------------------------------------------

  CREATE TABLE "STOCK"."RECEIVING" 
   (	"RECEIVING_ID" NUMBER(10,0), 
	"REC_NO" VARCHAR2(6 BYTE), 
	"REC_DATE" DATE, 
	"VENDOR_NO" NUMBER(10,0), 
	"DEPT_NO" NUMBER(10,0), 
	"STORE_NO" NUMBER(10,0), 
	"USER_NO" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RECEIVING_ITEMS
--------------------------------------------------------

  CREATE TABLE "STOCK"."RECEIVING_ITEMS" 
   (	"REC_I_NO" NUMBER(10,0), 
	"REC_ID" NUMBER(10,0), 
	"REC_SERIAL" NUMBER(2,0), 
	"ITEM_ID" NUMBER(10,0), 
	"REC_QTY" NUMBER(10,3), 
	"UNIT_PRICE" NUMBER(10,2)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STORES
--------------------------------------------------------

  CREATE TABLE "STOCK"."STORES" 
   (	"STORE_NO" NUMBER(10,0), 
	"STORE_NAME" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TRANSACTIONS
--------------------------------------------------------

  CREATE TABLE "STOCK"."TRANSACTIONS" 
   (	"TRANS_ID" NUMBER(10,0), 
	"TRANS_TYPE" NUMBER(2,0), 
	"TRANS_NO" VARCHAR2(6 BYTE), 
	"TRANS_DATE" DATE, 
	"ITEM_ID" NUMBER(10,0), 
	"QTY_PLUS" NUMBER(10,3), 
	"QLY_MINUS" NUMBER(10,3), 
	"UNIT_PRICE" NUMBER(10,2)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UNITS
--------------------------------------------------------

  CREATE TABLE "STOCK"."UNITS" 
   (	"UNIT_NO" NUMBER(10,0), 
	"UNIT_CODS" VARCHAR2(10 BYTE), 
	"UNIT_DESC" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "STOCK"."USERS" 
   (	"USER_NO" NUMBER(10,0), 
	"USER_NAME" VARCHAR2(30 BYTE), 
	"PASSWORD" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VENDORS
--------------------------------------------------------

  CREATE TABLE "STOCK"."VENDORS" 
   (	"VENDOR_NO" NUMBER(10,0), 
	"VENDOR_NAME" VARCHAR2(50 BYTE), 
	"VENDOR_SHORT_NAME" VARCHAR2(12 BYTE), 
	"PHONE" VARCHAR2(12 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into STOCK.DEPARTMENTS
SET DEFINE OFF;
REM INSERTING into STOCK.ISSUING
SET DEFINE OFF;
REM INSERTING into STOCK.ISSUING_ITEMS
SET DEFINE OFF;
REM INSERTING into STOCK.ITEMS
SET DEFINE OFF;
REM INSERTING into STOCK.RECEIVING
SET DEFINE OFF;
REM INSERTING into STOCK.RECEIVING_ITEMS
SET DEFINE OFF;
REM INSERTING into STOCK.STORES
SET DEFINE OFF;
REM INSERTING into STOCK.TRANSACTIONS
SET DEFINE OFF;
REM INSERTING into STOCK.UNITS
SET DEFINE OFF;
REM INSERTING into STOCK.USERS
SET DEFINE OFF;
REM INSERTING into STOCK.VENDORS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_DEPT
--------------------------------------------------------

  CREATE UNIQUE INDEX "STOCK"."PK_DEPT" ON "STOCK"."DEPARTMENTS" ("DEPT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_STORES
--------------------------------------------------------

  CREATE UNIQUE INDEX "STOCK"."PK_STORES" ON "STOCK"."STORES" ("STORE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ISSUING
--------------------------------------------------------

  CREATE UNIQUE INDEX "STOCK"."PK_ISSUING" ON "STOCK"."ISSUING" ("ISSUE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_USERS
--------------------------------------------------------

  CREATE UNIQUE INDEX "STOCK"."PK_USERS" ON "STOCK"."USERS" ("USER_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_TRANSACTIONS
--------------------------------------------------------

  CREATE UNIQUE INDEX "STOCK"."PK_TRANSACTIONS" ON "STOCK"."TRANSACTIONS" ("TRANS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_UNITS
--------------------------------------------------------

  CREATE UNIQUE INDEX "STOCK"."PK_UNITS" ON "STOCK"."UNITS" ("UNIT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ISSUING_ITEMS
--------------------------------------------------------

  CREATE UNIQUE INDEX "STOCK"."PK_ISSUING_ITEMS" ON "STOCK"."ISSUING_ITEMS" ("ISSUE_I_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_RECEIVING_ITEMS
--------------------------------------------------------

  CREATE UNIQUE INDEX "STOCK"."PK_RECEIVING_ITEMS" ON "STOCK"."RECEIVING_ITEMS" ("REC_I_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_RECIVING
--------------------------------------------------------

  CREATE UNIQUE INDEX "STOCK"."PK_RECIVING" ON "STOCK"."RECEIVING" ("RECEIVING_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ITEMS
--------------------------------------------------------

  CREATE UNIQUE INDEX "STOCK"."PK_ITEMS" ON "STOCK"."ITEMS" ("ITEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_VENDORS
--------------------------------------------------------

  CREATE UNIQUE INDEX "STOCK"."PK_VENDORS" ON "STOCK"."VENDORS" ("VENDOR_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "STOCK"."USERS" ADD CONSTRAINT "PK_USERS" PRIMARY KEY ("USER_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "STOCK"."DEPARTMENTS" ADD CONSTRAINT "PK_DEPT" PRIMARY KEY ("DEPT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ISSUING_ITEMS
--------------------------------------------------------

  ALTER TABLE "STOCK"."ISSUING_ITEMS" ADD CONSTRAINT "PK_ISSUING_ITEMS" PRIMARY KEY ("ISSUE_I_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECEIVING_ITEMS
--------------------------------------------------------

  ALTER TABLE "STOCK"."RECEIVING_ITEMS" ADD CONSTRAINT "PK_RECEIVING_ITEMS" PRIMARY KEY ("REC_I_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRANSACTIONS
--------------------------------------------------------

  ALTER TABLE "STOCK"."TRANSACTIONS" ADD CONSTRAINT "PK_TRANSACTIONS" PRIMARY KEY ("TRANS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECEIVING
--------------------------------------------------------

  ALTER TABLE "STOCK"."RECEIVING" ADD CONSTRAINT "PK_RECIVING" PRIMARY KEY ("RECEIVING_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ISSUING
--------------------------------------------------------

  ALTER TABLE "STOCK"."ISSUING" ADD CONSTRAINT "PK_ISSUING" PRIMARY KEY ("ISSUE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STORES
--------------------------------------------------------

  ALTER TABLE "STOCK"."STORES" ADD CONSTRAINT "PK_STORES" PRIMARY KEY ("STORE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UNITS
--------------------------------------------------------

  ALTER TABLE "STOCK"."UNITS" ADD CONSTRAINT "PK_UNITS" PRIMARY KEY ("UNIT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VENDORS
--------------------------------------------------------

  ALTER TABLE "STOCK"."VENDORS" ADD CONSTRAINT "PK_VENDORS" PRIMARY KEY ("VENDOR_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ITEMS
--------------------------------------------------------

  ALTER TABLE "STOCK"."ITEMS" ADD CONSTRAINT "PK_ITEMS" PRIMARY KEY ("ITEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ISSUING
--------------------------------------------------------

  ALTER TABLE "STOCK"."ISSUING" ADD CONSTRAINT "ISSUING_DEPT_NO" FOREIGN KEY ("DEPT_NO")
	  REFERENCES "STOCK"."DEPARTMENTS" ("DEPT_NO") ENABLE;
 
  ALTER TABLE "STOCK"."ISSUING" ADD CONSTRAINT "ISSUING_STORE_NO" FOREIGN KEY ("STORE_NO")
	  REFERENCES "STOCK"."STORES" ("STORE_NO") ENABLE;
 
  ALTER TABLE "STOCK"."ISSUING" ADD CONSTRAINT "ISSUING_USER_NO_FK" FOREIGN KEY ("USER_NO")
	  REFERENCES "STOCK"."USERS" ("USER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ISSUING_ITEMS
--------------------------------------------------------

  ALTER TABLE "STOCK"."ISSUING_ITEMS" ADD CONSTRAINT "ISSUING_ITEMS_ISSUING_FK" FOREIGN KEY ("ISSUE_NO")
	  REFERENCES "STOCK"."ISSUING" ("ISSUE_NO") ENABLE;
 
  ALTER TABLE "STOCK"."ISSUING_ITEMS" ADD CONSTRAINT "RECEIVING_ITEMS_ITEM_ID_FK" FOREIGN KEY ("ITEM_ID")
	  REFERENCES "STOCK"."ITEMS" ("ITEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ITEMS
--------------------------------------------------------

  ALTER TABLE "STOCK"."ITEMS" ADD CONSTRAINT "ITEMS_STORE_NO_FK" FOREIGN KEY ("STORE_NO")
	  REFERENCES "STOCK"."STORES" ("STORE_NO") ENABLE;
 
  ALTER TABLE "STOCK"."ITEMS" ADD CONSTRAINT "ITEMS_UNIT_NO_FK" FOREIGN KEY ("UNIT_NO")
	  REFERENCES "STOCK"."UNITS" ("UNIT_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECEIVING
--------------------------------------------------------

  ALTER TABLE "STOCK"."RECEIVING" ADD CONSTRAINT "RECEIVING_DEPT_NO" FOREIGN KEY ("DEPT_NO")
	  REFERENCES "STOCK"."DEPARTMENTS" ("DEPT_NO") ENABLE;
 
  ALTER TABLE "STOCK"."RECEIVING" ADD CONSTRAINT "RECEIVING_STORE_NO" FOREIGN KEY ("STORE_NO")
	  REFERENCES "STOCK"."STORES" ("STORE_NO") ENABLE;
 
  ALTER TABLE "STOCK"."RECEIVING" ADD CONSTRAINT "RECEIVING_USER_NO" FOREIGN KEY ("USER_NO")
	  REFERENCES "STOCK"."USERS" ("USER_NO") ENABLE;
 
  ALTER TABLE "STOCK"."RECEIVING" ADD CONSTRAINT "RECEIVING_VENDOR_NO_FK" FOREIGN KEY ("VENDOR_NO")
	  REFERENCES "STOCK"."VENDORS" ("VENDOR_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECEIVING_ITEMS
--------------------------------------------------------

  ALTER TABLE "STOCK"."RECEIVING_ITEMS" ADD CONSTRAINT "RECEIVING_ITEMS_ITEM_NO_FK" FOREIGN KEY ("ITEM_ID")
	  REFERENCES "STOCK"."ITEMS" ("ITEM_ID") ENABLE;
 
  ALTER TABLE "STOCK"."RECEIVING_ITEMS" ADD CONSTRAINT "RECEIVING_ITEMS_REC_ID_FK" FOREIGN KEY ("REC_ID")
	  REFERENCES "STOCK"."RECEIVING" ("RECEIVING_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRANSACTIONS
--------------------------------------------------------

  ALTER TABLE "STOCK"."TRANSACTIONS" ADD CONSTRAINT "TRANSACTIONS_ITEM_ID_FK" FOREIGN KEY ("ITEM_ID")
	  REFERENCES "STOCK"."ITEMS" ("ITEM_ID") ENABLE;

  DROP TABLE "OMOWNER"."DYNAMICREFERENCEDEF";

  CREATE TABLE "OMOWNER"."DYNAMICREFERENCEDEF" 
   (	"REFTYPE" VARCHAR2(30 BYTE), 
	"DESCRIPTION" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "OM_DATA" ;
  
  exit;
 
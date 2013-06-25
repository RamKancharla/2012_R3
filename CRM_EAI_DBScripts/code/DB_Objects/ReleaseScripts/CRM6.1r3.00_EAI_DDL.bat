sqlplus %1 @DYNAMICREFERENCEDEF_Create.sql
sqlplus %1 @DYNAMICREFERENCEDATA_Create.sql
sqlldr userid=%1 control=DYNAMICREFERENCEDEF.ldr

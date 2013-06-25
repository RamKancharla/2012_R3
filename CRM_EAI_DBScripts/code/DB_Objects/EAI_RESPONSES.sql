CREATE TABLE EAI_RESPONSES
(
	RESP_ID	VARCHAR2(5) NOT NULL,
	RESP_ERROR_SUCCESS_IND	CHAR(1) NOT NULL,
	RESP_ERROR_TYPE	VARCHAR2(20) NOT NULL,
	RESP_CODE	VARCHAR2(250) NOT NULL,
	RESP_MESSAGE	VARCHAR2(4000),
	RESP_LAST_MODIFIED_DATE	DATE DEFAULT sysdate  NOT NULL,
	CONSTRAINT PK_EAI_RESPONSES PRIMARY KEY (RESP_ID )
)
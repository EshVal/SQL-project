CREATE TABLE PHONE
(
[PHONE_NUMBER] [VARCHAR](20) NOT NULL,
[PERSONCODE] [INT] NOT NULL,
[PHONE_TYPE] [VARCHAR] (10) NOT NULL,
FOREIGN KEY (PERSONCODE) REFERENCES PERSON(PERSONCODE)
)
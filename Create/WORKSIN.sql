CREATE TABLE WORKSIN
(
[PERSONCODE] [INT] NOT NULL,
[STORECODE] [INT] NOT NULL,
[WEEKLY_HOURS] [INT] NOT NULL,
[SINCE] [DATETIME] NOT NULL,
[POSITION] [VARCHAR] (50) NOT NULL
PRIMARY KEY(PERSONCODE),
FOREIGN KEY(PERSONCODE) REFERENCES PERSON(PERSONCODE),
FOREIGN KEY(STORECODE) REFERENCES STORE(STORECODE),
FOREIGN KEY (POSITION) REFERENCES POSITION(JOB)
)
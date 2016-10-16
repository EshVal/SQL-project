CREATE TABLE ADDRESS
(
[ADDRESSCODE] [INT] NOT NULL,
[STREET_ADDRESS] [VARCHAR] (50) NOT NULL,
[STREET_NO] [VARCHAR](5) NOT NULL,
[CITY] [VARCHAR] (50) NOT NULL,
[STATE] [NVARCHAR] (2) NOT NULL,
[ZIP] [VARCHAR] (10) NOT NULL,
[X] [VARCHAR] (4) NOT NULL,
[Y] [VARCHAR] (4) NOT NULL,
[LOCATION] [GEOMETRY] NOT NULL,
PRIMARY KEY(ADDRESSCODE)
)
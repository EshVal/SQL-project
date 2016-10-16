CREATE TABLE INCLUDES
(
[TRANSACTIONCODE] [INT] NOT NULL,
[ITEMCODE] [INT] NOT NULL,
[QUANTITY] [INT] NOT NULL,
PRIMARY KEY(TRANSACTIONCODE,ITEMCODE),
FOREIGN KEY(TRANSACTIONCODE) REFERENCES TRANSACTIONS(TRANSACTIONCODE),
FOREIGN KEY(ITEMCODE) REFERENCES ITEM(ITEMCODE)
)
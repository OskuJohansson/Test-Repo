INSERT INTO Kayttaja (tunnus, nimi, puhnro, email, salasana)     
VAULES ('locx', 'Oskari Johansson', '12345', 'keksitty.email@nan.com', 'banaani1');    

INSERT INTO Tili (saldo, nostoraja, kayttaja) 
VALUES (0, 100000, 1);   
 
INSERT INTO Tilitapahtuma (summa, ajankohta, tyyppi, tili, tili2)   
VALUES (100, datetime(), 'Kredit', 1, 10);     

INSERT INTO Viesti (sisalto, aika, lahettaja, vastaanottaja) 
VALUES ('Hello World!',  datetime(), 'locx', 'maailma');  
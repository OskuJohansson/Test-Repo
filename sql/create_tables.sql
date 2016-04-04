CREATE TABLE Kayttaja (    
  tunnus text PRIMARY KEY,    
  nimi text NOT NULL,    
  puhnro text,    
  email text,    
  salasana text NOT NULL  
);

CREATE TABLE Tili (    
  tilinumero integer PRIMARY KEY,    
  saldo integer NOT NULL,    
  nostoraja integer,    
  siirtoraja integer,   
  kayttaja text NOT NULL,  
  FOREIGN KEY (kayttaja) REFERENCES Kayttaja (tunnus) 
);    

CREATE TABLE Tilitapahtuma (   
  id integer PRIMARY KEY,   
  summa integer NOT NULL,   
  ajankohta date NOT NULL,    
  tyyppi text NOT NULL,   
  tili integer NOT NULL,   
  tili2 integer,   
  FOREIGN KEY (tili) REFERENCES Tili (tilinumero) 
);   

CREATE TABLE Viesti (    
  id integer PRIMARY KEY,    
  sisalto text NOT NULL,   
  aika date NOT NULL,    
  lahettaja text NOT NULL,    
  vastaanottaja text NOT NULL,   
  FOREIGN KEY (lahettaja) REFERENCES Kayttaja (tunnus),   
  FOREIGN KEY (vastaanottaja) REFERENCES Kayttaja (tunnus)  
);  
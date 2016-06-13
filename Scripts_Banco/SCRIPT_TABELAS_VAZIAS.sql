		CREATE TABLE PARAMETRIZACAO (
			  ID_PARAMETRO_SISTEMA INTEGER,
			  NM_PARAMETRO VARCHAR(100) NOT NULL,
			  VL_PARAMETRO VARCHAR(100) NOT NULL,
			  CONSTRAINT PK_ID_PARAMETRO_SISTEMA PRIMARY KEY (ID_PARAMETRO_SISTEMA)		
		);		
		
		CREATE TABLE RESPONSAVEL (
			  ID_RESP INTEGER,
			  NM_RESP VARCHAR(45) NOT NULL,
			  CONSTRAINT PK_ID_RESPONSAVEL PRIMARY KEY (ID_RESP)
		);
		
		CREATE TABLE TIPOCLASSE (
			  ID_TIPO_CLASSE INTEGER,
			  DESC_CLASSE VARCHAR(100) NOT NULL,
			  CONSTRAINT PK_IDTIPO_CLASSE PRIMARY KEY (ID_TIPO_CLASSE)		
		);			
		
		CREATE TABLE ITEM (
			  ID_ITEM INTEGER,
			  COD_ITEM INTEGER NOT NULL,
			  NM_ITEM VARCHAR(45) NOT NULL,			  
			  CLASSE_IDTIPO INTEGER NOT NULL,
			  CONSTRAINT PK_IDITEM PRIMARY KEY (ID_ITEM),
			  CONSTRAINT FK_CLASSE_ITEM FOREIGN KEY (CLASSE_IDTIPO) REFERENCES TIPOCLASSE (ID_TIPO_CLASSE)
		);		
		
		CREATE TABLE AREA (
			  ID_AREA INTEGER,
			  NM_AREA VARCHAR(45),
			  CONSTRAINT PK_ID_AREA PRIMARY KEY (ID_AREA)	
		);
		
		CREATE TABLE CARGA_DADOS (
			  ID_CARGA_DADOS INTEGER,
			  QUANTCLIENTE FLOAT NOT NULL,
			  QUANTFATURAMENTO FLOAT NOT NULL,			  
			  ITEM_IDITEM INTEGER NOT NULL,
			  RESP_IDRESP INTEGER NOT NULL,
			  AREA_IDAREA INTEGER NOT NULL,
			  PRECO_MEDIO FLOAT NOT NULL,
			  DT_REALIZADA DATE NOT NULL,
			  CONSTRAINT PK_ID_CARGA_DADOS PRIMARY KEY (ID_CARGA_DADOS),
			  CONSTRAINT FK_ITEM_IDITEM FOREIGN KEY (ITEM_IDITEM) REFERENCES ITEM (ID_ITEM),
			  CONSTRAINT FK_AREA FOREIGN KEY (AREA_IDAREA) REFERENCES AREA (ID_AREA),
			  CONSTRAINT FK_RESP_IDRESP FOREIGN KEY (RESP_IDRESP) REFERENCES RESPONSAVEL (ID_RESP)			  
		);
		
		CREATE TABLE DADOS_FUTUROS_ITEM (
			  ID_DADOS_FUTUROS_ITEM INTEGER,
			  ID_ITEM INTEGER,
			  NOME_ITEM VARCHAR(100),
			  QTDTOTCLIENTEMES FLOAT,
			  TOTALCLIENTE FLOAT,
			  VARIACAOCLI FLOAT,
			  TOTALFATURAMENTO FLOAT,
			  VARIACAOFAT FLOAT,
			  MESVARIADO INT,
			  ANOVARIADO INT,
			  CENARIOTIMISTACLIENTE FLOAT,
			  CENARIOPESSIMISTACLIENTE FLOAT,
			  MESFUTURO INT,
			  ANOFUTURO INT,
			  CENARIOTIMISTAFATURAMENTO FLOAT,
			  CENARIOPESSIMISTAFATURAMENTO FLOAT,
			  CENARIOPROVAVELFAT FLOAT,
			  CENARIOPROVAVELCLI FLOAT,
			  TIPO_PROCESSAMENTO INT,			  
			  ITEM_REPROCESSADO CHAR(1)			  
		);
		
		CREATE TABLE DADOS_FUTUROS_GRUPO (
			  ID_DADOS_FUTUROS_GRUPO INTEGER,
			  ID_GRUPO INTEGER,
			  NOME_GRUPO VARCHAR(100),
			  QTDTOTCLIENTEMES FLOAT,
			  TOTALCLIENTE FLOAT,
			  VARIACAOCLI FLOAT,
			  TOTALFATURAMENTO FLOAT,
			  VARIACAOFAT FLOAT,
			  MESVARIADO INT,
			  ANOVARIADO INT,
			  CENARIOTIMISTACLIENTE FLOAT,
			  CENARIOPESSIMISTACLIENTE FLOAT,
			  MESFUTURO INT,
			  ANOFUTURO INT,
			  CENARIOTIMISTAFATURAMENTO FLOAT,
			  CENARIOPESSIMISTAFATURAMENTO FLOAT,
			  CENARIOPROVAVELFAT FLOAT,
			  CENARIOPROVAVELCLI FLOAT,
			  TIPO_PROCESSAMENTO INT,			
			  ITEM_REPROCESSADO CHAR(1)			  
		);
						
		CREATE SEQUENCE IDDPARAMETROSISTEMA INCREMENT BY 1 START WITH 1 MAXVALUE 99999999999999 NOCYCLE;
		CREATE SEQUENCE IDRESPONSAVEL INCREMENT BY 1 START WITH 1 MAXVALUE 99999999999999 NOCYCLE;
		CREATE SEQUENCE IDTIPOCLASSE INCREMENT BY 1 START WITH 1 MAXVALUE 99999999999999 NOCYCLE;		
		CREATE SEQUENCE IDITEM INCREMENT BY 1 START WITH 1 MAXVALUE 99999999999999 NOCYCLE;
		CREATE SEQUENCE IDCARGADADOS INCREMENT BY 1 START WITH 1 MAXVALUE 99999999999999 NOCYCLE;
		CREATE SEQUENCE IDAREA INCREMENT BY 1 START WITH 1 MAXVALUE 99999999999999 NOCYCLE;
		CREATE SEQUENCE IDDADOSFUTUROSITEM INCREMENT BY 1 START WITH 1 MAXVALUE 99999999999999 NOCYCLE;
		CREATE SEQUENCE IDDADOSFUTUROSGRUPO INCREMENT BY 1 START WITH 1 MAXVALUE 99999999999999 NOCYCLE;
		
		
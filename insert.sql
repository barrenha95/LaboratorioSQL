-- # Inserting data into the tables #

USE recebimentos; -- Used to specify which database will use

INSERT INTO estado
VALUES (0,'SAO_PAULO', 'SP'),
	   (0,'SANTA_CATARINA', 'SC'),
       (0,'MINAS_GERAIS', 'MG');
       
INSERT INTO municipio
VALUES (0,1, 'BAURU'         , 13),
	   (0,2, 'FLORIANOPOLIS' , 77),
       (0,3, 'BELO_HORIZONTE', 18);
       
INSERT INTO cliente
VALUES (0,'JOAO'   , '111' , ''          , 'RUA 1', '123', 1 , '',1),
	   (0,'CARLOS' , '222' , '1233453365', 'RUA 2', '321', 2 , '',2),
       (0,'ROBERTO', '333' , '1789751358', 'RUA 3', '231', 3 , '',3);
              
INSERT INTO ContaReceber
VALUES (0, 1, 1, '2023-07-05', '2023-07-10', 10.25, '1'),
       (0, 2, 2, '2023-01-05', '2023-07-05', 30.27, '2'),
       (0, 3, 3, '2023-02-05', '2023-07-05', 12.25, '3');              
--Marcas
INSERT INTO MARCAS VALUES ('1','BMW','Barcelona');
INSERT INTO MARCAS VALUES ('2','AUDI','Madrid');
INSERT INTO MARCAS VALUES ('3','CITROEN','Vigo');
INSERT INTO MARCAS VALUES ('4','SEAT','Barcelona');
INSERT INTO MARCAS VALUES ('5','KIA','Madrid');
INSERT INTO MARCAS VALUES ('6','NISSAN','Ávila');
INSERT INTO MARCAS VALUES ('7','RENAULT','Valladolid');
INSERT INTO MARCAS VALUES ('8','OPEL','Zaragoza');
INSERT INTO MARCAS VALUES ('9','FORD','Valencia');
INSERT INTO MARCAS VALUES ('10','MERCEDES','Vitoria');

-- Coches
INSERT INTO COCHES VALUES ('BMWe86','BMW Serie 1','BMW');
INSERT INTO COCHES VALUES ('BMWe46','BMW Serie 3','BMW');
INSERT INTO COCHES VALUES ('BMWe34','BMW Serie 5','BMW');
INSERT INTO COCHES VALUES ('BMWm45','BMW Serie 7','BMW');
INSERT INTO COCHES VALUES ('BMWm87','BMW Serie 4','BMW');
INSERT INTO COCHES VALUES ('A3','AUDI A3','AUDI');
INSERT INTO COCHES VALUES ('A5','AUDI A5','AUDI');
INSERT INTO COCHES VALUES ('A6Q','AUDI A6 QUATTRO','AUDI');
INSERT INTO COCHES VALUES ('C4C','C4','CITROEN');
INSERT INTO COCHES VALUES ('C5C','C5','CITROEN');
INSERT INTO COCHES VALUES ('IBIZA','Ibiza','SEAT');
INSERT INTO COCHES VALUES ('KCEED','CEED','KIA');
INSERT INTO COCHES VALUES ('KSPORT','SPORTAGE','KIA');
INSERT INTO COCHES VALUES ('KRIO','RIO','KIA');
INSERT INTO COCHES VALUES ('NISQA','QASQAI','NISSAN');
INSERT INTO COCHES VALUES ('NISPU','PULSAR','NISSAN');

--Concesionarios
INSERT INTO CONCESIONARIOS VALUES ('44543123','Fercar','Alicante');
INSERT INTO CONCESIONARIOS VALUES ('85543123','Multi Car','Alicante');
INSERT INTO CONCESIONARIOS VALUES ('77323232','Motor Sport','Murcia');
INSERT INTO CONCESIONARIOS VALUES ('85643123','BMW Villa de campo','Madrid');
INSERT INTO CONCESIONARIOS VALUES ('76543213','Todo motor','Madrid');
INSERT INTO CONCESIONARIOS VALUES ('98654678','Tope Gama','Madrid');
INSERT INTO CONCESIONARIOS VALUES ('11232123','BMW Barna','Barcelona');
INSERT INTO CONCESIONARIOS VALUES ('54345432','Tot Turbo','Barcelona');
INSERT INTO CONCESIONARIOS VALUES ('32323232','4 rodes','Ibiza');
INSERT INTO CONCESIONARIOS VALUES ('56429642','Grant Turismo','Alicante');

--Clientes
INSERT INTO CLIENTES VALUES ('24583143','Alvaro','Pérez','Alicante');
INSERT INTO CLIENTES VALUES ('65344533','Silvia','García','Alicante');
INSERT INTO CLIENTES VALUES ('44545433','Abdon','Bañón','Murcia');
INSERT INTO CLIENTES VALUES ('14123233','Raquel','Pérez','Madrid');
INSERT INTO CLIENTES VALUES ('44567676','Fulgencio','Oliver','La Romana');
INSERT INTO CLIENTES VALUES ('44599887','Javier','Romo','Madrid');
INSERT INTO CLIENTES VALUES ('44512333','Manuel','Ivorra','Madrid');
INSERT INTO CLIENTES VALUES ('67453423','Alvaro','Kamen','Madrid');
INSERT INTO CLIENTES VALUES ('87643455','Sergi','Villaplana','Alicante');
INSERT INTO CLIENTES VALUES ('76357844','Carles','Puig','Barcelona');
INSERT INTO CLIENTES VALUES ('76411111','Antoni','Punset','Ibiza');
INSERT INTO CLIENTES VALUES ('11111112','Carlos','Pérez','Valencia');
INSERT INTO CLIENTES VALUES ('22222211','José','Jover','Valencia');
INSERT INTO CLIENTES VALUES ('00000031','Francisco','Esteve','Zaragoza');

-- Distribucion
INSERT INTO DISTRIBUCION VALUES ('44543123','BMWe86',5);
INSERT INTO DISTRIBUCION  VALUES ('44543123','BMWe46',15);
INSERT INTO DISTRIBUCION  VALUES ('44543123','BMWe34',4);
INSERT INTO DISTRIBUCION  VALUES ('85543123','NISPU',12);
INSERT INTO DISTRIBUCION  VALUES ('85543123','BMWm45',21);
INSERT INTO DISTRIBUCION  VALUES ('85543123','C4C',15);
INSERT INTO DISTRIBUCION  VALUES ('77323232','A3',3);
INSERT INTO DISTRIBUCION  VALUES ('77323232','KRIO',1);
INSERT INTO DISTRIBUCION  VALUES ('76543213','KRIO',6);
INSERT INTO DISTRIBUCION  VALUES ('77323232','C4C',2);
INSERT INTO DISTRIBUCION  VALUES ('85643123','A6Q',3);
INSERT INTO DISTRIBUCION  VALUES ('85643123','NISPU',4);
INSERT INTO DISTRIBUCION  VALUES ('85643123','BMWm45',5);
INSERT INTO DISTRIBUCION  VALUES ('76543213','C4C',6);
INSERT INTO DISTRIBUCION  VALUES ('76543213','KCEED',7);
INSERT INTO DISTRIBUCION  VALUES ('76543213','A3',8);
INSERT INTO DISTRIBUCION  VALUES ('98654678','C4C',1);
INSERT INTO DISTRIBUCION  VALUES ('98654678','A6Q',6);
INSERT INTO DISTRIBUCION  VALUES ('98654678','KSPORT',8);
INSERT INTO DISTRIBUCION  VALUES ('11232123','NISQA',9);
INSERT INTO DISTRIBUCION  VALUES ('11232123','A3',14);
INSERT INTO DISTRIBUCION  VALUES ('11232123','C5C',16);
INSERT INTO DISTRIBUCION  VALUES ('54345432','BMWm45',15);
INSERT INTO DISTRIBUCION  VALUES ('54345432','KSPORT',15);
INSERT INTO DISTRIBUCION  VALUES ('54345432','A6Q',25);
INSERT INTO DISTRIBUCION  VALUES ('32323232','NISQA',1);
INSERT INTO DISTRIBUCION  VALUES ('32323232','KCEED',3);
INSERT INTO DISTRIBUCION  VALUES ('32323232','IBIZA',0);

-- Ventas
INSERT INTO VENTAS VALUES ('76543213','24583143','KRIO','red','3/06/2016');
INSERT INTO VENTAS VALUES ('76543213','11111112','KRIO','white','23/06/2016');
INSERT INTO VENTAS VALUES ('44543123','24583143','BMWe86','red','3/06/2016');
INSERT INTO VENTAS VALUES ('44543123','24583143','BMWe46','white','13/05/2016');
INSERT INTO VENTAS VALUES ('44543123','65344533','BMWe34','blue','23/04/2016');
INSERT INTO VENTAS VALUES ('85543123','65344533','NISPU','white','4/03/2016');
INSERT INTO VENTAS VALUES ('85543123','44545433','NISPU','red','5/02/2016');
INSERT INTO VENTAS VALUES ('85543123','44599887','NISPU','red','6/01/2016');
INSERT INTO VENTAS VALUES ('85543123','14123233','C4C','white','7/02/2016');
INSERT INTO VENTAS VALUES ('85543123','44599887','C4C','red','13/03/2016');
INSERT INTO VENTAS VALUES ('85543123','44567676','C4C','blue','23/06/2016');
INSERT INTO VENTAS VALUES ('77323232','44512333','KRIO','red','15/06/2016');
INSERT INTO VENTAS VALUES ('77323232','67453423','KRIO','white','15/06/2016');
INSERT INTO VENTAS VALUES ('77323232','87643455','KRIO','red','6/07/2016');
INSERT INTO VENTAS VALUES ('77323232','76357844','C4C','blue','7/08/2016');
INSERT INTO VENTAS VALUES ('85643123','76411111','A6Q','white','8/09/2016');
INSERT INTO VENTAS VALUES ('76543213','11111112','KCEED','blue','9/10/2016');
INSERT INTO VENTAS VALUES ('76543213','11111112','A3','red','11/11/2016');
INSERT INTO VENTAS VALUES ('76543213','14123233','A3','white','11/12/2016');
INSERT INTO VENTAS VALUES ('98654678','00000031','KSPORT','blue','12/06/2016');
INSERT INTO VENTAS VALUES ('11232123','00000031','NISQA','white','23/08/2016');
INSERT INTO VENTAS VALUES ('32323232','00000031','KCEED','red','28/09/2016');
INSERT INTO VENTAS VALUES ('32323232','76411111','IBIZA','red','18/09/2016');
INSERT INTO VENTAS VALUES ('44543123','22222211','BMWe86','red','05/10/2016');
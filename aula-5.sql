CREATE DATABASE db_mercadinho;
USE db_mercadinho;

# ('101-17-6199','A','Yangon','Normal','Male','Food and beverages',45.79,7,16.0265,336.556,'3/13/2019','19:44','Credit card',320.53,4.7619,16.0265,7

CREATE TABLE tbprodutos (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    id_cliente VARCHAR(100) UNIQUE NOT NULL ,
    filial CHAR(3) NOT NULL ,
    cidade VARCHAR(100) NOT NULL ,
    tipoCliente VARCHAR(100) NOT NULL ,
    sexo ENUM('Male', 'Female'),
    linhaProduto VARCHAR(100) NOT NULL ,
    precounitario FLOAT NOT NULL ,
    quantidade INT NOT NULL ,
    imposto FLOAT NOT NULL ,
    total FLOAT NOT NULL ,
    dataC VARCHAR(20) NOT NULL ,
    horario TIME NOT NULL ,
    tipoPgto VARCHAR(100) NOT NULL ,
    custoTotal FLOAT NOT NULL ,
    gross_margin_percentage FLOAT NOT NULL ,
    rendaBruta FLOAT NOT NULL ,
    avaliacao INT NOT NULL
);

INSERT INTO  tbprodutos (`id_cliente`,`filial`,`cidade`,`tipoCliente`,`sexo`,`linhaProduto`,`precounitario`,`quantidade`,`imposto`,`total`,`dataC`,`horario`,`tipoPgto`,`custoTotal`,`gross_margin_percentage`,`rendaBruta`,`avaliacao`)
VALUES ('101-17-6199','A','Yangon','Normal','Male','Food and beverages',45.79,7,16.0265,336.556,'3/13/2019','19:44','Credit card',320.53,4.7619,16.0265,7),
 ('105-31-1824','A','Yangon','Member','Male','Sports and travel',69.52,7,24.332,510.972,'2/1/2019','15:10','Credit card',486.64,4.7619,24.332,8.5),
 ('130-98-8941','C','Naypyitaw','Normal','Male','Fashion accessories',64.26,7,22.491,472.311,'2/9/2019','10:00','Cash',449.82,4.7619,22.491,5.7),
 ('139-52-2867','C','Naypyitaw','Normal','Female','Fashion accessories',22.51,7,7.8785,165.449,'2/13/2019','10:50','Credit card',157.57,4.7619,7.8785,4.8),
 ('152-08-9985','B','Mandalay','Member','Male','Health and beauty',64.36,9,28.962,608.202,'3/12/2019','12:09','Credit card',579.24,4.7619,28.962,8.6),
 ('163-56-7055','C','Naypyitaw','Member','Male','Fashion accessories',48.71,1,2.4355,51.1455,'3/26/2019','19:20','Cash',48.71,4.7619,2.4355,4.1),
 ('175-54-2529','A','Yangon','Member','Male','Food and beverages',22.17,8,8.868,186.228,'3/3/2019','17:01','Credit card',177.36,4.7619,8.868,9.6),
 ('189-08-9157','C','Naypyitaw','Normal','Female','Fashion accessories',31.73,9,14.2785,299.849,'1/8/2019','16:17','Credit card',285.57,4.7619,14.2785,5.9),
('189-98-2939','C','Naypyitaw','Normal','Male','Fashion accessories',78.55,9,35.3475,742.297,'3/1/2019','13:22','Cash',706.95,4.7619,35.3475,7.2),
 ('191-10-6171','B','Mandalay','Normal','Female','Fashion accessories',39.62,7,13.867,291.207,'1/25/2019','13:18','Cash',277.34,4.7619,13.867,7.5),
 ('210-67-5886','C','Naypyitaw','Member','Female','Health and beauty',98.21,3,14.7315,309.362,'2/5/2019','10:41','Credit card',294.63,4.7619,14.7315,7.8),
 ('212-62-1842','A','Yangon','Normal','Male','Food and beverages',58.26,6,17.478,367.038,'3/28/2019','16:44','Cash',349.56,4.7619,17.478,9.9),
 ('214-17-6927','C','Naypyitaw','Normal','Female','Food and beverages',16.48,6,4.944,103.824,'2/7/2019','18:23','Ewallet',98.88,4.7619,4.944,9.9),
 ('219-22-9386','B','Mandalay','Member','Male','Sports and travel',99.96,9,44.982,944.622,'3/9/2019','17:26','Credit card',899.64,4.7619,44.982,4.2),
('225-32-0908','C','Naypyitaw','Normal','Female','Sports and travel',44.86,10,22.43,471.03,'1/26/2019','19:54','Ewallet',448.6,4.7619,22.43,8.2),
 ('225-98-1496','C','Naypyitaw','Normal','Female','Fashion accessories',27.02,3,4.053,85.113,'3/2/2019','13:01','Credit card',81.06,4.7619,4.053,7.1),
('227-78-1148','B','Mandalay','Normal','Female','Fashion accessories',72.84,7,25.494,535.374,'2/15/2019','12:44','Cash',509.88,4.7619,25.494,8.4),
('234-65-2137','C','Naypyitaw','Normal','Male','Home and lifestyle',95.58,10,47.79,1003.59,'1/16/2019','13:32','Cash',955.8,4.7619,47.79,4.8),
 ('237-01-6122','C','Naypyitaw','Member','Female','Home and lifestyle',80.79,9,36.3555,763.466,'2/1/2019','20:31','Credit card',727.11,4.7619,36.3555,9.5),
 ('238-49-0436','A','Yangon','Normal','Male','Health and beauty',32.46,8,12.984,272.664,'3/27/2019','13:48','Credit card',259.68,4.7619,12.984,4.9),
 ('239-10-7476','A','Yangon','Normal','Female','Home and lifestyle',77.95,6,23.385,491.085,'1/21/2019','16:37','Ewallet',467.7,4.7619,23.385,8),
 ('241-72-9525','B','Mandalay','Normal','Male','Sports and travel',51.91,10,25.955,545.055,'2/16/2019','12:21','Cash',519.1,4.7619,25.955,8.2),
 ('249-42-3782','A','Yangon','Normal','Male','Health and beauty',70.01,5,17.5025,367.552,'1/3/2019','11:36','Ewallet',350.05,4.7619,17.5025,5.5),
 ('262-47-2794','B','Mandalay','Member','Male','Home and lifestyle',71.86,8,28.744,603.624,'3/6/2019','15:07','Credit card',574.88,4.7619,28.744,6.2),
('263-10-3913','C','Naypyitaw','Member','Male','Fashion accessories',49.04,9,22.068,463.428,'1/9/2019','14:20','Credit card',441.36,4.7619,22.068,8.6),
('263-87-5680','C','Naypyitaw','Member','Female','Home and lifestyle',28.53,10,14.265,299.565,'3/18/2019','17:38','Ewallet',285.3,4.7619,14.265,7.8),
 ('268-27-6179','B','Mandalay','Member','Female','Fashion accessories',56.47,8,22.588,474.348,'3/9/2019','14:57','Ewallet',451.76,4.7619,22.588,7.3),
 ('275-28-0149','A','Yangon','Normal','Male','Sports and travel',63.69,1,3.1845,66.8745,'2/25/2019','16:21','Cash',63.69,4.7619,3.1845,6),
('279-74-2924','B','Mandalay','Member','Male','Electronic accessories',72.17,1,3.6085,75.7785,'1/4/2019','19:40','Cash',72.17,4.7619,3.6085,6.1),
 ('280-17-4359','C','Naypyitaw','Member','Male','Health and beauty',90.5,10,45.25,950.25,'1/25/2019','13:48','Cash',905,4.7619,45.25,8.1),
 ('284-34-9626','B','Mandalay','Normal','Female','Home and lifestyle',77.04,3,11.556,242.676,'2/11/2019','10:39','Credit card',231.12,4.7619,11.556,7.2),
('286-43-6208','C','Naypyitaw','Normal','Female','Food and beverages',87.8,9,39.51,829.71,'3/16/2019','19:08','Cash',790.2,4.7619,39.51,9.2),
('287-21-9091','A','Yangon','Normal','Male','Home and lifestyle',74.67,9,33.6015,705.631,'1/22/2019','10:55','Ewallet',672.03,4.7619,33.6015,9.4),
('291-32-1427','B','Mandalay','Member','Male','Fashion accessories',21.94,5,5.485,115.185,'3/5/2019','12:29','Ewallet',109.7,4.7619,5.485,5.3),
 ('305-14-0245','B','Mandalay','Member','Female','Home and lifestyle',94.49,8,37.796,793.716,'3/3/2019','19:00','Ewallet',755.92,4.7619,37.796,7.5),
 ('307-85-2293','B','Mandalay','Normal','Male','Home and lifestyle',50.28,5,12.57,263.97,'3/7/2019','13:58','Ewallet',251.4,4.7619,12.57,9.7),
('316-55-4634','B','Mandalay','Member','Male','Food and beverages',80.05,5,20.0125,420.263,'1/26/2019','12:45','Credit card',400.25,4.7619,20.0125,9.4),
('318-68-5053','B','Mandalay','Normal','Female','Health and beauty',76.99,6,23.097,485.037,'2/27/2019','17:55','Cash',461.94,4.7619,23.097,6.1),
 ('336-78-2147','C','Naypyitaw','Member','Male','Home and lifestyle',63.91,8,25.564,536.844,'3/13/2019','19:52','Credit card',511.28,4.7619,25.564,4.6),
('338-65-2210','C','Naypyitaw','Member','Female','Health and beauty',68.6,10,34.3,720.3,'2/5/2019','19:57','Cash',686,4.7619,34.3,9.1),
 ('342-65-4817','C','Naypyitaw','Member','Male','Health and beauty',86.8,3,13.02,273.42,'1/28/2019','16:47','Ewallet',260.4,4.7619,13.02,9.9),
 ('354-39-5160','A','Yangon','Member','Female','Home and lifestyle',34.42,6,10.326,216.846,'2/18/2019','15:39','Cash',206.52,4.7619,10.326,9.8),
 ('360-39-5055','C','Naypyitaw','Member','Male','Sports and travel',48.91,5,12.2275,256.777,'3/9/2019','10:17','Cash',244.55,4.7619,12.2275,6.6),
 ('362-58-8315','C','Naypyitaw','Normal','Male','Fashion accessories',76.52,5,19.13,401.73,'3/25/2019','10:23','Cash',382.6,4.7619,19.13,9.9),
 ('378-24-2715','B','Mandalay','Normal','Male','Home and lifestyle',53.44,2,5.344,112.224,'1/20/2019','20:38','Ewallet',106.88,4.7619,5.344,4.1),
 ('381-20-0914','A','Yangon','Member','Female','Fashion accessories',20.01,9,9.0045,189.094,'1/12/2019','15:48','Credit card',180.09,4.7619,9.0045,5.7),
('394-43-4238','B','Mandalay','Member','Male','Home and lifestyle',17.77,5,4.4425,93.2925,'2/15/2019','12:42','Credit card',88.85,4.7619,4.4425,5.4),
 ('400-60-7251','A','Yangon','Normal','Male','Home and lifestyle',74.07,1,3.7035,77.7735,'2/10/2019','12:50','Ewallet',74.07,4.7619,3.7035,9.9),
('400-89-4171','C','Naypyitaw','Normal','Female','Sports and travel',80.97,8,32.388,680.148,'1/28/2019','13:05','Cash',647.76,4.7619,32.388,9.3),
('407-63-8975','A','Yangon','Normal','Male','Food and beverages',73.88,6,22.164,465.444,'3/23/2019','19:16','Ewallet',443.28,4.7619,22.164,4.4),
('414-12-7047','B','Mandalay','Normal','Male','Food and beverages',19.79,8,7.916,166.236,'1/18/2019','12:04','Ewallet',158.32,4.7619,7.916,8.7),
 ('420-11-4919','C','Naypyitaw','Member','Female','Food and beverages',71.39,5,17.8475,374.797,'2/17/2019','19:57','Credit card',356.95,4.7619,17.8475,5.5),
('423-57-2993','B','Mandalay','Normal','Male','Sports and travel',93.39,6,28.017,588.357,'3/27/2019','19:18','Ewallet',560.34,4.7619,28.017,10),
('423-80-0988','C','Naypyitaw','Normal','Male','Sports and travel',76.4,2,7.64,160.44,'1/30/2019','19:42','Ewallet',152.8,4.7619,7.64,6.5),
 ('426-39-2418','C','Naypyitaw','Normal','Male','Electronic accessories',61.41,7,21.4935,451.363,'1/14/2019','10:02','Cash',429.87,4.7619,21.4935,9.8),
 ('434-83-9547','C','Naypyitaw','Member','Male','Food and beverages',38.47,8,15.388,323.148,'1/23/2019','11:51','Cash',307.76,4.7619,15.388,7.7),
('437-58-8131','B','Mandalay','Normal','Female','Fashion accessories',73.52,2,7.352,154.392,'1/15/2019','13:41','Ewallet',147.04,4.7619,7.352,4.6),
('458-41-1477','C','Naypyitaw','Normal','Female','Health and beauty',46.26,6,13.878,291.438,'3/8/2019','17:11','Credit card',277.56,4.7619,13.878,9.5),
('479-26-8945','B','Mandalay','Member','Female','Sports and travel',16.49,2,1.649,34.629,'2/5/2019','11:32','Ewallet',32.98,4.7619,1.649,4.6),
('480-63-2856','C','Naypyitaw','Normal','Male','Food and beverages',19.25,8,7.7,161.7,'1/23/2019','18:37','Ewallet',154,4.7619,7.7,6.6),
 ('483-71-1164','C','Naypyitaw','Normal','Female','Health and beauty',81.3,6,24.39,512.19,'3/8/2019','16:43','Ewallet',487.8,4.7619,24.39,5.3),
('488-25-4221','C','Naypyitaw','Member','Female','Food and beverages',30.41,1,1.5205,31.9305,'2/22/2019','10:36','Credit card',30.41,4.7619,1.5205,8.4),
('504-35-8843','A','Yangon','Normal','Male','Sports and travel',42.47,1,2.1235,44.5935,'1/2/2019','16:57','Cash',42.47,4.7619,2.1235,5.7),
('505-02-0892','B','Mandalay','Member','Male','Health and beauty',42.57,8,17.028,357.588,'2/25/2019','14:12','Ewallet',340.56,4.7619,17.028,5.6),
 ('510-95-6347','B','Mandalay','Member','Female','Food and beverages',48.52,3,7.278,152.838,'3/5/2019','18:17','Ewallet',145.56,4.7619,7.278,4),
 ('512-91-0811','C','Naypyitaw','Normal','Male','Health and beauty',89.75,1,4.4875,94.2375,'2/6/2019','20:05','Credit card',89.75,4.7619,4.4875,6.6),
 ('542-41-0513','B','Mandalay','Member','Female','Electronic accessories',57.49,4,11.498,241.458,'3/15/2019','11:57','Cash',229.96,4.7619,11.498,6.6),
 ('548-46-9322','B','Mandalay','Normal','Male','Food and beverages',39.9,10,19.95,418.95,'2/20/2019','15:24','Credit card',399,4.7619,19.95,5.9),
('549-84-7482','B','Mandalay','Normal','Female','Sports and travel',90.28,9,40.626,853.146,'2/8/2019','11:15','Ewallet',812.52,4.7619,40.626,7.2),
('551-21-3069','C','Naypyitaw','Normal','Female','Electronic accessories',23.07,9,10.3815,218.012,'2/1/2019','11:27','Cash',207.63,4.7619,10.3815,4.9),
('556-86-3144','C','Naypyitaw','Member','Female','Fashion accessories',74.29,1,3.7145,78.0045,'1/13/2019','19:30','Cash',74.29,4.7619,3.7145,5),
('565-80-5980','C','Naypyitaw','Member','Female','Home and lifestyle',47.38,4,9.476,198.996,'1/23/2019','10:25','Cash',189.52,4.7619,9.476,7.1),
('568-90-5112','C','Naypyitaw','Normal','Male','Health and beauty',66.14,4,13.228,277.788,'3/19/2019','12:46','Credit card',264.56,4.7619,13.228,5.6),
('573-58-9734','B','Mandalay','Normal','Female','Fashion accessories',30.37,3,4.5555,95.6655,'3/28/2019','13:41','Ewallet',91.11,4.7619,4.5555,5.1),
('575-30-8091','A','Yangon','Normal','Male','Sports and travel',72.5,8,29,609,'3/16/2019','19:25','Ewallet',580,4.7619,29,9.2),
('584-86-7256','C','Naypyitaw','Member','Male','Sports and travel',34.56,7,12.096,254.016,'3/11/2019','16:07','Credit card',241.92,4.7619,12.096,7.3),
('586-25-0848','A','Yangon','Normal','Female','Sports and travel',12.34,7,4.319,90.699,'3/4/2019','11:19','Credit card',86.38,4.7619,4.319,6.7),
('588-01-7461','C','Naypyitaw','Normal','Female','Food and beverages',33.98,9,15.291,321.111,'3/24/2019','10:43','Cash',305.82,4.7619,15.291,4.2),
('590-83-4591','B','Mandalay','Member','Male','Electronic accessories',87.45,6,26.235,550.935,'2/17/2019','14:40','Credit card',524.7,4.7619,26.235,8.8),
('593-65-1552','C','Naypyitaw','Normal','Female','Home and lifestyle',69.81,4,13.962,293.202,'1/28/2019','20:50','Credit card',279.24,4.7619,13.962,5.9),
('594-34-4444','A','Yangon','Normal','Male','Electronic accessories',97.16,1,4.858,102.018,'3/8/2019','20:38','Ewallet',97.16,4.7619,4.858,7.2),
('597-78-7908','C','Naypyitaw','Normal','Male','Fashion accessories',90.22,3,13.533,284.193,'2/18/2019','19:39','Cash',270.66,4.7619,13.533,6.2),
('606-80-4905','C','Naypyitaw','Member','Female','Sports and travel',19.15,6,5.745,120.645,'1/29/2019','10:01','Credit card',114.9,4.7619,5.745,6.8),
('608-27-6295','B','Mandalay','Member','Male','Electronic accessories',52.89,6,15.867,333.207,'1/19/2019','17:34','Credit card',317.34,4.7619,15.867,9.8),
('608-96-3517','B','Mandalay','Member','Female','Fashion accessories',91.54,4,18.308,384.468,'3/23/2019','19:20','Credit card',366.16,4.7619,18.308,4.8),
('628-34-3388','C','Naypyitaw','Normal','Male','Fashion accessories',27.38,6,8.214,172.494,'1/5/2019','20:54','Credit card',164.28,4.7619,8.214,7.9),
('630-74-5166','A','Yangon','Normal','Male','Sports and travel',62.13,6,18.639,391.419,'3/22/2019','20:19','Cash',372.78,4.7619,18.639,7.4),
 ('633-44-8566','A','Yangon','Member','Male','Food and beverages',49.38,7,17.283,362.943,'3/27/2019','20:35','Credit card',345.66,4.7619,17.283,7.3),
 ('638-60-7125','A','Yangon','Normal','Female','Electronic accessories',99.56,8,39.824,836.304,'2/14/2019','17:03','Credit card',796.48,4.7619,39.824,5.2),
('641-43-2399','B','Mandalay','Normal','Male','Home and lifestyle',25.55,4,5.11,107.31,'1/26/2019','20:23','Ewallet',102.2,4.7619,5.11,5.7),
('642-32-2990','A','Yangon','Normal','Female','Food and beverages',10.96,10,5.48,115.08,'2/2/2019','20:48','Ewallet',109.6,4.7619,5.48,6),
('645-44-1170','A','Yangon','Member','Male','Home and lifestyle',58.07,9,26.1315,548.761,'1/19/2019','20:07','Ewallet',522.63,4.7619,26.1315,4.3),
('659-36-1684','C','Naypyitaw','Member','Male','Sports and travel',57.12,7,19.992,419.832,'1/12/2019','12:02','Credit card',399.84,4.7619,19.992,6.5),
('659-65-8956','B','Mandalay','Member','Male','Fashion accessories',51.36,1,2.568,53.928,'1/16/2019','15:26','Ewallet',51.36,4.7619,2.568,5.2),
('663-86-9076','C','Naypyitaw','Member','Female','Food and beverages',68.54,8,27.416,575.736,'1/8/2019','15:57','Ewallet',548.32,4.7619,27.416,8.5),
 ('668-90-8900','A','Yangon','Normal','Female','Home and lifestyle',93.69,7,32.7915,688.622,'3/10/2019','18:44','Credit card',655.83,4.7619,32.7915,4.5),
('672-51-8681','C','Naypyitaw','Member','Female','Electronic accessories',66.65,9,29.9925,629.843,'1/4/2019','18:19','Credit card',599.85,4.7619,29.9925,9.7),
('685-64-1609','A','Yangon','Member','Female','Fashion accessories',30.14,10,15.07,316.47,'2/10/2019','12:28','Ewallet',301.4,4.7619,15.07,9.2),
('687-47-8271','A','Yangon','Normal','Male','Fashion accessories',98.98,10,49.49,1039.29,'2/8/2019','16:20','Credit card',989.8,4.7619,49.49,8.7),
('695-51-0018','B','Mandalay','Normal','Female','Sports and travel',34.84,4,6.968,146.328,'2/10/2019','18:36','Cash',139.36,4.7619,6.968,7.4),
('699-01-4164','C','Naypyitaw','Normal','Male','Health and beauty',41.5,4,8.3,174.3,'3/12/2019','19:58','Credit card',166,4.7619,8.3,8.2),
('700-81-1757','A','Yangon','Normal','Female','Electronic accessories',26.31,5,6.5775,138.128,'1/18/2019','20:59','Credit card',131.55,4.7619,6.5775,8.8),
('716-39-1409','B','Mandalay','Normal','Male','Health and beauty',30.35,7,10.6225,223.072,'3/19/2019','18:19','Cash',212.45,4.7619,10.6225,8);

SELECT * FROM tbprodutos;

SELECT id_cliente, cidade, tipoCliente, custoTotal FROM tbprodutos WHERE custoTotal >= 800.00;

SELECT id_cliente, filial, cidade, tipoCliente FROM tbprodutos WHERE cidade > 'L';
SELECT id_cliente, filial, cidade, tipoCliente FROM tbprodutos WHERE cidade >= 'L';

SELECT cidade, tipoCliente, tipoPgto, custoTotal FROM tbprodutos WHERE custoTotal BETWEEN 200 AND 400;

SELECT id_cliente, filial, cidade, linhaProduto FROM tbprodutos WHERE cidade LIKE '%taw';

SELECT id_cliente, filial, cidade, linhaProduto FROM tbprodutos WHERE cidade LIKE 'Nay%';

SELECT id_cliente, tipoCliente, tipoPgto FROM tbprodutos WHERE tipoPgto = 'Credit card' OR tipoPgto = 'Cash';
SELECT id_cliente, tipoCliente, tipoPgto FROM tbprodutos WHERE tipoPgto  IN ('Credit card', 'Cash');

SELECT id_cliente, tipoCliente, tipoPgto FROM tbprodutos WHERE tipoPgto NOT IN ('Yangon', 'Credit card', 'Cash');

# Exercícios
SELECT id_cliente, cidade, tipoPgto, custoTotal FROM tbprodutos WHERE custoTotal < 100;
SELECT id_cliente, filial, cidade, tipoPgto, quantidade FROM tbprodutos WHERE quantidade > 5;
SELECT id_cliente, filial, cidade, tipoPgto, quantidade FROM tbprodutos WHERE quantidade BETWEEN 6 AND 10;

SELECT id_cliente, tipoCliente, tipoPgto, linhaProduto, avaliacao FROM tbprodutos WHERE linhaProduto LIKE 'Food%' AND avaliacao > 9;

SELECT * FROM tbprodutos WHERE linhaProduto NOT LIKE 'Fashion%' AND tipoPgto NOT LIKE 'Credit card';

SELECT * FROM tbprodutos WHERE tipoPgto = 'Cash' AND  tipoCliente = 'Member';

SELECT * FROM tbprodutos WHERE avaliacao < 3 AND quantidade = 1;

SELECT cidade, tipoCliente, precounitario, avaliacao FROM tbprodutos WHERE tipoPgto = 'Cash' OR tipoCliente = 'Member';









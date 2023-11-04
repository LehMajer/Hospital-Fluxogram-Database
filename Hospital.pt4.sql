CREATE DATABASE IF NOT EXISTS hospital;

USE hospital;
-- DROP TABLE ativos;
-- DROP TABLE medicos;

CREATE TABLE IF NOT EXISTS pacientes(
	id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    nome_p VARCHAR(255) NOT NULL,
    cpf_p VARCHAR(11) NOT NULL,
    rg_p VARCHAR(55) NOT NULL,
    data_nasc_p VARCHAR(255) NOT NULL,
    email_p VARCHAR(255),
	endereco_p VARCHAR(255) NOT NULL,
    telefone_p VARCHAR(11),
	tipo_s VARCHAR(4)
);
INSERT INTO pacientes (nome_p, cpf_p, rg_p, data_nasc_p, email_p, endereco_p, telefone_p, tipo_s)
VALUES ('Milena Daiane Corte Real', 01129425479, 493387602, '11-10-1994','milena_daiane_cortereal@robiel.com.br','Rua Melo Leitão',997606906,'AB+'),
('Antonella Lara Benedita Moreira', 96280399702, 356717793, '19-03-1994', 'antonella_moreira@marcossousa.com', 'Travessa Raimundo Coutinho', 986375819, 'B+'),
('Yago Bruno Almada', 92565722303, 503506229, '01-03-1994', 'yago_bruno_almada@tedde.com.br', 'Rua B1', 984591651, 'A+'),
('Calebe Joaquim da Conceição', 34780067162, 400397468, '27-01-1994', 'calebe_joaquim_daconceicao@lvnonline.com.be', 'Praça Pedro Carneiro da Silva', 983931103, 'A-'), 
('Fabiana Mariah Laura Rocha', 00185771807, 467368569, '02-08-1984', 'fabiana.mariah.rocha@tetrapark.com', 'Vila dos Milagres', 988128185, 'B-'), 
('Benedita Stefany da Mata', 26923185793, 335166830, '15-01-1997', 'beneditastefanydamata@uol.om.br', 'Rua das Laranjeiras', 988344819, 'A-'), 
('Ana Alice Pinto', 04705508300, 248688261, '22-02-1994', 'anaaliinto@vectrausinagem.com.br', 'Rua Pai Celestial', 985786256, 'AB-'), 
('Roberto Anderson Pedro Bernardes', 18079055351, 304906098, '23-02-1987', 'roberto_bernardes@patrezao.com.br', 'Rua Conselheiro Mafra', 993497906, 'A-'), 
('Olivia Sophia Peixoto', 71424741220, 391813134, '11-04-1988', 'olivia_peixoto@vasconcelosdias.com', 'Vila Rodrigues', 984838917, 'AB+'), 
('Francisca Antonella Sueli Figueiredo', 33876900530, 253548056, '22-04-1994', 'franciscaantonellafigueiredo@inpa.gov.br', 'Rua das Rosas', 985604916, 'AB+'), 
('Kaique Henry Kevin Moraes', 69098331203, 269579308, '27-10-1997', 'kaiquehenrymoraes@aliancacadeiras.com.br', 'Rua Ministro Alfredo Nasser', 992571879, 'B+'),
('André Carlos Theo da Costa', 15783082678, 391825288, '27-03-1999', 'andre_carlos_dacosta@grupoaguaviva.com.br', 'Rua Osmar Eloy Meira', 998936816, 'O+'), 
('Nair Heloisa Alessandra Nascimento', 40116077549, 369645261, '22-05-1994', 'nair_heloisa_nascimento@fransystems.com.br', 'Avenida Professor Santos Ferraz', 994620920, 'O+'), 
('Isaac Bernardo Assis', 61108639984, 471590538, '14-02-1995', 'isaac_bernardo_assis@reconciliare.com.br', 'Rua Dez', 997270991, 'B-'),
('Isis Josefa Assunção', 30977612333, 404947050, '18-09-1994', 'isis-assuncao88@wizardararaquara.com.br', 'Rua Luiz Aureliano da Silva', 987520077, 'AB-');

CREATE TABLE IF NOT EXISTS convenios(
	id__convenio INT PRIMARY KEY AUTO_INCREMENT,
    nome_c VARCHAR(255) NOT NULL,
    cnpj VARCHAR(14),
    tempo_carencia VARCHAR(255)
);
INSERT INTO convenios (nome_c, cnpj, tempo_carencia) VALUES ('Rodrigo Edson Almada', 40524334647798, '3 meses'),
('Felipe Raimundo Vinicius Pereira',37562544256814, '12 meses'),
('Tiago Cláudio Teixeira', 31337512367195, '10 meses'),
('José Bento da Rocha', 04823571389588, '24 meses');

CREATE TABLE IF NOT EXISTS medicos(
	id_medico INT PRIMARY KEY AUTO_INCREMENT,
    nome_m VARCHAR(255) NOT NULL,
    cpf_m VARCHAR(11) NOT NULL,
    rg_m VARCHAR(55) NOT NULL,
    crm VARCHAR(55) NOT NULL,
    especialidade VARCHAR(255),
    endereco_m VARCHAR(255)
);
INSERT INTO medicos (nome_m, cpf_m, rg_m, crm, especialidade, endereco_m) VALUES ('Ester Antônia Teixeira', 67994859305, 224370042, 544287069,'Nutricionista', 'Quadra SGAN 611 Módulo G'),
('Rafael Eduardo dos Santos', 42533301000, 205323558, 007466318,'Clinico Geral', 'Rua da Horta'),
('Teresinha Malu Caldeira', 70512262314, 480362981, 986477594,'Psicologo', 'Quadra CL 316 Bloco B'),
('Tomás Paulo Carlos Sales', 86058936055, 427013197, 111364097,'Dermatologista', 'Rua Água Boa'),
('Miguel Raul Guilherme Porto', 25402317569, 201793970, 538812322,'Gastrenterologia', 'Rua Onça de Pitangui'), 
('Geraldo Miguel Novaes', 65133421982, 387299907, 866703513,'Pediatria', 'Rua José Vieira dos Santos'),
('Isabella Lara Valentina Silva', 31611395267, 168352187, 220416386,'Alergista', 'Rua Tomé de Sousa'),
('Ana Lara Patrícia da Cunha', 92670217109, 269944734, 557388122,'Cirurgiao Geral', 'Praça dos Pioneiros'),
('Milena Miranda Barros', 62547203960, 118852127, 775390123,'Dentista', 'Avenida Armando Limeira Pontes'),
('Benedita Simone Gabrielly Freitas', 39605826178, 410227778, 120698365,'Radiologista', 'Rua Moçambique');

CREATE TABLE IF NOT EXISTS ativos(
	id_ativo INT PRIMARY KEY AUTO_INCREMENT,
    ativo VARCHAR(255)
);
INSERT INTO ativos (ativo) VALUES ('Ativo'),('Ativo'),('Desativado'),('Ativo'),('Ativo'),('Ativo'),('Desativado'),('Ativo'),('Ativo'),('Ativo');

CREATE TABLE IF NOT EXISTS enfermeiros(
	id_enfermeiro INT PRIMARY KEY AUTO_INCREMENT,
    nome_e VARCHAR(255) NOT NULL,
    cpf_e VARCHAR(11) NOT NULL,
    rg_e VARCHAR(55) NOT NULL,
    dt_nasc VARCHAR(255) NOT NULL,
    cre VARCHAR(55) NOT NULL,
    endereco_e VARCHAR(255)
);
INSERT INTO enfermeiros (nome_e, cpf_e, rg_e, dt_nasc, cre, endereco_e) VALUES ('Leonardo Miranda Oliveira', 00417278608, 440735087, '16/09/1994', 743986209, 'Rua 94D'),
('Isabela Rosa Viana', 05229574984, 453819849, '20/06/1994', 223874028, 'Rua Idalino Soares'), 
('Marinez Miranda Teixeira', 58514006096, 405260052, '09/02/1994', 069367351, 'Rua Itela Ferro Soldera'),
('Catarina Nair Heloise da Rosa', 68144165144, 309638628, '13/02/1994', 871193654, 'Rua Doutor Sandino Erasmo de Amorim'),
('Daniela Isis Barros', 38061786745, 405385559, '02/02/1994', 448091287, 'Rua das Fênix'),
('Alexandre João Vieira', 81782473300, 248252501, '19/08/2002', 992350187, 'Avenida Senador Salgado Filho'),
('Aparecida Emanuelly da Costa', 43894611685, 179649516, '09/07/2003', 112906489, 'Rua Enedina de Oliveira Santos'),
('Marina Rita Lima', 44135169660, 353789331, '25/02/1971', 720091782, 'Rua Gonçalves Dias'),
('Enrico Matheus Kauê Melo', 12908507633, 306572618, '26/08/1979', 823052109, 'Rua Alexandria'),
('Henry Luís Oliveira', 60720718724, 353251835, '03/02/1984', 446209467, 'Rua Canário');
	
    CREATE TABLE IF NOT EXISTS enfermeiros2(
	id_enfermeiro2 INT PRIMARY KEY AUTO_INCREMENT,
    nome_e2 VARCHAR(255) NOT NULL,
    cpf_e2 VARCHAR(11) NOT NULL,
    rg_e2 VARCHAR(55) NOT NULL,
    dt_nasc2 VARCHAR(255) NOT NULL,
    cre2 VARCHAR(55) NOT NULL,
    endereco_e2 VARCHAR(255)
);
INSERT INTO enfermeiros2 (nome_e2, cpf_e2, rg_e2, dt_nasc2, cre2, endereco_e2) VALUES ('Leonardo Miranda Oliveira', 00417278608, 440735087, '27/09/1998', 743986209, 'Rua 94D'),
('Isabela Rosa Viana', 05229574984, 453819849, '20/06/1994', 223874028, 'Rua Idalino Soares'), 
('Marinez Miranda Teixeira', 58514006096, 405260052, '09/02/1994', 069367351, 'Rua Itela Ferro Soldera'),
('Catarina Nair Heloise da Rosa', 68144165144, 309638628, '13/02/1994', 871193654, 'Rua Doutor Sandino Erasmo de Amorim'),
('Daniela Isis Barros', 38061786745, 405385559, '02/02/1994', 448091287, 'Rua das Fênix'),
('Alexandre João Vieira', 81782473300, 248252501, '19/08/2002', 992350187, 'Avenida Senador Salgado Filho'),
('Aparecida Emanuelly da Costa', 43894611685, 179649516, '09/07/2003', 112906489, 'Rua Enedina de Oliveira Santos'),
('Marina Rita Lima', 44135169660, 353789331, '25/02/1971', 720091782, 'Rua Gonçalves Dias'),
('Enrico Matheus Kauê Melo', 12908507633, 306572618, '26/08/1979', 823052109, 'Rua Alexandria'),
('Henry Luís Oliveira', 60720718724, 353251835, '03/02/1984', 446209467, 'Rua Canário');

CREATE TABLE IF NOT EXISTS receitas(
	id_receita INT PRIMARY KEY AUTO_INCREMENT,
    remedio VARCHAR(255),
    remedio2 VARCHAR(255),
    dosagem VARCHAR(255),
    tempo VARCHAR(255)
);
INSERT INTO receitas (remedio, remedio2, dosagem, tempo) VALUES ('Azitromicina','Rinosoro', 'Uma vez ao dia', '2 semanas'),
('Novalgina','Dexametasona', 'Tomar um a noite e outro de dia', '3 dias'),
('Ansetron','Dramin','Tomar um a noite', 'Continuo'),
('Claricid','Bupropiona','Tomar de 12 em 12 horas', '5 dias'),
('Luftal','Tramal','Tomar um a noite e outro de dia', '1 semana'),
('Morfina','Paracetamol','De 6 em 6 horas', '2 dias'),
('Ducolax','Artrinid','Tomar um ao acordar', '5 semanas'),
('Cetoprofeno','Motilium','Tomar um a noite e outro de dia', '7 dias'),
('Propanolol','Lasix','Tomar antes das refeiçoes', '11 dias'),
('AAS','Meropenem','Tomar um por dia', '6 dias');

CREATE TABLE IF NOT EXISTS consultas2(
	id_consulta2 INT PRIMARY KEY AUTO_INCREMENT,
    id__convenio INT,
    id_medico INT,
	FOREIGN KEY (id__convenio) REFERENCES convenios(id__convenio),
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico),
    data_con2 VARCHAR(255) NOT NULL,
    id_receita INT,
    FOREIGN KEY (id_receita) REFERENCES receitas(id_receita)
);
INSERT INTO consultas2 (id__convenio, id_medico, data_con2, id_receita)  VALUES(1, 2, '30/01/2015', 2),
(4, 5, '21/02/2016', 5),
(3, 8, '15/03/2016', 1),
(2, 9, '03/05/2017', 4);

CREATE TABLE IF NOT EXISTS consultas(
	id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    id_medico INT,
	FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico),
    data_con VARCHAR(255) NOT NULL,
    valor_con VARCHAR(255),
    id_receita INT,
    FOREIGN KEY (id_receita) REFERENCES receitas(id_receita)
);
INSERT INTO consultas (id_paciente, id_medico, data_con, valor_con, id_receita) VALUES 
(1,1, '30/09/2015',350,1),(3,2, '15/04/2017', 500,5),(5,4, '09/02/2017',100,2),(4,5,'04/11/2017',120,4),
(10,7, '05/07/2015',260,3),(11,10, '22/01/2018',200,10),(9,6, '23/02/2018',170,2),(1,9, '01/02/2015',150,9),
(17,2, '15/11/2016',110,10),(14,1, '19/06/2019',370,4),(14,7, '11/03/2019',120,7),(2,2, '19/08/2015',230,6),
(7,9, '30/10/2018',150,1),(6,5, '06/10/2015',400,8),(2,1, '26/03/2016',210,3),(15,3, '18/09/2017',500,1),
(4,3, '11/05/2018',230,3),(7,4, '25/12/2018',300,9),(13,3, '28/04/2019',310,2),(9,6, '20/04/2019',410,2);

CREATE TABLE IF NOT EXISTS quartos(
	id_quarto INT PRIMARY KEY AUTO_INCREMENT,
    tipo_q VARCHAR(255) NOT NULL,
    valor_q VARCHAR(6) NOT NULL
);
INSERT INTO quartos (tipo_q, valor_q) VALUES ('Apartamento', 1000),('Quarto Duplo', 800),('Enfermaria',500),('Quarto', 300);

CREATE TABLE IF NOT EXISTS internacoes(
	id_internacao INT PRIMARY KEY AUTO_INCREMENT,
    procedimento VARCHAR(255),
    id_paciente INT,
    id_medico INT,
    id_enfermeiro INT,
    id_enfermeiro2 INT,
    id_quarto INT,
	FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico),
	FOREIGN KEY (id_enfermeiro) REFERENCES enfermeiros(id_enfermeiro),
    FOREIGN KEY (id_enfermeiro2) REFERENCES enfermeiros2(id_enfermeiro2),
    FOREIGN KEY (id_quarto) REFERENCES quartos(id_quarto),
    data_entr VARCHAR(255) NOT NULL,
    data_prev VARCHAR(255) NOT NULL,
    data_sai VARCHAR(255) NOT NULL,
    id_receita INT,
    FOREIGN KEY (id_receita) REFERENCES receitas(id_receita)
);
INSERT INTO internacoes (procedimento, id_paciente, id_medico, id_enfermeiro, id_enfermeiro2, id_quarto, data_entr, data_prev, data_sai, id_receita)
VALUES ('Retirada da Vesicula', 5, 3, 5, 3, 1, '13/04/2020', '23/04/2020', '22/04/2020', 7),
('Retirada Apendice', 3, 6, 7, 3, 2, '05/06/2015', '10/06/2015', '10/06/2015', 10),
('Fratura Exposta', 5, 2, 5, 7, 3, '30/02/2016', '15/03/2016', '15/03/2016', 9),
('Bariatrica', 7, 1, 8, 9, 1, '22/07/2017', '30/07/2017', '30/07/2017', 8),
('AVC', 9, 8, 4, 4, 2, '01/12/2017', '05/12/2017', '06/12/2017', 3),
('Ataque Cardiaco', 7, 4, 6, 10, 1, '06/01/2018', '14/01/2018', '14/01/2018', 2),
('Braço Quebrado', 1, 10, 2, 1, 4, '13/09/2019', '23/09/2019', '22/09/2019', 4);

SELECT * FROM medicos
INNER JOIN ativos ON medicos.id_medico = ativos.id_ativo;


create database hospitais;
use hospitais;

create table Beneficiário(
	id int primary key auto_increment,
	nome varchar(255),
	data_nasc date,
	sexo char(1)
);

create table Medico(
	id int primary key auto_increment,
	nome VARCHAR(255),
  crm VARCHAR(10),
  data_nasc DATE
);

create table Especialidade(
	id int primary key auto_increment,
	especialidade VARCHAR(255),
	CBOS VARCHAR(10)
);

create table Procedimento(
	id int primary key auto_increment,
	descricao_procedimento VARCHAR(255),
	tipo_procedimento VARCHAR(255)
);

create table Medico_Especialidade(
  id int auto_increment PRIMARY KEY,
	medicoID INT,
	especialidadeID INT,
	FOREIGN KEY (medicoID) REFERENCES Medico(id),
	FOREIGN KEY (especialidadeID) REFERENCES Especialidade(id)
);

create table LocalAtendimento(
	id int primary key auto_increment,
	endereco VARCHAR(255),
  medico_especialidadeId INT,
	FOREIGN KEY (medico_especialidadeId) REFERENCES Medico_Especialidade(id)
);

create table Atendimento(
  id int auto_increment primary key,
	beneficiarioID INT,
	localID INT,
	procedimentoID INT,
	data DATE,
	FOREIGN KEY (beneficiarioID) REFERENCES Beneficiário(id),
	FOREIGN KEY (localID) REFERENCES LocalAtendimento(id),
	FOREIGN KEY (procedimentoID) REFERENCES Procedimento(id)
);

INSERT INTO `Beneficiário` (`nome`,`data_nasc`,`sexo`)
VALUES
  ("Graham Calderon","19-10-22","M"),
  ("Kenyon Jarvis","16-03-23","F"),
  ("Dale Spears","13-05-24","M"),
  ("Amery Howe","20-01-23","F"),
  ("Stone Alston","29-12-22","F"),
  ("Macey Haynes","12-01-23","M"),
  ("Keefe Vargas","31-03-24","F"),
  ("Lev Garrett","07-12-23","M"),
  ("Laith Rojas","08-04-23","M"),
  ("Graham Martin","23-06-24","F"),
  ("Madison Blake","04-07-24","F"),
  ("Mechelle Miller","24-09-23","M"),
  ("Rogan Montoya","17-05-24","M"),
  ("Idola Stevens","10-12-22","M"),
  ("Bradley Dean","20-02-23","F"),
  ("Jayme Hinton","05-01-24","M"),
  ("Aileen Salazar","16-08-22","F"),
  ("Cameran Mcintyre","28-11-23","F"),
  ("Nash Tucker","28-11-22","M"),
  ("Amy Lawson","23-05-24","M"),
  ("Bruno Rosales","15-10-23","F"),
  ("Ruby Powers","31-08-22","M"),
  ("Baker Stuart","09-12-23","F"),
  ("Cooper Parker","03-05-24","M"),
  ("Odysseus Randolph","15-11-22","M"),
  ("Reese Trujillo","04-12-23","F"),
  ("Shelley Wooten","21-10-23","F"),
  ("Fuller Hyde","19-04-24","M"),
  ("Austin Cline","22-02-23","M"),
  ("Nicole Dickson","02-11-23","M"),
  ("Kitra Hurst","27-03-24","F"),
  ("Heather Davis","12-11-23","F"),
  ("Ima Hawkins","20-05-24","M"),
  ("Kuame Goodwin","24-04-23","M"),
  ("Ignatius England","03-08-23","F"),
  ("Tad Banks","18-11-23","M"),
  ("Camille Villarreal","01-10-23","F"),
  ("Candice Larson","09-03-23","F"),
  ("Demetria Landry","17-12-22","M"),
  ("Lewis Jefferson","23-12-23","F"),
  ("Cole Burnett","07-10-22","F"),
  ("Octavia Hunter","09-02-23","M"),
  ("Charlotte Cooper","16-05-23","M"),
  ("Gisela Terrell","13-07-23","F"),
  ("Hanna Rice","11-06-23","F"),
  ("Ali Bishop","31-07-22","M"),
  ("Yolanda Levine","13-07-22","M"),
  ("Lionel Valenzuela","22-01-24","M"),
  ("Hamish Harper","31-03-23","F"),
  ("Barry Salinas","20-02-23","M"),
  ("Gage Ramos","04-06-24","F"),
  ("Callum Erickson","27-08-22","F"),
  ("Julian Cleveland","24-11-23","F"),
  ("Faith Moran","18-01-23","F"),
  ("Allegra Marsh","23-03-23","F"),
  ("Erasmus Jarvis","23-08-22","M"),
  ("Asher Roberts","23-11-22","M"),
  ("Shay Garrison","03-03-23","F"),
  ("Velma Powell","23-01-23","F"),
  ("Mariam Gilliam","03-08-22","M"),
  ("Reuben Nelson","27-09-22","M"),
  ("Uta Graham","23-07-22","M"),
  ("Benjamin Ferrell","02-10-23","F"),
  ("Vielka Beck","19-10-22","F"),
  ("Owen Randall","21-06-23","M"),
  ("Maisie Schneider","15-04-23","F"),
  ("Rudyard Cain","09-12-23","M"),
  ("Megan Hull","08-12-23","F"),
  ("Brent Heath","26-07-22","M"),
  ("Brendan Ferrell","07-12-22","M"),
  ("Eliana Mayo","06-08-23","M"),
  ("Daria Riggs","18-07-22","F"),
  ("Melvin Pennington","18-01-24","M"),
  ("Aiko Hebert","24-09-23","M"),
  ("Blaze Craig","24-12-23","F"),
  ("Bernard Shaw","17-09-22","F"),
  ("Juliet Potts","06-11-22","M"),
  ("Rachel Craft","19-03-23","M"),
  ("Leroy Tyson","17-02-24","M"),
  ("Sheila Wilcox","07-02-23","F"),
  ("Malcolm Salinas","15-05-24","M"),
  ("Kane Mack","27-09-23","M"),
  ("Quentin Golden","14-05-23","F"),
  ("Aquila Whitehead","27-01-23","M"),
  ("Hu Ingram","15-10-23","M"),
  ("Oliver Copeland","14-11-22","F"),
  ("Jacqueline Benjamin","26-05-23","M"),
  ("Hamish Wall","21-09-22","F"),
  ("Nichole Galloway","17-07-22","M"),
  ("Kane Mcintosh","27-04-23","F"),
  ("Berk Hansen","18-05-24","M"),
  ("Blake Brown","08-07-24","M"),
  ("Holmes Sparks","27-09-22","F"),
  ("Shad Duran","20-06-23","M"),
  ("Jasper Finley","03-05-23","F"),
  ("Lavinia Church","13-06-23","F"),
  ("Colorado Hudson","19-08-22","M"),
  ("Todd Dunlap","18-12-22","M"),
  ("Jared Stanley","22-12-23","M"),
  ("Hermione Page","07-07-23","M");

INSERT INTO `Medico` (`nome`,`crm`,`data_nasc`)
VALUES
  ("Raja French","462642","1965-12-05"),
  ("Winter Jacobson","657596","1975-05-05"),
  ("Blythe Nielsen","934760","1946-10-30"),
  ("Vladimir York","643184","1945-04-16"),
  ("Cody Castaneda","874265","1947-12-24"),
  ("Julian Coffey","740641","1986-01-14"),
  ("Pandora Giles","848543","1939-02-05"),
  ("Oprah Murray","147507","1938-07-25"),
  ("Kirby Finch","037836","1952-03-14"),
  ("Cullen Hicks","357315","1989-02-01"),
  ("Joseph Morin","117665","1976-07-25"),
  ("Alexis Burns","073546","2001-01-02"),
  ("Xanthus Garcia","548315","1932-10-15"),
  ("Stephen Velazquez","354169","1976-04-23"),
  ("Rooney Boyd","266134","1980-09-09"),
  ("Kyla Vang","531238","1959-02-01"),
  ("Helen Kidd","754132","2001-01-23"),
  ("Rebekah Gaines","223508","1995-05-14"),
  ("Wang Armstrong","153448","1943-04-18"),
  ("Harding Stephenson","571942","1967-02-05"),
  ("Audra Valencia","044159","1993-03-26"),
  ("Ciaran Payne","641835","1948-05-11"),
  ("Chadwick Woods","243173","1962-03-30"),
  ("Carl Nixon","842872","1981-11-16"),
  ("Ila Whitley","202096","1961-12-28"),
  ("Nayda Bush","983358","2004-01-03"),
  ("Gary Taylor","641891","1976-07-13"),
  ("Simone Cervantes","972211","1993-03-15"),
  ("Wyoming Hester","187147","1959-08-21"),
  ("Audrey Ware","543455","1997-09-16"),
  ("Karly Woodward","332705","1981-09-28"),
  ("Sydney Bradshaw","179408","1953-06-30"),
  ("Wang Stanton","527113","1932-07-22"),
  ("Melanie Wood","363354","1968-08-25"),
  ("Hu Huber","752849","2004-02-13"),
  ("Lionel Leonard","248563","2000-06-22"),
  ("Vladimir Sharp","476441","1978-08-08"),
  ("Dorian Washington","703745","1931-01-10"),
  ("Jayme Meadows","857651","1994-08-22"),
  ("Imogene Justice","896596","1980-08-13"),
  ("Harper Eaton","658615","1966-12-01"),
  ("Clare Kirby","872158","1951-02-15"),
  ("Baxter Wall","736722","1961-08-26"),
  ("Yuri Mckee","820132","1988-04-29"),
  ("Odessa Bates","737523","1945-02-05"),
  ("Lars Oliver","367785","1979-01-15"),
  ("Dahlia Ellis","860471","1986-06-24"),
  ("Mikayla Wiggins","466246","1987-03-03"),
  ("Astra Rivers","250511","1975-07-18"),
  ("Octavius Burris","035852","1931-10-20"),
  ("Eric O'donnell","637135","1939-04-24"),
  ("Dillon Willis","931054","1977-02-03"),
  ("Danielle Suarez","590357","1931-09-21"),
  ("Kenyon George","324373","1994-02-19"),
  ("Mannix Foley","587638","1970-06-13"),
  ("Hall Mills","681241","1968-02-18"),
  ("Kerry Chaney","164363","1944-12-05"),
  ("Nigel Griffin","327345","1968-07-31"),
  ("Kuame Fischer","484125","1985-06-14"),
  ("Alexander Jimenez","261666","1950-10-19"),
  ("Eric Hoffman","468522","1934-09-07"),
  ("Kaye Vang","378401","1983-09-04"),
  ("Martina Jacobson","378404","1985-09-13"),
  ("Kiona Velasquez","482771","1998-05-25"),
  ("Belle Blair","834283","1944-08-19"),
  ("Odessa Cherry","168593","1994-03-29"),
  ("Chastity Tyson","843165","1933-06-04"),
  ("Vaughan Gay","851347","2003-08-28"),
  ("Tyler Russo","413110","1934-05-01"),
  ("Victoria Rivers","348566","1970-10-04"),
  ("Rose Cannon","452409","1937-12-09"),
  ("Richard Witt","910412","1936-05-22"),
  ("Carolyn Duncan","308238","1939-06-08"),
  ("Shannon Stewart","851733","1986-01-31"),
  ("Judah Welch","174536","1972-09-03"),
  ("Declan Perez","796814","1975-02-26"),
  ("Freya Webster","254187","1932-05-15"),
  ("Orlando Padilla","263831","1943-09-18"),
  ("Dylan Parker","877715","1981-06-08"),
  ("Sean Austin","728133","1943-03-24"),
  ("Kitra Rhodes","746344","1993-01-26"),
  ("Keaton Burris","703583","1985-12-22"),
  ("Price West","427842","1968-10-25"),
  ("Dillon Park","584814","2003-11-23"),
  ("Adara Rodriquez","414535","1965-02-02"),
  ("Chanda Gallegos","816137","1961-02-07"),
  ("Bo Pratt","736372","1982-12-26"),
  ("Carol Bryant","805478","1976-04-12"),
  ("Ruby Hurst","291833","1968-02-17"),
  ("Dante Kim","710226","1993-09-28"),
  ("Ray Bartlett","867908","1940-07-04"),
  ("Harding Wooten","409374","1946-04-09"),
  ("Larissa Clarke","647755","1932-04-17"),
  ("Rhonda Kaufman","188815","1966-11-18"),
  ("Lucas Guerrero","154312","1963-03-08"),
  ("Xander Whitley","285765","1970-12-25"),
  ("Laurel Terrell","466296","1966-05-02"),
  ("Blythe Ryan","805482","1944-07-11"),
  ("Sheila Sosa","133764","1947-05-18"),
  ("Justin Stuart","562222","1933-11-18");
  
  INSERT INTO `Especialidade` (`especialidade`,`CBOS`)
VALUES
  ("Cardiologia","1646-67"),
  ("Pediatria","5241-34"),
  ("Dermatologia","3333-25"),
  ("Ginecologia","7381-75"),
  ("Neurologia","6791-26"),
  ("Ortopedia","8479-84"),
  ("Oftalmologia","1236-42"),
  ("Endocrinologia","8586-22"),
  ("Psiquiatria","9421-00"),
  ("Urologia","4101-57"),
  ("Oncologia","7122-14"),
  ("Nefrologia","2204-75"),
  ("Otorrinolaringologia","7277-64"),
  ("Gastroenterologia","1542-12"),
  ("Angiologia","5187-20"),
  ("Radiologia","3321-94"),
  ("Oncologia","9317-36"),
  ("Hematologia","3654-18"),
  ("Cirurgia Geral","4554-74"),
  ("Neurocirurgia","4777-59"),
  ("Reumatologia","8670-03"),
  ("Nutrição","1382-35"),
  ("Fisioterapia","5626-48"),
  ("Psicologia","6448-23"),
  ("Odontologia","5144-27"),
  ("Terapia Ocupacional","6585-51"),
  ("Oncologia Pediátrica","9189-69"),
  ("Cirurgia Plástica","2139-21"),
  ("Nefrologia Pediátrica","8685-33"),
  ("Psiquiatria Infantil","7022-91"),
  ("Geriatria","7187-39"),
  ("Medicina Intensiva","2227-90"),
  ("Cirurgia Vascular","4810-51"),
  ("Imunologia","6514-12"),
  ("Dermatologia Estética","0324-04"),
  ("Medicina do Sono","8921-58"),
  ("Neurologia Infantil","2124-48"),
  ("Anestesiologia","3676-28"),
  ("Medicina do Trabalho","0980-95"),
  ("Medicina Esportiva","3922-89"),
  ("Oncologia Clínica","5887-64"),
  ("Medicina Legal","5276-59"),
  ("Psicologia Infantil","8563-92"),
  ("Alergologia","9154-58"),
  ("Medicina Preventiva","2672-19"),
  ("Acupuntura","9241-27"),
  ("Cirurgia Torácica","4285-65"),
  ("Neonatologia","6581-65"),
  ("Medicina Nuclear","4154-02"),
  ("Medicina de Família","9882-85"),
  ("Patologia","4626-28"),
  ("Cirurgia Cardiovascular","5271-55"),
  ("Hepatologia","6515-16"),
  ("Genética Médica","2517-28"),
  ("Cirurgia Bucomaxilofacial","4501-82"),
  ("Fonoaudiologia","1320-81"),
  ("Homeopatia","7251-23"),
  ("Medicina do Adolescente","5365-46"),
  ("Medicina do Envelhecimento","8717-71"),
  ("Medicina Estética","6567-79"),
  ("Medicina do Tráfego","6151-73"),
  ("Medicina Tropical","8341-73"),
  ("Medicina Hiperbárica","2371-17"),
  ("Cirurgia Robótica","4101-25"),
  ("Psicologia Organizacional","2162-26"),
  ("Medicina Fetal","3270-33"),
  ("Cirurgia Plástica Reparadora","4513-57"),
  ("Medicina Aeroespacial","2196-15"),
  ("Cirurgia Bariátrica","4415-14"),
  ("Psicologia Hospitalar","8854-61"),
  ("Medicina Legal","3241-09"),
  ("Neurocirurgia Pediátrica","4971-05"),
  ("Cirurgia da Mão","3610-86"),
  ("Fisioterapia Respiratória","1964-45"),
  ("Cirurgia Pediátrica","3047-95"),
  ("Cirurgia Plástica Facial","1744-46"),
  ("Ortopedia Pediátrica","3717-01"),
  ("Cirurgia Oncológica","5322-53"),
  ("Nutrição Clínica","3814-54"),
  ("Cirurgia do Trauma","1578-83"),
  ("Medicina Esportiva","1584-66"),
  ("Psicologia Esportiva","2255-09"),
  ("Fisioterapia Esportiva","5987-73"),
  ("Medicina Ortomolecular","8349-73"),
  ("Musicoterapia","2183-95"),
  ("Neurofisiologia Clínica","2048-12"),
  ("Cirurgia Videolaparoscópica","1238-25"),
  ("Cirurgia de Cabeça e Pescoço","3417-98"),
  ("Medicina de Emergência","0113-67"),
  ("Medicina do Trabalho","9188-54"),
  ("Dor","6372-84"),
  ("Medicina do Estilo de Vida","5962-53"),
  ("Hospice","5668-21"),
  ("Medicina Intensiva Pediátrica","3328-55"),
  ("Medicina Fetal","1171-35"),
  ("Reprodução Assistida","8955-16"),
  ("Geriatria","0315-13"),
  ("Fisiatria","9964-21"),
  ("Alergia e Imunologia Pediátrica","2322-67"),
  ("Psiquiatria Forense","3954-14");

  INSERT INTO `Procedimento` (`descricao_procedimento`,`tipo_procedimento`)
VALUES
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta"),
  ("pulmão braço mão joelho costela","exame cirurgia consulta diagnóstico biópsia"),
  ("braço mão joelho costela bronquios","cirurgia consulta"),
  ("joelho costela","cirurgia consulta diagnóstico biópsia"),
  ("pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","consulta"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","cirurgia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","cirurgia consulta"),
  ("braço mão","cirurgia consulta diagnóstico biópsia"),
  ("pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico"),
  ("pulmão braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("braço mão","exame cirurgia"),
  ("coração pulmão braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("braço mão joelho","cirurgia consulta diagnóstico"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("mão joelho","exame cirurgia consulta diagnóstico biópsia"),
  ("braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico"),
  ("pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão","cirurgia consulta diagnóstico"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("mão joelho costela","exame cirurgia consulta diagnóstico biópsia"),
  ("pulmão braço mão joelho costela","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("bronquios cabeça","cirurgia consulta"),
  ("mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela","exame cirurgia consulta diagnóstico biópsia"),
  ("mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("pulmão braço mão","cirurgia consulta diagnóstico"),
  ("pulmão braço mão joelho costela","cirurgia consulta"),
  ("coração pulmão braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","biópsia"),
  ("cabeça","diagnóstico"),
  ("braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("braço","exame cirurgia consulta diagnóstico biópsia"),
  ("braço mão joelho costela bronquios cabeça","exame cirurgia"),
  ("braço","cirurgia consulta diagnóstico biópsia"),
  ("pulmão braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","consulta diagnóstico"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","consulta diagnóstico"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta"),
  ("pulmão braço mão joelho costela bronquios cabeça","cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("mão","cirurgia consulta"),
  ("costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","consulta diagnóstico"),
  ("braço","exame cirurgia consulta diagnóstico biópsia"),
  ("costela bronquios","exame cirurgia consulta diagnóstico"),
  ("pulmão braço mão joelho","exame cirurgia consulta diagnóstico biópsia"),
  ("pulmão braço mão joelho costela bronquios cabeça","cirurgia consulta"),
  ("braço mão joelho","exame cirurgia consulta diagnóstico biópsia"),
  ("joelho costela","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","consulta diagnóstico"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia"),
  ("pulmão braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico"),
  ("pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("pulmão braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("braço mão joelho","cirurgia consulta diagnóstico"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","cirurgia"),
  ("joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","cirurgia consulta diagnóstico"),
  ("coração pulmão braço mão joelho costela","cirurgia consulta diagnóstico biópsia"),
  ("pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("pulmão braço mão joelho","exame cirurgia consulta diagnóstico biópsia"),
  ("braço mão joelho","exame cirurgia consulta"),
  ("coração pulmão braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("pulmão braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("pulmão braço mão joelho costela","exame cirurgia consulta diagnóstico biópsia"),
  ("cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("joelho costela","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","diagnóstico biópsia"),
  ("pulmão","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia"),
  ("joelho costela","cirurgia"),
  ("braço mão joelho","exame cirurgia consulta diagnóstico biópsia"),
  ("braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","cirurgia consulta diagnóstico"),
  ("coração pulmão braço mão joelho costela bronquios","exame cirurgia consulta diagnóstico biópsia"),
  ("coração pulmão braço mão","exame cirurgia consulta"),
  ("coração pulmão braço mão joelho costela bronquios cabeça","exame cirurgia consulta diagnóstico biópsia");

INSERT INTO Medico_Especialidade (medicoID, especialidadeID) VALUES
(13, 45),
(57, 35),
(23, 79),
(66, 12),
(42, 88),
(91, 7),
(37, 65),
(28, 51),
(74, 16),
(50, 83),
(68, 9),
(11, 31),
(79, 59),
(39, 19),
(96, 78),
(21, 29),
(83, 92),
(32, 63),
(64, 39),
(41, 97),
(99, 26),
(16, 69),
(77, 54),
(44, 100),
(70, 72),
(30, 56),
(89, 20),
(36, 81),
(56, 14),
(47, 75),
(82, 3),
(63, 95),
(4, 33),
(69, 67),
(24, 47),
(78, 90),
(19, 2),
(87, 76),
(52, 58),
(93, 38),
(27, 94),
(58, 25),
(15, 61),
(73, 42),
(31, 87),
(90, 9),
(25, 36),
(72, 80),
(49, 28),
(60, 70),
(3, 17),
(85, 52),
(6, 85),
(35, 13),
(97, 32),
(80, 66),
(26, 11),
(51, 49),
(98, 96),
(14, 23),
(75, 1),
(62, 46),
(29, 84),
(86, 37),
(7, 99),
(43, 64),
(94, 10),
(20, 77),
(76, 94),
(9, 22),
(53, 57),
(95, 89),
(8, 4),
(67, 82),
(40, 40),
(59, 18),
(17, 93),
(84, 21),
(55, 98),
(22, 34),
(92, 68),
(38, 44),
(2, 91),
(81, 15),
(46, 41),
(12, 96),
(65, 24),
(18, 62),
(48, 50),
(88, 86),
(5, 73),
(71, 60),
(33, 8),
(100, 30),
(54, 74),
(10, 55),
(61, 5),
(45, 42),
(1, 78),
(34, 33),
(42, 10),
(87, 27),
(19, 20),
(69, 54),
(2, 9),
(52, 48),
(94, 60),
(10, 72),
(77, 5),
(27, 16),
(48, 38),
(96, 2),
(15, 86),
(62, 68),
(23, 51),
(74, 32),
(36, 94),
(56, 19),
(92, 70),
(29, 46),
(85, 98),
(40, 73),
(68, 55),
(4, 1),
(78, 34),
(24, 87),
(89, 42),
(33, 18),
(67, 93),
(44, 21),
(81, 96),
(12, 24),
(60, 62),
(5, 50),
(74, 86),
(17, 73),
(73, 60),
(30, 8),
(100, 30),
(59, 74),
(8, 55),
(65, 5),
(18, 42),
(48, 78),
(92, 33),
(2, 68),
(52, 19),
(10, 70),
(77, 46),
(27, 98),
(48, 73),
(96, 55),
(15, 1),
(62, 34),
(23, 87),
(74, 42),
(36, 18),
(56, 93),
(92, 21),
(29, 96),
(85, 24),
(40, 62),
(68, 50),
(4, 86),
(78, 73),
(24, 60),
(89, 8),
(33, 74),
(67, 55),
(44, 5),
(81, 42),
(12, 78),
(60, 33),
(5, 68),
(17, 19),
(73, 70),
(30, 46),
(100, 98);

INSERT INTO LocalAtendimento (endereco, medico_especialidadeId) VALUES
('Rua A, 123', 1),
('Avenida B, 456', 2),
('Rua C, 789', 3),
('Avenida D, 987', 4),
('Rua E, 654', 5),
('Avenida F, 321', 6),
('Rua G, 789', 7),
('Avenida H, 654', 8),
('Rua I, 123', 9),
('Avenida J, 456', 10),
('Rua K, 789', 11),
('Avenida L, 987', 12),
('Rua M, 654', 13),
('Avenida N, 321', 14),
('Rua O, 789', 15),
('Avenida P, 654', 16),
('Rua Q, 123', 17),
('Avenida R, 456', 18),
('Rua S, 789', 19),
('Avenida T, 987', 20),
('Rua U, 654', 21),
('Avenida V, 321', 22),
('Rua X, 789', 23),
('Avenida Y, 654', 24),
('Rua Z, 123', 25),
('Avenida W, 456', 26),
('Rua AA, 789', 27),
('Avenida BB, 987', 28),
('Rua CC, 654', 29),
('Avenida DD, 321', 30),
('Rua EE, 111', 31),
('Avenida FF, 222', 32),
('Rua GG, 333', 33),
('Avenida HH, 444', 34),
('Rua II, 555', 35),
('Avenida JJ, 666', 36),
('Rua KK, 777', 37),
('Avenida LL, 888', 38),
('Rua MM, 999', 39),
('Avenida NN, 000', 40),
('Rua OO, 111', 41),
('Avenida PP, 222', 42),
('Rua QQ, 333', 43),
('Avenida RR, 444', 44),
('Rua SS, 555', 45),
('Avenida TT, 666', 46),
('Rua UU, 777', 47),
('Avenida VV, 888', 48),
('Rua WW, 999', 49),
('Avenida XX, 000', 50),
('Rua YY, 111', 51),
('Avenida ZZ, 222', 52),
('Rua AAA, 333', 53),
('Avenida BBB, 444', 54),
('Rua CCC, 555', 55),
('Avenida DDD, 666', 56),
('Rua EEE, 777', 57),
('Avenida FFF, 888', 58),
('Rua GGG, 999', 59),
('Avenida HHH, 000', 60),
('Rua III, 111', 61),
('Avenida JJJ, 222', 62),
('Rua KKK, 333', 63),
('Avenida LLL, 444', 64),
('Rua MMM, 555', 65),
('Avenida NNN, 666', 66),
('Rua OOO, 777', 67),
('Avenida PPP, 888', 68),
('Rua QQQ, 999', 69),
('Avenida RRR, 000', 70),
('Rua SSS, 111', 71),
('Avenida TTT, 222', 72),
('Rua UUU, 333', 73),
('Avenida VVV, 444', 74),
('Rua WWW, 555', 75),
('Avenida XXX, 666', 76),
('Rua YYY, 777', 77),
('Avenida ZZZ, 888', 78),
('Rua AAAA, 999', 79),
('Avenida BBBB, 000', 80),
('Rua CCCC, 111', 81),
('Avenida DDDD, 222', 82),
('Rua EEEE, 333', 83),
('Avenida FFFF, 444', 84),
('Rua GGGG, 555', 85),
('Avenida HHHH, 666', 86),
('Rua IIII, 777', 87),
('Avenida JJJJ, 888', 88),
('Rua KKKK, 999', 89),
('Avenida LLLL, 000', 90),
('Rua MMMM, 111', 91),
('Avenida NNNN, 222', 92),
('Rua OOOO, 333', 93),
('Avenida PPPP, 444', 94),
('Rua QQQQ, 555', 95),
('Avenida RRRR, 666', 96),
('Rua SSSS, 777', 97),
('Avenida TTTT, 888', 98),
('Rua UUUU, 999', 99),
('Avenida VVVV, 000', 100);

INSERT INTO Atendimento (beneficiarioID, localID, procedimentoID, data)
VALUES
(17, 42, 3, '2023-07-01'),
(89, 76, 22, '2023-07-02'),
(45, 13, 48, '2023-07-03'),
(67, 58, 15, '2023-07-04'),
(92, 24, 67, '2023-07-05'),
(30, 81, 38, '2023-07-06'),
(54, 55, 9, '2023-07-07'),
(76, 93, 94, '2023-07-08'),
(11, 31, 26, '2023-07-09'),
(40, 67, 71, '2023-07-10'),
(81, 22, 53, '2023-07-11'),
(8, 49, 79, '2023-07-12'),
(33, 98, 60, '2023-07-13'),
(62, 40, 84, '2023-07-14'),
(14, 87, 12, '2023-07-15'),
(95, 16, 29, '2023-07-16'),
(73, 35, 5, '2023-07-17'),
(23, 70, 50, '2023-07-18'),
(58, 10, 39, '2023-07-19'),
(29, 66, 20, '2023-07-20'),
(99, 89, 44, '2023-07-21'),
(7, 30, 97, '2023-07-22'),
(46, 62, 68, '2023-07-23'),
(18, 54, 11, '2023-07-24'),
(84, 2, 25, '2023-07-25'),
(100, 79, 52, '2023-07-26'),
(35, 97, 64, '2023-07-27'),
(69, 42, 19, '2023-07-28'),
(21, 80, 96, '2023-07-29'),
(79, 15, 37, '2023-07-30'),
(50, 61, 88, '2023-07-31'),
(98, 33, 76, '2023-08-01'),
(5, 86, 6, '2023-08-02'),
(42, 27, 57, '2023-08-03'),
(87, 94, 28, '2023-08-04'),
(19, 20, 40, '2023-08-05'),
(68, 84, 83, '2023-08-06'),
(1, 36, 63, '2023-08-07'),
(81, 78, 17, '2023-08-08'),
(24, 92, 73, '2023-08-09'),
(51, 5, 43, '2023-08-10'),
(67, 37, 81, '2023-08-11'),
(8, 100, 66, '2023-08-12'),
(96, 68, 56, '2023-08-13'),
(2, 94, 85, '2023-08-14'),
(48, 46, 30, '2023-08-15'),
(70, 98, 14, '2023-08-16'),
(15, 59, 80, '2023-08-17'),
(63, 88, 41, '2023-08-18'),
(29, 60, 70, '2023-08-19'),
(90, 27, 3, '2023-08-20'),
(53, 19, 24, '2023-08-21'),
(77, 45, 74, '2023-08-22'),
(38, 71, 31, '2023-08-23'),
(10, 82, 55, '2023-08-24'),
(49, 56, 99, '2023-08-25'),
(65, 9, 4, '2023-08-26'),
(21, 32, 33, '2023-08-27'),
(85, 72, 91, '2023-08-28'),
(16, 47, 7, '2023-08-29'),
(36, 4, 64, '2023-08-30'),
(58, 81, 23, '2023-08-31'),
(7, 59, 10, '2023-09-01'),
(44, 27, 98, '2023-09-02'),
(92, 70, 50, '2023-09-03'),
(32, 89, 9, '2023-09-04'),
(69, 15, 34, '2023-09-05'),
(14, 92, 65, '2023-09-06'),
(23, 33, 86, '2023-09-07'),
(81, 46, 41, '2023-09-08'),
(50, 71, 22, '2023-09-09'),
(37, 94, 61, '2023-09-10'),
(68, 9, 18, '2023-09-11'),
(12, 20, 84, '2023-09-12'),
(96, 36, 53, '2023-09-13'),
(27, 79, 75, '2023-09-14'),
(54, 16, 2, '2023-09-15'),
(89, 66, 29, '2023-09-16'),
(73, 37, 48, '2023-09-17'),
(33, 58, 16, '2023-09-18'),
(63, 21, 43, '2023-09-19'),
(5, 98, 97, '2023-09-20'),
(42, 42, 75, '2023-09-21'),
(100, 86, 56, '2023-09-22'),
(8, 27, 7, '2023-09-23'),
(40, 94, 45, '2023-09-24'),
(68, 20, 80, '2023-09-25'),
(2, 36, 1, '2023-09-26'),
(74, 78, 52, '2023-09-27'),
(33, 92, 64, '2023-09-28'),
(62, 5, 37, '2023-09-29'),
(15, 59, 87, '2023-09-30'),
(81, 76, 9, '2023-10-01'),
(16, 42, 26, '2023-10-02'),
(68, 58, 79, '2023-10-03'),
(23, 24, 60, '2023-10-04'),
(54, 81, 84, '2023-10-05'),
(36, 13, 12, '2023-10-06'),
(89, 35, 29, '2023-10-07'),
(7, 93, 5, '2023-10-08'),
(44, 31, 50, '2023-10-09'),
(81, 67, 39, '2023-10-10'),
(29, 22, 20, '2023-10-11'),
(98, 49, 44, '2023-10-12'),
(17, 100, 97, '2023-10-13'),
(45, 68, 68, '2023-10-14'),
(12, 94, 56, '2023-10-15'),
(67, 27, 85, '2023-10-16'),
(40, 46, 30, '2023-10-17'),
(79, 72, 14, '2023-10-18'),
(62, 82, 80, '2023-10-19'),
(33, 56, 41, '2023-10-20'),
(69, 9, 70, '2023-10-21'),
(96, 32, 3, '2023-10-22'),
(21, 86, 24, '2023-10-23'),
(58, 19, 73, '2023-10-24'),
(23, 91, 25, '2023-10-25'),
(68, 72, 52, '2023-10-26'),
(5, 47, 74, '2023-10-27'),
(81, 4, 55, '2023-10-28'),
(15, 59, 99, '2023-10-29'),
(40, 27, 4, '2023-10-30'),
(100, 94, 33, '2023-10-31');

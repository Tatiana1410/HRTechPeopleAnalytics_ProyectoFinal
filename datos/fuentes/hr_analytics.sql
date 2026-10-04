BEGIN TRANSACTION;
CREATE TABLE departamentos (
    departamento_id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE,
    ubicacion TEXT NOT NULL
);
INSERT INTO "departamentos" VALUES(1,'Tecnología','San Salvador');
INSERT INTO "departamentos" VALUES(2,'Recursos Humanos','San Salvador');
INSERT INTO "departamentos" VALUES(3,'Finanzas','Santa Tecla');
INSERT INTO "departamentos" VALUES(4,'Operaciones','Santa Ana');
INSERT INTO "departamentos" VALUES(5,'Comercial','San Salvador');
CREATE TABLE empleados (
    empleado_id TEXT PRIMARY KEY,
    puesto_id INTEGER NOT NULL,
    nombre_completo TEXT NOT NULL,
    genero TEXT NOT NULL CHECK (genero IN ('F', 'M')),
    edad INTEGER NOT NULL CHECK (edad BETWEEN 18 AND 70),
    fecha_ingreso TEXT NOT NULL,
    salario_mensual REAL NOT NULL CHECK (salario_mensual > 0),
    modalidad TEXT NOT NULL CHECK (modalidad IN ('Presencial', 'Híbrida', 'Remota')),
    estado_laboral TEXT NOT NULL CHECK (estado_laboral IN ('Activo', 'Renunció')),
    fecha_salida TEXT NULL, sede_id INTEGER, pais TEXT, departamento_geo TEXT, municipio TEXT, distrito TEXT, direccion_referencia TEXT, latitud REAL, longitud REAL, zona_geografica TEXT,
    FOREIGN KEY (puesto_id) REFERENCES puestos(puesto_id)
);
INSERT INTO "empleados" VALUES('EMP001',1,'Ana Hernández','F',29,'2022-09-17',1400.0,'Presencial','Activo',NULL,1,'El Salvador','San Salvador','San Salvador Centro','San Salvador','Centro de San Salvador, San Salvador, El Salvador',1.36813631530342565e+01,-89.2264162803837,'Centro');
INSERT INTO "empleados" VALUES('EMP002',2,'Carlos Vásquez','M',36,'2025-07-26',1450.0,'Remota','Activo',NULL,1,'El Salvador','San Salvador','San Salvador Centro','San Salvador','Centro de San Salvador, San Salvador, El Salvador',1.3671426909909238e+01,-8.9204773192099978e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP003',3,'María Jiménez','F',53,'2024-04-01',1100.0,'Presencial','Activo',NULL,2,'El Salvador','La Libertad','La Libertad Sur','Santa Tecla','Centro de Santa Tecla, La Libertad, El Salvador',1.36616098857025427e+01,-89.2746348755041,'Centro');
INSERT INTO "empleados" VALUES('EMP004',4,'José Castro','M',29,'2021-02-15',1650.0,'Remota','Activo',NULL,2,'El Salvador','La Libertad','La Libertad Sur','Santa Tecla','Centro de Santa Tecla, La Libertad, El Salvador',1.3675859385045312e+01,-8.92736913868341162e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP005',5,'Sofía Méndez','F',53,'2022-04-13',1200.0,'Híbrida','Activo',NULL,3,'El Salvador','Santa Ana','Santa Ana Centro','Santa Ana','Centro de Santa Ana, Santa Ana, El Salvador',1.40123226982750086e+01,-8.95681938036435525e+01,'Occidente');
INSERT INTO "empleados" VALUES('EMP006',6,'Luis Sánchez','M',44,'2023-12-17',1250.0,'Presencial','Renunció','2026-06-11',3,'El Salvador','Santa Ana','Santa Ana Centro','Santa Ana','Centro de Santa Ana, Santa Ana, El Salvador',1.39931562298546925e+01,-8.95678123954630081e+01,'Occidente');
INSERT INTO "empleados" VALUES('EMP007',7,'Daniela López','F',27,'2025-09-10',1550.0,'Híbrida','Activo',NULL,4,'El Salvador','San Miguel','San Miguel Centro','San Miguel','Centro de San Miguel, San Miguel, El Salvador',NULL,NULL,'Oriente');
INSERT INTO "empleados" VALUES('EMP008',8,'Miguel Ramírez','M',31,'2021-01-28',1050.0,'Híbrida','Activo',NULL,4,'El Salvador','San Miguel','San Miguel Centro','San Miguel','Centro de San Miguel, San Miguel, El Salvador',1.34911732661655872e+01,-8.81673555290088586e+01,'Oriente');
INSERT INTO "empleados" VALUES('EMP009',9,'Valeria Flores','F',45,'2024-07-03',1000.0,'Remota','Activo',NULL,5,'El Salvador','Sonsonate','Sonsonate Centro','Sonsonate','Centro de Sonsonate, Sonsonate, El Salvador',1.37169346774468738e+01,-8.97485130383949467e+01,'Occidente');
INSERT INTO "empleados" VALUES('EMP010',10,'Jorge Mejía','M',53,'2018-07-17',1700.0,'Híbrida','Activo',NULL,5,'El Salvador','Sonsonate','Sonsonate Centro','Sonsonate','Centro de Sonsonate, Sonsonate, El Salvador',1.36961523208019642e+01,-8.97268621042230876e+01,'Occidente');
INSERT INTO "empleados" VALUES('EMP011',1,'Camila Morales','F',47,'2025-05-28',1300.0,'Remota','Activo',NULL,1,'El Salvador','San Salvador','San Salvador Centro','San Salvador','Centro de San Salvador, San Salvador, El Salvador',1.36842056311060424e+01,-8.92188138684177118e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP012',2,'Fernando Pérez','M',52,'2025-09-26',1250.0,'Remota','Activo',NULL,2,'El Salvador','La Libertad','La Libertad Sur','Santa Tecla','Centro de Santa Tecla, La Libertad, El Salvador',1.36646893476331854e+01,-8.92736656003126398e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP013',3,'Gabriela Reyes','F',36,'2019-01-23',1100.0,'Remota','Renunció','2026-01-23',6,'El Salvador','Ahuachapán','Ahuachapán Centro','Ahuachapán','Centro de Ahuachapán, Ahuachapán, El Salvador',1.39196749997319102e+01,-8.98435526099388255e+01,'Occidente');
INSERT INTO "empleados" VALUES('EMP014',4,'Ricardo Martínez','M',49,'2024-03-16',1700.0,'Presencial','Activo',NULL,7,'El Salvador','La Paz','La Paz Este','Zacatecoluca','Centro de Zacatecoluca, La Paz, El Salvador',NULL,NULL,'Centro');
INSERT INTO "empleados" VALUES('EMP015',5,'Andrea Gómez','F',51,'2024-12-18',1200.0,'Remota','Activo',NULL,8,'El Salvador','Usulután','Usulután Este','Usulután','Centro de Usulután, Usulután, El Salvador',1.33454745090697759e+01,-88.45282240557,'Oriente');
INSERT INTO "empleados" VALUES('EMP016',6,'Manuel Portillo','M',47,'2021-09-26',1250.0,'Remota','Activo',NULL,9,'El Salvador','Cuscatlán','Cuscatlán Sur','Cojutepeque','Centro de Cojutepeque, Cuscatlán, El Salvador',1.3696653321766826e+01,-88.9370173953276,'Centro');
INSERT INTO "empleados" VALUES('EMP017',7,'Paola Rodríguez','F',52,'2023-07-07',1550.0,'Híbrida','Activo',NULL,10,'El Salvador','Chalatenango','Chalatenango Sur','Chalatenango','Centro de Chalatenango, Chalatenango, El Salvador',1.40406955469251428e+01,-8.89239651476005832e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP018',8,'Óscar Rivas','M',22,'2017-03-21',1000.0,'Híbrida','Activo',NULL,11,'El Salvador','San Vicente','San Vicente Sur','San Vicente','Centro de San Vicente, San Vicente, El Salvador',1.3646899982742024e+01,-8.8785285370641759e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP019',9,'Tatiana Aguilar','F',55,'2024-06-07',950.0,'Remota','Renunció','2026-04-15',12,'El Salvador','La Unión','La Unión Sur','La Unión','Centro de La Unión, La Unión, El Salvador',1.33637084510525721e+01,-8.78185384535021711e+01,'Oriente');
INSERT INTO "empleados" VALUES('EMP020',10,'Samuel García','M',54,'2024-07-18',1750.0,'Presencial','Activo',NULL,13,'El Salvador','Cabañas','Cabañas Oeste','Ilobasco','Centro de Ilobasco, Cabañas, El Salvador',1.38415127852822443e+01,-8.88378843924079291e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP021',1,'Elena Hernández','F',40,'2022-08-26',1150.0,'Híbrida','Activo',NULL,14,'El Salvador','La Libertad','La Libertad Costa','La Libertad','Centro de La Libertad, La Libertad, El Salvador',1.34905620154187086e+01,-89.3255450978144,'Centro');
INSERT INTO "empleados" VALUES('EMP022',2,'David Vásquez','M',54,'2021-08-06',1400.0,'Remota','Activo',NULL,15,'El Salvador','Morazán','Morazán Sur','San Francisco Gotera','Centro de San Francisco Gotera, Morazán, El Salvador',1.37048865111456414e+01,-88.0904643185732,'Oriente');
INSERT INTO "empleados" VALUES('EMP023',3,'Lucía Jiménez','F',52,'2018-11-09',1050.0,'Híbrida','Activo',NULL,1,'El Salvador','San Salvador','San Salvador Centro','San Salvador','Centro de San Salvador, San Salvador, El Salvador',NULL,NULL,'Centro');
INSERT INTO "empleados" VALUES('EMP024',4,'Roberto Castro','M',28,'2020-12-28',1800.0,'Presencial','Activo',NULL,2,'El Salvador','La Libertad','La Libertad Sur','Santa Tecla','Centro de Santa Tecla, La Libertad, El Salvador',1.36720115189392199e+01,-89.2787982182028,'Centro');
INSERT INTO "empleados" VALUES('EMP025',5,'Mónica Méndez','F',50,'2017-02-01',1250.0,'Remota','Activo',NULL,3,'El Salvador','Santa Ana','Santa Ana Centro','Santa Ana','Centro de Santa Ana, Santa Ana, El Salvador',1.39968421532029285e+01,-8.95564399459041737e+01,'Occidente');
INSERT INTO "empleados" VALUES('EMP026',6,'Antonio Sánchez','M',56,'2018-10-26',1050.0,'Presencial','Activo',NULL,4,'El Salvador','San Miguel','San Miguel Centro','San Miguel','Centro de San Miguel, San Miguel, El Salvador',1.34946316534261967e+01,-8.8202197454321265e+01,'Oriente');
INSERT INTO "empleados" VALUES('EMP027',7,'Karla López','F',29,'2017-09-09',1700.0,'Remota','Renunció','2026-03-05',5,'El Salvador','Sonsonate','Sonsonate Centro','Sonsonate','Centro de Sonsonate, Sonsonate, El Salvador',1.37233295110118476e+01,-8.9735511126475572e+01,'Occidente');
INSERT INTO "empleados" VALUES('EMP028',8,'Eduardo Ramírez','M',22,'2022-11-19',1000.0,'Híbrida','Activo',NULL,6,'El Salvador','Ahuachapán','Ahuachapán Centro','Ahuachapán','Centro de Ahuachapán, Ahuachapán, El Salvador',1.39077907814977663e+01,-8.98423710951588674e+01,'Occidente');
INSERT INTO "empleados" VALUES('EMP029',9,'Natalia Flores','F',30,'2025-04-16',1050.0,'Presencial','Activo',NULL,7,'El Salvador','La Paz','La Paz Este','Zacatecoluca','Centro de Zacatecoluca, La Paz, El Salvador',1.35006226627626659e+01,-8.88591246146964692e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP030',10,'Francisco Mejía','M',54,'2021-02-14',1750.0,'Presencial','Activo',NULL,8,'El Salvador','Usulután','Usulután Este','Usulután','Centro de Usulután, Usulután, El Salvador',1.33533982334248548e+01,-8.84609038662799918e+01,'Oriente');
INSERT INTO "empleados" VALUES('EMP031',1,'Claudia Morales','F',30,'2021-09-14',1300.0,'Presencial','Activo',NULL,9,'El Salvador','Cuscatlán','Cuscatlán Sur','Cojutepeque','Centro de Cojutepeque, Cuscatlán, El Salvador',NULL,NULL,'Centro');
INSERT INTO "empleados" VALUES('EMP032',2,'Alexander Pérez','M',55,'2020-07-01',1250.0,'Híbrida','Activo',NULL,10,'El Salvador','Chalatenango','Chalatenango Sur','Chalatenango','Centro de Chalatenango, Chalatenango, El Salvador',1.40403474579409248e+01,-8.89468387633625639e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP033',3,'Patricia Reyes','F',26,'2017-06-21',1000.0,'Presencial','Activo',NULL,11,'El Salvador','San Vicente','San Vicente Sur','San Vicente','Centro de San Vicente, San Vicente, El Salvador',1.36451392929926136e+01,-8.8794897950022289e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP034',4,'Enrique Martínez','M',23,'2025-08-11',1900.0,'Híbrida','Renunció','2026-04-11',12,'El Salvador','La Unión','La Unión Sur','La Unión','Centro de La Unión, La Unión, El Salvador',1.33270987951909809e+01,-8.78280804169869924e+01,'Oriente');
INSERT INTO "empleados" VALUES('EMP035',5,'Verónica Gómez','F',29,'2024-08-19',1300.0,'Presencial','Activo',NULL,13,'El Salvador','Cabañas','Cabañas Oeste','Ilobasco','Centro de Ilobasco, Cabañas, El Salvador',1.38340685256630173e+01,-8.88548948119131552e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP036',6,'Héctor Portillo','M',31,'2025-04-14',1200.0,'Híbrida','Activo',NULL,14,'El Salvador','La Libertad','La Libertad Costa','La Libertad','Centro de La Libertad, La Libertad, El Salvador',1.35027049509995009e+01,-8.93187772378550874e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP037',7,'Alejandra Rodríguez','F',51,'2020-11-23',1450.0,'Remota','Activo',NULL,15,'El Salvador','Morazán','Morazán Sur','San Francisco Gotera','Centro de San Francisco Gotera, Morazán, El Salvador',1.37073854785808215e+01,-8.80892051859201927e+01,'Oriente');
INSERT INTO "empleados" VALUES('EMP038',8,'Mauricio Rivas','M',47,'2017-04-21',850.0,'Presencial','Activo',NULL,1,'El Salvador','San Salvador','San Salvador Centro','San Salvador','Centro de San Salvador, San Salvador, El Salvador',NULL,NULL,'Centro');
INSERT INTO "empleados" VALUES('EMP039',9,'Rosa Aguilar','F',56,'2017-08-28',1100.0,'Presencial','Renunció','2026-04-23',2,'El Salvador','La Libertad','La Libertad Sur','Santa Tecla','Centro de Santa Tecla, La Libertad, El Salvador',1.36830372753578046e+01,-8.92954838124514651e+01,'Centro');
INSERT INTO "empleados" VALUES('EMP040',10,'Cristian García','M',23,'2019-11-17',1550.0,'Remota','Activo',NULL,3,'El Salvador','Santa Ana','Santa Ana Centro','Santa Ana','Centro de Santa Ana, Santa Ana, El Salvador',1.39822888382537833e+01,-8.95665457592790517e+01,'Occidente');
CREATE TABLE puestos (
    puesto_id INTEGER PRIMARY KEY,
    departamento_id INTEGER NOT NULL,
    nombre TEXT NOT NULL,
    nivel TEXT NOT NULL CHECK (nivel IN ('Operativo', 'Jefatura')),
    FOREIGN KEY (departamento_id) REFERENCES departamentos(departamento_id)
);
INSERT INTO "puestos" VALUES(1,1,'Desarrollador/a de Software','Operativo');
INSERT INTO "puestos" VALUES(2,1,'Analista de Datos','Operativo');
INSERT INTO "puestos" VALUES(3,2,'Analista de Recursos Humanos','Operativo');
INSERT INTO "puestos" VALUES(4,2,'Jefe/a de Recursos Humanos','Jefatura');
INSERT INTO "puestos" VALUES(5,3,'Analista Financiero/a','Operativo');
INSERT INTO "puestos" VALUES(6,3,'Contador/a','Operativo');
INSERT INTO "puestos" VALUES(7,4,'Supervisor/a de Operaciones','Jefatura');
INSERT INTO "puestos" VALUES(8,4,'Técnico/a de Operaciones','Operativo');
INSERT INTO "puestos" VALUES(9,5,'Ejecutivo/a de Ventas','Operativo');
INSERT INTO "puestos" VALUES(10,5,'Coordinador/a Comercial','Jefatura');
CREATE TABLE sedes (
    sede_id INTEGER PRIMARY KEY,
    sede_codigo TEXT NOT NULL UNIQUE,
    nombre_sede TEXT NOT NULL,
    pais TEXT NOT NULL,
    departamento_geo TEXT NOT NULL,
    municipio TEXT NOT NULL,
    distrito TEXT NOT NULL,
    direccion_referencia TEXT NOT NULL,
    latitud_sede REAL,
    longitud_sede REAL,
    tipo_sede TEXT NOT NULL
);
INSERT INTO "sedes" VALUES(1,'SED001','Sede San Salvador Centro','El Salvador','San Salvador','San Salvador Centro','San Salvador','Centro de San Salvador, San Salvador, El Salvador',13.69294,-89.21819,'Oficina');
INSERT INTO "sedes" VALUES(2,'SED002','Sede Santa Tecla','El Salvador','La Libertad','La Libertad Sur','Santa Tecla','Centro de Santa Tecla, La Libertad, El Salvador',13.67694,-89.27972,'Oficina');
INSERT INTO "sedes" VALUES(3,'SED003','Sede Santa Ana','El Salvador','Santa Ana','Santa Ana Centro','Santa Ana','Centro de Santa Ana, Santa Ana, El Salvador',13.99417,-89.55972,'Oficina');
INSERT INTO "sedes" VALUES(4,'SED004','Sede San Miguel','El Salvador','San Miguel','San Miguel Centro','San Miguel','Centro de San Miguel, San Miguel, El Salvador',13.48333,-88.18333,'Oficina');
INSERT INTO "sedes" VALUES(5,'SED005','Sede Sonsonate','El Salvador','Sonsonate','Sonsonate Centro','Sonsonate','Centro de Sonsonate, Sonsonate, El Salvador',13.71889,-89.72417,'Oficina');
INSERT INTO "sedes" VALUES(6,'SED006','Sede Ahuachapán','El Salvador','Ahuachapán','Ahuachapán Centro','Ahuachapán','Centro de Ahuachapán, Ahuachapán, El Salvador',13.92139,-89.845,'Punto operativo');
INSERT INTO "sedes" VALUES(7,'SED007','Sede Zacatecoluca','El Salvador','La Paz','La Paz Este','Zacatecoluca','Centro de Zacatecoluca, La Paz, El Salvador',13.50028,-88.86889,'Punto operativo');
INSERT INTO "sedes" VALUES(8,'SED008','Sede Usulután','El Salvador','Usulután','Usulután Este','Usulután','Centro de Usulután, Usulután, El Salvador',13.35,-88.45,'Punto operativo');
INSERT INTO "sedes" VALUES(9,'SED009','Sede Cojutepeque','El Salvador','Cuscatlán','Cuscatlán Sur','Cojutepeque','Centro de Cojutepeque, Cuscatlán, El Salvador',13.71667,-88.93333,'Punto operativo');
INSERT INTO "sedes" VALUES(10,'SED010','Sede Chalatenango','El Salvador','Chalatenango','Chalatenango Sur','Chalatenango','Centro de Chalatenango, Chalatenango, El Salvador',14.03333,-88.93333,'Punto operativo');
INSERT INTO "sedes" VALUES(11,'SED011','Sede San Vicente','El Salvador','San Vicente','San Vicente Sur','San Vicente','Centro de San Vicente, San Vicente, El Salvador',13.63333,-88.8,'Punto operativo');
INSERT INTO "sedes" VALUES(12,'SED012','Sede La Unión','El Salvador','La Unión','La Unión Sur','La Unión','Centro de La Unión, La Unión, El Salvador',13.33694,-87.84389,'Punto operativo');
INSERT INTO "sedes" VALUES(13,'SED013','Sede Ilobasco','El Salvador','Cabañas','Cabañas Oeste','Ilobasco','Centro de Ilobasco, Cabañas, El Salvador',13.84167,-88.85,'Punto operativo');
INSERT INTO "sedes" VALUES(14,'SED014','Sede La Libertad Costa','El Salvador','La Libertad','La Libertad Costa','La Libertad','Centro de La Libertad, La Libertad, El Salvador',13.48833,-89.32222,'Punto operativo');
INSERT INTO "sedes" VALUES(15,'SED015','Sede San Francisco Gotera','El Salvador','Morazán','Morazán Sur','San Francisco Gotera','Centro de San Francisco Gotera, Morazán, El Salvador',13.69694,-88.10611,'Punto operativo');
COMMIT;

if not exists (Select 1 from [dbo].[Area])
begin
	insert into [dbo].[Area] ([AreaName], [AreaCode])
	values ('Gryffindor',	10001),
			('Slytherin',	10010),
			('Hufflepuff',	10011),
			('Ravenclaw',	10100);
	insert into [dbo].[Category] ([CategoryName])
	values ('Food'), ('Fertilizer'), ('Feed');
	insert into [dbo].[Production] ([TypeOfProduction], [CategoryId_fk])
	values  ('Eggs',	1),
			('Milk',	1),
			('Meat',	1),
			('Oats',	3),
			('Manure',	2),
			('Vegetables',	1),
			('HydroColOxid',	2),
			('Fish',	1),
			('Hay',	2),
			('saltstones',	2);
	insert into [dbo].[Controller] ([ControllerFName], [ControllerLName], [AreaId_fk])
	values ('Harry',	'Potter',	1),
	('Drakos',	'Malfoy',	2),
	('Bridget',	'Wenlock',	3),
	('Luna',	'Lovegood',	4);
	insert into [dbo].[Producer] ([FName], [LName], [ProductionId_fk], [AreaId_fk])
	values  ('Jim',	'Jones',	1,	3),
			('Harry',	'Holden',	2,	1),
			('Wimsie',	'Weathers',	3,	4),
			('Xander',	'Zork',	4,	2),
			('Timmy',	'OToole',	10,	1),
			('Zim',	'Xavier',	9,	2),
			('Franken',	'Further',	8,	4),
			('Goodie',	'Giggle',	7,	3),
			('Charles',	'Cho',	6,	1),
			('Zeraph',	'Xanadu',	5,	2),
			('Whirly',	'Weatherlock',	3,	4),
			('Vfhur',	'Vahndeita',	7,	3),
			('Garth',	'Givens',	2,	1),
			('Xerath',	'Cthulu',	9,	2);
	insert into [dbo].[Questions] ([Question], [ProductionPrimary], [ProductionSecondary], [ProductionTertiary])
	values  ('A',	1,	2,	3),
			('B',	1,	2,	3),
			('C',	1,	2,	3),
			('D',	1,	2,	3),
			('E',	1,	NULL,	NULL),
			('F',	NULL,	2,	NULL),
			('G',	NULL,	NULL,	3),
			('H',	1,	NULL,	3),
			('I',	NULL,	2,	NULL),
			('J',	NULL,	2,	3),
			('K',	1,	2,	NULL),
			('L',	NULL,	NULL,	3),
			('M',	NULL,	NULL,	3),
			('N',	1,	2,	NULL),
			('O',	NULL,	2,	NULL),
			('P',	1,	2,	3),
			('Q',	1,	NULL,	NULL),
			('R',	NULL,	2,	NULL),
			('S',	NULL,	NULL,	3),
			('T',	1,	NULL,	3),
			('U',	NULL,	2,	3),
			('V',	1,	2,	NULL),
			('W',	NULL,	2,	NULL),
			('X',	NULL,	NULL,	3),
			('Y',	1,	NULL,	NULL),
			('Z',	NULL,	2,	NULL);
	insert into [dbo].[ExtraInformation] ([ExtraInfo], [Tips], [ProductionId_fk2], [QuestionId_fk])
	values ('aaa',	NULL,	1,	1),
('bbbb',	NULL,	2,	2),
('cccc',	NULL,	3,	3),
('dddd',	NULL,	4,	4),
(NULL,	'1A',	1,	1),
(NULL,	'1B',	2,	2),
(NULL,	'2A',	5,	4),
(NULL,	'3C',	6,	2),
(NULL,	'1B',	7,	3),
(NULL,	'7A',	8,	4),
('eeeee',	'2B',	9,	1),
('Fffff',	'3C',	10,	2);
end
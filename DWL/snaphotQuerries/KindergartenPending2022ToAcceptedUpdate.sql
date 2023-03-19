UPDATE "Submission" SET "Status"='accepted'
WHERE "Status"='pending';

INSERT INTO "Submission" VALUES
(1104247,2022,3996,0,'preschooler','accepted');

INSERT INTO "Kindergarten" VALUES
('Helping Hands', 'Belt Avenue', 'Mel Gibson', 123456789, 'the.realMelGibson@gmail.com', 2, 14),
('Terraristica', 'Mandala Street', 'Neil deGrasse Tyson', 948741572, 'Tyson.tyson@gmail.com', 3, 1);

INSERT INTO "KindergartenFacility" VALUES 
(1001, 1),
(1001, 2),
(1001, 4),
(1001, 3),
(1002, 1),
(1002, 2),
(1002, 4),
(1002, 3),
(1002, 5);

INSERT INTO "KindergartenCareType" VALUES
(1001, 1, 3768),
(1001, 2, 3520),
(1001, 3, 3300),
(1001, 4, 3000),
(1002, 1, 3908),
(1002, 2, 2700),
(1002, 3, 2500),
(1002, 4, 700);


BULK INSERT dbo.District FROM 'C:\Users\adams\CLionProjects\DataGenerator\cmake-build-debug\data.txt' 
WITH (FIELDTERMINATOR = ',');
INSERT INTO dbo.KindergartenType VALUES
('public'),
('private'),
('language-focused'),
('Montessori-style'),
('religious-based');
BULK INSERT dbo.Facility FROM 'C:\Users\adams\CLionProjects\Facility Generator\cmake-build-debug\facilities.txt' 
WITH (FIELDTERMINATOR = ',');

BULK INSERT dbo.Kindergarten FROM 'C:\Users\adams\Desktop\Studia moje\Semestr 4\DATA WAREHOUSES\Task 2 Laby\KIndergartentablev21.txt' 
WITH (FIELDTERMINATOR = ';');

BULK INSERT dbo.KindergartenFacility FROM 'C:\Users\adams\PycharmProjects\Street generator\values.txt' 
WITH (FIELDTERMINATOR = ',');
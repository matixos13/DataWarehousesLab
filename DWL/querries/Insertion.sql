BULK INSERT dbo.District FROM 'C:\DWL\bulk\District.bulk' 
WITH (FIELDTERMINATOR = ',');

INSERT INTO dbo.KindergartenType VALUES
('public'),
('private'),
('language-focused'),
('Montessori-style'),
('religious-based');

BULK INSERT dbo.Facility FROM 'C:\DWL\bulk\Facility.bulk' 
WITH (FIELDTERMINATOR = ',');

BULK INSERT dbo.Kindergarten FROM 'C:\DWL\bulk\Kindergarten.bulk' 
WITH (FIELDTERMINATOR = ';');

BULK INSERT dbo.KindergartenFacility FROM 'C:\DWL\bulk\KindergartenFacility.bulk' 
WITH (FIELDTERMINATOR = ',');

BULK INSERT dbo.CareType FROM 'C:\DWL\bulk\CareType.bulk' 
WITH (FIELDTERMINATOR = '|');

BULK INSERT dbo.KindergartenCareType FROM 'C:\DWL\bulk\KindergartenCareType.bulk' 
WITH (FIELDTERMINATOR = '|');

BULK INSERT dbo.Submission FROM 'C:\DWL\bulk\Submission.bulk' 
WITH (FIELDTERMINATOR = '|');
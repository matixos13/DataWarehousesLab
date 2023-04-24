SELECT DISTINCT [Year]
      FROM [Kindergarten].[dbo].[Submission]
	  ORDER BY [Year];
USE Kernel
GO

INSERT INTO DimYear (Year)
SELECT DISTINCT [Year]
      FROM [Kindergarten].[dbo].[Submission]
	  ORDER BY [Year];

CREATE VIEW temp AS 
SELECT DISTINCT [Status],[SpecialNeeds],
CASE 
	WHEN SpecialNeeds = 1 THEN 'special'
	WHEN SpecialNeeds = 0 THEN 'notspecialneeds'
END as sp
FROM [Kindergarten].[dbo].[Submission]


select [Status], sp from temp;

INSERT INTO DimMiscelaneous (Status, SpecialNeeds)
select [Status], [sp] from temp;

INSERT INTO DimMiscelaneous (Status, SpecialNeeds)
VALUES
('pending', 'special')

drop view temp;


USE Kernel
GO

CREATE TABLE t1 (t VARCHAR(Max))
INSERT INTO t1 (t) VALUES ('from 500 to 1000'), ('from 1001 to 2000'), ('from 2001 to 3000'), ('from 3001 to 4000'), ('from 4001 to 5000'), ('from 5001 to 6000'); 
CREATE TABLE t2 (t VARCHAR(Max))
INSERT INTO t2 (t) VALUES ('full-day'), ('half-day'), ('after-hours'), ('summer-camp'); 

INSERT INTO [DimCareType] (PriceCareType, CareType)
SELECT t1.t, t2.t
FROM t1, t2;

INSERT INTO [DimCareType] (PriceCareType, CareType)
VALUES ('unknown', 'unknown');

SELECT t1.t, t2.t
FROM t1, t2;

DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
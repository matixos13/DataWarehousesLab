USE Kernel
GO

CREATE TABLE t1 (t VARCHAR(Max))
INSERT INTO t1 (t) VALUES ('infant'), ('toddler'), ('preschooler'); 
CREATE TABLE t2 (t VARCHAR(Max))
INSERT INTO t2 (t) VALUES ('from 1 to 63'), ('from 64 to 80'), ('from 81 to 100'), ('from 101 to 120'); 
CREATE TABLE t3 (t VARCHAR(Max))
INSERT INTO t3 (t) VALUES ('from 200 to 400'), ('from 401 to 600'), ('from 601 to 800'), ('from 801 to 1000');

INSERT INTO [DimAgeGroup] (AgeGroupType, CapacityPerGroup, PriceAgeGroup)
SELECT t1.t, t2.t, t3.t
FROM t1, t2, t3;

INSERT INTO [DimAgeGroup] (AgeGroupType, CapacityPerGroup, PriceAgeGroup)
VALUES ('unknown', 'unknown', 'unknown');

SELECT t1.t, t2.t, t3.t
FROM t1, t2, t3

DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
DROP TABLE IF EXISTS t3;
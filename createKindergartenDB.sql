CREATE TABLE "KindergartenType" (
  "KindergartenTypeID" INT,
  "Name" VARCHAR(20) CHECK ("Name" IN ('public','private','language-focused','Montessori-style','religious-based')),
  PRIMARY KEY ("KindergartenTypeID")
);

CREATE TABLE "District" (
  "DistrictID" INT,
  "Name" TEXT,
  "City" TEXT,
  PRIMARY KEY ("DistrictID")
);

CREATE TABLE "Kindergarten" (
  "KindergartenID" INT,
  "Name" TEXT,
  "Address" TEXT,
  "ContactPerson" TEXT,
  "Phone" BIGINT,
  "Email" TEXT,
  "TypeID" INT NOT NULL REFERENCES "KindergartenType",
  "DistrictID" INT NOT NULL REFERENCES "District",
  PRIMARY KEY ("KindergartenID")
);

CREATE TABLE "Facility" (
  "FacilityID" INT,
  "Name" TEXT,
  "Description" TEXT,
  PRIMARY KEY ("FacilityID")
);

CREATE TABLE "KindergartenFacility" (
  "KindergartenID" INT NOT NULL REFERENCES "Kindergarten",
  "FacilityID" INT NOT NULL REFERENCES "Facility",
  PRIMARY KEY ("KindergartenID", "FacilityID")
);

CREATE TABLE "CareType" (
  "CareTypeID" INT,
  "Name" VARCHAR(20) CHECK ("Name" IN ('full-day','half-day','after-hours','summer-camp')),
  "Description" TEXT,
  PRIMARY KEY ("CareTypeID")
);

CREATE TABLE "KindergartenCareType" (
  "KindergartenCareTypeID" INT,
  "KindergartenID" INT NOT NULL REFERENCES "Kindergarten",
  "CareTypeID" INT NOT NULL REFERENCES "CareType",
  "Price" FLOAT(2),
  PRIMARY KEY ("KindergartenCareTypeID")
);

CREATE TABLE "Submission" (
  "SubmissionID" INT,
  "Status" TEXT,
  "Year" SMALLINT,
  "SpecialNeeds" BINARY,
  "AgeGroup" TEXT,
  "KindergartenCareTypeID" INT NOT NULL REFERENCES "KindergartenCareType",
  PRIMARY KEY ("SubmissionID")
);
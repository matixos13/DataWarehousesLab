CREATE TABLE "KindergartenType" (
  "KindergartenTypeID" INT IDENTITY (1,1),
  "Name" VARCHAR(20) CHECK ("Name" IN ('public','private','language-focused','Montessori-style','religious-based')),
  PRIMARY KEY ("KindergartenTypeID")
);

CREATE TABLE "District" (
  "DistrictID" INT IDENTITY (1,1),
  "Name" TEXT,
  "City" TEXT,
  PRIMARY KEY ("DistrictID")
);

CREATE TABLE "Kindergarten" (
  "KindergartenID" INT IDENTITY (1,1),
  "Name" TEXT,
  "Address" TEXT,
  "ContactPerson" TEXT,
  "Phone" INT,
  "Email" TEXT,
  "TypeID" INT NOT NULL REFERENCES "KindergartenType",
  "DistrictID" INT NOT NULL REFERENCES "District",
  PRIMARY KEY ("KindergartenID")
);

CREATE TABLE "Facility" (
  "FacilityID" INT IDENTITY (1,1),
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
  "CareTypeID" INT IDENTITY (1,1),
  "Name" VARCHAR(20) CHECK ("Name" IN ('full-day','half-day','after-hours','summer-camp')),
  "Description" TEXT,
  PRIMARY KEY ("CareTypeID")
);

CREATE TABLE "KindergartenCareType" (
  "KindergartenCareTypeID" INT IDENTITY (1,1),
  "KindergartenID" INT NOT NULL REFERENCES "Kindergarten",
  "CareTypeID" INT NOT NULL REFERENCES "CareType",
  "Price" FLOAT(2),
  PRIMARY KEY ("KindergartenCareTypeID")
);

CREATE TABLE "Submission" (
  "SubmissionID" INT IDENTITY (1,1),
  "Status" VARCHAR(8) CHECK ("Status" IN ('pending', 'rejected', 'accepted', 'resigned')),
  "Year" INT,
  "SpecialNeeds" BINARY,
  "AgeGroup" VARCHAR(8) CHECK ("AgeGroup" IN ('infant', 'toddler', 'preschooler')),
  "KindergartenCareTypeID" INT NOT NULL REFERENCES "KindergartenCareType",
  PRIMARY KEY ("SubmissionID")
);

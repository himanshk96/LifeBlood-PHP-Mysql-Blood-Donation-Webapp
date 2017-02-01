CREATE TABLE [personal_details] (
	Index integer(10) NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	email_id varchar(30) NOT NULL,
	password varchar(30) NOT NULL,
	gender integer(1) NOT NULL,
	blood_group integer(1) NOT NULL,
	mobile_no integer(10) NOT NULL,
	birth_date date NOT NULL,
	AgeGroupIndex integer(10) NOT NULL,
  CONSTRAINT [PK_PERSONAL_DETAILS] PRIMARY KEY CLUSTERED
  (
  [Index] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [BloodGroup] (
	Index integer NOT NULL,
	BloodGroup varchar(3) NOT NULL,
  CONSTRAINT [PK_BLOODGROUP] PRIMARY KEY CLUSTERED
  (
  [Index] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Gender] (
	Index integer(1) NOT NULL,
	genderName varchar(6) NOT NULL,
  CONSTRAINT [PK_GENDER] PRIMARY KEY CLUSTERED
  (
  [Index] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [City] (
	Index integer(100) NOT NULL,
	user_id integer(100) NOT NULL,
	city varchar(20) NOT NULL,
	state_id integer(100) NOT NULL,
  CONSTRAINT [PK_CITY] PRIMARY KEY CLUSTERED
  (
  [Index] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [State] (
	index integer(100) NOT NULL,
	StateName varchar(100) NOT NULL,
  CONSTRAINT [PK_STATE] PRIMARY KEY CLUSTERED
  (
  [index] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [AgeGroup] (
	Index integer(10) NOT NULL,
	AgeGroup varchar(10) NOT NULL,
  CONSTRAINT [PK_AGEGROUP] PRIMARY KEY CLUSTERED
  (
  [Index] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [AgeIndex] (
	AgeGroupIndex integer(10) NOT NULL,
	UserIndex integer(10) NOT NULL
)
GO
CREATE TABLE [Donated] (
	UserIndex integer(100) NOT NULL,
	Donated boolean(100) NOT NULL,
	DonatedHistory integer(100),
	DonatedDate date NOT NULL,
  CONSTRAINT [PK_DONATED] PRIMARY KEY CLUSTERED
  (
  [UserIndex] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Locality] (
	LocalAddress1 varchar(150) NOT NULL,
	LocalAddress2 varchar(150),
	CityIndex integer(100) NOT NULL,
	StateIndex integer(100) NOT NULL,
	UserIndex integer(100) NOT NULL
)
GO
ALTER TABLE [personal_details] WITH CHECK ADD CONSTRAINT [personal_details_fk0] FOREIGN KEY ([gender]) REFERENCES [Gender]([Index])
ON UPDATE CASCADE
GO
ALTER TABLE [personal_details] CHECK CONSTRAINT [personal_details_fk0]
GO
ALTER TABLE [personal_details] WITH CHECK ADD CONSTRAINT [personal_details_fk1] FOREIGN KEY ([blood_group]) REFERENCES [BloodGroup]([Index])
ON UPDATE CASCADE
GO
ALTER TABLE [personal_details] CHECK CONSTRAINT [personal_details_fk1]
GO
ALTER TABLE [personal_details] WITH CHECK ADD CONSTRAINT [personal_details_fk2] FOREIGN KEY ([AgeGroupIndex]) REFERENCES [AgeGroup]([Index])
ON UPDATE CASCADE
GO
ALTER TABLE [personal_details] CHECK CONSTRAINT [personal_details_fk2]
GO



ALTER TABLE [City] WITH CHECK ADD CONSTRAINT [City_fk0] FOREIGN KEY ([user_id]) REFERENCES [personal_details]([Index])
ON UPDATE CASCADE
GO
ALTER TABLE [City] CHECK CONSTRAINT [City_fk0]
GO
ALTER TABLE [City] WITH CHECK ADD CONSTRAINT [City_fk1] FOREIGN KEY ([state_id]) REFERENCES [State]([index])
ON UPDATE CASCADE
GO
ALTER TABLE [City] CHECK CONSTRAINT [City_fk1]
GO



ALTER TABLE [AgeIndex] WITH CHECK ADD CONSTRAINT [AgeIndex_fk0] FOREIGN KEY ([AgeGroupIndex]) REFERENCES [AgeGroup]([Index])
ON UPDATE CASCADE
GO
ALTER TABLE [AgeIndex] CHECK CONSTRAINT [AgeIndex_fk0]
GO
ALTER TABLE [AgeIndex] WITH CHECK ADD CONSTRAINT [AgeIndex_fk1] FOREIGN KEY ([UserIndex]) REFERENCES [personal_details]([Index])
ON UPDATE CASCADE
GO
ALTER TABLE [AgeIndex] CHECK CONSTRAINT [AgeIndex_fk1]
GO

ALTER TABLE [Donated] WITH CHECK ADD CONSTRAINT [Donated_fk0] FOREIGN KEY ([UserIndex]) REFERENCES [personal_details]([Index])
ON UPDATE CASCADE
GO
ALTER TABLE [Donated] CHECK CONSTRAINT [Donated_fk0]
GO

ALTER TABLE [Locality] WITH CHECK ADD CONSTRAINT [Locality_fk0] FOREIGN KEY ([CityIndex]) REFERENCES [City]([Index])
ON UPDATE CASCADE
GO
ALTER TABLE [Locality] CHECK CONSTRAINT [Locality_fk0]
GO
ALTER TABLE [Locality] WITH CHECK ADD CONSTRAINT [Locality_fk1] FOREIGN KEY ([StateIndex]) REFERENCES [State]([index])
ON UPDATE CASCADE
GO
ALTER TABLE [Locality] CHECK CONSTRAINT [Locality_fk1]
GO
ALTER TABLE [Locality] WITH CHECK ADD CONSTRAINT [Locality_fk2] FOREIGN KEY ([UserIndex]) REFERENCES [personal_details]([Index])
ON UPDATE CASCADE
GO
ALTER TABLE [Locality] CHECK CONSTRAINT [Locality_fk2]
GO


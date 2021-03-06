USE [DB_A6D740_CapstoneBGSTrial]
GO
/****** Object:  Table [dbo].[CaseReport]    Script Date: 1/13/2021 10:13:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseReport](
	[CaseReportID] [int] IDENTITY(1,1) NOT NULL,
	[UserInformationID] [int] NOT NULL,
	[DateReported] [datetime] NOT NULL,
	[CaseLocation] [varchar](250) NOT NULL,
	[EnvironmentalConcernID] [int] NOT NULL,
	[XCoordinates] [varchar](50) NULL,
	[YCoordinates] [varchar](50) NULL,
	[UpdatedStatusID] [int] NOT NULL,
	[UpdatedStatusDate] [datetime] NOT NULL,
	[Notes] [varchar](250) NULL,
	[VolunteerID] [int] NULL,
	[CaseReportPhoto] [varbinary](max) NULL,
	[Hits] [int] NULL,
	[PhotoLink] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[CaseReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnvironmentalConcern]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnvironmentalConcern](
	[EnvironmentalConcernID] [int] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Notes] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[EnvironmentalConcernID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[HistoryID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[TypeOfActivity] [varchar](50) NULL,
	[DateTimeOfActivity] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[HistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAIN_SAMPLE]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAIN_SAMPLE](
	[MainID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SECONDARY_SAMPLE]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECONDARY_SAMPLE](
	[SampleIDS] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UpdatedStatus]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UpdatedStatus](
	[UpdatedStatusID] [int] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Notes] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[UpdatedStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInformation]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInformation](
	[UserInformationID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeID] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](1024) NOT NULL,
	[GivenName] [varchar](50) NULL,
	[MaidenName] [varchar](50) NULL,
	[FamilyName] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Notes] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserInformationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] NOT NULL,
	[Description] [varchar](50) NULL,
	[Notes] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volunteer]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteer](
	[VolunteerID] [int] IDENTITY(1,1) NOT NULL,
	[GivenName] [varchar](50) NULL,
	[MaidenName] [varchar](50) NULL,
	[FamilyName] [varchar](50) NULL,
	[Notes] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[VolunteerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CaseReport]  WITH CHECK ADD FOREIGN KEY([EnvironmentalConcernID])
REFERENCES [dbo].[EnvironmentalConcern] ([EnvironmentalConcernID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CaseReport]  WITH CHECK ADD FOREIGN KEY([UpdatedStatusID])
REFERENCES [dbo].[UpdatedStatus] ([UpdatedStatusID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CaseReport]  WITH CHECK ADD FOREIGN KEY([UserInformationID])
REFERENCES [dbo].[UserInformation] ([UserInformationID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CaseReport]  WITH CHECK ADD FOREIGN KEY([VolunteerID])
REFERENCES [dbo].[Volunteer] ([VolunteerID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SECONDARY_SAMPLE]  WITH CHECK ADD FOREIGN KEY([SampleIDS])
REFERENCES [dbo].[MAIN_SAMPLE] ([MainID])
GO
ALTER TABLE [dbo].[UserInformation]  WITH CHECK ADD FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([UserTypeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[CHART_BetweenDates]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CHART_BetweenDates]
(
@StartDate DATETIME,
@EndDate DATETIME,
@UpdatedStatusID INT
)
AS
BEGIN
SELECT COUNT(*) AS Number, EC.Description
FROM CaseReport CR
INNER JOIN EnvironmentalConcern EC ON CR.EnvironmentalConcernID = EC.EnvironmentalConcernID
WHERE CR.UpdatedStatusDate BETWEEN  @StartDate+'00:00:00' AND @EndDate+'23:59:00'
AND UpdatedStatusID = @UpdatedStatusID
GROUP BY CR.EnvironmentalConcernID, EC.Description
END;
GO
/****** Object:  StoredProcedure [dbo].[CHART_DASHBOARD_AREA]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CHART_DASHBOARD_AREA]
AS
BEGIN
SELECT COUNT(*) AS 'Number' , CaseLocation AS 'Description'
FROM CaseReport
GROUP BY CaseLocation
END
GO
/****** Object:  StoredProcedure [dbo].[CHART_EnvironmentalConcern]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CHART_EnvironmentalConcern]
(@Year INT)
AS
BEGIN
SELECT COUNT(*) AS Number, EC.Description
FROM CaseReport CR
INNER JOIN EnvironmentalConcern EC ON CR.EnvironmentalConcernID = EC.EnvironmentalConcernID
WHERE YEAR(CR.UpdatedStatusDate) = @Year
AND CR.UpdatedStatusID = 5
GROUP BY CR.EnvironmentalConcernID, EC.Description
END;
GO
/****** Object:  StoredProcedure [dbo].[CHART_EnvironmentalConcern_MonthYear]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CHART_EnvironmentalConcern_MonthYear]
(@Year INT, @Month INT)
AS
BEGIN
SELECT COUNT(*) AS Number, EC.Description
FROM CaseReport CR
INNER JOIN EnvironmentalConcern EC ON CR.EnvironmentalConcernID = EC.EnvironmentalConcernID
WHERE YEAR(CR.UpdatedStatusDate) = @Year
AND CR.UpdatedStatusID = 5
AND MONTH(CR.UpdatedStatusDate) = @Month
GROUP BY CR.EnvironmentalConcernID, EC.Description
END;
GO
/****** Object:  StoredProcedure [dbo].[CHART_OverallStatusUpdate]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CHART_OverallStatusUpdate]
AS
BEGIN
SELECT COUNT(*) AS Number, US.Description
FROM CaseReport CR
INNER JOIN UpdatedStatus US ON CR.UpdatedStatusID = US.UpdatedStatusID
GROUP BY US.Description
END;
GO
/****** Object:  StoredProcedure [dbo].[CHART_OverallStatusUpdate_MonthYear]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CHART_OverallStatusUpdate_MonthYear]
(@Year INT, @Month INT)
AS
BEGIN
SELECT COUNT(*) AS Number, US.Description
FROM CaseReport CR
INNER JOIN UpdatedStatus US ON CR.UpdatedStatusID = US.UpdatedStatusID
WHERE YEAR (CR.UpdatedStatusDate) = @Year
AND MONTH(CR.UpdatedStatusDate) = @Month
GROUP BY US.Description
END;
GO
/****** Object:  StoredProcedure [dbo].[CHART_OverallStatusUpdate_Year]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CHART_OverallStatusUpdate_Year]
(@Year INT)
AS
BEGIN
SELECT COUNT(*) AS Number, US.Description
FROM CaseReport CR
INNER JOIN UpdatedStatus US ON CR.UpdatedStatusID = US.UpdatedStatusID
WHERE YEAR(UpdatedStatusDate) = @Year
GROUP BY US.Description
END;
GO
/****** Object:  StoredProcedure [dbo].[CHART_Status]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CHART_Status] 
(
@Year INT,
@UpdatedStatusID INT
)
AS
BEGIN
SELECT COUNT(*) Number,  DATENAME(MM,DATEADD(MM,MONTH(UpdatedStatusDate) - 1,0))AS Description
FROM CaseReport
WHERE 
YEAR(UpdatedStatusDate) = 2020 AND
UpdatedStatusID = @UpdatedStatusID
GROUP BY MONTH(UpdatedStatusDate)
END;
GO
/****** Object:  StoredProcedure [dbo].[CHART_Status_LW]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CHART_Status_LW]
(@UpdatedStatusID INT, @Year INT) 
AS
BEGIN
SELECT COUNT(*) Number, EC.Description
FROM CaseReport CR
INNER JOIN EnvironmentalConcern EC ON EC.EnvironmentalConcernID = CR.EnvironmentalConcernID
WHERE 
CR.UpdatedStatusID = @UpdatedStatusID AND
YEAR(UpdatedStatusDate) = @Year
GROUP BY EC.Description
END;
GO
/****** Object:  StoredProcedure [dbo].[CHART_StatusLWBetweenDates]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CHART_StatusLWBetweenDates]
(
@UpdatedStatusID INT,
@StartDate DATETIME,
@EndDate DATETIME
)
AS
BEGIN
SELECT
YEAR(UpdatedStatusDate) AS 'Year', 
SUM(CASE WHEN EnvironmentalConcernID = 1 THEN 1 ELSE 0 END) AS 'Total_Land',
SUM(CASE WHEN EnvironmentalConcernID = 2 THEN 1 ELSE 0 END) AS 'Total_Water',
(SUM (CASE WHEN EnvironmentalConcernID=2 AND MONTH(UpdatedStatusDate)=01 THEN 1 ELSE 0 END)) AS 'January_Water',
(SUM (CASE WHEN EnvironmentalConcernID=2 AND MONTH(UpdatedStatusDate)=02 THEN 1 ELSE 0 END))AS 'February_Water',
(SUM (CASE WHEN EnvironmentalConcernID=2 AND MONTH(UpdatedStatusDate)=03 THEN 1 ELSE 0 END))AS 'March_Water',
(SUM (CASE WHEN EnvironmentalConcernID=2 AND MONTH(UpdatedStatusDate)=05 THEN 1 ELSE 0 END))AS 'April_Water',
(SUM (CASE WHEN EnvironmentalConcernID=2 AND MONTH(UpdatedStatusDate)=05 THEN 1 ELSE 0 END))AS 'May_Water',
(SUM (CASE WHEN EnvironmentalConcernID=2 AND MONTH(UpdatedStatusDate)=06 THEN 1 ELSE 0 END))AS 'June_Water',
(SUM (CASE WHEN EnvironmentalConcernID=2 AND MONTH(UpdatedStatusDate)=07 THEN 1 ELSE 0 END))AS 'July_Water',
(SUM (CASE WHEN EnvironmentalConcernID=2 AND MONTH(UpdatedStatusDate)=08 THEN 1 ELSE 0 END))AS 'August_Water',
(SUM (CASE WHEN EnvironmentalConcernID=2 AND MONTH(UpdatedStatusDate)=09 THEN 1 ELSE 0 END))AS 'September_Water',
(SUM (CASE WHEN EnvironmentalConcernID=2 AND MONTH(UpdatedStatusDate)=10 THEN 1 ELSE 0 END))AS 'October_Water',
(SUM (CASE WHEN EnvironmentalConcernID=2 AND MONTH(UpdatedStatusDate)=11 THEN 1 ELSE 0 END))AS 'November_Water',
(SUM (CASE WHEN EnvironmentalConcernID=2 AND MONTH(UpdatedStatusDate)=12 THEN 1 ELSE 0 END)) AS 'December_Water',
(SUM (CASE WHEN EnvironmentalConcernID=1 AND MONTH(UpdatedStatusDate)=01 THEN 1 ELSE 0 END)) AS 'January_Land',
(SUM (CASE WHEN EnvironmentalConcernID=1 AND MONTH(UpdatedStatusDate)=02 THEN 1 ELSE 0 END))AS 'February_Land',
(SUM (CASE WHEN EnvironmentalConcernID=1 AND MONTH(UpdatedStatusDate)=03 THEN 1 ELSE 0 END))AS 'March_Land',
(SUM (CASE WHEN EnvironmentalConcernID=1 AND MONTH(UpdatedStatusDate)=05 THEN 1 ELSE 0 END))AS 'April_Land',
(SUM (CASE WHEN EnvironmentalConcernID=1 AND MONTH(UpdatedStatusDate)=05 THEN 1 ELSE 0 END))AS 'May_Land',
(SUM (CASE WHEN EnvironmentalConcernID=1 AND MONTH(UpdatedStatusDate)=06 THEN 1 ELSE 0 END))AS 'June_Land',
(SUM (CASE WHEN EnvironmentalConcernID=1 AND MONTH(UpdatedStatusDate)=07 THEN 1 ELSE 0 END))AS 'July_Land',
(SUM (CASE WHEN EnvironmentalConcernID=1 AND MONTH(UpdatedStatusDate)=08 THEN 1 ELSE 0 END))AS 'August_Land',
(SUM (CASE WHEN EnvironmentalConcernID=1 AND MONTH(UpdatedStatusDate)=09 THEN 1 ELSE 0 END))AS 'September_Land',
(SUM (CASE WHEN EnvironmentalConcernID=1 AND MONTH(UpdatedStatusDate)=10 THEN 1 ELSE 0 END))AS 'October_Land',
(SUM (CASE WHEN EnvironmentalConcernID=1 AND MONTH(UpdatedStatusDate)=11 THEN 1 ELSE 0 END))AS 'November_Land',
(SUM (CASE WHEN EnvironmentalConcernID=1 AND MONTH(UpdatedStatusDate)=12 THEN 1 ELSE 0 END)) AS 'December_Land'
FROM CaseReport
WHERE UpdatedStatusID = @UpdatedStatusID
AND UpdatedStatusDate BETWEEN @StartDate+' 00:00:00'AND @EndDate+' 23:59:59'
GROUP BY YEAR(UpdatedStatusDate)
END;
GO
/****** Object:  StoredProcedure [dbo].[CHART_StatusLWPerYear]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CHART_StatusLWPerYear]
(@UpdatedStatusID INT, @Year INT)
AS
BEGIN

SELECT 
YEAR(UpdatedStatusDate) AS 'Year',
(SUM (CASE WHEN EnvironmentalConcernID = 1  AND MONTH(UpdatedStatusDate)=01 THEN 1 ELSE 0 END)) AS 'January_Land',
(SUM (CASE WHEN EnvironmentalConcernID = 1  AND MONTH(UpdatedStatusDate)=02 THEN 1 ELSE 0 END))AS 'February_Land',
(SUM (CASE WHEN EnvironmentalConcernID = 1  AND MONTH(UpdatedStatusDate)=03 THEN 1 ELSE 0 END))AS 'March_Land',
(SUM (CASE WHEN EnvironmentalConcernID = 1  AND MONTH(UpdatedStatusDate)=05 THEN 1 ELSE 0 END))AS 'April_Land',
(SUM (CASE WHEN EnvironmentalConcernID = 1  AND MONTH(UpdatedStatusDate)=05 THEN 1 ELSE 0 END))AS 'May_Land',
(SUM (CASE WHEN EnvironmentalConcernID = 1  AND MONTH(UpdatedStatusDate)=06 THEN 1 ELSE 0 END))AS 'June_Land',
(SUM (CASE WHEN EnvironmentalConcernID = 1  AND MONTH(UpdatedStatusDate)=07 THEN 1 ELSE 0 END))AS 'July_Land',
(SUM (CASE WHEN EnvironmentalConcernID = 1  AND MONTH(UpdatedStatusDate)=08 THEN 1 ELSE 0 END))AS 'August_Land',
(SUM (CASE WHEN EnvironmentalConcernID = 1  AND MONTH(UpdatedStatusDate)=09 THEN 1 ELSE 0 END))AS 'September_Land',
(SUM (CASE WHEN EnvironmentalConcernID = 1  AND MONTH(UpdatedStatusDate)=10 THEN 1 ELSE 0 END))AS 'October_Land',
(SUM (CASE WHEN EnvironmentalConcernID = 1  AND MONTH(UpdatedStatusDate)=11 THEN 1 ELSE 0 END))AS 'November_Land',
(SUM (CASE WHEN EnvironmentalConcernID = 1  AND MONTH(UpdatedStatusDate)=12 THEN 1 ELSE 0 END)) AS 'December_Land',
(SUM (CASE WHEN EnvironmentalConcernID = 2  AND MONTH(UpdatedStatusDate)=01 THEN 1 ELSE 0 END)) AS 'January_Water',
(SUM (CASE WHEN EnvironmentalConcernID = 2  AND MONTH(UpdatedStatusDate)=02 THEN 1 ELSE 0 END))AS 'February_Water',
(SUM (CASE WHEN EnvironmentalConcernID = 2  AND MONTH(UpdatedStatusDate)=03 THEN 1 ELSE 0 END))AS 'March_Water',
(SUM (CASE WHEN EnvironmentalConcernID = 2  AND MONTH(UpdatedStatusDate)=05 THEN 1 ELSE 0 END))AS 'April_Water',
(SUM (CASE WHEN EnvironmentalConcernID = 2  AND MONTH(UpdatedStatusDate)=05 THEN 1 ELSE 0 END))AS 'May_Water',
(SUM (CASE WHEN EnvironmentalConcernID = 2  AND MONTH(UpdatedStatusDate)=06 THEN 1 ELSE 0 END))AS 'June_Water',
(SUM (CASE WHEN EnvironmentalConcernID = 2  AND MONTH(UpdatedStatusDate)=07 THEN 1 ELSE 0 END))AS 'July_Water',
(SUM (CASE WHEN EnvironmentalConcernID = 2  AND MONTH(UpdatedStatusDate)=08 THEN 1 ELSE 0 END))AS 'August_Water',
(SUM (CASE WHEN EnvironmentalConcernID = 2  AND MONTH(UpdatedStatusDate)=09 THEN 1 ELSE 0 END))AS 'September_Water',
(SUM (CASE WHEN EnvironmentalConcernID = 2  AND MONTH(UpdatedStatusDate)=10 THEN 1 ELSE 0 END))AS 'October_Water',
(SUM (CASE WHEN EnvironmentalConcernID = 2  AND MONTH(UpdatedStatusDate)=11 THEN 1 ELSE 0 END))AS 'November_Water',
(SUM (CASE WHEN EnvironmentalConcernID = 2  AND MONTH(UpdatedStatusDate)=12 THEN 1 ELSE 0 END)) AS 'December_Water'
FROM CaseReport
WHERE 
UpdatedStatusID = @UpdatedStatusID 
AND YEAR(UpdatedStatusDate) = @Year
GROUP BY YEAR(UpdatedStatusDate)
END;
GO
/****** Object:  StoredProcedure [dbo].[CreateKeycode]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateKeycode]
AS
BEGIN
INSERT INTO KeyCodeList VALUES (NEWID());
END;
GO
/****** Object:  StoredProcedure [dbo].[D_CaseReport]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[D_CaseReport] 
@CaseReportID INT
AS
BEGIN
DELETE FROM CaseReport WHERE CaseReportID = @CaseReportID
END;
GO
/****** Object:  StoredProcedure [dbo].[D_EnvironmentalConcern]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[D_EnvironmentalConcern]
@EnvironmentalConcernID INT
AS
BEGIN
DELETE FROM EnvironmentalConcern WHERE EnvironmentalConcernID = @EnvironmentalConcernID
END;
GO
/****** Object:  StoredProcedure [dbo].[D_UpdatedStatus]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[D_UpdatedStatus]
@UpdatedStatusID INT
AS
BEGIN
DELETE FROM UpdatedStatus WHERE UpdatedStatusID = @UpdatedStatusID
END;
GO
/****** Object:  StoredProcedure [dbo].[D_UserInformation]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[D_UserInformation]
(
@UserInformationID INT
)
AS
BEGIN
DELETE FROM UserInformation WHERE UserInformationID = @UserInformationID
END;
GO
/****** Object:  StoredProcedure [dbo].[D_UserType]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[D_UserType]
@UserTypeID INT
AS
BEGIN
DELETE FROM UserType 
WHERE UserTypeID = @UserTypeID
END;
GO
/****** Object:  StoredProcedure [dbo].[D_Volunteer]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[D_Volunteer]
(
@VolunteerID INT
)
AS
BEGIN
DELETE FROM Volunteer 
WHERE VolunteerID = @VolunteerID
END;
GO
/****** Object:  StoredProcedure [dbo].[DASHBOARD_Home]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DASHBOARD_Home]
(
@EnvironmentalConcernID INT
)
AS
BEGIN
SELECT *
FROM CaseReport
WHERE 
EnvironmentalConcernID = @EnvironmentalConcernID AND
UpdatedStatusID = 5
END;
GO
/****** Object:  StoredProcedure [dbo].[DASHBOARD_HomeProgress]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DASHBOARD_HomeProgress]
AS
BEGIN
SELECT * FROM 
CaseReport
WHERE UpdatedStatusID = 4 
END;
GO
/****** Object:  StoredProcedure [dbo].[DASHBOARD_HomeSubmitted]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DASHBOARD_HomeSubmitted]
AS
BEGIN
SELECT * FROM 
CaseReport
WHERE UpdatedStatusID = 1
END;
GO
/****** Object:  StoredProcedure [dbo].[DDL_Year]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DDL_Year]
AS
BEGIN
SELECT DISTINCT(YEAR(UpdatedStatusDate)) AS Description
FROM CaseReport
END
GO
/****** Object:  StoredProcedure [dbo].[GENERATION_AreaPerMonthYear]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GENERATION_AreaPerMonthYear]
(
@Year INT,
@Month INT
)
AS

			BEGIN --RECORDS IN A SPECIFIED MONTH (LAND AND WATER)
			SELECT COUNT(*) AS Number, CaseLocation, 
			COUNT(CASE WHEN UpdatedStatusID= 1 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_Submitted,
			COUNT(CASE WHEN UpdatedStatusID= 2 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_Rejected,
			COUNT(CASE WHEN UpdatedStatusID= 3 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_Accepted,
			COUNT(CASE WHEN UpdatedStatusID= 4 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_InProgress,
			COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_Completed,
			COUNT(CASE WHEN UpdatedStatusID= 1 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_Submitted,
			COUNT(CASE WHEN UpdatedStatusID= 2 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_Rejected,
			COUNT(CASE WHEN UpdatedStatusID= 3 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_Accepted,
			COUNT(CASE WHEN UpdatedStatusID= 4 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_InProgress,
			COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_Completed
			FROM CaseReport
			WHERE 
			YEAR(UpdatedStatusDate) = @Year AND
			MONTH (UpdatedStatusDate) = @Month
			GROUP BY CaseLocation
			END;
GO
/****** Object:  StoredProcedure [dbo].[GENERATION_AreaPerYear]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GENERATION_AreaPerYear]
(
@Year INT
)
AS

			BEGIN --RECORDS IN A SPECIFIED MONTH (LAND AND WATER)
			SELECT COUNT(*) AS Number, CaseLocation, 
			COUNT(CASE WHEN UpdatedStatusID= 1 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_Submitted,
			COUNT(CASE WHEN UpdatedStatusID= 2 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_Rejected,
			COUNT(CASE WHEN UpdatedStatusID= 3 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_Accepted,
			COUNT(CASE WHEN UpdatedStatusID= 4 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_InProgress,
			COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_Completed,
			COUNT(CASE WHEN UpdatedStatusID= 1 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_Submitted,
			COUNT(CASE WHEN UpdatedStatusID= 2 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_Rejected,
			COUNT(CASE WHEN UpdatedStatusID= 3 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_Accepted,
			COUNT(CASE WHEN UpdatedStatusID= 4 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_InProgress,
			COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_Completed
			FROM CaseReport
			WHERE 
			YEAR(UpdatedStatusDate) = @Year 
			GROUP BY CaseLocation
			END;
GO
/****** Object:  StoredProcedure [dbo].[GENERATION_MonthlyTotals]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GENERATION_MonthlyTotals]
(
@Month INT,
@Year INT
)
AS
BEGIN
SELECT 
			COUNT(CASE WHEN UpdatedStatusID= 1 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_Submitted,
			COUNT(CASE WHEN UpdatedStatusID= 2 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_Rejected,
			COUNT(CASE WHEN UpdatedStatusID= 3 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_Accepted,
			COUNT(CASE WHEN UpdatedStatusID= 4 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_InProgress,
			COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS L_Completed,
			COUNT(CASE WHEN UpdatedStatusID= 1 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_Submitted,
			COUNT(CASE WHEN UpdatedStatusID= 2 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_Rejected,
			COUNT(CASE WHEN UpdatedStatusID= 3 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_Accepted,
			COUNT(CASE WHEN UpdatedStatusID= 4 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_InProgress,
			COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS W_Completed
FROM CaseReport
WHERE 
MONTH(UpdatedStatusDate) = @Month AND
YEAR(UpdatedStatusDate) = @Year

END;
GO
/****** Object:  StoredProcedure [dbo].[I_CaseReport]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[I_CaseReport]
(
@UserInformationID INT,
@EnvironmentalConcernID INT,
@XCoordinates VARCHAR(50),
@YCoordinates VARCHAR(50),
@CaseReportPhoto VARBINARY(MAX),
@CaseLocation VARCHAR(250),
@Notes VARCHAR(250),
@Hits INT
)
AS
BEGIN
INSERT INTO CaseReport VALUES (@UserInformationID,  GETDATE() , @CaseLocation ,@EnvironmentalConcernID, @XCoordinates, @YCoordinates, 1,  GETDATE() ,@Notes,NULL,@CaseReportPhoto,@Hits,'')
END;
GO
/****** Object:  StoredProcedure [dbo].[I_DUMMY_Image]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[I_DUMMY_Image]
(
@ImageName VARBINARY(MAX),
@HELLO VARCHAR(50)
)
AS
BEGIN
INSERT INTO DUMMY_Image VALUES (@ImageName, @HELLO)
END
GO
/****** Object:  StoredProcedure [dbo].[I_EnvironmentalConcern]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[I_EnvironmentalConcern]
(
@EnvironmentalConcernID INT,
@Description VARCHAR(50)
)
AS
BEGIN
INSERT INTO EnvironmentalConcern VALUES (@EnvironmentalConcernID, @Description, 'Inserted: ' + CAST(GETDATE() AS NVARCHAR(MAX)))
END;
GO
/****** Object:  StoredProcedure [dbo].[I_History]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[I_History]
(@Username VARCHAR(50),@TypeOfActivity VARCHAR(50))
AS
BEGIN
INSERT INTO History VALUES (@Username, @TypeOfActivity, GETDATE())
END;

GO
/****** Object:  StoredProcedure [dbo].[I_UpdatedStatus]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[I_UpdatedStatus]
(
@UpdatedStatusID INT,
@Description VARCHAR(50) 
)
AS
BEGIN
INSERT INTO UpdatedStatus VALUES (@UpdatedStatusID, @Description, 'Inserted: ' + CAST(GETDATE() AS NVARCHAR(MAX)) )
END
GO
/****** Object:  StoredProcedure [dbo].[I_UserInformation]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[I_UserInformation]
(
@UserTypeID INT,
@Username VARCHAR(50),
@Password VARCHAR(1024),
@GivenName VARCHAR(50),
@MaidenName VARCHAR(50),
@FamilyName VARCHAR(50),
@Email VARCHAR(100)
)
AS
BEGIN
INSERT INTO UserInformation VALUES (@UserTypeID, @Username,  @Password, @GivenName, @MaidenName, @FamilyName, @Email, 'Inserted: ' + CAST(GETDATE() AS NVARCHAR(MAX)))
END;
GO
/****** Object:  StoredProcedure [dbo].[I_UserType]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[I_UserType]
(
@UserTypeID INT,
@Description VARCHAR(50)
)
AS
BEGIN
INSERT INTO UserType VALUES (@UserTypeID, @Description,'Inserted: ' + CAST(GETDATE() AS NVARCHAR(MAX)));
END;
GO
/****** Object:  StoredProcedure [dbo].[I_Volunteer]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[I_Volunteer]
(
@GivenName VARCHAR(50),
@MaidenName VARCHAR(50),
@FamilyName VARCHAR(50)
)
AS
BEGIN
INSERT INTO Volunteer VALUES (@GivenName, @MaidenName, @FamilyName, 'Inserted: ' + CAST(GETDATE() AS NVARCHAR(MAX)))
END
GO
/****** Object:  StoredProcedure [dbo].[U_CaseReport]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[U_CaseReport]
(
@CaseReportID INT,
@UpdatedStatusID INT
)
AS
BEGIN
UPDATE CaseReport
SET 
UpdatedStatusID = @UpdatedStatusID,
UpdatedStatusDate =  GETDATE() ,
Notes = 'Updated: ' + CAST(GETDATE() AS NVARCHAR(MAX))
WHERE CaseReportID = @CaseReportID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_CaseReport_A]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[U_CaseReport_A]
(
@CaseReportID INT
)
AS
BEGIN
UPDATE CaseReport
SET 
UpdatedStatusID = 3,
UpdatedStatusDate = CAST(GETDATE() AS NVARCHAR(MAX)),
Notes = 'Accepted: '+ CAST(GETDATE() AS NVARCHAR(MAX))
WHERE
CaseReportID = @CaseReportID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_CaseReport_C]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[U_CaseReport_C]
(
@CaseReportID INT
)
AS
BEGIN
UPDATE CaseReport 
SET 
UpdatedStatusID = 5,
UpdatedStatusDate = CAST(GETDATE() AS NVARCHAR(MAX)),
Notes = 'Completed: '+CAST(GETDATE() AS NVARCHAR(MAX))
WHERE 
CaseReportID = @CaseReportID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_CaseReport_Finalize_R]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[U_CaseReport_Finalize_R]
(
@CaseReportID INT,
@Notes VARCHAR(250)
)
AS
BEGIN
UPDATE CaseReport
SET 
UpdatedStatusID = 2,
UpdatedStatusDate =  GETDATE() ,
Notes = @Notes
WHERE CaseReportID = @CaseReportID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_CaseReport_I]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[U_CaseReport_I]
(
@CaseReportID INT,
@VolunteerID INT
)
AS
BEGIN
UPDATE CaseReport
SET
UpdatedStatusID = 4,
UpdatedStatusDate = CAST(GETDATE() AS NVARCHAR(MAX)),
VolunteerID = @VolunteerID,
Notes = 'In Progress: '+CAST(GETDATE() AS NVARCHAR(MAX))
WHERE
CaseReportID = @CaseReportID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_CaseReport_PhotoLink]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[U_CaseReport_PhotoLink]
(
@CaseReportID INT,
@PhotoLink VARCHAR(250)
)
AS
BEGIN
UPDATE CaseReport
SET PhotoLink = @PhotoLink
WHERE CaseReportID = @CaseReportID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_CaseReport_R]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[U_CaseReport_R]
(
@CaseReportID INT
)
AS
BEGIN
UPDATE CaseReport
SET 
UpdatedStatusID = 2,
UpdatedStatusDate = CAST(GETDATE() AS NVARCHAR(MAX)),
Notes = 'Rejected on: ' + CAST(GETDATE() AS NVARCHAR(MAX))
WHERE
CaseReportID = @CaseReportID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_CaseReport_S]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[U_CaseReport_S]
(
@CaseReportID INT
)
AS
BEGIN
UPDATE CaseReport
SET 
UpdatedStatusID = 1,
UpdatedStatusDate =  GETDATE() ,
Notes = 'Reverted to Submit on: '+CAST(GETDATE() AS NVARCHAR(MAX))
WHERE CaseReportID = @CaseReportID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_EnvironmentalConcern]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[U_EnvironmentalConcern]
(
@EnvironmentalConcernID INT,
@Description VARCHAR(50)
)
AS
BEGIN
UPDATE EnvironmentalConcern
SET 
Description = @Description,
Notes = 'Updated: ' + CAST(GETDATE() AS NVARCHAR(MAX))
WHERE 
EnvironmentalConcernID = @EnvironmentalConcernID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_UpdatedStatus]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[U_UpdatedStatus]
(
@UpdatedStatusID INT,
@Description VARCHAR(50)
)
AS 
BEGIN
UPDATE UpdatedStatus
SET Description = @Description
WHERE UpdatedStatusID = @UpdatedStatusID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_UserInformation]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[U_UserInformation]
(
@UserInformationID INT,
@GivenName VARCHAR(50),
@MaidenName VARCHAR(50),
@FamilyName VARCHAR(50)
)
AS
BEGIN
UPDATE UserInformation
SET
GivenName = @GivenName,
MaidenName = @MaidenName,
FamilyName = @FamilyName
WHERE
UserInformationID = @UserInformationID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_UserInformation_Account]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[U_UserInformation_Account]
(
@UserInformationID INT,
@GivenName VARCHAR(50),
@MaidenName VARCHAR(50),
@FamilyName VARCHAR(50),
@Email VARCHAR(100),
@Password VARCHAR(1024)
)
AS
BEGIN
UPDATE UserInformation 
SET
GivenName = @GivenName,
MaidenName = @MaidenName,
FamilyName = @FamilyName,
Email = @Email,
Password = @Password
WHERE UserInformationID = @UserInformationID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_UserType]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[U_UserType]
(
@UserTypeID INT,
@Description VARCHAR(50)
)
AS
BEGIN
UPDATE UserType
SET Description = @Description
WHERE UserTypeID = @UserTypeID
END;
GO
/****** Object:  StoredProcedure [dbo].[U_Volunteer]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[U_Volunteer]
(
@VolunteerID INT,
@GivenName VARCHAR(50),
@MaidenName VARCHAR(50),
@FamilyName VARCHAR(50)
)
AS
BEGIN
UPDATE Volunteer
SET 
GivenName = @GivenName,
MaidenName = @MaidenName,
FamilyName = @FamilyName,
Notes = 'Updated: ' + CAST(GETDATE() AS NVARCHAR(MAX))
WHERE 
VolunteerID = @VolunteerID
END;
GO
/****** Object:  StoredProcedure [dbo].[V_CaseReport]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[V_CaseReport]
(
@UpdatedStatusID INT
)
AS
BEGIN
SELECT 
CR.CaseReportID, UI.UserInformationID, UI.FamilyName, UI.GivenName, UI.MaidenName,
CR.DateReported, CR.EnvironmentalConcernID, EC.Description AS Concern,
CR.UpdatedStatusID, US.Description AS UpdatedStatus, CR.UpdatedStatusDate,
CR.CaseLocation, CR.XCoordinates, CR.YCoordinates, CR.Notes,CR.PhotoLink,
CR.VolunteerID, V.GivenName AS Handler_GivenName, V.MaidenName AS Handler_MaidenName, V.FamilyName AS Handler_FamilyName, CR.Hits
FROM CaseReport CR 
INNER JOIN UserInformation UI ON UI.UserInformationID = CR.UserInformationID
INNER JOIN EnvironmentalConcern EC ON EC.EnvironmentalConcernID = CR.EnvironmentalConcernID
INNER JOIN UpdatedStatus US ON US.UpdatedStatusID = CR.UpdatedStatusID
LEFT JOIN Volunteer V ON CR.VolunteerID = V.VolunteerID
WHERE 
CR.UpdatedStatusID = @UpdatedStatusID
ORDER BY CR.EnvironmentalConcernID ASC
END;
GO
/****** Object:  StoredProcedure [dbo].[V_CaseReport_IDENTITY]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[V_CaseReport_IDENTITY]
AS
BEGIN
SELECT IDENT_CURRENT ('CaseReport') AS Current_Identity;  
END;
GO
/****** Object:  StoredProcedure [dbo].[V_CaseReportBetweenDates]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[V_CaseReportBetweenDates]
(
@UpdatedStatusID INT,
@StartDate DATETIME,
@EndDate DATETIME
)
AS
BEGIN
SELECT 
CR.CaseReportID, UI.UserInformationID, UI.FamilyName, UI.GivenName, UI.MaidenName,
CR.DateReported, CR.EnvironmentalConcernID, EC.Description AS Concern,
CR.UpdatedStatusID, US.Description AS UpdatedStatus, CR.UpdatedStatusDate,
CR.CaseLocation, CR.XCoordinates, CR.YCoordinates, CR.Notes, CR.PhotoLink,
CR.VolunteerID, V.GivenName AS Handler_GivenName, V.MaidenName AS Handler_MaidenName, V.FamilyName AS Handler_FamilyName, CR.Hits
FROM CaseReport CR 
INNER JOIN UserInformation UI ON UI.UserInformationID = CR.UserInformationID
INNER JOIN EnvironmentalConcern EC ON EC.EnvironmentalConcernID = CR.EnvironmentalConcernID
INNER JOIN UpdatedStatus US ON US.UpdatedStatusID = CR.UpdatedStatusID
LEFT JOIN Volunteer V ON CR.VolunteerID = V.VolunteerID
WHERE 
CR.UpdatedStatusID =@UpdatedStatusID
AND CR.UpdatedStatusDate BETWEEN @StartDate+'00:00:00' AND @EndDate+'23:59:59'
--AND @StartDate <= CR.UpdatedStatusDate AND @EndDate > CR.UpdatedStatusDate
ORDER BY CR.EnvironmentalConcernID ASC
END;
GO
/****** Object:  StoredProcedure [dbo].[V_CaseReportPhoto]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[V_CaseReportPhoto]
(
@CaseReportID INT
)
AS
BEGIN
SELECT 
Base64Photo
FROM CaseReport CR 
CROSS APPLY (SELECT CaseReportPhoto AS '*' FOR XML PATH('')) T (Base64Photo)
WHERE 
CR.CaseReportID = @CaseReportID
END;
GO
/****** Object:  StoredProcedure [dbo].[V_CaseReportPhotoIMGUR]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[V_CaseReportPhotoIMGUR]
(
@CaseReportID INT
)
AS
BEGIN
SELECT PhotoLink
FROM CaseReport
WHERE CaseReportID = @CaseReportID
END;
GO
/****** Object:  StoredProcedure [dbo].[V_CheckUsername]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[V_CheckUsername]
(
@Username VARCHAR(50)
)
AS
BEGIN
SELECT * FROM UserInformation
WHERE Username = @Username
END;
GO
/****** Object:  StoredProcedure [dbo].[V_EnvironmentalConcern]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[V_EnvironmentalConcern]
AS
BEGIN
SELECT * FROM EnvironmentalConcern
END;
GO
/****** Object:  StoredProcedure [dbo].[V_History]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[V_History]
AS
BEGIN
SELECT * FROM History
END;
GO
/****** Object:  StoredProcedure [dbo].[V_Leaderboard_MY]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[V_Leaderboard_MY]
(
@UpdatedStatusID INT,
@Year INT,
@Month INT
)
AS
BEGIN
SELECT TOP 10 COUNT(*) AS Points, 
COUNT(DISTINCT(CaseLocation)) AS Areas,
CASE WHEN COUNT(DISTINCT(CaseLocation)) >= 1 THEN 'true' ELSE 'false' END AS Area_1_Report,
CASE WHEN COUNT(DISTINCT(CaseLocation)) >= 2 THEN 'true' ELSE 'false' END AS Area_2_Report,
CASE WHEN COUNT(DISTINCT(CaseLocation)) >= 3 THEN 'true' ELSE 'false' END AS Area_3_Report,
CASE WHEN COUNT(DISTINCT(CaseLocation)) >= 4 THEN 'true' ELSE 'false' END AS Area_4_Report,
CASE WHEN COUNT(DISTINCT(CaseLocation)) >= 5 THEN 'true' ELSE 'false' END AS Area_5_Report,
CR.UserInformationID, UI.GivenName + ' ' + UI.MaidenName + ' ' + UI.FamilyName AS FullName, UI.Username,
COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS LandPoints,
COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS WaterPoints,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 1 THEN 'true' ELSE 'false' END AS Land_1_Report,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 5 THEN 'true' ELSE 'false' END AS Land_5_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 10 THEN 'true' ELSE 'false' END AS Land_10_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 15 THEN 'true' ELSE 'false' END AS Land_15_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 20 THEN 'true' ELSE 'false' END AS Land_20_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 25 THEN 'true' ELSE 'false' END AS Land_25_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 30 THEN 'true' ELSE 'false' END AS Land_30_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 50 THEN 'true' ELSE 'false' END AS Land_50_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 1 THEN 'true' ELSE 'false' END AS Water_1_Report,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 5 THEN 'true' ELSE 'false' END AS Water_5_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 10 THEN 'true' ELSE 'false' END AS Water_10_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 15 THEN 'true' ELSE 'false' END AS Water_15_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 20 THEN 'true' ELSE 'false' END AS Water_20_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 25 THEN 'true' ELSE 'false' END AS Water_25_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 30 THEN 'true' ELSE 'false' END AS Water_30_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 50 THEN 'true' ELSE 'false' END AS Water_50_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 THEN 1 ELSE NULL END) >= 100 THEN 'true' ELSE 'false' END AS Over_100_Reports

FROM CaseReport CR
INNER JOIN UserInformation UI ON CR.UserInformationID = UI.UserInformationID
WHERE 
UpdatedStatusID = @UpdatedStatusID AND
YEAR(UpdatedStatusDate) = @Year AND
MONTH(UpdatedStatusDate) = @Month
GROUP BY CR.UserInformationID, UI.GivenName, UI.MaidenName, UI.FamilyName, UI.Username
ORDER BY Points DESC
/*
MONTH(UpdatedStatusDate) =  MONTH(CURRENT_TIMESTAMP) AND
YEAR(UpdatedStatusDate) = YEAR(CURRENT_TIMESTAMP)
*/
END;
GO
/****** Object:  StoredProcedure [dbo].[V_Leaderboard_Y]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[V_Leaderboard_Y]
(
@UpdatedStatusID INT,
@Year INT
)
AS
BEGIN
SELECT TOP 10 COUNT(*) AS Points, 
COUNT(DISTINCT(CaseLocation)) AS Areas,
CASE WHEN COUNT(DISTINCT(CaseLocation)) >= 1 THEN '' ELSE 'filter: grayscale(100%);' END AS Area_1_Report,
CASE WHEN COUNT(DISTINCT(CaseLocation)) >= 2 THEN '' ELSE 'filter: grayscale(100%);' END AS Area_2_Report,
CASE WHEN COUNT(DISTINCT(CaseLocation)) >= 3 THEN '' ELSE 'filter: grayscale(100%);' END AS Area_3_Report,
CASE WHEN COUNT(DISTINCT(CaseLocation)) >= 4 THEN '' ELSE 'filter: grayscale(100%);' END AS Area_4_Report,
CASE WHEN COUNT(DISTINCT(CaseLocation)) >= 5 THEN '' ELSE 'filter: grayscale(100%);' END AS Area_5_Report,
CR.UserInformationID, UI.GivenName + ' ' + UI.MaidenName + ' ' + UI.FamilyName AS FullName, UI.Username,
COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) AS LandPoints,
COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) AS WaterPoints,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 1 THEN '' ELSE 'filter: grayscale(100%);' END AS Land_1_Report,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 5 THEN '' ELSE 'filter: grayscale(100%);' END AS Land_5_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 10 THEN '' ELSE 'filter: grayscale(100%);' END AS Land_10_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 15 THEN '' ELSE 'filter: grayscale(100%);' END AS Land_15_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 20 THEN '' ELSE 'filter: grayscale(100%);' END AS Land_20_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 25 THEN '' ELSE 'filter: grayscale(100%);' END AS Land_25_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 30 THEN '' ELSE 'filter: grayscale(100%);' END AS Land_30_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 1 THEN 1 ELSE NULL END) >= 50 THEN '' ELSE 'filter: grayscale(100%);' END AS Land_50_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 1 THEN '' ELSE 'filter: grayscale(100%);' END AS Water_1_Report,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 5 THEN '' ELSE 'filter: grayscale(100%);' END AS Water_5_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 10 THEN '' ELSE 'filter: grayscale(100%);' END AS Water_10_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 15 THEN '' ELSE 'filter: grayscale(100%);' END AS Water_15_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 20 THEN '' ELSE 'filter: grayscale(100%);' END AS Water_20_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 25 THEN '' ELSE 'filter: grayscale(100%);' END AS Water_25_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 30 THEN '' ELSE 'filter: grayscale(100%);' END AS Water_30_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 AND EnvironmentalConcernID = 2 THEN 1 ELSE NULL END) >= 50 THEN '' ELSE 'filter: grayscale(100%);' END AS Water_50_Reports,
CASE WHEN COUNT(CASE WHEN UpdatedStatusID= 5 THEN 1 ELSE NULL END) >= 100 THEN '' ELSE 'filter: grayscale(100%);' END AS Over_100_Reports

FROM CaseReport CR
INNER JOIN UserInformation UI ON CR.UserInformationID = UI.UserInformationID
WHERE 
UpdatedStatusID = @UpdatedStatusID AND
YEAR(UpdatedStatusDate) = @Year 
GROUP BY CR.UserInformationID, UI.GivenName, UI.MaidenName, UI.FamilyName, UI.Username
ORDER BY Points DESC
/*
MONTH(UpdatedStatusDate) =  MONTH(CURRENT_TIMESTAMP) AND
YEAR(UpdatedStatusDate) = YEAR(CURRENT_TIMESTAMP)
*/
END;

GO
/****** Object:  StoredProcedure [dbo].[V_UpdatedStatus]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[V_UpdatedStatus]
AS
BEGIN
SELECT * FROM UpdatedStatus
END;
GO
/****** Object:  StoredProcedure [dbo].[V_UserInformation]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[V_UserInformation]
AS
BEGIN
SELECT * FROM UserInformation
END;
GO
/****** Object:  StoredProcedure [dbo].[V_UserType]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[V_UserType]
AS
BEGIN
SELECT UserTypeID, Description, Notes
FROM UserType
END;
GO
/****** Object:  StoredProcedure [dbo].[V_Volunteer]    Script Date: 1/13/2021 10:13:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[V_Volunteer]
AS
BEGIN
SELECT VolunteerID, GivenName, MaidenName, FamilyName, GivenName+' '+MaidenName+' '+FamilyName AS FullName
FROM Volunteer
END;
GO

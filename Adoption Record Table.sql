USE [Test_Fall2016]
GO

/****** Object:  Table [dbo].[AdoptionRecord]    Script Date: 10/12/2016 8:48:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[AdoptionRecord](
	[AdoptionRecordID] [int] IDENTITY(1,1) NOT NULL,
	[FamilyID] [int] NOT NULL,
	[AnimalID] [int] NOT NULL,
	[DateOfAdoption] [date] NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
 CONSTRAINT [PK_AdoptionRecord] PRIMARY KEY CLUSTERED 
(
	[AdoptionRecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[AdoptionRecord]  WITH CHECK ADD  CONSTRAINT [FK_AdoptionRecord_Animal] FOREIGN KEY([AnimalID])
REFERENCES [dbo].[Animal] ([AnimalID])
GO

ALTER TABLE [dbo].[AdoptionRecord] CHECK CONSTRAINT [FK_AdoptionRecord_Animal]
GO

ALTER TABLE [dbo].[AdoptionRecord]  WITH CHECK ADD  CONSTRAINT [FK_AdoptionRecord_Family] FOREIGN KEY([FamilyID])
REFERENCES [dbo].[Family] ([FamilyID])
GO

ALTER TABLE [dbo].[AdoptionRecord] CHECK CONSTRAINT [FK_AdoptionRecord_Family]
GO


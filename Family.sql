USE [Fall2016]
GO

/****** Object:  Table [dbo].[Family]    Script Date: 10/12/2016 9:50:52 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Family](
	[FamilyID] [int] IDENTITY(1,1) NOT NULL,
	[FencedYard] [varchar](1) NULL,
	[NumberOfPets] [int] NULL,
	[NumberOfChildren] [int] NULL,
	[LastName] [varchar](50) NOT NULL,
	[TotalDonations] [money] NULL,
 CONSTRAINT [PK_Family] PRIMARY KEY CLUSTERED 
(
	[FamilyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


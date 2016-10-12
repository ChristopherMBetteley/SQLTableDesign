USE [Fall2016]
GO

/****** Object:  Table [dbo].[Book]    Script Date: 10/12/2016 8:59:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[PublishDate] [date] NOT NULL,
	[ISBN] [int] NOT NULL,
	[PublishMedium] [varchar](50) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO

ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Book]
GO


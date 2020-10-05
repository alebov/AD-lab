USE [Clients]
GO

/****** Object:  Table [dbo].[Data]    Script Date: 19/10/2016 22:11:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Data](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GivenName] [nvarchar](max) NULL,
	[Initials] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[Office] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[OfficePhone] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[HomePage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Data] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

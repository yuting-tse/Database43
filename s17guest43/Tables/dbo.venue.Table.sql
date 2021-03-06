/****** Object:  Table [dbo].[venue]    Script Date: 5/18/2017 6:46:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venue](
	[venue_id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [text] NOT NULL,
	[location] [varchar](50) NOT NULL,
 CONSTRAINT [PK_venue] PRIMARY KEY CLUSTERED 
(
	[venue_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

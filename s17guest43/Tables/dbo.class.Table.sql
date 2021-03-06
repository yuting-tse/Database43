/****** Object:  Table [dbo].[class]    Script Date: 5/18/2017 6:46:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[class_id] [int] IDENTITY(1,1) NOT NULL,
	[track_id] [int] NOT NULL,
	[topic] [varchar](100) NOT NULL,
	[duration] [int] NOT NULL,
	[difficulty_level] [varchar](50) NOT NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[class]  WITH NOCHECK ADD  CONSTRAINT [class_track_id_FK] FOREIGN KEY([track_id])
REFERENCES [dbo].[track] ([track_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[class] NOCHECK CONSTRAINT [class_track_id_FK]
GO

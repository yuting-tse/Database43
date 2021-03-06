/****** Object:  Table [dbo].[presenter]    Script Date: 5/18/2017 6:46:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[presenter](
	[presenter_id] [int] IDENTITY(1,1) NOT NULL,
	[person_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[presentation_id] [int] NOT NULL,
 CONSTRAINT [PK_presenter] PRIMARY KEY CLUSTERED 
(
	[presenter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[presenter]  WITH NOCHECK ADD  CONSTRAINT [presenter_class_id_FK] FOREIGN KEY([class_id])
REFERENCES [dbo].[class] ([class_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[presenter] NOCHECK CONSTRAINT [presenter_class_id_FK]
GO
ALTER TABLE [dbo].[presenter]  WITH NOCHECK ADD  CONSTRAINT [presenter_person_id_FK] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([person_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[presenter] NOCHECK CONSTRAINT [presenter_person_id_FK]
GO
ALTER TABLE [dbo].[presenter]  WITH NOCHECK ADD  CONSTRAINT [presenter_presentation_id_FK] FOREIGN KEY([presentation_id])
REFERENCES [dbo].[presentation] ([presentation_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[presenter] NOCHECK CONSTRAINT [presenter_presentation_id_FK]
GO

/****** Object:  Table [dbo].[presentation_speaker]    Script Date: 5/18/2017 6:46:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[presentation_speaker](
	[presentation_speaker_id] [int] IDENTITY(1,1) NOT NULL,
	[presenter_id] [int] NOT NULL,
	[presentation_id] [int] NOT NULL,
 CONSTRAINT [PK_presentation_speaker] PRIMARY KEY CLUSTERED 
(
	[presentation_speaker_id] ASC,
	[presenter_id] ASC,
	[presentation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[presentation_speaker]  WITH CHECK ADD  CONSTRAINT [FK_presentation_speaker_presentation] FOREIGN KEY([presentation_id])
REFERENCES [dbo].[presentation] ([presentation_id])
GO
ALTER TABLE [dbo].[presentation_speaker] CHECK CONSTRAINT [FK_presentation_speaker_presentation]
GO
ALTER TABLE [dbo].[presentation_speaker]  WITH CHECK ADD  CONSTRAINT [FK_presentation_speaker_presenter] FOREIGN KEY([presenter_id])
REFERENCES [dbo].[presenter] ([presenter_id])
GO
ALTER TABLE [dbo].[presentation_speaker] CHECK CONSTRAINT [FK_presentation_speaker_presenter]
GO

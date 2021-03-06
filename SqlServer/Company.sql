USE [Cedar]
GO

/****** Object:  Table [dbo].[Company]    Script Date: 04/05/2012 13:11:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Company](
	[CompanyId] [uniqueidentifier] NOT NULL,
	[Form] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[EstablishYear] [int] NULL,
	[ManagingDirector] [nvarchar](255) NULL,
	[EconomicCode] [nvarchar](255) NULL,
	[FormalStaffNo] [int] NULL,
	[ContractStaffNo] [int] NULL,
	[CompanyActivity] [nvarchar](255) NULL,
	[BoardOfDirectors] [nvarchar](255) NULL,
	[IndividualShareHolders] [nvarchar](255) NULL,
	[LegalShareHoldes] [nvarchar](255) NULL,
	[CurrentProject1] [nvarchar](255) NULL,
	[CurrentProject2] [nvarchar](255) NULL,
	[CurrentProject3] [nvarchar](255) NULL,
	[ProposedPruduct1] [nvarchar](255) NULL,
	[ProposedPruduct2] [nvarchar](255) NULL,
	[ProposedPruduct3] [nvarchar](255) NULL,
	[ContactPointNameAndFamily] [nvarchar](255) NULL,
	[ContactPointPost] [nvarchar](255) NULL,
	[ContactPointTelNo] [nvarchar](255) NULL,
	[ContactPointCellNo] [nvarchar](255) NULL,
	[ContactPointMail] [nvarchar](255) NULL,
	[FollowupCode] [nvarchar](255) NULL,
	[CW] [bit] NULL,
	[TI] [bit] NULL,
	[SA] [bit] NULL,
	[City] [nvarchar](255) NULL,
	[Province1] [nvarchar](255) NULL,
	[Province2] [nvarchar](255) NULL,
	[ValidApprovals_AttachmentId] [uniqueidentifier] NULL,
	[ProductTools_AttachmentId] [uniqueidentifier] NULL,
	[TechnicalDetails_AttachmentId] [uniqueidentifier] NULL,
	[YourProposalDocument_AttachmentId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK4D421FF8195E8464] FOREIGN KEY([YourProposalDocument_AttachmentId])
REFERENCES [dbo].[Attachment] ([AttachmentId])
GO

ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK4D421FF8195E8464]
GO

ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK4D421FF83B1679C3] FOREIGN KEY([ValidApprovals_AttachmentId])
REFERENCES [dbo].[Attachment] ([AttachmentId])
GO

ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK4D421FF83B1679C3]
GO

ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK4D421FF846289D7D] FOREIGN KEY([TechnicalDetails_AttachmentId])
REFERENCES [dbo].[Attachment] ([AttachmentId])
GO

ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK4D421FF846289D7D]
GO

ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK4D421FF85AC1F3F6] FOREIGN KEY([ProductTools_AttachmentId])
REFERENCES [dbo].[Attachment] ([AttachmentId])
GO

ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK4D421FF85AC1F3F6]
GO



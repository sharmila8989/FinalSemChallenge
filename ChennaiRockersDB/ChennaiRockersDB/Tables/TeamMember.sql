CREATE TABLE [dbo].[TeamMember]
(
	[MemberId] INT IDENTITY(1,1) NOT NULL, 
    [MemberName] NVARCHAR(50) NOT NULL, 
    [MemberEmail] NVARCHAR(50) NOT NULL,
	PRIMARY KEY(MemberId)
)

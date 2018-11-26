CREATE TABLE [dbo].[Game]
(
	[GameId] INT IDENTITY(1,1) NOT NULL, 
    [GameDateTime] DATETIME NOT NULL, 
    [Venue] NVARCHAR(50) NOT NULL, 
    [courtFees] MONEY NULL, 
    [MemberId] INT NULL,
	PRIMARY KEY(GameId),
	FOREIGN KEY(MemberId) REFERENCES TeamMember(MemberId)

)

/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF '$(LoadTestData)' = 'true'
BEGIN

DELETE FROM Game;
DELETE FROM TeamMember;

INSERT INTO TeamMember(MemberName, MemberEmail)VALUES
('Sharmila', 'Sharmila.fathima8989@gmail.com'),
('Noushika', 'gudshe.cres@gmail.com');

INSERT INTO Game(GameDateTime, Venue) VALUES
('2018/10/25 10:00:00.000','Werribee Eagle Stadium , Court 5'),
('2018/09/20 11:30:00.000', 'Epping Stadium, Court 3'),
('2018/12/25 10:30:00.000', 'Footscray Public Stadium, Court 1');		

END;
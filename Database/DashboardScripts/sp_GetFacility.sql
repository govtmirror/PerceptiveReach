USE [Reach_Dev]
GO
/****** Object:  StoredProcedure [prsystem].[sp_GetFacility]    Script Date: 3/16/2016 12:34:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [prsystem].[sp_GetFacility]
	@UserName nvarchar(50),
	@VisnId int = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	 SET NOCOUNT ON;
	 DECLARE @UserRole AS INT
	 
	 SELECT @UserRole = UserRole FROM prsystem.Users
	 WHERE UserName = @UserName

	 IF @UserRole = 6
	 BEGIN
		 SELECT [TotalPatients] AS Total,
					[AtRisk],
					[VISN],
					[STA3N],
					[VAMC_Name],
					[StateAbbr]
		 FROM [dbo].[vw_FacilityRoster]
		 WHERE STA3N IN (SELECT FacilityID FROM prsystem.UserFacilityMap uf
		 INNER JOIN prsystem.Users u
		 on uf.UserID = u.UserID
		 WHERE u.UserName = @UserName)
		 ORDER BY STA3N ASC;
	 END
	 ELSE
	 BEGIN
		SELECT [TotalPatients] AS Total,
					[AtRisk],
					[VISN],
					[STA3N],
					[VAMC_Name],
					[StateAbbr]
			FROM [dbo].[vw_FacilityRoster]
			WHERE (@VisnId IS NULL OR (VISN = @VisnId))
			ORDER BY STA3N ASC;
	 END

END


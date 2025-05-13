
/*
CREATE TABLE NASDA.TB_corr_Design_report_count (
    dr_DesignGuid NVARCHAR(150),
    dr_version NVARCHAR(50),
    dr_projectId NVARCHAR(50),
    dr_dashno NVARCHAR(50),
    dr_designquantity INT,
    dr_savedcost DECIMAL(18, 2),
    dr_savedprice DECIMAL(18, 2),
    dr_factorydiscount DECIMAL(18, 2),
    dr_active INT,
    dr_saveddate DATETIME,
    dr_AhuHeight NVARCHAR(50),
    dr_AhuLength NVARCHAR(50),
    dr_AhuWidth NVARCHAR(50),
    dr_AhuSectionCount NVARCHAR(50),
    dr_CoilCount NVARCHAR(50),
    dr_DoorCount NVARCHAR(50),
    dr_FanWallFanCount NVARCHAR(50),
    dr_FoamDoorCount NVARCHAR(50),
    dr_HousedFanCount NVARCHAR(50),
    dr_IsFoamPanel NVARCHAR(50),
    dr_IsGalv NVARCHAR(50),
    dr_IsIndoorUse NVARCHAR(50),
    dr_IsKnockdown NVARCHAR(50),
    dr_IsPaint NVARCHAR(50),
    dr_PlenumFanCount NVARCHAR(50)
);
*/
/*
truncate TABLE NASDA.TB_corr_Design_report_count
INSERT INTO NASDA.TB_corr_Design_report_count
select 

               ad.DesignGuid as dr_DesignGuid,
               ad.version as dr_version,
               --cpd.max_version                                       as version,
               ad.projectID as dr_projectId,
               ad.dashno as dr_dashno,

               --ad.DesignGuid,
               --ad.DashNo,
               ad.DesignQty as dr_designquantity,
               ad.savedcost as dr_savedcost,
               ad.savedprice as dr_savedprice,
               ad.factoryDiscount as dr_factorydiscount,
               ad.Active as dr_active,
               ad.saveddate as dr_saveddate,
               dr.value('(AhuHeight)[1]', 'NVARCHAR(50)')     as dr_AhuHeight,
               dr.value('(AhuLength)[1]', 'NVARCHAR(50)')     as dr_AhuLength,
               dr.value('(AhuWidth)[1]', 'NVARCHAR(50)')     as dr_AhuWidth,
               dr.value('(AhuSectionCount)[1]', 'NVARCHAR(50)')     as dr_AhuSectionCount,
               dr.value('(CoilCount)[1]', 'NVARCHAR(50)')     as dr_CoilCount,
               dr.value('(DoorCount)[1]', 'NVARCHAR(50)')     as dr_DoorCount,
               dr.value('(FanWallFanCount)[1]', 'NVARCHAR(50)')     as dr_FanWallFanCount,
               dr.value('(FoamDoorCount)[1]', 'NVARCHAR(50)')     as dr_FoamDoorCount,
               dr.value('(HousedFanCount)[1]', 'NVARCHAR(50)')     as dr_HousedFanCount,
               dr.value('(IsFoamPanel)[1]', 'NVARCHAR(50)')     as dr_IsFoamPanel,
               dr.value('(IsGalv)[1]', 'NVARCHAR(50)')     as dr_IsGalv,
               dr.value('(IsIndoorUse)[1]', 'NVARCHAR(50)')     as dr_IsIndoorUse,
               dr.value('(IsKnockdown)[1]', 'NVARCHAR(50)')     as dr_IsKnockdown,
               dr.value('(IsPaint)[1]', 'NVARCHAR(50)')     as dr_IsPaint,
               dr.value('(PlenumFanCount)[1]', 'NVARCHAR(50)')     as dr_PlenumFanCount
               
               
               
           from
               NASDA.DA_Design                           as ad
               cross APPLY ad.data.nodes('Design/ReportXml') as design(dr)
               where ad.Active = 1
*/

select * from NASDA.TB_corr_Design_report_count
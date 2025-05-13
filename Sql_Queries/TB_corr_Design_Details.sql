/*
CREATE TABLE NASDA.TB_corr_Design_Details (
    d_DesignGuid NVARCHAR(100),
    d_version NVARCHAR(50),
    d_projectId NVARCHAR(50),
    d_dashno NVARCHAR(50),
    d_designquantity INT,
    d_savedcost DECIMAL(18, 2),
    d_savedprice DECIMAL(18, 2),
    d_factorydiscount DECIMAL(18, 2),
    d_active INT,
    d_saveddate DATETIME,
    IncludeInProject NVARCHAR(50),
    SavedPriceMon NVARCHAR(50),
    CabinetConstruction NVARCHAR(50),
    BaseStructure NVARCHAR(50),
    WeatherCertification NVARCHAR(50),
    d_key NVARCHAR(100),
    d_name NVARCHAR(100),
    d_airflowtype NVARCHAR(50),
    d_basefloorcoating NVARCHAR(50),
    d_baseinsulmat NVARCHAR(50),
    d_baseinsulsheetrock NVARCHAR(50),
    d_BaseStructureHeight NVARCHAR(50),
    d_MultipleHeatRecoveryDevices NVARCHAR(50),
    d_DesignCHM NVARCHAR(50),
    d_DesignCFMMode NVARCHAR(50),
    d_DesignEnvironment NVARCHAR(50),
    d_DesignInitialConfig NVARCHAR(50),
    d_DesignInitialConfigAirflow NVARCHAR(50),
    d_DesignQty NVARCHAR(50),
    d_DesignTargetVelocity NVARCHAR(50),
    d_ElectricalWiringType NVARCHAR(50)
);
*/



--select top (10) * from nasda.DA_Design
/*
truncate TABLE NASDA.TB_corr_Design_Details
INSERT INTO NASDA.TB_corr_Design_Details (
    d_DesignGuid,
    d_version,
    d_projectId,
    d_dashno,
    d_designquantity,
    d_savedcost,
    d_savedprice,
    d_factorydiscount,
    d_active,
    d_saveddate,
    IncludeInProject,
    SavedPriceMon,
    CabinetConstruction,
    BaseStructure,
    WeatherCertification,
    d_key,
    d_name,
    d_airflowtype,
    d_basefloorcoating,
    d_baseinsulmat,
    d_baseinsulsheetrock,
    d_BaseStructureHeight,
    d_MultipleHeatRecoveryDevices,
    d_DesignCHM,
    d_DesignCFMMode,
    d_DesignEnvironment,
    d_DesignInitialConfig,
    d_DesignInitialConfigAirflow,
    d_DesignQty,
    d_DesignTargetVelocity,
    d_ElectricalWiringType
)
select
               ad.DesignGuid as d_DesignGuid,
               ad.version as d_version,
               --cpd.max_version                                       as version,
               ad.projectID as d_projectId,
               ad.dashno as d_dashno,

               --ad.DesignGuid,
               --ad.DashNo,
               ad.DesignQty as d_designquantity,
               ad.savedcost as d_savedcost,
               ad.savedprice as d_savedprice,
               ad.factoryDiscount as d_factorydiscount,
               ad.Active as d_active,
               ad.saveddate as d_saveddate,
               d.value('(IncludeInProject)[1]', 'NVARCHAR(50)')     as IncludeInProject,
               d.value('(SavedPriceMon)[1]', 'NVARCHAR(50)')        as SavedPriceMon,
               d.value('(CabinetConstruction)[1]', 'NVARCHAR(50)')  as CabinetConstruction,
               d.value('(BaseStructure)[1]', 'NVARCHAR(50)')        as BaseStructure,
               d.value('(WeatherCertification)[1]', 'NVARCHAR(50)') as WeatherCertification,
               d.value('(Key)[1]', 'NVARCHAR(50)')        as d_key,
               d.value('(Name)[1]', 'NVARCHAR(50)')        as d_name,
               d.value('(AirflowType)[1]', 'NVARCHAR(50)')        as d_airflowtype,
               --d.value('(AllowCustomSplitSizes)[1]', 'NVARCHAR(50)')        as BaseStructure,
               --d.value('(AutoBuildLiftingLugs)[1]', 'NVARCHAR(50)')        as BaseStructure,
               d.value('(BaseFloorCoating)[1]', 'NVARCHAR(50)')        as d_basefloorcoating,
               d.value('(BaseInsulMat)[1]', 'NVARCHAR(50)')        as d_baseinsulmat,
               d.value('(BaseInsulSheetrock)[1]', 'NVARCHAR(50)')        as d_baseinsulsheetrock,
               d.value('(BaseStructureHeight)[1]', 'NVARCHAR(50)')        as d_BaseStructureHeight,
               d.value('(ContainsMultipleHeatRecoveryDevices)[1]', 'NVARCHAR(50)')        as d_MultipleHeatRecoveryDevices,
               d.value('(DesignCFM)[1]', 'NVARCHAR(50)')        as d_DesignCHM,
               d.value('(DesignCFMMode)[1]', 'NVARCHAR(50)')        as d_DesignCFMMode,
               d.value('(DesignEnvironment)[1]', 'NVARCHAR(50)')        as d_DesignEnvironment,
               d.value('(DesignInitialConfig)[1]', 'NVARCHAR(50)')        as d_DesignInitialConfig,
               d.value('(DesignInitialConfigAirflow)[1]', 'NVARCHAR(50)')        as d_DesignInitialConfigAirflow,
               d.value('(DesignQty)[1]', 'NVARCHAR(50)')        as d_DesignQty,
               d.value('(DesignTargetVelocity)[1]', 'NVARCHAR(50)')        as d_DesignTargetVelocity,
               d.value('(ElectricalWiringType)[1]', 'NVARCHAR(50)')        as d_ElectricalWiringType
               
               
               --c.value('(ActiveFanQty)[1]', 'varchar(40)')          as ActiveFanQty,
               --c.value('(WheelDia)[1]', 'varchar(40)')              as WheelDia,
               --c.value('(WheelType)[1]', 'varchar(40)')             as WheelType,
               --c.value('(MtrMfg)[1]', 'varchar(40)')                as MtrMfg
           from
               NASDA.DA_Design                           as ad
               cross APPLY ad.data.nodes('Design/Design') as design(d)
               where ad.Active = 1

*/

select * from NASDA.TB_corr_Design_Details

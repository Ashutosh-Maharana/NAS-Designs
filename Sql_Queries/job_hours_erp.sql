select 
co_num,
co_line,
job,
left(job,7) as SONumber,
TRY_CAST(right(job,3) as int) as Dash,
concat(left(job,7),'-',TRY_CAST(right(job,3) as int)) as vlookup_id,
--suffix,
due_date,
item,
coalesce([0],0) as 'Unit Hours ERP(0000)',
coalesce([2000],0)  as 'Base Hours ERP(2000)',
coalesce([3000],0)  as 'Cabinet Rollform Hours ERP(3000)',
coalesce([4000],0)  as 'Fanwall Hours ERP(4000)',
coalesce([5000],0)  as 'Parts and Subassembly Hours ERP(5000)',
coalesce([6000],0)  as 'Electrical Hours ERP(6000)',
coalesce([7000],0)  as 'Cabinet Exterior Hours ERP(7000)',
coalesce([8000],0)  as 'Door Hours ERP(8000)',
coalesce([9000],0)  as 'Rework Hours ERP(9000)',
(coalesce([0],0)+coalesce([2000],0)+coalesce([3000],0)+coalesce([4000],0)+coalesce([5000],0)+coalesce([6000],0)+coalesce([7000],0)+coalesce([8000],0)+coalesce([9000],0)) as 'Total Hours'
from

(SELECT

  ci.co_num,
  ci.co_line,
jrt.[job]
        ,jrt.[suffix]
        --,[oper_num]
        , ci.due_date
        , ci.item
        ,[run_lbr_hrs]
 
  FROM [Okarche].[dbo].[jrt_sch_mst] jrt
  LEFT join okarche.dbo.coitem_mst ci on ci.ref_num = jrt.job
)as main_table
  pivot(
    sum(run_lbr_hrs) for suffix in ([0],[2000],[3000],[4000],[5000],[6000],[7000],[8000],[9000])
  ) as PivotTable
--where co_num = 'N000004413' and co_line = '1'
  ----------

/*
select job,
left(job,7) as SONumber,
TRY_CAST(right(job,3) as int) as Dash,
concat(left(job,7),'-',TRY_CAST(right(job,3) as int)) as vlookup_id,
suffix,
due_date,
item,
[10] as 'Unit Assembly Hours ERP(10)',
[80] as 'Assembly Electrical Hours ERP(80)',
[690] as 'Total Hours ERP(690)'
--([10]+[80]+[690]) as 'Total Hours'
from
(SELECT
jrt.[job]
        ,jrt.[suffix]
        ,[oper_num]
        , ci.due_date
        , ci.item
        ,[run_lbr_hrs]
 
  FROM [Okarche].[dbo].[jrt_sch_mst] jrt
  LEFT join okarche.dbo.coitem_mst ci on ci.ref_num = jrt.job
 
 
  WHERE jrt.suffix = 0
  and oper_num in ('10','80','690')
  and YEAR(due_date) = 2024
  and item='unit'
 
  --order by 4,1,2,3
  ) as main_table
  pivot(
    sum(run_lbr_hrs) for oper_num in ([10],[80],[690])
  ) as PivotTable
  --where job = 'N000004413'
  --where left(job,7) in( 'N004413','N003165')
  */
-- list total count per year in order
select datepart(yyyy, [col1]) as year, count(*) as count
from [table_name] with(nolock)
where [condition]
group by datepart(yyyy, [col1])
order by year

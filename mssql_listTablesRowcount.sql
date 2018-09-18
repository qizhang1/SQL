CREATE TABLE #counts
(
    table_name varchar(255),
    row_count bigint
)

EXEC sp_MSForEachTable @command1='INSERT #counts (table_name, row_count) SELECT ''?'', COUNT_BIG(*) FROM ?'
SELECT table_name, row_count FROM #counts ORDER BY table_name, row_count DESC
DROP TABLE #counts

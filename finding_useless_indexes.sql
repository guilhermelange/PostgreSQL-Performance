SELECT schemaname, relname, indexrelname, idx_scan,
       pg_size_pretty(pg_relation_size(indexrelid)) AS idx_size
FROM   
	   pg_stat_user_indexes;


SELECT indexrelname,
       cast(idx_tup_read AS numeric) / idx_scan AS avg_tuples,
       idx_scan,idx_tup_read 
FROM pg_stat_user_indexes 
       WHERE idx_scan > 0;

SELECT relname,
       cast(n_tup_ins AS numeric) / (n_tup_ins + n_tup_upd + n_tup_del) AS ins_pct,
       cast(n_tup_upd AS numeric) / (n_tup_ins + n_tup_upd + n_tup_del) AS upd_pct,
       cast(n_tup_del AS numeric) / (n_tup_ins + n_tup_upd + n_tup_del) AS del_pct 
FROM pg_stat_user_tables 
       ORDER BY relname;

SELECT relname,n_tup_upd, n_tup_hot_upd,
       cast(n_tup_hot_upd AS numeric) / n_tup_upd AS hot_pct 
FROM pg_stat_user_tables 
       WHERE n_tup_upd>0 ORDER BY hot_pct;


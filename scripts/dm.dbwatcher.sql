SET HEA OFF;
SET LINESHOW OFF;
SET TIMING OFF;
SELECT CASE WHEN LAST_MSG_TIME > TIMESTAMPADD(SQL_TSI_SECOND, -60, NOW()) THEN 1 ELSE 0 END A FROM V$DMWATCHER;

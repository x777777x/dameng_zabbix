SET HEA OFF;
SET LINESHOW OFF;
SET TIMING OFF;
SELECT
  JSONB_OBJECT_AGG(name, stat_val) AS STATUS 
FROM V$SYSSTAT
WHERE CLASSID = 2 AND NAME in (
  'select statements',
  'insert statements',
  'delete statements',
  'update statements',
  'ddl statements'
);

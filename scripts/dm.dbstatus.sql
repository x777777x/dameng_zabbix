SET HEA OFF;
SET LINESHOW OFF;
SET TIMING OFF;
SELECT
  --JSONB_OBJECT_AGG(name, status$) AS DATABASE_STATUS 
  status$
FROM V$DATABASE;

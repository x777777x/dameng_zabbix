SET HEA OFF;
SET LINESHOW OFF;
SET TIMING OFF;
SELECT
  --JSONB_OBJECT_AGG(name, role$) AS DATABASE_ROLE 
  role$
FROM V$DATABASE;

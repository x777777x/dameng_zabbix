SET HEA OFF;
SET LINESHOW OFF;
SET TIMING OFF;
SELECT 
  JSONB_OBJECT_AGG(state, cnt) AS connects 
FROM ( 
    SELECT 'create' AS state, COUNT(*) AS cnt 
    FROM V$SESSIONS WHERE state = 'CREATE' 
  UNION ALL 
    SELECT 'startup' AS state, COUNT(*) AS cnt 
    FROM V$SESSIONS WHERE state = 'STARTUP' 
  UNION ALL 
    SELECT 'idle' AS state, COUNT(*) AS cnt 
    FROM V$SESSIONS WHERE state = 'IDLE' 
  UNION ALL 
    SELECT 'active' AS state, COUNT(*) AS cnt 
    FROM V$SESSIONS WHERE state = 'ACTIVE' 
  UNION ALL 
    SELECT 'wait' AS state, COUNT(*) AS cnt 
    FROM V$SESSIONS WHERE state = 'WAIT' 
  UNION ALL 
    SELECT 'wait' AS state, COUNT(*) AS cnt 
    FROM V$SESSIONS WHERE state = 'RUNNING' 
  UNION ALL 
    SELECT 'unknow' AS state, COUNT(*) AS cnt 
    FROM V$SESSIONS WHERE state = 'UNKNOW' 
) a; 

INSERT INTO XFLOW_PROCESS_INSTANCE_TASK (
SELECT H.HISTORY_TASK_ID AS TASK_ID,H.RECORD_ID , 
H.OPERATOR_ID AS PARTICIPANT_ID , 
H.OPERATOR_NAME AS PARTICIPANT_NAME,
H.OPERATOR_TYPE AS PARTICIPANT_TYPE,
:CREATE_DATE AS TASK_DATE,
NULL AS TASK_PARENT_ID,
'RUNNING' AS STATUS ,
'normalTask' AS TASK_TYPE
FROM XFLOW_PROCESS_INSTANCE_HISTORY H
WHERE H.HISTORY_TASK_ID = :TASK_ID
)
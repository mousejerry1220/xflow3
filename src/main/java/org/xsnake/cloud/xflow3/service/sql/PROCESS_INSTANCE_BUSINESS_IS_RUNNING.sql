 SELECT COUNT(1) FROM XFLOW_PROCESS_INSTANCE 
 WHERE PROCESS_CODE = :processCode 
 and BUSINESS_KEY = :businessKey 
 AND STATUS = 'RUNNING' 
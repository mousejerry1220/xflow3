UPDATE XFLOW_DEFINITION_INSTANCE SET 
STATUS = 'RELEASE' ,
RELEASE_DATE = sysdate
WHERE CODE = :code 
AND VERSION = :version 
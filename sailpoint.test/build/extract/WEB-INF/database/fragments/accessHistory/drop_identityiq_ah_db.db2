
--
-- ACCESS HISTORY database drop begin
--

CONNECT TO IIQ_AH;

DROP TABLESPACE identityiqah_ts;
DROP BUFFERPOOL identityiqah_bp;
DROP SCHEMA identityiqah RESTRICT;
COMMIT;

Disconnect IIQ_AH;

DROP DATABASE IIQ_AH;

--
-- ACCESS HISTORY database drop end
--





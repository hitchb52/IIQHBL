
--
-- ACCESS HISTORY database create begin
--

DISCONNECT iiq;

-- DB2 has a name size limit we can't use identityiq like the others.
-- You may also consider adding codeset and collation options.
CREATE DATABASE IIQ_AH AUTOMATIC STORAGE YES PAGESIZE 32 K;

CONNECT TO iiq_ah;

CREATE SCHEMA identityiqah AUTHORIZATION identityiqah;

CREATE BUFFERPOOL identityiqah_bp IMMEDIATE SIZE 2000 AUTOMATIC PAGESIZE 32 K;

CREATE TABLESPACE identityiqah_ts PAGESIZE 32 K
     MANAGED BY AUTOMATIC STORAGE
     INITIALSIZE 1 G
     INCREASESIZE 512 M
     BUFFERPOOL identityiqah_bp;

-- Grant everything to identityiqah user for simplicity in dev/poc environments.
-- This is not necessary for production environments.  The minimal set of permissions is:
--   - CONNECT, CREATETAB, DATAACCESS on database
--   - USAGE of all sequences defined in the script

GRANT DBADM ON DATABASE TO USER identityiqah;

DISCONNECT iiq_ah;

CONNECT TO iiq;

--
-- ACCESS HISTORY database create end
--






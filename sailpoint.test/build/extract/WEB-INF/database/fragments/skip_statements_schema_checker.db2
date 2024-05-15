-- You can define here all the statements that should be excluded by the schema checker,
-- these statements are not going to be included in the upgrade file.
alter table identityiq.spt_sign_off_history modify account varchar(322);

-- we are recreating the table so these don't need to be included
alter table identityiq.spt_post_commit_notification_object modify id varchar(32) not null;
alter table identityiq.spt_post_commit_notification_object add consumer varchar(256);
alter table identityiq.spt_post_commit_notification_object add created bigint;
alter table identityiq.spt_post_commit_notification_object add committed_object_string clob(100000000);

--The column is being added to an existing table, the column is updated on the next line and then altered to not null.
alter table identityiq.spt_bundle add iiq_elevated_access smallint not null;
alter table identityiq.spt_managed_attribute add iiq_elevated_access smallint not null;
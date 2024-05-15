--
-- This script contains DDL statements to upgrade a database schema to
-- reflect changes to the model.  This file should only be used to
-- upgrade from the last formal release version to the current code base.
--
-- The CONTEXT-SWITCH token is used to notify the upgrader of a change in database context. The token is from
-- the iiq.properties file which represents the database url.
--

CONNECT TO iiq;

-- DO NOT REMOVE OR MODIFY BLOCK
-- CONTEXT-SWITCH: dataSource
-- DO NOT REMOVE OR MODIFY BLOCK

--
-- add new significant_modified column
--

alter table identityiq.spt_account_group add significant_modified bigint;
alter table identityiq.spt_activity_constraint add significant_modified bigint;
alter table identityiq.spt_activity_data_source add significant_modified bigint;
alter table identityiq.spt_alert add significant_modified bigint;
alter table identityiq.spt_alert_action add significant_modified bigint;
alter table identityiq.spt_alert_definition add significant_modified bigint;
alter table identityiq.spt_application add significant_modified bigint;
alter table identityiq.spt_application_schema add significant_modified bigint;
alter table identityiq.spt_application_scorecard add significant_modified bigint;
alter table identityiq.spt_attachment add significant_modified bigint;
alter table identityiq.spt_audit_config add significant_modified bigint;
alter table identityiq.spt_audit_event add significant_modified bigint;
alter table identityiq.spt_authentication_answer add significant_modified bigint;
alter table identityiq.spt_authentication_question add significant_modified bigint;
alter table identityiq.spt_batch_request add significant_modified bigint;
alter table identityiq.spt_batch_request_item add significant_modified bigint;
alter table identityiq.spt_bulk_id_join add significant_modified bigint;
alter table identityiq.spt_bundle add significant_modified bigint;
alter table identityiq.spt_bundle_archive add significant_modified bigint;
alter table identityiq.spt_bundle_profile_relation add significant_modified bigint;
alter table identityiq.spt_bundle_profile_relation_object add significant_modified bigint;
alter table identityiq.spt_bundle_profile_relation_step add significant_modified bigint;
alter table identityiq.spt_capability add significant_modified bigint;
alter table identityiq.spt_category add significant_modified bigint;
alter table identityiq.spt_certification add significant_modified bigint;
alter table identityiq.spt_certification_action add significant_modified bigint;
alter table identityiq.spt_certification_archive add significant_modified bigint;
alter table identityiq.spt_certification_challenge add significant_modified bigint;
alter table identityiq.spt_certification_definition add significant_modified bigint;
alter table identityiq.spt_certification_delegation add significant_modified bigint;
alter table identityiq.spt_certification_entity add significant_modified bigint;
alter table identityiq.spt_certification_group add significant_modified bigint;
alter table identityiq.spt_certification_item add significant_modified bigint;
alter table identityiq.spt_classification add significant_modified bigint;
alter table identityiq.spt_cloud_access3way add significant_modified bigint;
alter table identityiq.spt_cloud_access_group add significant_modified bigint;
alter table identityiq.spt_cloud_access_role add significant_modified bigint;
alter table identityiq.spt_cloud_access_scope add significant_modified bigint;
alter table identityiq.spt_configuration add significant_modified bigint;
alter table identityiq.spt_correlation_config add significant_modified bigint;
alter table identityiq.spt_custom add significant_modified bigint;
alter table identityiq.spt_deleted_object add significant_modified bigint;
alter table identityiq.spt_dictionary add significant_modified bigint;
alter table identityiq.spt_dictionary_term add significant_modified bigint;
alter table identityiq.spt_dynamic_scope add significant_modified bigint;
alter table identityiq.spt_email_template add significant_modified bigint;
alter table identityiq.spt_entitlement_group add significant_modified bigint;
alter table identityiq.spt_file_bucket add significant_modified bigint;
alter table identityiq.spt_form add significant_modified bigint;
alter table identityiq.spt_full_text_index add significant_modified bigint;
alter table identityiq.spt_generic_constraint add significant_modified bigint;
alter table identityiq.spt_group_definition add significant_modified bigint;
alter table identityiq.spt_group_factory add significant_modified bigint;
alter table identityiq.spt_group_index add significant_modified bigint;
alter table identityiq.spt_identity add significant_modified bigint;
alter table identityiq.spt_identity_archive add significant_modified bigint;
alter table identityiq.spt_identity_entitlement add significant_modified bigint;
alter table identityiq.spt_identity_history_item add significant_modified bigint;
alter table identityiq.spt_identity_request add significant_modified bigint;
alter table identityiq.spt_identity_request_item add significant_modified bigint;
alter table identityiq.spt_identity_snapshot add significant_modified bigint;
alter table identityiq.spt_identity_trigger add significant_modified bigint;
alter table identityiq.spt_integration_config add significant_modified bigint;
alter table identityiq.spt_jasper_page_bucket add significant_modified bigint;
alter table identityiq.spt_jasper_result add significant_modified bigint;
alter table identityiq.spt_jasper_template add significant_modified bigint;
alter table identityiq.spt_link add significant_modified bigint;
alter table identityiq.spt_localized_attribute add significant_modified bigint;
alter table identityiq.spt_managed_attribute add significant_modified bigint;
alter table identityiq.spt_message_template add significant_modified bigint;
alter table identityiq.spt_mining_config add significant_modified bigint;
alter table identityiq.spt_mitigation_expiration add significant_modified bigint;
alter table identityiq.spt_module add significant_modified bigint;
alter table identityiq.spt_monitoring_statistic add significant_modified bigint;
alter table identityiq.spt_native_identity_change_event add significant_modified bigint;
alter table identityiq.spt_object_classification add significant_modified bigint;
alter table identityiq.spt_object_config add significant_modified bigint;
alter table identityiq.spt_partition_result add significant_modified bigint;
alter table identityiq.spt_password_policy add significant_modified bigint;
alter table identityiq.spt_password_policy_holder add significant_modified bigint;
alter table identityiq.spt_persisted_file add significant_modified bigint;
alter table identityiq.spt_plugin add significant_modified bigint;
alter table identityiq.spt_policy add significant_modified bigint;
alter table identityiq.spt_policy_violation add significant_modified bigint;
alter table identityiq.spt_post_commit_notification_object add significant_modified bigint;
alter table identityiq.spt_process_log add significant_modified bigint;
alter table identityiq.spt_profile add significant_modified bigint;
alter table identityiq.spt_provisioning_request add significant_modified bigint;
alter table identityiq.spt_provisioning_transaction add significant_modified bigint;
alter table identityiq.spt_quick_link add significant_modified bigint;
alter table identityiq.spt_quick_link_options add significant_modified bigint;
alter table identityiq.spt_recommender_definition add significant_modified bigint;
alter table identityiq.spt_remediation_item add significant_modified bigint;
alter table identityiq.spt_remote_login_token add significant_modified bigint;
alter table identityiq.spt_request add significant_modified bigint;
alter table identityiq.spt_request_definition add significant_modified bigint;
alter table identityiq.spt_request_state add significant_modified bigint;
alter table identityiq.spt_resource_event add significant_modified bigint;
alter table identityiq.spt_right_config add significant_modified bigint;
alter table identityiq.spt_role_index add significant_modified bigint;
alter table identityiq.spt_role_metadata add significant_modified bigint;
alter table identityiq.spt_role_mining_result add significant_modified bigint;
alter table identityiq.spt_role_scorecard add significant_modified bigint;
alter table identityiq.spt_rule add significant_modified bigint;
alter table identityiq.spt_rule_registry add significant_modified bigint;
alter table identityiq.spt_scope add significant_modified bigint;
alter table identityiq.spt_scorecard add significant_modified bigint;
alter table identityiq.spt_score_config add significant_modified bigint;
alter table identityiq.spt_server add significant_modified bigint;
alter table identityiq.spt_server_statistic add significant_modified bigint;
alter table identityiq.spt_service_definition add significant_modified bigint;
alter table identityiq.spt_service_lock add significant_modified bigint;
alter table identityiq.spt_service_status add significant_modified bigint;
alter table identityiq.spt_sign_off_history add significant_modified bigint;
alter table identityiq.spt_sodconstraint add significant_modified bigint;
alter table identityiq.spt_archived_cert_entity add significant_modified bigint;
alter table identityiq.spt_archived_cert_item add significant_modified bigint;
alter table identityiq.spt_pending_req_attach add significant_modified bigint;
alter table identityiq.spt_right add significant_modified bigint;
alter table identityiq.spt_tag add significant_modified bigint;
alter table identityiq.spt_target add significant_modified bigint;
alter table identityiq.spt_target_association add significant_modified bigint;
alter table identityiq.spt_target_source add significant_modified bigint;
alter table identityiq.spt_task_definition add significant_modified bigint;
alter table identityiq.spt_task_event add significant_modified bigint;
alter table identityiq.spt_task_result add significant_modified bigint;
alter table identityiq.spt_time_period add significant_modified bigint;
alter table identityiq.spt_uiconfig add significant_modified bigint;
alter table identityiq.spt_uipreferences add significant_modified bigint;
alter table identityiq.spt_widget add significant_modified bigint;
alter table identityiq.spt_workflow add significant_modified bigint;
alter table identityiq.spt_workflow_case add significant_modified bigint;
alter table identityiq.spt_workflow_registry add significant_modified bigint;
alter table identityiq.spt_workflow_target add significant_modified bigint;
alter table identityiq.spt_workflow_test_suite add significant_modified bigint;
alter table identityiq.spt_work_item add significant_modified bigint;
alter table identityiq.spt_work_item_archive add significant_modified bigint;
alter table identityiq.spt_work_item_config add significant_modified bigint;


create table identityiq.spt_intercepted_delete (
     id varchar(32) not null,
     created bigint,
     modified bigint,
     significant_modified bigint,
     object_id varchar(32) not null,
     object_name varchar(128),
     object_type varchar(128) not null,
     object_created_date bigint,
     object_deleted_date bigint not null,
     extract_config_name varchar(255) not null,
     transform_config_name varchar(255) not null,
     extract_execution_time_ms bigint,
     extracted_object_json clob(100000000) not null,
     extract_config_name_ci generated always as (upper(extract_config_name)),
     primary key (id)
) IN identityiq_ts;

-- Add subtype column to post commit notification object
alter table identityiq.spt_post_commit_notification_object add subtype varchar(256);

-- Add sequential monitor id to task result
alter table identityiq.spt_task_result add sequential_monitor_id varchar(32);

-- Adding service type to service definition table.
alter table identityiq.spt_service_definition add service_type varchar(255) default 'DEFAULT' not null;

-- Adding YAMLConfig table
create table identityiq.spt_yamlconfig (
     id varchar(32) not null,
     created bigint,
     modified bigint,
     significant_modified bigint,
     owner varchar(32),
     assigned_scope varchar(32),
     assigned_scope_path varchar(450),
     name varchar(128) not null,
     description varchar(1024),
     type varchar(255),
     subtype varchar(255),
     yaml_text clob(100000000),
     name_ci generated always as (upper(name)),
     primary key (id)
) IN identityiq_ts;
alter table identityiq.spt_yamlconfig
     add constraint UK_7b0o2ht3eii6yl6hlmb901aar unique (name);
alter table identityiq.spt_yamlconfig
     add constraint FKsur3p44hpishjiel9igc33vjk
     foreign key (owner)
     references identityiq.spt_identity;
create index identityiq.FKsur3p44hpishjiel9igc33vjk on identityiq.spt_yamlconfig (owner);
alter table identityiq.spt_yamlconfig
     add constraint FKfhet5kiyexa0fgx6jj820p6si
     foreign key (assigned_scope)
     references identityiq.spt_scope;
create index identityiq.FKfhet5kiyexa0fgx6jj820p6si on identityiq.spt_yamlconfig (assigned_scope);
create index identityiq.SPT_IDX7DB8F9DDEAEFCE0E on identityiq.spt_yamlconfig (assigned_scope_path);
create index identityiq.spt_yamlconfig_name on identityiq.spt_yamlconfig (name_ci);

create table identityiq.spt_named_timestamp (
   id varchar(32) not null,
    created bigint,
    modified bigint,
    significant_modified bigint,
    name varchar(255) not null,
    timestamp bigint,
    iiqlock varchar(128),
    attributes clob(100000000),
    name_ci generated always as (upper(name)),
    primary key (id)
) IN identityiq_ts;

alter table identityiq.spt_named_timestamp
   add constraint UK_c5tewl8ylk44ns0wx9lik19ae unique (name);

create index identityiq.spt_named_timestamp_name on identityiq.spt_named_timestamp (name_ci);

create index identityiq.spt_intercept_del_extract_ci on identityiq.spt_intercepted_delete (extract_config_name_ci);

DISCONNECT iiq;

--
-- ACCESS HISTORY upgrade begin
--

--
-- make sure the identityiqah database and identityiqah user exist.
--

-- DO NOT REMOVE OR MODIFY BLOCK
-- CONTEXT-SWITCH: dataSourceAccessHistory
-- DO NOT REMOVE OR MODIFY BLOCK

CREATE DATABASE IIQ_AH AUTOMATIC STORAGE YES PAGESIZE 32 K;
CONNECT TO iiq_ah;
CREATE SCHEMA identityiqah AUTHORIZATION identityiqah;
CREATE BUFFERPOOL identityiqah_bp IMMEDIATE SIZE 2000 AUTOMATIC PAGESIZE 32 K;
CREATE TABLESPACE identityiqah_ts PAGESIZE 32 K
     MANAGED BY AUTOMATIC STORAGE
     INITIALSIZE 1 G
     INCREASESIZE 512 M
     BUFFERPOOL identityiqah_bp;
GRANT DBADM ON DATABASE TO USER identityiqah;

--
-- Add new access history-related tables
--
create table identityiqah.spt_hist_certification (
     id varchar(32) not null,
     created bigint,
     modified bigint,
     significant_modified bigint,
     cert_id varchar(32) not null,
     cert_type varchar(64),
     cert_display_name varchar(128),
     cert_name varchar(128),
     finished bigint,
     signed bigint,
     json clob(100000000),
     primary key (id)
) in identityiqah_ts;

alter table identityiqah.spt_hist_certification
  add constraint UK_kesw6k26csy7qxitgtloos7y2 unique (cert_id);

    create table identityiqah.spt_hist_cert_remediation_capture (
       id varchar(32) not null,
        created bigint,
        modified bigint,
        significant_modified bigint,
        patch_doc_parent varchar(32),
        identity_id varchar(32) not null,
        identity_name varchar(128) not null,
        transform_type varchar(10) not null,
        effective_date bigint not null,
        extended_to_date bigint,
        json clob(100000000),
        json_format varchar(255),
        smart_hash varchar(40),
        full_hash varchar(40),
        attributes clob(100000000),
        certification_item_id varchar(32),
        certification_item_type varchar(255),
        certification_item_sub_type varchar(255),
        exception_application varchar(128),
        exception_attribute_name varchar(255),
        exception_attribute_value varchar(450),
        exception_native_identity varchar(322),
        bundle_id varchar(32),
        bundle_name varchar(128),
        bundle_assignment_id varchar(40),
        exception_native_identity_ci generated always as (upper(exception_native_identity)),
        primary key (id)
    ) IN identityiqah_ts;

create index identityiqah.spt_patch_doc_parent_cert on identityiqah.spt_hist_cert_remediation_capture (patch_doc_parent);
create index identityiqah.spt_hist_cert_rem_eff_dt on identityiqah.spt_hist_cert_remediation_capture (effective_date);
create index identityiqah.spt_hist_cert_rem_ext_dt on identityiqah.spt_hist_cert_remediation_capture (extended_to_date);
create index identityiqah.spt_hcrc_certitemid on identityiqah.spt_hist_cert_remediation_capture (certification_item_id);
create index identityiqah.spt_hcrc_certitemtype on identityiqah.spt_hist_cert_remediation_capture (certification_item_type);
create index identityiqah.spt_hcrc_certitemsubtype on identityiqah.spt_hist_cert_remediation_capture (certification_item_sub_type);
create index identityiqah.spt_hcrc_exc_app on identityiqah.spt_hist_cert_remediation_capture (exception_application);
create index identityiqah.spt_hcrc_exc_attrname on identityiqah.spt_hist_cert_remediation_capture (exception_attribute_name);
create index identityiqah.spt_hcrc_exc_attrval on identityiqah.spt_hist_cert_remediation_capture (exception_attribute_value);
create index identityiqah.spt_hcrc_bundleId on identityiqah.spt_hist_cert_remediation_capture (bundle_id);
create index identityiqah.spt_hcrc_bundleName on identityiqah.spt_hist_cert_remediation_capture (bundle_name);
create index identityiqah.spt_hcrc_bundleAssignId on identityiqah.spt_hist_cert_remediation_capture (bundle_assignment_id);
    create index identityiqah.spt_hcrc_nativeIdentity_ci on identityiqah.spt_hist_cert_remediation_capture (exception_native_identity_ci);

    create table identityiqah.spt_hist_role_remediation_entitlements (
       cert_remediation_capture varchar(32) not null,
        idx integer not null,
        application varchar(128),
        application_id varchar(32),
        entitlement_name varchar(255),
        entitlement_value varchar(450),
        native_identity varchar(322),
        primary key (cert_remediation_capture, idx)
    ) IN identityiqah_ts;

create index identityiqah.spt_hrre_appname on identityiqah.spt_hist_role_remediation_entitlements (application);
create index identityiqah.spt_hrre_appid on identityiqah.spt_hist_role_remediation_entitlements (application_id);
create index identityiqah.spt_hrre_ent_name on identityiqah.spt_hist_role_remediation_entitlements (entitlement_name);
create index identityiqah.spt_hrre_ent_value on identityiqah.spt_hist_role_remediation_entitlements (entitlement_value);
create index identityiqah.spt_hrre_native_id on identityiqah.spt_hist_role_remediation_entitlements (native_identity);
    alter table identityiqah.spt_hist_role_remediation_entitlements
       add constraint FKhvwj97ncucp9u2flf5llenlcs
       foreign key (cert_remediation_capture)
       references identityiqah.spt_hist_cert_remediation_capture;
    create index identityiqah.FKhvwj97ncucp9u2flf5llenlcs on identityiqah.spt_hist_role_remediation_entitlements (cert_remediation_capture);


create table identityiqah.spt_hist_identity (
  id varchar(32) not null,
  created bigint,
  modified bigint,
  significant_modified bigint,
  identity_id varchar(32) not null,
  name varchar(128) not null,
  display_name varchar(128),
  deleted smallint,
  lastname varchar(128),
  firstname varchar(128),
  email varchar(128),
  name_ci generated always as (upper(name)),
  identity_id_ci generated always as (upper(identity_id)),
  email_ci generated always as (upper(email)),
  firstname_ci generated always as (upper(firstname)),
  lastname_ci generated always as (upper(lastname)),
  display_name_ci generated always as (upper(display_name)),
  primary key (id)
) IN identityiqah_ts;

create index identityiqah.spt_hist_identity_deleted on identityiqah.spt_hist_identity (deleted);
create index identityiqah.spt_hist_identity_dsp_name_ci on identityiqah.spt_hist_identity (display_name_ci);
create index identityiqah.spt_hist_identity_lname_ci on identityiqah.spt_hist_identity (lastname_ci);
create index identityiqah.spt_hist_identity_fname_ci on identityiqah.spt_hist_identity (firstname_ci);
create index identityiqah.spt_hist_identity_email_ci on identityiqah.spt_hist_identity (email_ci);
create index identityiqah.I_g22rtpw8kh83exunh5d1h0vo on identityiqah.spt_hist_identity (identity_id_ci, name_ci);
alter table identityiqah.spt_hist_identity
     add constraint spt_hist_identity_name_id_uk unique (identity_id, name);


create table identityiqah.spt_hist_identity_event (
  id varchar(32) not null,
  created bigint,
  modified bigint,
  significant_modified bigint,
  entity_id varchar(32) not null,
  entity_name varchar(128) not null,
  event_date bigint,
  prev_capture_id varchar(32),
  capture_id varchar(32),
  event_category varchar(255),
  event_type varchar(255),
  event_source_type varchar(255),
  event_detail_json clob(100000000),
  property_name varchar(255),
  account_id varchar(32),
  old_value clob(100000000),
  new_value clob(100000000),
  request_item_id varchar(32),
  identity_request_id varchar(32),
  pending_request_item_id varchar(32),
  identity_entitlement_id varchar(32),
  acct_app_instance varchar(128),
  acct_app_id varchar(32),
  acct_native_id varchar(255),
  acct_app_name varchar(255),
  acct_display_name varchar(255),
  qry_property1 varchar(255),
  qry_property2 varchar(255),
  qry_property3 varchar(255),
  qry_property4 varchar(255),
  qry_property5 varchar(255),
  qry_property6 varchar(255),
  qry_property7 varchar(255),
  qry_property8 varchar(255),
  qry_property9 varchar(255),
  qry_property10 varchar(255),
  acct_display_name_ci generated always as (upper(acct_display_name)),
  acct_app_name_ci generated always as (upper(acct_app_name)),
  acct_app_instance_ci generated always as (upper(acct_app_instance)),
  property_name_ci generated always as (upper(property_name)),
  primary key (id)
) IN identityiqah_ts;

create index identityiqah.spt_hist_ident_event_ent_id on identityiqah.spt_hist_identity_event (entity_id);
create index identityiqah.spt_hist_ident_event_evt_dt on identityiqah.spt_hist_identity_event (event_date);
create index identityiqah.spt_hist_ident_event_evt_cat on identityiqah.spt_hist_identity_event (event_category);
create index identityiqah.spt_hist_ident_event_evt_typ on identityiqah.spt_hist_identity_event (event_type);
create index identityiqah.spt_hev_reqitemid on identityiqah.spt_hist_identity_event (request_item_id);
create index identityiqah.spt_hev_reqid on identityiqah.spt_hist_identity_event (identity_request_id);
create index identityiqah.spt_hev_preqitemid on identityiqah.spt_hist_identity_event (pending_request_item_id);
create index identityiqah.spt_hev_entid on identityiqah.spt_hist_identity_event (identity_entitlement_id);
create index identityiqah.spt_hist_ident_evt_acct_appid on identityiqah.spt_hist_identity_event (acct_app_id);
create index identityiqah.spt_hist_ident_evt_acct_natid on identityiqah.spt_hist_identity_event (acct_native_id);
create index identityiqah.spt_hist_ident_evt_qry_prop1 on identityiqah.spt_hist_identity_event (qry_property1);
create index identityiqah.spt_hist_ident_evt_qry_prop2 on identityiqah.spt_hist_identity_event (qry_property2);
create index identityiqah.spt_hist_ident_evt_qry_prop3 on identityiqah.spt_hist_identity_event (qry_property3);
create index identityiqah.spt_hist_ident_evt_qry_prop4 on identityiqah.spt_hist_identity_event (qry_property4);
create index identityiqah.spt_hist_ident_evt_qry_prop5 on identityiqah.spt_hist_identity_event (qry_property5);
create index identityiqah.spt_hist_ident_evt_qry_prop6 on identityiqah.spt_hist_identity_event (qry_property6);
create index identityiqah.spt_hist_ident_evt_qry_prop7 on identityiqah.spt_hist_identity_event (qry_property7);
create index identityiqah.spt_hist_ident_evt_qry_prop8 on identityiqah.spt_hist_identity_event (qry_property8);
create index identityiqah.spt_hist_ident_evt_qry_prop9 on identityiqah.spt_hist_identity_event (qry_property9);
create index identityiqah.spt_hist_ident_evt_qry_prop10 on identityiqah.spt_hist_identity_event (qry_property10);
create index identityiqah.spt_hist_ident_evt_prp_nm_ci on identityiqah.spt_hist_identity_event (property_name_ci);
create index identityiqah.spt_hist_ident_evt_acct_id on identityiqah.spt_hist_identity_event (account_id);
create index identityiqah.spt_hev_appinst_ci on identityiqah.spt_hist_identity_event (acct_app_instance_ci);
create index identityiqah.spt_hie_acct_appname_ci on identityiqah.spt_hist_identity_event (acct_app_name_ci);
create index identityiqah.spt_hie_acct_disp_ci on identityiqah.spt_hist_identity_event (acct_display_name_ci);

create table identityiqah.spt_hist_identity_capture (
  id varchar(32) not null,
  created bigint,
  modified bigint,
  significant_modified bigint,
  patch_doc_parent varchar(32),
  identity_id varchar(32) not null,
  identity_name varchar(128) not null,
  transform_type varchar(10) not null,
  effective_date bigint not null,
  latest smallint,
  extended_to_date bigint,
  json clob(100000000),
  json_format varchar(255),
  smart_hash varchar(40),
  full_hash varchar(40),
  attributes clob(100000000),
  manager_id varchar(32),
  display_name varchar(128),
  firstname varchar(128),
  lastname varchar(128),
  email varchar(128),
  manager_status smallint,
  inactive smallint,
  type varchar(128),
  type_ci generated always as (upper(type)),
  email_ci generated always as (upper(email)),
  lastname_ci generated always as (upper(lastname)),
  firstname_ci generated always as (upper(firstname)),
  display_name_ci generated always as (upper(display_name)),
  primary key (id)
) IN identityiqah_ts;

create index identityiqah.spt_patch_doc_parent_identity on identityiqah.spt_hist_identity_capture (patch_doc_parent);
create index identityiqah.spt_hist_ident_cap_dpy_nm_ide_id on identityiqah.spt_hist_identity_capture (identity_id, display_name);
create index identityiqah.spt_hist_ident_cap_eff_dt on identityiqah.spt_hist_identity_capture (effective_date);
create index identityiqah.spt_hist_ident_cap_latest on identityiqah.spt_hist_identity_capture (latest);
create index identityiqah.spt_hist_ident_cap_ext_dt on identityiqah.spt_hist_identity_capture (extended_to_date);
create index identityiqah.spt_hist_ident_cap_mgr_status on identityiqah.spt_hist_identity_capture (manager_status);
create index identityiqah.spt_hist_ident_cap_inactive on identityiqah.spt_hist_identity_capture (inactive);
create index identityiqah.spt_hist_ident_cap_manager on identityiqah.spt_hist_identity_capture (manager_id);
create index identityiqah.spt_hist_ident_cap_fname_ci on identityiqah.spt_hist_identity_capture (firstname_ci);
create index identityiqah.spt_hist_ident_cap_lname_ci on identityiqah.spt_hist_identity_capture (lastname_ci);
create index identityiqah.spt_hist_ident_cap_email_ci on identityiqah.spt_hist_identity_capture (email_ci);
create index identityiqah.spt_hist_ident_cap_type_ci on identityiqah.spt_hist_identity_capture (type_ci);

    create table identityiqah.spt_hist_identity_req_capture (
       id varchar(32) not null,
        created bigint,
        modified bigint,
        significant_modified bigint,
        patch_doc_parent varchar(32),
        identity_id varchar(32) not null,
        identity_name varchar(128) not null,
        transform_type varchar(10) not null,
        effective_date bigint not null,
        extended_to_date bigint,
        json clob(100000000),
        json_format varchar(255),
        smart_hash varchar(40),
        full_hash varchar(40),
        deleted smallint,
        attributes clob(100000000),
        identity_request_id varchar(32),
        type varchar(128),
        end_date bigint,
        requester_id varchar(32),
        requester_display_name varchar(255),
        requester_display_name_ci generated always as (upper(requester_display_name)),
        type_ci generated always as (upper(type)),
        primary key (id)
    ) IN identityiqah_ts;

create index identityiqah.spt_patch_doc_parent_idreq on identityiqah.spt_hist_identity_req_capture (patch_doc_parent);
create index identityiqah.spt_hist_idreq_eff_dt on identityiqah.spt_hist_identity_req_capture (effective_date);
create index identityiqah.spt_hist_idreq_ext_dt on identityiqah.spt_hist_identity_req_capture (extended_to_date);
create index identityiqah.spt_hist_idreq_deleted on identityiqah.spt_hist_identity_req_capture (deleted);
create index identityiqah.spt_hist_idreq_end_dt on identityiqah.spt_hist_identity_req_capture (end_date);
create index identityiqah.spt_hist_idreq_reqr_id on identityiqah.spt_hist_identity_req_capture (requester_id);
    create index identityiqah.spt_hist_idreq_id on identityiqah.spt_hist_identity_req_capture (identity_request_id);
    create index identityiqah.spt_hist_idreq_type_ci on identityiqah.spt_hist_identity_req_capture (type_ci);
    create index identityiqah.spt_hist_idreq_reqr_name_ci on identityiqah.spt_hist_identity_req_capture (requester_display_name_ci);


    create table identityiqah.spt_hist_identity_req_item_capture (
       id varchar(32) not null,
        created bigint,
        modified bigint,
        significant_modified bigint,
        patch_doc_parent varchar(32),
        transform_type varchar(10) not null,
        effective_date bigint not null,
        extended_to_date bigint,
        json clob(100000000),
        json_format varchar(255),
        smart_hash varchar(40),
        full_hash varchar(40),
        identity_id varchar(32) not null,
        identity_name varchar(128) not null,
        identity_entitlement_id varchar(32),
        deleted smallint,
        attributes clob(100000000),
        native_identity varchar(450),
        name varchar(255),
        value varchar(450),
        identity_request_item_id varchar(32),
        identity_request_id varchar(32),
        type varchar(128),
        application_name varchar(128),
        operation varchar(128),
        owner_name varchar(128),
        approver_name varchar(128),
        requester_name varchar(128),
        requester_id varchar(32),
        assignment_id varchar(40),
        provisioning_state varchar(128),
        approval_state varchar(128),
        compilation_status varchar(128),
        identity_request_capture_id varchar(32),
        idx integer,
        requester_name_ci generated always as (upper(requester_name)),
        approver_name_ci generated always as (upper(approver_name)),
        owner_name_ci generated always as (upper(owner_name)),
        application_name_ci generated always as (upper(application_name)),
        type_ci generated always as (upper(type)),
        value_ci generated always as (upper(value)),
        name_ci generated always as (upper(name)),
        native_identity_ci generated always as (upper(native_identity)),
        identity_name_ci generated always as (upper(identity_name)),
        primary key (id)
    ) IN identityiqah_ts;

create index identityiqah.spt_patch_doc_parent_reqitem on identityiqah.spt_hist_identity_req_item_capture (patch_doc_parent);
create index identityiqah.spt_hist_idri_eff_dt on identityiqah.spt_hist_identity_req_item_capture (effective_date);
create index identityiqah.spt_hist_idri_ext_dt on identityiqah.spt_hist_identity_req_item_capture (extended_to_date);
create index identityiqah.spt_hist_idri_deleted on identityiqah.spt_hist_identity_req_item_capture (deleted);
create index identityiqah.spt_hist_idri_assgid on identityiqah.spt_hist_identity_req_item_capture (assignment_id);
create index identityiqah.spt_hist_idri_pstate on identityiqah.spt_hist_identity_req_item_capture (provisioning_state);
create index identityiqah.spt_hist_idri_astate on identityiqah.spt_hist_identity_req_item_capture (approval_state);
create index identityiqah.spt_hist_idri_compStat on identityiqah.spt_hist_identity_req_item_capture (compilation_status);
    alter table identityiqah.spt_hist_identity_req_item_capture
       add constraint FK6dn4yl1mqiub2ejxsgms1vex8
       foreign key (identity_request_capture_id)
       references identityiqah.spt_hist_identity_req_capture;
    create index identityiqah.FK6dn4yl1mqiub2ejxsgms1vex8 on identityiqah.spt_hist_identity_req_item_capture (identity_request_capture_id);
    create index identityiqah.spt_hist_idri_iid on identityiqah.spt_hist_identity_req_item_capture (identity_id);
    create index identityiqah.spt_hist_idri_iname_ci on identityiqah.spt_hist_identity_req_item_capture (identity_name_ci);
    create index identityiqah.spt_hist_idri_ieid on identityiqah.spt_hist_identity_req_item_capture (identity_entitlement_id);
    create index identityiqah.spt_hist_idri_nativeid_ci on identityiqah.spt_hist_identity_req_item_capture (native_identity_ci);
    create index identityiqah.spt_hist_idri_name_ci on identityiqah.spt_hist_identity_req_item_capture (name_ci);
    create index identityiqah.spt_hist_idri_value_ci on identityiqah.spt_hist_identity_req_item_capture (value_ci);
    create index identityiqah.spt_hist_idri_iri_id on identityiqah.spt_hist_identity_req_item_capture (identity_request_item_id);
    create index identityiqah.spt_hist_idri_ir_id on identityiqah.spt_hist_identity_req_item_capture (identity_request_id);
    create index identityiqah.spt_hist_idri_type_ci on identityiqah.spt_hist_identity_req_item_capture (type_ci);
    create index identityiqah.spt_hist_idri_appName_ci on identityiqah.spt_hist_identity_req_item_capture (application_name_ci);
    create index identityiqah.spt_hist_idri_ownername_ci on identityiqah.spt_hist_identity_req_item_capture (owner_name_ci);
    create index identityiqah.spt_hist_idri_approvername_ci on identityiqah.spt_hist_identity_req_item_capture (approver_name_ci);
    create index identityiqah.spt_hist_idri_reqname_ci on identityiqah.spt_hist_identity_req_item_capture (requester_name_ci);
    create index identityiqah.spt_hist_idri_reqid on identityiqah.spt_hist_identity_req_item_capture (requester_id);

create table identityiqah.spt_hist_mattr (
  id varchar(32) not null,
  created bigint,
  modified bigint,
  significant_modified bigint,
  mattr_id varchar(32) not null,
  mattr_hash varchar(128) not null,
  display_name varchar(128),
  deleted smallint,
  display_name_ci generated always as (upper(display_name)),
  primary key (id)
) IN identityiqah_ts;

alter table identityiqah.spt_hist_mattr
  add constraint UK_sgmfjmeagljgj36cgi3o0cltw unique (mattr_id);

create index identityiqah.spt_hist_mattr_displayName_ci on identityiqah.spt_hist_mattr (display_name_ci);
create index identityiqah.spt_hist_mattr_deleted on identityiqah.spt_hist_mattr (deleted);

create table identityiqah.spt_hist_mattr_capture (
  id varchar(32) not null,
  created bigint,
  modified bigint,
  significant_modified bigint,
  patch_doc_parent varchar(32),
  transform_type varchar(10) not null,
  effective_date bigint not null,
  extended_to_date bigint,
  json clob(100000000),
  json_format varchar(255),
  smart_hash varchar(40),
  full_hash varchar(40),
  attributes clob(100000000),
  mattr_id varchar(32) not null,
  mattr_hash varchar(128) not null,
  display_name varchar(128),
  application_name varchar(128),
  application_id varchar(32),
  type varchar(128),
  attribute_name varchar(255),
  attribute_value varchar(450),
  attribute_value_ci generated always as (upper(attribute_value)),
  attribute_name_ci generated always as (upper(attribute_name)),
  type_ci generated always as (upper(type)),
  application_name_ci generated always as (upper(application_name)),
  display_name_ci generated always as (upper(display_name)),
  mattr_hash_ci generated always as (upper(mattr_hash)),
  primary key (id)
) IN identityiqah_ts;

create index identityiqah.spt_patch_doc_parent_mattr on identityiqah.spt_hist_mattr_capture (patch_doc_parent);
create index identityiqah.spt_hist_mattr_cap_eff_dt on identityiqah.spt_hist_mattr_capture (effective_date);
create index identityiqah.spt_hist_mattr_cap_ext_dt on identityiqah.spt_hist_mattr_capture (extended_to_date);
create index identityiqah.spt_hist_matt_cap_matt_id on identityiqah.spt_hist_mattr_capture (mattr_id);
create index identityiqah.spt_hist_matt_cap_matt_hsh_ci on identityiqah.spt_hist_mattr_capture (mattr_hash_ci);
create index identityiqah.spt_hist_mattr_cap_dsp_nm_ci on identityiqah.spt_hist_mattr_capture (display_name_ci);
create index identityiqah.spt_mac_appname_ci on identityiqah.spt_hist_mattr_capture (application_name_ci);
create index identityiqah.spt_mac_appid on identityiqah.spt_hist_mattr_capture (application_id);
create index identityiqah.spt_mac_type_ci on identityiqah.spt_hist_mattr_capture (type_ci);
create index identityiqah.spt_mac_attr_ci on identityiqah.spt_hist_mattr_capture (attribute_name_ci);
create index identityiqah.spt_mac_value_ci on identityiqah.spt_hist_mattr_capture (attribute_value_ci);

create table identityiqah.spt_hist_mattr_event (
  id varchar(32) not null,
  created bigint,
  modified bigint,
  significant_modified bigint,
  entity_id varchar(32) not null,
  display_name varchar(128),
  event_date bigint,
  prev_capture_id varchar(32),
  capture_id varchar(32),
  event_category varchar(255),
  event_type varchar(255),
  event_source_type varchar(255),
  event_detail_json clob(100000000),
  property_name varchar(255),
  old_value clob(100000000),
  new_value clob(100000000),
  acct_app_id varchar(32),
  acct_native_id varchar(255),
  acct_app_name varchar(255),
  acct_display_name varchar(255),
  qry_property1 varchar(255),
  qry_property2 varchar(255),
  qry_property3 varchar(255),
  qry_property4 varchar(255),
  qry_property5 varchar(255),
  qry_property6 varchar(255),
  qry_property7 varchar(255),
  qry_property8 varchar(255),
  qry_property9 varchar(255),
  qry_property10 varchar(255),
  acct_display_name_ci generated always as (upper(acct_display_name)),
  acct_app_name_ci generated always as (upper(acct_app_name)),
  property_name_ci generated always as (upper(property_name)),
  display_name_ci generated always as (upper(display_name)),
  primary key (id)
) IN identityiqah_ts;

create index identityiqah.spt_hist_mattr_event_evt_dt on identityiqah.spt_hist_mattr_event (event_date);
create index identityiqah.spt_hist_mattr_event_evt_cat on identityiqah.spt_hist_mattr_event (event_category);
create index identityiqah.spt_hist_mattr_event_evt_type on identityiqah.spt_hist_mattr_event (event_type);
create index identityiqah.spt_hist_mattr_evt_acct_appid on identityiqah.spt_hist_mattr_event (acct_app_id);
create index identityiqah.spt_hist_mattr_evt_nativeid on identityiqah.spt_hist_mattr_event (acct_native_id);
create index identityiqah.spt_hist_mattr_evt_qry_prop1 on identityiqah.spt_hist_mattr_event (qry_property1);
create index identityiqah.spt_hist_mattr_evt_qry_prop2 on identityiqah.spt_hist_mattr_event (qry_property2);
create index identityiqah.spt_hist_mattr_evt_qry_prop3 on identityiqah.spt_hist_mattr_event (qry_property3);
create index identityiqah.spt_hist_mattr_evt_qry_prop4 on identityiqah.spt_hist_mattr_event (qry_property4);
create index identityiqah.spt_hist_mattr_evt_qry_prop5 on identityiqah.spt_hist_mattr_event (qry_property5);
create index identityiqah.spt_hist_mattr_evt_qry_prop6 on identityiqah.spt_hist_mattr_event (qry_property6);
create index identityiqah.spt_hist_mattr_evt_qry_prop7 on identityiqah.spt_hist_mattr_event (qry_property7);
create index identityiqah.spt_hist_mattr_evt_qry_prop8 on identityiqah.spt_hist_mattr_event (qry_property8);
create index identityiqah.spt_hist_mattr_evt_qry_prop9 on identityiqah.spt_hist_mattr_event (qry_property9);
create index identityiqah.spt_hist_mattr_evt_qry_prop10 on identityiqah.spt_hist_mattr_event (qry_property10);
create index identityiqah.spt_hist_mattr_evt_dsp_nm_ci on identityiqah.spt_hist_mattr_event (display_name_ci);
create index identityiqah.spt_hist_mattr_evt_prp_nm_ci on identityiqah.spt_hist_mattr_event (property_name_ci);
create index identityiqah.spt_hmae_acct_appname_ci on identityiqah.spt_hist_mattr_event (acct_app_name_ci);
create index identityiqah.spt_hmae_acct_disp_ci on identityiqah.spt_hist_mattr_event (acct_display_name_ci);

create table identityiqah.spt_hist_role (
  id varchar(32) not null,
  created bigint,
  modified bigint,
  significant_modified bigint,
  role_id varchar(32) not null,
  name varchar(128) not null,
  display_name varchar(128),
  deleted smallint,
  name_ci generated always as (upper(name)),
  display_name_ci generated always as (upper(display_name)),
  primary key (id)
) in identityiqah_ts;


create index identityiqah.spt_hist_role_deleted on identityiqah.spt_hist_role (deleted);
alter table identityiqah.spt_hist_role
  add constraint uk_kem9ulqu2gybfqdtq226k3htc unique (role_id);
create index identityiqah.spt_hist_role_displayname_ci on identityiqah.spt_hist_role (display_name_ci);
create index identityiqah.spt_hist_role_name on identityiqah.spt_hist_role (name_ci);

create table identityiqah.spt_hist_role_capture (
  id varchar(32) not null,
  created bigint,
  modified bigint,
  significant_modified bigint,
  patch_doc_parent varchar(32),
  role_id varchar(32) not null,
  role_name varchar(128) not null,
  transform_type varchar(10) not null,
  effective_date bigint not null,
  extended_to_date bigint,
  json clob(100000000),
  json_format varchar(255),
  smart_hash varchar(40),
  full_hash varchar(40),
  attributes clob(100000000),
  type varchar(128),
  owner_id varchar(32),
  type_ci generated always as (upper(type)),
  primary key (id)
) IN identityiqah_ts;

create index identityiqah.spt_patch_doc_parent_role on identityiqah.spt_hist_role_capture (patch_doc_parent);
create index identityiqah.spt_hist_role_cap_eff_dt on identityiqah.spt_hist_role_capture (effective_date);
create index identityiqah.spt_hist_role_cap_ext_dt on identityiqah.spt_hist_role_capture (extended_to_date);
create index identityiqah.spt_hrc_type_ci on identityiqah.spt_hist_role_capture (type_ci);
create index identityiqah.spt_hrc_ownerid on identityiqah.spt_hist_role_capture (owner_id);


create table identityiqah.spt_hist_capability (
  id varchar(32) not null,
  created bigint,
  modified bigint,
  significant_modified bigint,
  name varchar(128) not null,
  description varchar(1024),
  capability_id varchar(32) not null,
  display_name varchar(128),
  deleted smallint,
  display_name_ci generated always as (upper(display_name)),
  primary key (id)
) IN identityiqah_ts;

alter table identityiqah.spt_hist_capability
       add constraint UK_pid42ojf0r3fmg5jcr1e9mj09 unique (capability_id);

create index identityiqah.spt_hist_capability_deleted on identityiqah.spt_hist_capability (deleted);
create index identityiqah.spt_hist_cap_displayName_ci on identityiqah.spt_hist_capability (display_name_ci);

create table identityiqah.spt_hist_capability_capture (
  id varchar(32) not null,
  created bigint,
  modified bigint,
  significant_modified bigint,
  patch_doc_parent varchar(32),
  capability_id varchar(32) not null,
  capability_name varchar(128) not null,
  transform_type varchar(10) not null,
  effective_date bigint not null,
  extended_to_date bigint,
  json clob(100000000),
  json_format varchar(255),
  smart_hash varchar(40),
  full_hash varchar(40),
  attributes clob(100000000),
  primary key (id)
) IN identityiqah_ts;

create index identityiqah.spt_patch_doc_parent_cap on identityiqah.spt_hist_capability_capture (patch_doc_parent);
create index identityiqah.spt_hist_cap_capture_eff_dt on identityiqah.spt_hist_capability_capture (effective_date);
create index identityiqah.spt_hist_cap_capture_ext_dt on identityiqah.spt_hist_capability_capture (extended_to_date);

create table identityiqah.spt_hist_role_event (
  id varchar(32) not null,
  created bigint,
  modified bigint,
  significant_modified bigint,
  entity_id varchar(32) not null,
  entity_name varchar(128) not null,
  event_date bigint,
  prev_capture_id varchar(32),
  capture_id varchar(32),
  event_category varchar(255),
  event_type varchar(255),
  event_source_type varchar(255),
  event_detail_json clob(100000000),
  property_name varchar(255),
  old_value clob(100000000),
  new_value clob(100000000),
  qry_property1 varchar(255),
  qry_property2 varchar(255),
  qry_property3 varchar(255),
  qry_property4 varchar(255),
  qry_property5 varchar(255),
  qry_property6 varchar(255),
  qry_property7 varchar(255),
  qry_property8 varchar(255),
  qry_property9 varchar(255),
  qry_property10 varchar(255),
  property_name_ci generated always as (upper(property_name)),
  primary key (id)
) IN identityiqah_ts;

create index identityiqah.spt_hist_role_event_evt_dt on identityiqah.spt_hist_role_event (event_date);
create index identityiqah.spt_hist_role_event_evt_cat on identityiqah.spt_hist_role_event (event_category);
create index identityiqah.spt_hist_role_event_evt_type on identityiqah.spt_hist_role_event (event_type);
create index identityiqah.spt_hist_role_event_qry_prop1 on identityiqah.spt_hist_role_event (qry_property1);
create index identityiqah.spt_hist_role_event_qry_prop2 on identityiqah.spt_hist_role_event (qry_property2);
create index identityiqah.spt_hist_role_event_qry_prop3 on identityiqah.spt_hist_role_event (qry_property3);
create index identityiqah.spt_hist_role_event_qry_prop4 on identityiqah.spt_hist_role_event (qry_property4);
create index identityiqah.spt_hist_role_event_qry_prop5 on identityiqah.spt_hist_role_event (qry_property5);
create index identityiqah.spt_hist_role_event_qry_prop6 on identityiqah.spt_hist_role_event (qry_property6);
create index identityiqah.spt_hist_role_event_qry_prop7 on identityiqah.spt_hist_role_event (qry_property7);
create index identityiqah.spt_hist_role_event_qry_prop8 on identityiqah.spt_hist_role_event (qry_property8);
create index identityiqah.spt_hist_role_event_qry_prop9 on identityiqah.spt_hist_role_event (qry_property9);
create index identityiqah.spt_hist_role_evt_qry_prop10 on identityiqah.spt_hist_role_event (qry_property10);
create index identityiqah.spt_hist_role_event_prp_nm_ci on identityiqah.spt_hist_role_event (property_name_ci);

create table identityiqah.spt_hist_assigned_roles (
   capture_id varchar(32) not null,
   idx integer not null,
   role_id varchar(255),
   primary key (capture_id, idx)
) in identityiqah_ts;

create table identityiqah.spt_hist_detected_roles (
   capture_id varchar(32) not null,
   idx integer not null,
   role_id varchar(255),
   primary key (capture_id, idx)
) in identityiqah_ts;

alter table identityiqah.spt_hist_assigned_roles
  add constraint FK57arq9l8c10fbrtbixsryavgg
  foreign key (capture_id)
  references identityiqah.spt_hist_identity_capture;
create index identityiqah.FK57arq9l8c10fbrtbixsryavgg on identityiqah.spt_hist_assigned_roles (capture_id);

alter table identityiqah.spt_hist_detected_roles
  add constraint FKsvem4m5n0f7dqasy8pht1m0dj
  foreign key (capture_id)
  references identityiqah.spt_hist_identity_capture;
create index identityiqah.FKsvem4m5n0f7dqasy8pht1m0dj on identityiqah.spt_hist_detected_roles (capture_id);

create table identityiqah.spt_hist_entitlement_capture (
   id varchar(32) not null,
   created bigint,
   modified bigint,
   significant_modified bigint,
   patch_doc_parent varchar(32),
   identity_id varchar(32) not null,
   identity_name varchar(128) not null,
   transform_type varchar(10) not null,
   effective_date bigint not null,
   extended_to_date bigint,
   json clob(100000000),
   json_format varchar(255),
   smart_hash varchar(40),
   full_hash varchar(40),
   attributes clob(100000000),
   identity_entitlement_id varchar(32),
   application_id varchar(32),
   application_name varchar(128),
   native_identity varchar(450),
   instance varchar(128),
   display_value varchar(450),
   type varchar(128),
   attribute_name varchar(255),
   attribute_value varchar(450),
   granted_by_role smallint,
   role_id varchar(32),
   request_item_id varchar(32),
   pending_request_item_id varchar(32),
   certification_item_id varchar(32),
   deleted smallint,
   attribute_value_ci generated always as (upper(attribute_value)),
   attribute_name_ci generated always as (upper(attribute_name)),
   type_ci generated always as (upper(type)),
   display_value_ci generated always as (upper(display_value)),
   instance_ci generated always as (upper(instance)),
   native_identity_ci generated always as (upper(native_identity)),
   application_name_ci generated always as (upper(application_name)),
   primary key (id)
) IN identityiqah_ts;

create index identityiqah.spt_patch_doc_parent_entl on identityiqah.spt_hist_entitlement_capture (patch_doc_parent);
create index identityiqah.spt_hist_identity_cap_eff_dt on identityiqah.spt_hist_entitlement_capture (effective_date);
create index identityiqah.spt_hist_identity_cap_ext_dt on identityiqah.spt_hist_entitlement_capture (extended_to_date);
create index identityiqah.spt_hist_hec_by_role on identityiqah.spt_hist_entitlement_capture (granted_by_role);
create index identityiqah.spt_hec_roleid on identityiqah.spt_hist_entitlement_capture (role_id);
create index identityiqah.spt_hec_reqitemid on identityiqah.spt_hist_entitlement_capture (request_item_id);
create index identityiqah.spt_hec_preqitemid on identityiqah.spt_hist_entitlement_capture (pending_request_item_id);
create index identityiqah.spt_hec_certitemid on identityiqah.spt_hist_entitlement_capture (certification_item_id);
create index identityiqah.spt_hec_deleted on identityiqah.spt_hist_entitlement_capture (deleted);
create index identityiqah.spt_hec_ie_id on identityiqah.spt_hist_entitlement_capture (identity_entitlement_id);
create index identityiqah.spt_hec_appid on identityiqah.spt_hist_entitlement_capture (application_id);
create index identityiqah.spt_hec_app_role_type on identityiqah.spt_hist_entitlement_capture (application_name, type, attribute_name);
create index identityiqah.spt_hec_appName_ci on identityiqah.spt_hist_entitlement_capture (application_name_ci);
create index identityiqah.spt_hec_nativeid_ci on identityiqah.spt_hist_entitlement_capture (native_identity_ci);
create index identityiqah.spt_hec_instance_ci on identityiqah.spt_hist_entitlement_capture (instance_ci);
create index identityiqah.spt_hec_dispValue_ci on identityiqah.spt_hist_entitlement_capture (display_value_ci);
create index identityiqah.spt_hec_type_ci on identityiqah.spt_hist_entitlement_capture (type_ci);
create index identityiqah.spt_hec_attrname_ci on identityiqah.spt_hist_entitlement_capture (attribute_name_ci);
create index identityiqah.spt_hec_attrvalue_ci on identityiqah.spt_hist_entitlement_capture (attribute_value_ci);

create table identityiqah.spt_hist_entitlements (
   capture_id varchar(32) not null,
   idx integer not null,
   identity_entitlement_id varchar(255),
   primary key (capture_id, idx)
) IN identityiqah_ts;

alter table identityiqah.spt_hist_entitlements
   add constraint FKslsba39xq240608yr2vc59rn3
   foreign key (capture_id)
   references identityiqah.spt_hist_identity_capture;
create index identityiqah.FKslsba39xq240608yr2vc59rn3 on identityiqah.spt_hist_entitlements (capture_id);

create table identityiqah.spt_hist_workgroup (
    id varchar(32) not null,
    created bigint,
    modified bigint,
    significant_modified bigint,
    workgroup_id varchar(32) not null,
    name varchar(128) not null,
    display_name varchar(128),
    description varchar(1024),
    deleted smallint,
    email varchar(128),
    name_ci generated always as (upper(name)),
    workgroup_id_ci generated always as (upper(workgroup_id)),
    email_ci generated always as (upper(email)),
    display_name_ci generated always as (upper(display_name)),
    primary key (id)
) in identityiqah_ts;

create table identityiqah.spt_hist_policy_violations (
     capture_id varchar(32) not null,
     idx integer not null,
     policy_violation_id varchar(255),
     primary key (capture_id, idx)
) in identityiqah_ts;

create table identityiqah.spt_hist_policy_violation_capture (
     id varchar(32) not null,
     created bigint,
     modified bigint,
     significant_modified bigint,
     patch_doc_parent varchar(32),
     identity_id varchar(32) not null,
     identity_name varchar(128) not null,
     transform_type varchar(10) not null,
     effective_date bigint not null,
     extended_to_date bigint,
     json clob(100000000),
     json_format varchar(255),
     smart_hash varchar(40),
     full_hash varchar(40),
     attributes clob(100000000),
     policy_violation_id varchar(32),
     active smallint,
     policy_id varchar(255),
     policy_name varchar(255),
     constraint_id varchar(255),
     constraint_name varchar(255),
     status varchar(255),
     deleted smallint,
     primary key (id)
) in identityiqah_ts;

create index identityiqah.spt_patch_doc_parent_pv on identityiqah.spt_hist_policy_violation_capture (patch_doc_parent);
create index identityiqah.spt_hist_pv_cap_eff_dt on identityiqah.spt_hist_policy_violation_capture (effective_date);
create index identityiqah.spt_hist_pv_cap_ext_dt on identityiqah.spt_hist_policy_violation_capture (extended_to_date);

alter table identityiqah.spt_hist_policy_violations
     add constraint FK431cy516ss4k08rgrpq20x1wb
     foreign key (capture_id)
     references identityiqah.spt_hist_identity_capture;

create index identityiqah.FK431cy516ss4k08rgrpq20x1wb on identityiqah.spt_hist_policy_violations (capture_id);
create index identityiqah.spt_hist_pv_id on identityiqah.spt_hist_policy_violation_capture (policy_violation_id);
create index identityiqah.spt_hist_pv_active on identityiqah.spt_hist_policy_violation_capture (active);
create index identityiqah.spt_hist_pv_deleted on identityiqah.spt_hist_policy_violation_capture (deleted);

create table identityiqah.spt_hist_policy_violation_remediation_capture (
    id varchar(32) not null,
    created bigint,
    modified bigint,
    significant_modified bigint,
    patch_doc_parent varchar(32),
    identity_id varchar(32) not null,
    identity_name varchar(128) not null,
    transform_type varchar(10) not null,
    effective_date bigint not null,
    extended_to_date bigint,
    json clob(100000000),
    json_format varchar(255),
    smart_hash varchar(40),
    full_hash varchar(40),
    attributes clob(100000000),
    identity_history_item_id varchar(32),
    certification_item_type varchar(255),
    policy_name varchar(255),
    constraint_name varchar(255),
    deleted smallint,
    primary key (id)
) in identityiqah_ts;

create index identityiqah.spt_patch_doc_parent_pvr on identityiqah.spt_hist_policy_violation_remediation_capture (patch_doc_parent);
create index identityiqah.spt_hist_pvr_cap_eff_dt on identityiqah.spt_hist_policy_violation_remediation_capture (effective_date);
create index identityiqah.spt_hist_pvr_cap_ext_dt on identityiqah.spt_hist_policy_violation_remediation_capture (extended_to_date);
create index identityiqah.spt_pvr_cap_ihiid on identityiqah.spt_hist_policy_violation_remediation_capture (identity_history_item_id);
create index identityiqah.spt_pvr_cap_certitemtype on identityiqah.spt_hist_policy_violation_remediation_capture (certification_item_type);

create table identityiqah.spt_hist_policy_violation_remediation_bundle_ids (
    capture_id varchar(32) not null,
    idx integer not null,
    bundle_id varchar(255),
    primary key (capture_id, idx)
) in identityiqah_ts;

alter table identityiqah.spt_hist_policy_violation_remediation_bundle_ids
    add constraint FKitaxnoflkhnq6ijo5yqmh29jc
    foreign key (capture_id)
    references identityiqah.spt_hist_policy_violation_remediation_capture;

create index identityiqah.FKitaxnoflkhnq6ijo5yqmh29jc on identityiqah.spt_hist_policy_violation_remediation_bundle_ids (capture_id);

create table identityiqah.spt_hist_policy_violation_remediation_entitlements (
    policy_violation_remediation_ent varchar(32) not null,
    idx integer not null,
    application varchar(255),
    application_id varchar(255),
    entitlement_name varchar(255),
    entitlement_value varchar(255),
    entitlement_display_value varchar(255),
    primary key (policy_violation_remediation_ent, idx)
) in identityiqah_ts;

alter table identityiqah.spt_hist_policy_violation_remediation_entitlements
    add constraint fkjie8pn4nfhcfi3t92br291fc1
    foreign key (policy_violation_remediation_ent)
    references identityiqah.spt_hist_policy_violation_remediation_capture;

create index identityiqah.fkjie8pn4nfhcfi3t92br291fc1 on identityiqah.spt_hist_policy_violation_remediation_entitlements (policy_violation_remediation_ent);

create table identityiqah.spt_hist_accounts (
    capture_id varchar(32) not null,
    idx integer not null,
    account_id varchar(255),
    primary key (capture_id, idx)
) in identityiqah_ts;

create table identityiqah.spt_hist_account_capture (
    id varchar(32) not null,
    created bigint,
    modified bigint,
    significant_modified bigint,
    patch_doc_parent varchar(32),
    identity_id varchar(32) not null,
    identity_name varchar(128) not null,
    transform_type varchar(10) not null,
    effective_date bigint not null,
    extended_to_date bigint,
    json clob(100000000),
    json_format varchar(255),
    smart_hash varchar(40),
    full_hash varchar(40),
    attributes clob(100000000),
    account_id varchar(32),
    application_name varchar(128),
    displayable_name varchar(128),
    deleted smallint,
    displayable_name_ci generated always as (upper(displayable_name)),
    application_name_ci generated always as (upper(application_name)),
    primary key (id)
) in identityiqah_ts;

create index identityiqah.spt_patch_doc_parent_account on identityiqah.spt_hist_account_capture (patch_doc_parent);
create index identityiqah.spt_hac_account_cap_eff_dt on identityiqah.spt_hist_account_capture (effective_date);
create index identityiqah.spt_hac_account_cap_ext_dt on identityiqah.spt_hist_account_capture (extended_to_date);
create index identityiqah.spt_hac_account_id on identityiqah.spt_hist_account_capture (account_id);
create index identityiqah.spt_hac_account_deleted on identityiqah.spt_hist_account_capture (deleted);

alter table identityiqah.spt_hist_accounts
    add constraint fk605klb45cwnh86urs1aw07cue
    foreign key (capture_id)
    references identityiqah.spt_hist_identity_capture;

create index identityiqah.fk605klb45cwnh86urs1aw07cue on identityiqah.spt_hist_accounts (capture_id);
create index identityiqah.spt_hac_account_dn_ci on identityiqah.spt_hist_account_capture (displayable_name_ci);

create table identityiqah.spt_hist_workgroup_capture (
    id varchar(32) not null,
    created bigint,
    modified bigint,
    significant_modified bigint,
    patch_doc_parent varchar(32),
    workgroup_id varchar(32) not null,
    workgroup_name varchar(128) not null,
    transform_type varchar(10) not null,
    effective_date bigint not null,
    extended_to_date bigint,
    json clob(100000000),
    json_format varchar(255),
    smart_hash varchar(40),
    full_hash varchar(40),
    attributes clob(100000000),
    display_name varchar(128),
    email varchar(128),
    inactive smallint,
    email_ci generated always as (upper(email)),
    display_name_ci generated always as (upper(display_name)),
    primary key (id)
) in identityiqah_ts;

create table identityiqah.spt_hist_workgroup_event (
    id varchar(32) not null,
    created bigint,
    modified bigint,
    significant_modified bigint,
    entity_id varchar(32) not null,
    entity_name varchar(128) not null,
    event_date bigint,
    prev_capture_id varchar(32),
    capture_id varchar(32),
    event_category varchar(255),
    event_type varchar(255),
    event_source_type varchar(255),
    event_detail_json clob(100000000),
    property_name varchar(255),
    old_value clob(100000000),
    new_value clob(100000000),
    qry_property1 varchar(255),
    qry_property2 varchar(255),
    qry_property3 varchar(255),
    qry_property4 varchar(255),
    qry_property5 varchar(255),
    qry_property6 varchar(255),
    qry_property7 varchar(255),
    qry_property8 varchar(255),
    qry_property9 varchar(255),
    qry_property10 varchar(255),
    property_name_ci generated always as (upper(property_name)),
    primary key (id)
) in identityiqah_ts;

create index identityiqah.spt_hist_wg_deleted on identityiqah.spt_hist_workgroup (deleted);

alter table identityiqah.spt_hist_workgroup
add constraint spt_hist_wg_name_id_uk unique (workgroup_id, name);

create index identityiqah.spt_patch_doc_parent_workgroup on identityiqah.spt_hist_workgroup_capture (patch_doc_parent);
create index identityiqah.spt_hist_workgroup_cap_eff_dt on identityiqah.spt_hist_workgroup_capture (effective_date);
create index identityiqah.spt_hist_workgroup_cap_ext_dt on identityiqah.spt_hist_workgroup_capture (extended_to_date);
create index identityiqah.spt_hwc_inactive on identityiqah.spt_hist_workgroup_capture (inactive);
create index identityiqah.spt_hist_wg_evt_evt_dt on identityiqah.spt_hist_workgroup_event (event_date);
create index identityiqah.spt_hist_wg_evt_evt_cat on identityiqah.spt_hist_workgroup_event (event_category);
create index identityiqah.spt_hist_wg_evt_evt_type on identityiqah.spt_hist_workgroup_event (event_type);
create index identityiqah.spt_hist_wg_evt_prp_nm_ci on identityiqah.spt_hist_workgroup_event (property_name_ci);
create index identityiqah.spt_hist_wg_evt_qry_prop1 on identityiqah.spt_hist_workgroup_event (qry_property1);
create index identityiqah.spt_hist_wg_evt_qry_prop2 on identityiqah.spt_hist_workgroup_event (qry_property2);
create index identityiqah.spt_hist_wg_evt_qry_prop3 on identityiqah.spt_hist_workgroup_event (qry_property3);
create index identityiqah.spt_hist_wg_evt_qry_prop4 on identityiqah.spt_hist_workgroup_event (qry_property4);
create index identityiqah.spt_hist_wg_evt_qry_prop5 on identityiqah.spt_hist_workgroup_event (qry_property5);
create index identityiqah.spt_hist_wg_evt_qry_prop6 on identityiqah.spt_hist_workgroup_event (qry_property6);
create index identityiqah.spt_hist_wg_evt_qry_prop7 on identityiqah.spt_hist_workgroup_event (qry_property7);
create index identityiqah.spt_hist_wg_evt_qry_prop8 on identityiqah.spt_hist_workgroup_event (qry_property8);
create index identityiqah.spt_hist_wg_evt_qry_prop9 on identityiqah.spt_hist_workgroup_event (qry_property9);
create index identityiqah.spt_hist_wg_evt_qry_prop10 on identityiqah.spt_hist_workgroup_event (qry_property10);
create index identityiqah.spt_hist_wg_displayname_ci on identityiqah.spt_hist_workgroup (display_name_ci);
create index identityiqah.spt_hist_wg_email_ci on identityiqah.spt_hist_workgroup (email_ci);
create index identityiqah.spt_hist_workgroup_workgroup_i on identityiqah.spt_hist_workgroup (workgroup_id_ci, name_ci);
create index identityiqah.spt_hwc_displayname_ci on identityiqah.spt_hist_workgroup_capture (display_name_ci);
create index identityiqah.spt_hwc_email_ci on identityiqah.spt_hist_workgroup_capture (email_ci);

create table identityiqah.spt_hist_object_config_capture (
    id varchar(32) not null,
    created bigint,
    modified bigint,
    significant_modified bigint,
    patch_doc_parent varchar(32),
    object_config_id varchar(32) not null,
    object_config_name varchar(128) not null,
    transform_type varchar(10) not null,
    effective_date bigint not null,
    extended_to_date bigint,
    json clob(100000000),
    json_format varchar(255),
    smart_hash varchar(40),
    full_hash varchar(40),
    primary key (id)
) IN identityiqah_ts;

create index identityiqah.spt_hist_oc_patch_doc_parent on identityiqah.spt_hist_object_config_capture (patch_doc_parent);
create index identityiqah.spt_hist_oc_cap_eff_dt on identityiqah.spt_hist_object_config_capture (effective_date);
create index identityiqah.spt_hist_oc_cap_ext_dt on identityiqah.spt_hist_object_config_capture (extended_to_date);

create table identityiqah.spt_hist_database_version (
    name varchar(255) not null,
    system_version varchar(128),
    schema_version varchar(128),
    primary key (name)
) IN identityiqah_ts;

--
-- This is necessary to maintain the schema version. DO NOT REMOVE.
--
insert into identityiqah.spt_hist_database_version (system_version,name) values ('8.4-00','main');
update identityiqah.spt_hist_database_version set schema_version = '8.4-87' where name = 'main';


DISCONNECT IIQ_AH;

--
-- ACCESS HISTORY upgrade end
--

CONNECT TO IIQ;

-- DO NOT REMOVE OR MODIFY BLOCK
-- CONTEXT-SWITCH: dataSource
-- DO NOT REMOVE OR MODIFY BLOCK

--
-- This is necessary to maintain the schema version. DO NOT REMOVE.
--
update identityiq.spt_database_version set schema_version = '8.4-87' where name = 'main';

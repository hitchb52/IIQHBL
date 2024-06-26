
    create table identityiqah.spt_hist_accounts (
       capture_id varchar(32) not null,
        idx integer not null,
        account_id varchar(255),
        primary key (capture_id, idx)
    ) IN identityiqah_ts;

    create table identityiqah.spt_hist_assigned_roles (
       capture_id varchar(32) not null,
        idx integer not null,
        role_id varchar(255),
        primary key (capture_id, idx)
    ) IN identityiqah_ts;

    create table identityiqah.spt_hist_detected_roles (
       capture_id varchar(32) not null,
        idx integer not null,
        role_id varchar(255),
        primary key (capture_id, idx)
    ) IN identityiqah_ts;

    create table identityiqah.spt_hist_entitlements (
       capture_id varchar(32) not null,
        idx integer not null,
        identity_entitlement_id varchar(255),
        primary key (capture_id, idx)
    ) IN identityiqah_ts;

    create table identityiqah.spt_hist_policy_violation_remediation_bundle_ids (
       capture_id varchar(32) not null,
        idx integer not null,
        bundle_id varchar(255),
        primary key (capture_id, idx)
    ) IN identityiqah_ts;

    create table identityiqah.spt_hist_policy_violation_remediation_entitlements (
       policy_violation_remediation_ent varchar(32) not null,
        idx integer not null,
        application varchar(255),
        application_id varchar(255),
        entitlement_name varchar(255),
        entitlement_value varchar(255),
        entitlement_display_value varchar(255),
        primary key (policy_violation_remediation_ent, idx)
    ) IN identityiqah_ts;

    create table identityiqah.spt_hist_policy_violations (
       capture_id varchar(32) not null,
        idx integer not null,
        policy_violation_id varchar(255),
        primary key (capture_id, idx)
    ) IN identityiqah_ts;

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
    ) IN identityiqah_ts;

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
    ) IN identityiqah_ts;

    create table identityiqah.spt_hist_database_version (
       name varchar(255) not null,
        system_version varchar(128),
        schema_version varchar(128),
        primary key (name)
    ) IN identityiqah_ts;

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
        primary key (id)
    ) IN identityiqah_ts;

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
    ) IN identityiqah_ts;

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
    ) IN identityiqah_ts;

    create table identityiqah.spt_hist_role (
       id varchar(32) not null,
        created bigint,
        modified bigint,
        significant_modified bigint,
        role_id varchar(32) not null,
        name varchar(128) not null,
        display_name varchar(128),
        deleted smallint,
        display_name_ci generated always as (upper(display_name)),
        primary key (id)
    ) IN identityiqah_ts;

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
    ) IN identityiqah_ts;

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
    ) IN identityiqah_ts;

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
    ) IN identityiqah_ts;
create index identityiqah.spt_hrre_appname on identityiqah.spt_hist_role_remediation_entitlements (application);
create index identityiqah.spt_hrre_appid on identityiqah.spt_hist_role_remediation_entitlements (application_id);
create index identityiqah.spt_hrre_ent_name on identityiqah.spt_hist_role_remediation_entitlements (entitlement_name);
create index identityiqah.spt_hrre_ent_value on identityiqah.spt_hist_role_remediation_entitlements (entitlement_value);
create index identityiqah.spt_hrre_native_id on identityiqah.spt_hist_role_remediation_entitlements (native_identity);
create index identityiqah.spt_patch_doc_parent_account on identityiqah.spt_hist_account_capture (patch_doc_parent);
create index identityiqah.spt_hac_account_cap_eff_dt on identityiqah.spt_hist_account_capture (effective_date);
create index identityiqah.spt_hac_account_cap_ext_dt on identityiqah.spt_hist_account_capture (extended_to_date);
create index identityiqah.spt_hac_account_id on identityiqah.spt_hist_account_capture (account_id);
create index identityiqah.spt_hac_account_deleted on identityiqah.spt_hist_account_capture (deleted);
create index identityiqah.spt_hist_capability_deleted on identityiqah.spt_hist_capability (deleted);

    alter table identityiqah.spt_hist_capability 
       add constraint UK_pid42ojf0r3fmg5jcr1e9mj09 unique (capability_id);
create index identityiqah.spt_patch_doc_parent_cap on identityiqah.spt_hist_capability_capture (patch_doc_parent);
create index identityiqah.spt_hist_cap_capture_eff_dt on identityiqah.spt_hist_capability_capture (effective_date);
create index identityiqah.spt_hist_cap_capture_ext_dt on identityiqah.spt_hist_capability_capture (extended_to_date);
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

    alter table identityiqah.spt_hist_certification 
       add constraint UK_jnf8asso0unr7868bv24coqyn unique (cert_id);
create index identityiqah.spt_patch_doc_parent_entl on identityiqah.spt_hist_entitlement_capture (patch_doc_parent);
create index identityiqah.spt_hist_identity_cap_eff_dt on identityiqah.spt_hist_entitlement_capture (effective_date);
create index identityiqah.spt_hist_identity_cap_ext_dt on identityiqah.spt_hist_entitlement_capture (extended_to_date);
create index identityiqah.spt_hec_ie_id on identityiqah.spt_hist_entitlement_capture (identity_entitlement_id);
create index identityiqah.spt_hec_appid on identityiqah.spt_hist_entitlement_capture (application_id);
create index identityiqah.spt_hec_app_role_type on identityiqah.spt_hist_entitlement_capture (application_name, type, attribute_name);
create index identityiqah.spt_hist_hec_by_role on identityiqah.spt_hist_entitlement_capture (granted_by_role);
create index identityiqah.spt_hec_roleid on identityiqah.spt_hist_entitlement_capture (role_id);
create index identityiqah.spt_hec_reqitemid on identityiqah.spt_hist_entitlement_capture (request_item_id);
create index identityiqah.spt_hec_preqitemid on identityiqah.spt_hist_entitlement_capture (pending_request_item_id);
create index identityiqah.spt_hec_certitemid on identityiqah.spt_hist_entitlement_capture (certification_item_id);
create index identityiqah.spt_hec_deleted on identityiqah.spt_hist_entitlement_capture (deleted);
create index identityiqah.spt_hist_identity_deleted on identityiqah.spt_hist_identity (deleted);

    alter table identityiqah.spt_hist_identity 
       add constraint spt_hist_identity_name_id_uk unique (identity_id, name);
create index identityiqah.spt_patch_doc_parent_identity on identityiqah.spt_hist_identity_capture (patch_doc_parent);
create index identityiqah.spt_hist_ident_cap_dpy_nm_ide_id on identityiqah.spt_hist_identity_capture (identity_id, display_name);
create index identityiqah.spt_hist_ident_cap_eff_dt on identityiqah.spt_hist_identity_capture (effective_date);
create index identityiqah.spt_hist_ident_cap_latest on identityiqah.spt_hist_identity_capture (latest);
create index identityiqah.spt_hist_ident_cap_ext_dt on identityiqah.spt_hist_identity_capture (extended_to_date);
create index identityiqah.spt_hist_ident_cap_manager on identityiqah.spt_hist_identity_capture (manager_id);
create index identityiqah.spt_hist_ident_cap_mgr_status on identityiqah.spt_hist_identity_capture (manager_status);
create index identityiqah.spt_hist_ident_cap_inactive on identityiqah.spt_hist_identity_capture (inactive);
create index identityiqah.spt_hist_ident_event_ent_id on identityiqah.spt_hist_identity_event (entity_id);
create index identityiqah.spt_hist_ident_event_evt_dt on identityiqah.spt_hist_identity_event (event_date);
create index identityiqah.spt_hist_ident_event_evt_cat on identityiqah.spt_hist_identity_event (event_category);
create index identityiqah.spt_hist_ident_event_evt_typ on identityiqah.spt_hist_identity_event (event_type);
create index identityiqah.spt_hist_ident_evt_acct_id on identityiqah.spt_hist_identity_event (account_id);
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
create index identityiqah.spt_patch_doc_parent_idreq on identityiqah.spt_hist_identity_req_capture (patch_doc_parent);
create index identityiqah.spt_hist_idreq_eff_dt on identityiqah.spt_hist_identity_req_capture (effective_date);
create index identityiqah.spt_hist_idreq_ext_dt on identityiqah.spt_hist_identity_req_capture (extended_to_date);
create index identityiqah.spt_hist_idreq_deleted on identityiqah.spt_hist_identity_req_capture (deleted);
create index identityiqah.spt_hist_idreq_id on identityiqah.spt_hist_identity_req_capture (identity_request_id);
create index identityiqah.spt_hist_idreq_end_dt on identityiqah.spt_hist_identity_req_capture (end_date);
create index identityiqah.spt_hist_idreq_reqr_id on identityiqah.spt_hist_identity_req_capture (requester_id);
create index identityiqah.spt_patch_doc_parent_reqitem on identityiqah.spt_hist_identity_req_item_capture (patch_doc_parent);
create index identityiqah.spt_hist_idri_eff_dt on identityiqah.spt_hist_identity_req_item_capture (effective_date);
create index identityiqah.spt_hist_idri_ext_dt on identityiqah.spt_hist_identity_req_item_capture (extended_to_date);
create index identityiqah.spt_hist_idri_iid on identityiqah.spt_hist_identity_req_item_capture (identity_id);
create index identityiqah.spt_hist_idri_ieid on identityiqah.spt_hist_identity_req_item_capture (identity_entitlement_id);
create index identityiqah.spt_hist_idri_deleted on identityiqah.spt_hist_identity_req_item_capture (deleted);
create index identityiqah.spt_hist_idri_iri_id on identityiqah.spt_hist_identity_req_item_capture (identity_request_item_id);
create index identityiqah.spt_hist_idri_ir_id on identityiqah.spt_hist_identity_req_item_capture (identity_request_id);
create index identityiqah.spt_hist_idri_reqid on identityiqah.spt_hist_identity_req_item_capture (requester_id);
create index identityiqah.spt_hist_idri_assgid on identityiqah.spt_hist_identity_req_item_capture (assignment_id);
create index identityiqah.spt_hist_idri_pstate on identityiqah.spt_hist_identity_req_item_capture (provisioning_state);
create index identityiqah.spt_hist_idri_astate on identityiqah.spt_hist_identity_req_item_capture (approval_state);
create index identityiqah.spt_hist_idri_compStat on identityiqah.spt_hist_identity_req_item_capture (compilation_status);
create index identityiqah.spt_hist_mattr_deleted on identityiqah.spt_hist_mattr (deleted);

    alter table identityiqah.spt_hist_mattr 
       add constraint UK_rle9g3il01fvqdeklw5hc5l5h unique (mattr_id);
create index identityiqah.spt_patch_doc_parent_mattr on identityiqah.spt_hist_mattr_capture (patch_doc_parent);
create index identityiqah.spt_hist_mattr_cap_eff_dt on identityiqah.spt_hist_mattr_capture (effective_date);
create index identityiqah.spt_hist_mattr_cap_ext_dt on identityiqah.spt_hist_mattr_capture (extended_to_date);
create index identityiqah.spt_hist_matt_cap_matt_id on identityiqah.spt_hist_mattr_capture (mattr_id);
create index identityiqah.spt_mac_appid on identityiqah.spt_hist_mattr_capture (application_id);
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
create index identityiqah.spt_hist_oc_patch_doc_parent on identityiqah.spt_hist_object_config_capture (patch_doc_parent);
create index identityiqah.spt_hist_oc_cap_eff_dt on identityiqah.spt_hist_object_config_capture (effective_date);
create index identityiqah.spt_hist_oc_cap_ext_dt on identityiqah.spt_hist_object_config_capture (extended_to_date);
create index identityiqah.spt_patch_doc_parent_pv on identityiqah.spt_hist_policy_violation_capture (patch_doc_parent);
create index identityiqah.spt_hist_pv_cap_eff_dt on identityiqah.spt_hist_policy_violation_capture (effective_date);
create index identityiqah.spt_hist_pv_cap_ext_dt on identityiqah.spt_hist_policy_violation_capture (extended_to_date);
create index identityiqah.spt_hist_pv_id on identityiqah.spt_hist_policy_violation_capture (policy_violation_id);
create index identityiqah.spt_hist_pv_active on identityiqah.spt_hist_policy_violation_capture (active);
create index identityiqah.spt_hist_pv_deleted on identityiqah.spt_hist_policy_violation_capture (deleted);
create index identityiqah.spt_patch_doc_parent_pvr on identityiqah.spt_hist_policy_violation_remediation_capture (patch_doc_parent);
create index identityiqah.spt_hist_pvr_cap_eff_dt on identityiqah.spt_hist_policy_violation_remediation_capture (effective_date);
create index identityiqah.spt_hist_pvr_cap_ext_dt on identityiqah.spt_hist_policy_violation_remediation_capture (extended_to_date);
create index identityiqah.spt_pvr_cap_ihiid on identityiqah.spt_hist_policy_violation_remediation_capture (identity_history_item_id);
create index identityiqah.spt_pvr_cap_certitemtype on identityiqah.spt_hist_policy_violation_remediation_capture (certification_item_type);
create index identityiqah.spt_hist_pvr_deleted on identityiqah.spt_hist_policy_violation_remediation_capture (deleted);
create index identityiqah.spt_hist_role_deleted on identityiqah.spt_hist_role (deleted);

    alter table identityiqah.spt_hist_role 
       add constraint UK_i8w6vo76pdttiu6urwhbcaf9r unique (role_id);
create index identityiqah.spt_patch_doc_parent_role on identityiqah.spt_hist_role_capture (patch_doc_parent);
create index identityiqah.spt_hist_role_cap_eff_dt on identityiqah.spt_hist_role_capture (effective_date);
create index identityiqah.spt_hist_role_cap_ext_dt on identityiqah.spt_hist_role_capture (extended_to_date);
create index identityiqah.spt_hrc_ownerid on identityiqah.spt_hist_role_capture (owner_id);
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
create index identityiqah.spt_hist_wg_deleted on identityiqah.spt_hist_workgroup (deleted);

    alter table identityiqah.spt_hist_workgroup 
       add constraint spt_hist_wg_name_id_uk unique (workgroup_id, name);
create index identityiqah.spt_patch_doc_parent_workgroup on identityiqah.spt_hist_workgroup_capture (patch_doc_parent);
create index identityiqah.spt_hist_workgroup_cap_eff_dt on identityiqah.spt_hist_workgroup_capture (effective_date);
create index identityiqah.spt_hist_workgroup_cap_ext_dt on identityiqah.spt_hist_workgroup_capture (extended_to_date);
create index identityiqah.spt_hwc_inactive on identityiqah.spt_hist_workgroup_capture (inactive);
create index identityiqah.spt_hist_wg_event_evt_dt on identityiqah.spt_hist_workgroup_event (event_date);
create index identityiqah.spt_hist_wg_event_evt_cat on identityiqah.spt_hist_workgroup_event (event_category);
create index identityiqah.spt_hist_wg_event_evt_type on identityiqah.spt_hist_workgroup_event (event_type);
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

    alter table identityiqah.spt_hist_accounts 
       add constraint FK605klb45cwnh86urs1aw07cue 
       foreign key (capture_id) 
       references identityiqah.spt_hist_identity_capture;

    create index identityiqah.FK605klb45cwnh86urs1aw07cue on identityiqah.spt_hist_accounts (capture_id);

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

    alter table identityiqah.spt_hist_entitlements 
       add constraint FKslsba39xq240608yr2vc59rn3 
       foreign key (capture_id) 
       references identityiqah.spt_hist_identity_capture;

    create index identityiqah.FKslsba39xq240608yr2vc59rn3 on identityiqah.spt_hist_entitlements (capture_id);

    alter table identityiqah.spt_hist_policy_violation_remediation_bundle_ids 
       add constraint FKitaxnoflkhnq6ijo5yqmh29jc 
       foreign key (capture_id) 
       references identityiqah.spt_hist_policy_violation_remediation_capture;

    create index identityiqah.FKitaxnoflkhnq6ijo5yqmh29jc on identityiqah.spt_hist_policy_violation_remediation_bundle_ids (capture_id);

    alter table identityiqah.spt_hist_policy_violation_remediation_entitlements 
       add constraint FKjie8pn4nfhcfi3t92br291fc1 
       foreign key (policy_violation_remediation_ent) 
       references identityiqah.spt_hist_policy_violation_remediation_capture;

    create index identityiqah.FKjie8pn4nfhcfi3t92br291fc1 on identityiqah.spt_hist_policy_violation_remediation_entitlements (policy_violation_remediation_ent);

    alter table identityiqah.spt_hist_policy_violations 
       add constraint FK431cy516ss4k08rgrpq20x1wb 
       foreign key (capture_id) 
       references identityiqah.spt_hist_identity_capture;

    create index identityiqah.FK431cy516ss4k08rgrpq20x1wb on identityiqah.spt_hist_policy_violations (capture_id);

    alter table identityiqah.spt_hist_role_remediation_entitlements 
       add constraint FKhvwj97ncucp9u2flf5llenlcs 
       foreign key (cert_remediation_capture) 
       references identityiqah.spt_hist_cert_remediation_capture;

    create index identityiqah.FKhvwj97ncucp9u2flf5llenlcs on identityiqah.spt_hist_role_remediation_entitlements (cert_remediation_capture);

    alter table identityiqah.spt_hist_identity_req_item_capture 
       add constraint FK6dn4yl1mqiub2ejxsgms1vex8 
       foreign key (identity_request_capture_id) 
       references identityiqah.spt_hist_identity_req_capture;

    create index identityiqah.FK6dn4yl1mqiub2ejxsgms1vex8 on identityiqah.spt_hist_identity_req_item_capture (identity_request_capture_id);

    create index identityiqah.spt_hac_app_name_ci on identityiqah.spt_hist_account_capture (application_name_ci);

    create index identityiqah.spt_hac_account_dn_ci on identityiqah.spt_hist_account_capture (displayable_name_ci);

    create index identityiqah.spt_hist_cap_displayName_ci on identityiqah.spt_hist_capability (display_name_ci);

    create index identityiqah.spt_hcrc_nativeIdentity_ci on identityiqah.spt_hist_cert_remediation_capture (exception_native_identity_ci);

    create index identityiqah.spt_hec_appName_ci on identityiqah.spt_hist_entitlement_capture (application_name_ci);

    create index identityiqah.spt_hec_nativeid_ci on identityiqah.spt_hist_entitlement_capture (native_identity_ci);

    create index identityiqah.spt_hec_instance_ci on identityiqah.spt_hist_entitlement_capture (instance_ci);

    create index identityiqah.spt_hec_dispValue_ci on identityiqah.spt_hist_entitlement_capture (display_value_ci);

    create index identityiqah.spt_hec_type_ci on identityiqah.spt_hist_entitlement_capture (type_ci);

    create index identityiqah.spt_hec_attrname_ci on identityiqah.spt_hist_entitlement_capture (attribute_name_ci);

    create index identityiqah.spt_hec_attrvalue_ci on identityiqah.spt_hist_entitlement_capture (attribute_value_ci);

    create index identityiqah.spt_hist_identity_dsp_name_ci on identityiqah.spt_hist_identity (display_name_ci);

    create index identityiqah.spt_hist_identity_lname_ci on identityiqah.spt_hist_identity (lastname_ci);

    create index identityiqah.spt_hist_identity_fname_ci on identityiqah.spt_hist_identity (firstname_ci);

    create index identityiqah.spt_hist_identity_email_ci on identityiqah.spt_hist_identity (email_ci);

    create index identityiqah.hist_identity_identity_id_name on identityiqah.spt_hist_identity (identity_id_ci, name_ci);

    create index identityiqah.spt_hist_ident_cap_fname_ci on identityiqah.spt_hist_identity_capture (firstname_ci);

    create index identityiqah.spt_hist_ident_cap_lname_ci on identityiqah.spt_hist_identity_capture (lastname_ci);

    create index identityiqah.spt_hist_ident_cap_email_ci on identityiqah.spt_hist_identity_capture (email_ci);

    create index identityiqah.spt_hist_ident_cap_type_ci on identityiqah.spt_hist_identity_capture (type_ci);

    create index identityiqah.spt_hist_ident_evt_prp_nm_ci on identityiqah.spt_hist_identity_event (property_name_ci);

    create index identityiqah.spt_hev_appinst_ci on identityiqah.spt_hist_identity_event (acct_app_instance_ci);

    create index identityiqah.spt_hie_acct_appname_ci on identityiqah.spt_hist_identity_event (acct_app_name_ci);

    create index identityiqah.spt_hie_acct_disp_ci on identityiqah.spt_hist_identity_event (acct_display_name_ci);

    create index identityiqah.spt_hist_idreq_type_ci on identityiqah.spt_hist_identity_req_capture (type_ci);

    create index identityiqah.spt_hist_idreq_reqr_name_ci on identityiqah.spt_hist_identity_req_capture (requester_display_name_ci);

    create index identityiqah.spt_hist_idri_iname_ci on identityiqah.spt_hist_identity_req_item_capture (identity_name_ci);

    create index identityiqah.spt_hist_idri_nativeid_ci on identityiqah.spt_hist_identity_req_item_capture (native_identity_ci);

    create index identityiqah.spt_hist_idri_name_ci on identityiqah.spt_hist_identity_req_item_capture (name_ci);

    create index identityiqah.spt_hist_idri_value_ci on identityiqah.spt_hist_identity_req_item_capture (value_ci);

    create index identityiqah.spt_hist_idri_type_ci on identityiqah.spt_hist_identity_req_item_capture (type_ci);

    create index identityiqah.spt_hist_idri_appName_ci on identityiqah.spt_hist_identity_req_item_capture (application_name_ci);

    create index identityiqah.spt_hist_idri_ownername_ci on identityiqah.spt_hist_identity_req_item_capture (owner_name_ci);

    create index identityiqah.spt_hist_idri_approvername_ci on identityiqah.spt_hist_identity_req_item_capture (approver_name_ci);

    create index identityiqah.spt_hist_idri_reqname_ci on identityiqah.spt_hist_identity_req_item_capture (requester_name_ci);

    create index identityiqah.spt_hist_mattr_displayName_ci on identityiqah.spt_hist_mattr (display_name_ci);

    create index identityiqah.spt_hist_matt_cap_matt_hsh_ci on identityiqah.spt_hist_mattr_capture (mattr_hash_ci);

    create index identityiqah.spt_hist_mattr_cap_dsp_nm_ci on identityiqah.spt_hist_mattr_capture (display_name_ci);

    create index identityiqah.spt_mac_appname_ci on identityiqah.spt_hist_mattr_capture (application_name_ci);

    create index identityiqah.spt_mac_type_ci on identityiqah.spt_hist_mattr_capture (type_ci);

    create index identityiqah.spt_mac_attr_ci on identityiqah.spt_hist_mattr_capture (attribute_name_ci);

    create index identityiqah.spt_mac_value_ci on identityiqah.spt_hist_mattr_capture (attribute_value_ci);

    create index identityiqah.spt_hist_mattr_evt_dsp_nm_ci on identityiqah.spt_hist_mattr_event (display_name_ci);

    create index identityiqah.spt_hist_mattr_evt_prp_nm_ci on identityiqah.spt_hist_mattr_event (property_name_ci);

    create index identityiqah.spt_hmae_acct_appname_ci on identityiqah.spt_hist_mattr_event (acct_app_name_ci);

    create index identityiqah.spt_hmae_acct_disp_ci on identityiqah.spt_hist_mattr_event (acct_display_name_ci);

    create index identityiqah.spt_hist_role_displayName_ci on identityiqah.spt_hist_role (display_name_ci);

    create index identityiqah.spt_hrc_type_ci on identityiqah.spt_hist_role_capture (type_ci);

    create index identityiqah.spt_hist_role_event_prp_nm_ci on identityiqah.spt_hist_role_event (property_name_ci);

    create index identityiqah.spt_hist_wg_displayName_ci on identityiqah.spt_hist_workgroup (display_name_ci);

    create index identityiqah.spt_hist_wg_email_ci on identityiqah.spt_hist_workgroup (email_ci);

    create index identityiqah.I_kowef42lnakdfom9r9m1bq4l on identityiqah.spt_hist_workgroup (workgroup_id_ci, name_ci);

    create index identityiqah.spt_hwc_displayName_ci on identityiqah.spt_hist_workgroup_capture (display_name_ci);

    create index identityiqah.spt_hwc_email_ci on identityiqah.spt_hist_workgroup_capture (email_ci);

    create index identityiqah.spt_hist_wg_evt_prp_nm_ci on identityiqah.spt_hist_workgroup_event (property_name_ci);

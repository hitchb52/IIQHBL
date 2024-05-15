define({"955":{y:0,u:"../tasks/activity_aggregation.htm",l:-1,t:"Activity Aggregation",i:0.000546804063292081,a:"Activity Aggregation tasks scan all applications, discover activity on the applications, and then correlate that activity with identity cubes. Using these tasks enables you to track and monitor activity within your enterprise. The information scanned and updated is determined by the following ..."},"956":{y:0,u:"../tasks/alert_aggregation.htm",l:-1,t:"Alert Aggregation",i:0.000546804063292081,a:"Alert Aggregation tasks scan applications and aggregates alerts from a set of Alert Collectors. These are then used to generate alert actions.  The information scanned and updated is determined by the following criteria when the task is created or edited. You can use any combination of options to ..."},"957":{y:0,u:"../tasks/alert_processor.htm",l:-1,t:"Alert Processor",i:0.000546804063292081,a:"Alert Processor Alert Processor tasks process the aggregated alerts against the alert definitions and launch the appropriate action. The information scanned and updated is determined by the following criteria when the task is created or edited. You can use any combination of options to build a task."},"958":{y:0,u:"../tasks/application_builder.htm",l:-1,t:"Application Builder",i:0.000546804063292081,a:"The Application Builder task lets you create multiple IdentityIQ applications, and update existing applications in bulk. The task also includes the ability to perform account and group aggregation for a host using the associated application. It can also export essential data about your existing ..."},"959":{y:0,u:"../tasks/arcsight_data_export.htm",l:-1,t:"ArcSight Data Export",i:0.00362965018859647,a:"Export data for HP ArcSight Database Connector to an external database table. The ArcSight data export task enables you to export IdentityIQ data to external tables. Before you can use the ArcSight data export task, you must create the export databases on your destination data source. The task ..."},"960":{y:0,u:"../tasks/data_export.htm",l:-1,t:"Data Export",i:0.000546804063292081,a:"The Data Export task enables you to export IdentityIQ data to an external database. You can select to export any combination of identity, account, and certification data.  Before you can use the Data Export task, you must create the export database tables on your destination data source.  The task ..."},"961":{y:0,u:"../tasks/effective_access_indexin.htm",l:-1,t:"Effective Access Indexing",i:0.000682744050895626,a:" Effective Access is any indirect access that was granted through another object, such as a nested group, an unstructured target, or another role.  After you complete customizing your task options, click Save for later use or Save and Execute to save the task and run it immediately."},"962":{y:0,u:"../tasks/encrypted_data_synchroni.htm",l:-1,t:"Encrypted Data Synchronization Task",i:0.000546804063292081,a:"The Encrypted Data Synchronization Task is used to re-encrypt IdentityIQ data when a new custom encryption key is generated.  Once you have completed customizing your task options, click Save for later use or Save and Execute to save the task and run it immediately."},"963":{y:0,u:"../tasks/entitlement_role_generat.htm",l:-1,t:"Entitlement Role Generator",i:0.000546804063292081,a:"The Entitlement Role Generator creates an Entitlement Role for every entitlement found in a specified application. Recommended role types are Entitlement or IT.  You can further refine creation by specifying an entitlement name or permission target so that only entitlements matching the specified ..."},"964":{y:0,u:"../tasks/classification.htm",l:-1,t:"File Access Manager Classification",i:0.000740696087187163,a:"The File Access Manager Classification task is used when you are integrating with File Access Manager, to use File Access Manager\u0027s classification to flag and categorize entitlements within IdentityQ. This task retrieves classification data from File Access Manager and assigns it to entitlements ..."},"965":{y:0,u:"../tasks/itim_application_creator.htm",l:-1,t:"ITIM Application Creator",i:0.000546804063292081,a:"Run the ITIM Application Creator task to inspect IBM Tivoli Identity Manager (ITIM) and retrieve information about the ITIM services (applications). This task auto-generates an application for each service defined in ITIM. Each ITIM application contains a list of services that are roughly equivalent ..."},"966":{y:0,u:"../tasks/cloudgatewaysync.htm",l:-1,t:"IdentityIQ Cloud Gateway Synchronization",i:0.000546804063292081,a:"IdentityIQ Cloud Gateway Synchronization tasks scan selected IdentityIQ applications for specified objects and synchronizes them with IdentityIQ Cloud applications. It is intended for use when IdentityIQ is not able to communicate directly with the managed system. "},"967":{y:0,u:"../tasks/identity_refresh.htm",l:-1,t:"Identity Refresh",i:0.00376942548817476,a:"Refresh identity tasks scan all identities to ensure that all identity information is up-to-date and accurate. Refresh identity scans are also used to detect and report on policy violations and launch event certifications. Incremental identity refresh can be configured to only refresh those ..."},"968":{y:0,u:"../tasks/deltaidentityrefresh.htm",l:-1,t:"Refreshing Changed Identities Only (Delta Identity Refresh)",i:0.00145708195323853,a:"A \"delta\" identity refresh lets you update only those Identity Cubes that have changed\nsince your last aggregation(s), rather than updating all identities. This can result in a\nsignificant reduction in refresh time, and can remove or reduce the need to\npartition your identities into subsets for ..."},"969":{y:0,u:"../tasks/identity_request_mainten.htm",l:-1,t:"Identity Request Maintenance",i:0.00101336732722853,a:"The Identity Request Maintenance task scans all Lifecycle Manager access requests to ensure that all identity change requests were provisioned.  Partitioning is available to speed the processing time for this task, and to level the load on the machines running these tasks. Partitioning is used to ..."},"970":{y:0,u:"../tasks/missing_managed_entitlem.htm",l:-1,t:"Missing Managed Entitlements Scan",i:0.000546804063292081,a:"Missing Managed Entitlement Scan tasks scan the selected application and create any entitlement objects for items added after the application was last aggregated. Select the applications to include in the scan. At least one application must be specified. Click the arrow to the right of the ..."},"971":{y:0,u:"../tasks/oim_application_creator.htm",l:-1,t:"OIM Application Creator",i:0.000546804063292081,a:"Run the OIM Application Creator task to inspect Oracle Identity Manager applications and retrieve information about the applications to which they are connected. This task generates an IdentityIQ application for applications connected to the OIM application specified. The applications generated by ..."},"972":{y:0,u:"../tasks/policy_scan.htm",l:-1,t:"Policy Scan",i:0.000546804063292081,a:"The Policy task type is used to run policies against identity cubes and update identity score cards with any policy violations discovered. IdentityIQ provides the Check Active Policies task as a global policy update task.  The information scanned and updated is determined by the following criteria ..."},"973":{y:0,u:"../tasks/propagate_role_changes.htm",l:-1,t:"Propagate Role Changes",i:0.00138829803443472,a:"Note: IdentityIQ does not propagate role changes for entitlements on applications that do not support direct provisioning and would require the creation of multiple work items. If required, a business process can be enabled in the System Configuration settings to handle that situation. ..."},"974":{y:0,u:"../tasks/refresh_logical_accounts.htm",l:-1,t:"Refresh Logical Accounts",i:0.000546804063292081,a:"The Refresh Logical Accounts task type is used to refresh composite accounts for all identities that could, potentially, have a logical account on the applications selected. This refresh occurs without performing aggregation on the logical or tiered applications containing the links. A logical ..."},"975":{y:0,u:"../tasks/reset_failed_nativeidentitychangeevents.htm",l:-1,t:"Reset Failed NativeIdentityChangeEvents",i:0.00125742949541583,a:"This task is used with the Active Directory Native Move/Rename feature.  IdentityIQ uses the Active Directory GUID, a globally unique identifier, to determine when an account or group object’s DN has changed. When a change is detected, the object is updated, and the change is propagated to all DN ..."},"976":{y:0,u:"../tasks/role_index_refresh.htm",l:-1,t:"Role Index Refresh",i:0.000934588111082244,a:"Role Index Refresh A role index refresh task updates all role information and creates the indexes needed to perform role searches. You must run this task before performing any role searching."},"977":{y:0,u:"../tasks/roleentitlementassocs.htm",l:-1,t:"Role-Entitlement Associations",i:0.000546804063292081,a:"This task deletes existing role-entitlement associations then analyzes each role in the system and creates associations between the role and any granted entitlements.  This task only needs to be run one time to establish role associations to entitlements and permissions; once it has been run, ..."},"978":{y:0,u:"../tasks/run_rule.htm",l:-1,t:"Run Rule",i:0.000546804063292081,a:"A task used to run an arbitrary rule with a series of name / value pairs. You must have to configure some return statement as string. From your code, you have to return some meaningful string to the task. In your task definition declare:          \u003cReturns\u003e             \u003cArgument name=\"tskSuccess\" ..."},"979":{y:0,u:"../tasks/sequential_task_launcher.htm",l:-1,t:"Sequential Task Launcher",i:0.000688729966957786,a:"Sequential Task Launcher A sequential task launcher initiates the specified tasks in the order defined. This enables you to run tasks sequentially without having to schedule each separately based on estimated run times."},"980":{y:0,u:"../tasks/system_maintenance.htm",l:-1,t:"System Maintenance",i:0.000546804063292081,a:"SailPoint provides System Maintenance tasks with the IdentityIQ application, the Work Item Expiration Scanner, Mitigation Expiration Scanner, System Maintenance, System Maintenance Object Pruner, Role Overlap Analysis, and the Synchronize Roles task. These tasks are configured, by default, to run in ..."},"981":{y:0,u:"../tasks/performmaint.htm",l:-1,t:"Perform Maintenance",i:0.000688602208170316,a:"The Perform Maintenance is a predefined system maintenance task that performs a variety of essential operational activities. It prunes identity snapshots, task results, and certifications, escalates orphaned work items, and performs other background maintenance tasks. The predefined Perform ..."},"982":{y:0,u:"../tasks/target_aggregation.htm",l:-1,t:"Target Aggregation",i:0.000906846448197933,a:"A target aggregation task scans applications or target sources, and aggregates activity targets from those applications. These targets are then used for activity monitoring and risk assessment. Select the application or target source to include in the scan. If no applications are specified, all ..."},"983":{y:0,u:"../tasks/how_to_complete_task_wor.htm",l:-1,t:"How to Complete Task Work Items",i:0.000654628281807589,a:"Task work items are generated by task that require sign off on the results they create, and those sign off request that are forwarded by a designated signer. Sign off request are displayed on your home page and you are notified through an email when the work item is created. Sign-off decisions are ..."},"984":{y:0,u:"../workitems/workitems.htm",l:-1,t:"Work Items",i:0.0021336096351155,a:"Work Items"},"985":{y:0,u:"../workitems/manageworkitems.htm",l:-1,t:"Work Items",i:0.000985373600416138,a:"A work item is an action item or unit of work that is assigned to a person to complete. Work items can be automatically generated by a business process, alert, or rule, or they can be manually generated. Work items can, for example, request input from the assigned user, such as access request ..."},"986":{y:0,u:"../workitems/view_your_work_items.htm",l:-1,t:"Viewing Your Assigned Work Items",i:0.000456201568151243,a:"When a work item is created and you have a Notifications card on your home page, the Notifications card displays the number of work items assigned to you. To access the work items, select the card or go to the navigation bar and select My Work \u003e Work Items, which brings you to the Work Items page."},"987":{y:0,u:"../workitems/view_your_work_items1.htm",l:-1,t:"Work Items Page",i:0.000456201568151243,a:"The Work Items page provides a central location where you can view and manage work items assigned to you or to a workgroup of which you are a member. The following options can help you locate work items: Sort By customizes the sort order of the work item list. Ascending/Descending icon reverses the ..."},"988":{y:0,u:"../workitems/workitemadmin.htm",l:-1,t:"Configuring Work Item Behavior",i:0.000875001007784425,a:"Configuring Work Item Behavior Enable Priority Editing for Work Items Forwarding Work Items for Inactive Users Orphaned Work Items Types of Work Items"},"989":{y:0,u:"../workitems/enable_priority_editing_work_items.htm",l:-1,t:"Enabling Priority Editing for Work Items",i:0.000642146448755479,a:"Enable Priority Editing for Work Items To edit priorities in IdentityIQ, the Allow priority editing on work items option must be selected at gear \u003e Global Settings \u003e IdentityIQ Configuration \u003e Work Items tab. For information about configuring global default values for your work item policy, see  ..."},"990":{y:0,u:"../workitems/forward_wi_for_inactive_users.htm",l:-1,t:"Forwarding Work Items for Inactive Users",i:0.000642146448755479,a:"Forwarding Work Items for Inactive Users If a work item is created for a user who is no longer active in IdentityIQ, it is forwarded to the manager or supervisor for that user. If no manager is listed, the work item is assigned to the IdentityIQ administrator."},"991":{y:0,u:"../workitems/orphaned_work_items.htm",l:-1,t:"Orphaned Work Items",i:0.000642146448755479,a:"Orphaned Work Items Orphaned work items are discovered and identified during the Perform Maintenance task. Use escalation rules to determine the proper escalation path for orphaned work items. Escalation rules are created and set during the configuration and implementation of the product."},"992":{y:0,u:"../workitems/types_of_work_items.htm",l:-1,t:"Types of Work Items",i:0.000642146448755479,a:"Types of Work Items Your IdentityIQ instance may be configured to include the following types of work items in the Work Items table: Access Review Approval Challenge Delegation Form Impact Analysis Manual Action Policy Violation Remediation Request Violation Signoff"},"993":{y:0,u:"../workitems/work_item_archive.htm",l:-1,t:"Archiving Work Items",i:0.000875001007784425,a:"By default, work items only exist in IdentityIQ until they are completed. You may want to store archived versions of the work items after completion, for historical or auditing purposes. To do this, you must enable work item archiving, which is configured in the IdentityIQ global settings. Navigate ..."},"994":{y:0,u:"../workitems/view_completed_wi_in_archive.htm",l:-1,t:"Viewing Completed Work Items in the Work Item Archive",i:0.000456201568151243,a:" Use the Work Item Archive page to view completed work items. Access this page by navigating to My Work \u003e Work Items and selecting the View Archive button. Note: Only work item types that have been selected as types that can be archived in the IdentityIQ configuration can be viewed on the Work Item ..."},"995":{y:0,u:"../workitems/report_on_archived_wi.htm",l:-1,t:"Reporting on Archived Work Items",i:0.000456201568151243,a:"Reporting on Archived Work Items IdentityIQ provides a standard Work Items Archive Report. For more information, see  Work Item Archive Report ."},"996":{y:0,u:"../workitems/completing_work_items.htm",l:-1,t:"Completing Work Items",i:0.000456201568151243,a:"Once the action that the work item is tracking has been completed, the work item can be marked as complete. For information about completing work items generated by reports, see  How to Complete Report Work Items . For information about completing work items that require sign off on task results, ..."},"997":{y:0,u:"../workitems/auditing_work_items.htm",l:-1,t:"Auditing Work Items",i:0.000456201568151243,a:"Auditing Work Items You can include work items in the General Actions that you can track for auditing purposes. See  Audit Configuration . If you include any work item actions in the auditing configuration, then you can search on this information in an advanced search. See  Audit Search ."},"998":{y:0,u:"../workitems/reporting_on_work_items.htm",l:-1,t:"Reporting on Work Items",i:0.000456201568151243,a:"Reporting on Work Items The  Work Item Archive Report  reports on active and completed work items."},"999":{y:0,u:"../systemconfig/rpa_bot_identities.htm",l:-1,t:"Robotic Process Automation (Bot) Identities",i:0.000598606060017216,a:"IdentityIQ supports the use of Robotic Process Automation (RPA) or bot identities. An RPA or bot is an application that can perform automated tasks, especially simple, repetitive tasks such as requesting access and managing identities. Bots require effective governance just as traditional identities ..."},"1000":{y:0,u:"../reports/account_group_access_rev.htm",l:-1,t:"Account Group Access Review Live Report",i:0.000675200529801961,a:"The Account Group Access Review Live Report includes information about all account group access reviews in IdentityIQ.  You must generate separate reports for account group membership and permissions access reviews. The detailed results of this report can be exported to a .csv or PDF file. The ..."},"1001":{y:0,u:"../lcm/working_with_attachment_rules.htm",l:-1,t:"Working with Attachment Rules",i:0.00187286595978776,a:"Working With Attachment Rules You can implement multiple rules to manage various use cases or requirements. IdentityIQ includes some sample rules that you can use as a model for developing your own. Rules that govern file attachments are of rule type AttachmentConfig. Any rules with a type of ..."},"1002":{y:0,u:"../lcm/sample_attachment_config_rule.htm",l:-1,t:"Sample Attachment Configuration Rule -- Contractor Work Authorization Form",i:0.00204824105013692,a:"Sample Attachment Configuration Rule: Contractor Work Authorization Form The sample attachment configuration rule shown below enforces a requirement that any time access is requested for a contractor identity, a Contractor Authorization Form must be attached to the request.  Copy Sample Attachment ..."},"1003":{y:0,u:"../rolemgmt/profile_edit_basic.htm",l:-1,t:"How to Edit a Profile",i:0.000619284890788211,a:"A profile is a set of entitlements on a specific application. An entitlement is either a specific value for an account attribute, most commonly group membership, or a permission. Profiles are specific to one role. To edit a profile. Access the Entitlement panel from the Role Editor page. Edit the ..."},"1004":{y:0,u:"../reports/standard_properties.htm",l:-1,t:"Standard Properties",i:0.000769057227652269,a:"Standard Properties This common set of properties applies to every report, so the Standard Properties page is presented as part of the Edit Report page for every report.  The table below lists the fields on the Standard Properties page and describes their usage.  "},"1005":{y:0,u:"../rolemgmt/role_mgr.htm",l:-1,t:"Working with the Role Manager",i:0.0015348199598544,a:"Use the following sections to work with roles in the Role Manager. These sections enable you to create and edit roles and profiles, perform role analysis, and approve new or modified roles. How to Create or Edit a Role From the Role Management Page How to Create a Role From a Role Creation Request ..."},"1006":{y:0,u:"../iiqconsole/commoncommands.htm",l:-1,t:"Commonly Used Commands",i:0.000949099163923346,a:"This section lists and documents the syntax and actions of the most commonly-used console commands. Help and ? These two commands list all the available console commands.   Exit and Quit These two commands exit the console shell, returning the user to the operating system command prompt.   Source ..."},"1007":{y:0,u:"../reports/reportsover.htm",l:-1,t:"Report Use",i:0.0030823683490878,a:"Your level of access determines what information is displayed on each page and tab. Use IdentityIQ reporting to collect the information you need to manage the compliance process. Reporting replaces manual searches for data located in various systems around your enterprise. SailPoint provides a ..."},"1008":{y:0,u:"../lcm/enabling_file_attachments.htm",l:-1,t:"Enabling File Attachments",i:0.00165461752303333,a:"To enable the file attachments feature for Access Requests: Select the gear menu and navigate to Global Settings \u003e IdentityIQ Configuration. Select the Miscellaneous tab. (See Miscellaneous See  Miscellaneous .) In the Attachment Settings section of the Miscellaneous tab, enable and configure file ..."},"1009":{y:0,u:"../lcm/account_passwords.htm",l:-1,t:"Account Passwords",i:0.000548301357600567,a:"The Identity Details \u003e Passwords page has the following options:  Changing Account Passwords Manually —change a specific password or generate a new password for one or more accounts. Synchronizing Passwords Across Accounts —synchronize a group of passwords. Generating Account Passwords Automatically ..."},"1010":{y:0,u:"../iiqconsole/consoleintro.htm",l:-1,t:"IdentityIQ Console Commands",i:0.000843985615941407,a:"IdentityIQ Console Commands In this section, the list of console commands is subdivided based on how frequently they are likely to be used in a production environment."},"1011":{y:0,u:"../systemconfig/compmanemaltemp.htm",l:-1,t:"Email Templates",i:0.000655143475975132,a:"Email Templates Much of the communication performed during the access review process is done through email notifications sent automatically by IdentityIQ as an access review proceeds through its life cycle. Use this section to specify the template to use for each certification-related notice."},"1012":{y:0,u:"../lcm/configuring_attachments_access_requests.htm",l:-1,t:"Configuring FIle Attachments for Access Requests",i:0.00251774904727425,a:"Configuring File Attachments for Access Requests The access request attachments feature enables users to add attachments to single-user access requests. For example, you could attach a training certificate or a notarized document of authorization to a request. Here are some key points for ..."},"1013":{y:0,u:"../systemadmin/alert_definitions_page.htm",l:-1,t:"Alert Definitions Page",i:0.000585462917414631,a:"Alert Definitions Page Use the Alert Definition page to view a list of existing alert definitions. The Alerts page contains the following information:    "},"1014":{y:0,u:"../installation/installregiqservice.htm",l:-1,t:"Install and Register the IQService for Use with Windows",i:0.00166614674777975,a:"The IQService is a native Windows service that enables IdentityIQ to participate in a Windows environment and access information only available through Win32 APIs. After the IQService is installed and running on a Windows machine you can configure tasks in IdentityIQ that use the service such as ..."},"1015":{y:0,u:"../lcm/required_vs_optional_attachments.htm",l:-1,t:"Required vs. Optional Attachments",i:0.00116961086109764,a:"When you enable attachments for access requests, you can make them either optional or required. When an attachment is required, the attachment icon in the Access Request UI includes text indicating “Required.” Requirements for attachments are managed through rules, and rule logic gives you ..."},"1016":{y:0,u:"../systemconfig/ai_services_configuratio.htm",l:-1,t:"AI Services Configuration",i:0.000502586886145593,a:"This link is only present if you have purchased the AI Services product. Use the AI Services Configuration page to connect IdentityIQ to the AI Services product. Connection Information for AI Services: AI Services Hostname The host name of the AI Services recommendation API Client ID OAuth client ID ..."},});
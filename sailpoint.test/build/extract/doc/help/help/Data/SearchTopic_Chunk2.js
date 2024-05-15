define({"149":{y:0,u:"../appmgmt/activitytargcats.htm",l:-1,t:"Activity Target Categories",i:0.000456201568151243,a:"Use this page to create or edit target categories that point to the activity targets defined on your applications.  A target is a specific object within a data source that is acted upon. For example, a target might be a machine name for a login action, or a file name for a create action. The targets ..."},"150":{y:0,u:"../appmgmt/elevatedaccess.htm",l:-1,t:"Elevated Access",i:0.000903234686162079,a:"IdentityIQ has the capability of protecting sensitive access with the Elevated Access feature. Administrators, application owners, or entitlement owners can classify specific roles or entitlements as having elevated access. Classifying a role or entitlement as allowing elevated access provides clear ..."},"151":{y:0,u:"../appmgmt/ad_guid.htm",l:-1,t:"Supporting Active Directory Native Move / Rename",i:0.00188512224164757,a:"In many places in IdentityIQ, the default identifier for Active Directory accounts and groups is Distinguished Name (DN). Some native changes, such as when an account or group is moved within the Active Directory OU or when a person\u0027s name changes, result in a change to the DN.  \n\n Beginning with ..."},"152":{y:0,u:"../businessprocesses/business_processes.htm",l:-1,t:"Business Processes",i:0.00476713737099583,a:"Business Processes"},"153":{y:0,u:"../businessprocesses/wf_intro.htm",l:-1,t:"Business Process Management",i:0.00188690067316339,a:"A Business Process is a sequence of operations or steps that are launched to perform work. IdentityIQ Business Processes include standard out-of-the-box processes and custom installation-specific processes. The informal term workflow is also used in this document to refer to a business process. ..."},"154":{y:0,u:"../businessprocesses/wf_basics.htm",l:-1,t:"Workflow Basics",i:0.000723526389991132,a:"Workflow Basics This section contains some key concepts for developing and using workflows. Topics include: Terminology Important Workflow Objects Workflows Operation Triggering Workflows IdentityIQ Default Workflows"},"155":{y:0,u:"../businessprocesses/wf_terminology.htm",l:-1,t:"Terminology",i:0.00057920643669253,a:"The terms business process and workflow are used synonymously in IdentityIQ and throughout this document.  The IdentityIQ user interface refers to these sets of connected actions as business processes, which is the term that business managers often use. System implementers and users working in the ..."},"156":{y:0,u:"../businessprocesses/wf_important_wf_objects.htm",l:-1,t:"Important Workflow Objects",i:0.00057920643669253,a:"The IdentityIQ Object Model uses four key objects in workflows. To work with workflows, you need a basic understanding of these objects.  Note: The most important object for writing workflows is the WorkflowContext object, which tracks the launchtime state of the workflow and performs other critical ..."},"157":{y:0,u:"../businessprocesses/wf_operation.htm",l:-1,t:"Workflows Operation",i:0.00057920643669253,a:"Note: If multiple identities are modified at one time in a way that requires a workflow to launch for all of the identities, a separate workflow case is created to track the processing of the workflow for each single identity. Workflows carry out a sequence of defined actions based on a triggering ..."},"158":{y:0,u:"../businessprocesses/wf_provisioning_plans.htm",l:-1,t:"Provisioning Plans in Workflows",i:0.000456201568151243,a:"A provisioning plan contains a list of requested changes to an identity. Most workflows that change identities contain a single provisioning plan in a workflow variable. When performing Workflow customization you commonly need to inspect and sometimes need to modify the provisioning plan. ..."},"159":{y:0,u:"../businessprocesses/wf_triggeringwf.htm",l:-1,t:"Triggering Workflows",i:0.00057920643669253,a:"Note: You can also configure an IdentityIQ task to trigger a workflow. This workflow set up is a more complex process. See  Advanced Workflow Topics  . Events that occur in other parts of IdentityIQ and changes to attributes can trigger Workflows. Common Workflow triggers include:  Lifecycle Manager ..."},"160":{y:0,u:"../businessprocesses/wf_default_workflows.htm",l:-1,t:"IdentityIQ Default Workflows",i:0.00057920643669253,a:"IdentityIQ is preconfigured with various standard workflows that manage activities. The following workflows are examples of default workflows that are included with the product:  Provisioning of roles or entitlements Account management Identity creation Password management The default workflows can ..."},"161":{y:0,u:"../businessprocesses/wf_types.htm",l:-1,t:"Workflow Types",i:0.000880611102364914,a:"Each workflow must have a specified type. The type determines which workflow libraries are available to it, and which activities it can be assigned to.  Default workflows have predefined workflow types. IdentityIQ uses these assigned types to determine which workflows to present in the Business ..."},"162":{y:0,u:"../businessprocesses/wf_creating.htm",l:-1,t:"Using the Business Process Editor with Workflows",i:0.000723526389991132,a:"Note: Because some workflow steps cannot be defined with the graphical editor, workflow development can involve direct editing in the XML representation and some amount of Java coding. An understanding of XML and Java syntax is a general requirement for workflow development. The IdentityIQ user ..."},"163":{y:0,u:"../businessprocesses/wf_creatingeditingwfs.htm",l:-1,t:"Creating and Editing Workflows",i:0.000456201568151243,a:"Use the Business Process Editor to create a new workflow or edit an existing workflow. Original workflows can also be created from existing processes. Basic Workflow How-To Tasks The Process Editor has the following tabs: For more information, see: Basic Workflow How-To Tasks Editing Workflow XML ..."},"164":{y:0,u:"../businessprocesses/wf_processdetailstab.htm",l:-1,t:"Process Details Tab",i:0.000499288684572373,a:"The Process Details tab contains basic information about the workflow, including: Name – name for the workflow. Type – the pre-defined workflow type for this workflow. IdentityIQ uses types to determine which workflows to present in the Business Process configuration list boxes. See  Workflow Types  ..."},"165":{y:0,u:"../businessprocesses/wf_processvariablestab.htm",l:-1,t:"Process Variables Tab",i:0.000499288684572373,a:"The Process Variables tab lists variables you can use with the workflow. For most of the default processes, the variables are listed in a collapsed, advanced view. You can expand the view to show the details for each variable. Variables include:  Input variables for workflow Output variables for ..."},"166":{y:0,u:"../businessprocesses/wf_processdesignertab.htm",l:-1,t:"Process Designer Tab",i:0.000499288684572373,a:"The majority of the work in creating and modifying a workflow is done on the Process Designer tab. The steps and transitions you create for workflow determine the workflow activities and can include the following items. Process Steps A workflow involves a minimum of three steps: a start step, a ..."},"167":{y:0,u:"../businessprocesses/wf_processactiontype.htm",l:-1,t:"Action Type",i:0.000880611102364914,a:" Each step can take one of the types of actions listed in the following table. For any of these actions, an appropriate value must be specified or selected before the action can be saved.  For example, if Script is selected, a BeanShell script must be entered in the box. If you choose the Subprocess ..."},"168":{y:0,u:"../businessprocesses/wf_processmetricstab.htm",l:-1,t:"Process Metrics Tab",i:0.00101806256075555,a:"The Process Metrics tab displays the following statistics that are useful for troubleshooting workflows: Number of times the workflow launched Number of times the workflow succeeded or failed Average and maximum duration of the workflow Date the workflow last launched You can view additional process ..."},"169":{y:0,u:"../businessprocesses/wf_basichowto.htm",l:-1,t:"Basic Workflow How-To Tasks",i:0.000868353249952897,a:"You can perform the following tasks: How To View or Edit a Workflow Navigate to Setup \u003e Business Processes. Select an existing workflow from the Edit An Existing Process list.  Navigate through each of the process tabs to view or modify the workflow data.  To save changes to an existing workflow, ..."},"170":{y:0,u:"../businessprocesses/wf_editing_xml.htm",l:-1,t:"Editing Workflow XML",i:0.00119102304062593,a:"There are various options for editing workflow XML. You can:  Create the initial workflow through the user interface and then edit the workflow directly. Complete all workflow development in XML. Write original XM or use XML from an existing workflow as a template for a new process   All of these ..."},"171":{y:0,u:"../businessprocesses/wf_accessingxml.htm",l:-1,t:"Accessing the XML",i:0.000456201568151243,a:"The XML for existing workflows can be viewed and edited through the IdentityIQ Debug pages or can be exported through the IdentityIQ Console.    Debug Pages To view the XML in the Debug pages, navigate to the Debug pages and select Workflow from the object list to view a list of all defined ..."},"172":{y:0,u:"../businessprocesses/wf_dollarsignsyntax.htm",l:-1,t:"Dollar-Sign Reference Syntax",i:0.000456201568151243,a:"You can reference workflow variables inside XML tags and in user interface fields using $() notation. These are resolved into their variable values. For example, if a variable identityName is defined and contains the full name of an Identity, for example, John Smith, an Arg specified as:  \u003cArg ..."},"173":{y:0,u:"../businessprocesses/wf_xmlcontent.htm",l:-1,t:"XML Content",i:0.000456201568151243,a:"This section describes the elements present in the workflow XML and explains their usage. Header Elements The following three lines must be included as shown in any workflow document. The \u003csailpoint\u003e tag must, of course, be matched with a \u003c/sailpoint\u003e tag at the end of the workflow document. Copy ..."},"174":{y:0,u:"../businessprocesses/wf_element.htm",l:-1,t:"Workflow Element",i:0.000605910878953898,a:"Workflow Element The Workflow tag identifies the name and type of the workflow.  Copy \u003cWorkflow  explicitTransitions=\"true\" name=\"WF-Training Hello World Workflow\" type=\"IdentityUpdate\"\u003e The attributes of a workflow element including the following:"},"175":{y:0,u:"../businessprocesses/wf_variabledef.htm",l:-1,t:"Variable Definitions",i:0.00303073308720362,a:"The recommended best practice is to identify all variables for the workflow at the top of the XML document. The variable definitions come next in the XML.  At a minimum, variable elements require a name. Other attributes can indicate the variable type and use, such as input, required, editable, and ..."},"176":{y:0,u:"../businessprocesses/wf_workflow_description.htm",l:-1,t:"Workflow Description",i:0.000456201568151243,a:"A description element should be included to describe the purpose of the workflow. Although the description element is not used in the workflow process, it is recommended for usability. In the user interface, the contents of this element are displayed on the Process Details tab of the Business ..."},"177":{y:0,u:"../businessprocesses/wf_rule_libraries.htm",l:-1,t:"Rule Libraries",i:0.000456201568151243,a:"Some methods the workflows use are grouped together into Rule Libraries. These Rule Libraries are defined as rules in IdentityIQ. However, these libraries contain sets of related but unconnected methods that workflow steps can directly within a script action. Because the rule methods are in rules, ..."},"178":{y:0,u:"../businessprocesses/wf_step_libraries.htm",l:-1,t:"Step Libraries",i:0.000456201568151243,a:"Step libraries are designed to offer a group of common functions that can be added to existing workflows from the Add a Step panel Business Process Editor. Step libraries are a collection of steps encapsulated by a workflow with the template attribute marked true. The steps do not have any ..."},"179":{y:0,u:"../businessprocesses/wf_step_elements.htm",l:-1,t:"Step Elements",i:0.00119706847600428,a:"Note: Similar to variables, some parts of a step definition are included as attributes of the step and others are expressed as nested elements within the step. The core of the workflow is contained within the step elements.  The action attribute determines what processing the step performs. Steps ..."},"180":{y:0,u:"../businessprocesses/wf_approval_steps.htm",l:-1,t:"Approval Steps",i:0.000945095399244503,a:"Approval is one of the most common actions that a workflow process performs. The IdentityIQ Approval model is constructed to simplify the process of defining an approval structure. Approvals are a special type of step that contain an \u003cApproval\u003e element, specifying how the approval work item is ..."},"181":{y:0,u:"../businessprocesses/wf_library_methods.htm",l:-1,t:"Workflow Library Methods",i:0.00125550733750552,a:"Workflow Libraries are sets of compiled java methods. To be accessible to workflows, these libraries must be specified as a comma separated list in the libraries attribute of the workflow element. The classes for libraries are named as follows: SailPoint.workflow.[library]Library.class. Only the ..."},"182":{y:0,u:"../businessprocesses/wf_std_workflow_handler.htm",l:-1,t:"Standard Workflow Handler",i:0.000456201568151243,a:"Standard Workflow Handler"},"183":{y:0,u:"../businessprocesses/wf_identity_library.htm",l:-1,t:"Identity Library",i:0.000456201568151243,a:"The methods are available for use. However these methods are rarely used in a custom workflow. It is recommended that custom workflows the workflow subprocesses instead of calling the library methods directly. Note: This information is included for reference purposes and to document the purpose of ..."},"184":{y:0,u:"../businessprocesses/wf_identityrequest_library.htm",l:-1,t:"IdentityRequest Library",i:0.000456201568151243,a:"IdentityRequest Library"},"185":{y:0,u:"../businessprocesses/wf_approval_library.htm",l:-1,t:"Approval Library",i:0.000456201568151243,a:"Approval Library"},"186":{y:0,u:"../businessprocesses/wf_policy_violation_library.htm",l:-1,t:"Policy Violation Library",i:0.000456201568151243,a:"Policy Violation Library"},"187":{y:0,u:"../businessprocesses/wf_role_library.htm",l:-1,t:"Role Library",i:0.000456201568151243,a:"Role Library"},"188":{y:0,u:"../businessprocesses/wf_lcm_library.htm",l:-1,t:"LCM Library",i:0.000456201568151243,a:"LCM Library Currently, the Lifecycle Manager Library contains no public methods. All of its methods were moved to the Standard Workflow Handler."},"189":{y:0,u:"../businessprocesses/wf_monitoringworkflows.htm",l:-1,t:"Monitoring Workflows",i:0.000766613506412261,a:"After a workflow is initiated, the workflow can launch to completion quickly. Sometimes a workflow can take additional time to complete its specified actions. Approval steps often create a delay in the processing while the workflow waits for the approver to review the work item and make a decision ..."},"190":{y:0,u:"../businessprocesses/wf_viewworkflowcase.htm",l:-1,t:"Viewing the Workflow Case XML",i:0.000456201568151243,a:"You can examine the workflow case in XML format from the IdentityIQ console or from the Debug pages.The status of each step can then be determined from the data recorded in the workflow case.  To get the workflowcase XML from the console: Launch the console. List the workflow cases. Get the specific ..."},"191":{y:0,u:"../businessprocesses/wf_advanced.htm",l:-1,t:"Advanced Workflow Topics ",i:0.00125895720403457,a:"Advanced Workflow Topics  This section includes these advanced Workflow topics: Loops within Workflows Launching Workflows from a Task or Workflow Workflow Forms"},"192":{y:0,u:"../businessprocesses/wf_loops.htm",l:-1,t:"Loops within Workflows",i:0.000812921743112664,a:" A loop occurs when a step transitions back to a step that executed previously. The state of that step is reinitialized and the step is executed again. A loop can transition back any number of steps. You define a loop transition the same way you would any other transition. However, you must just ..."},"193":{y:0,u:"../businessprocesses/wf_launchingfrom.htm",l:-1,t:"Launching Workflows from a Task or Workflow",i:0.000812921743112664,a:"Launching Workflows from a Task or Workflow You can launch workflows from tasks or other workflows without using a system event to trigger the workflow. "},"194":{y:0,u:"../businessprocesses/wflaunchedcustomtasks.htm",l:-1,t:"Workflows Launched from Custom Tasks",i:0.000456201568151243,a:"You can launch workflows from a custom task in IdentityIQ. Because tasks are compiled java classes, the custom task must be written as a Java method. To create a workflow from a custom task:  Create a WorkflowLaunch object in the Java method.  Populate the object with the data the workflow requires. ..."},"195":{y:0,u:"../businessprocesses/wflaunchedbyotherwf.htm",l:-1,t:"Workflows Launched by Other Workflows",i:0.000456201568151243,a:"Installations often have one workflow start another workflow using the scheduleWorkflowEvent method in the Standard Workflow Handler. One of the initiating workflow steps launches the method through a call action.  Arguments to the step include the following: A workflow that is launched by another ..."},"196":{y:0,u:"../businessprocesses/standardforms.htm",l:-1,t:"Workflow Forms",i:0.00121460413067509,a:"Standard work item forms are available for presenting approval or other data requests to approvers. However, some installations prefer to use custom forms for these activities. Based on the type of the data collection effort, a custom form might be required. You can build a custom form using a ..."},"197":{y:0,u:"../businessprocesses/wf_processvarstepform.htm",l:-1,t:"Process Variable and Step Forms",i:0.000456201568151243,a:"You use forms added to steps on the Process Designer tab in the Business Process Editor to request data that a process needs from a user. For example, you can add a form to a step to request a value for a missing attribute.  However, to present information on the Basic Views of the Process Variables ..."},"198":{y:0,u:"../certification/certification_and_access_reviews.htm",l:-1,t:"Certifications and Access Reviews",i:0.000843985615941407,a:"Certifications and Access Reviews"},"199":{y:0,u:"../certification/certs_accessrev_introduction.htm",l:-1,t:"Introduction to Certifications and Access Reviews",i:0.00340147760930704,a:"IdentityIQ™ helps you manage compliance by providing an automated way for designated reviewers to view and confirm or remove other users\u0027 access privileges, through a process called certification. IdentityIQ also lets you certify the contents and membership of roles and groups. Certifications like ..."},"200":{y:0,u:"../certification/access_certifications_overview.htm",l:-1,t:"About Certifications",i:0.000650093592046325,a:"In IdentityIQ, certifications let you automate the review and approval of identity access privileges. In a certification, IdentityIQ collects fine-grained access or entitlement data, and formats the information into interactive reports, which are sent to the appropriate reviewers as access reviews. ..."},"201":{y:0,u:"../certification/certschedulesabout.htm",l:-1,t:"Certification Schedules",i:0.000456201568151243,a:"Certifications can be scheduled to run on a periodic basis; they can also be triggered by an event, or run as a one-off process. Periodic Certifications Periodic certifications are scheduled to run on a recurring basis, such as daily, weekly, monthly, quarterly, or  annually. These periodic access ..."},"202":{y:0,u:"../certification/types_of_certification.htm",l:-1,t:"Types of Certification",i:0.00142002735043945,a:"IdentityIQ provides these types of certification: Targeted Certifications The most flexible type of certification, designed to meet most organizations\u0027 full range of certification needs from a single place. In a Targeted Certification you can certify role, entitlement, and account access for a ..."},"203":{y:0,u:"../certification/contents_of_a_certificat.htm",l:-1,t:"Contents of a Certification: Policies, Roles, and Entitlements",i:0.000456201568151243,a:"These are some common terms that are used in certifications. Policies Policies govern access and can be defined for your enterprise. You can use certifications to monitor users that are in violation of those policies. For example, a separation-of-duties policy may dictate that one person can not ..."},"204":{y:0,u:"../certification/challenges.htm",l:-1,t:"Challenges",i:0.000456201568151243,a:"When an access reviewer has determined that the user\u0027s access should be revoked, you may want to allow the affected user to challenge the decision; for example, to share information with the reviewer about why they may need to retain the access in question.  To allow users to challenge revocation ..."},"205":{y:0,u:"../certification/revocations.htm",l:-1,t:"Revocations",i:0.000456201568151243,a:"Revocation is when an identity\u0027s entitlements are altered in the source application, to remove any entitlements that were marked by the access reviewer as needing to be revoked. Depending on the provisioning features in use, remediations may be processed manually or automatically. If automatic ..."},"206":{y:0,u:"../certification/escalations_and_reminder.htm",l:-1,t:"Escalations and Reminders",i:0.000456201568151243,a:"When a person who has been assigned a manual work item for revoking access does not complete the work in a timely manner, IdentityIQ can send that person email reminders or can even escalate the work to the next level, such as to their manager. Revocation reminders and escalations are used only when ..."},"207":{y:0,u:"../certification/phases_of_a_certificatio.htm",l:-1,t:"Phases of a Certification",i:0.00126613090280759,a:"Certifications progress through phases as they move through their lifecycle. The phases associated with each certification are determined when the certification is set up. Some phases are part of every certification, while others are optional phases that can be configured as needed according to your ..."},"208":{y:0,u:"../certification/automatic_closing_of_cer.htm",l:-1,t:"Automatic Closing of Certifications",i:0.000602534963811452,a:"Automatic closing is an option you can enable in your certifications to handle access reviews that have not been completed by the time the certification\u0027s designated active period has ended. With automatic closing, you can automatically make decisions on the open line items – either to revoke, ..."},"209":{y:0,u:"../certification/rules_in_certifications.htm",l:-1,t:"Rules in Certifications",i:0.000456201568151243,a:"Certifications can use rules to customize certification behavior. Rules enable you to insert your own logic to modify the behavior of the certification; for example, you could write a rule to exclude your executive management team from certifications, or to add an additional level of sign-off ..."},"210":{y:0,u:"../certification/self_certification.htm",l:-1,t:"Self-Certification",i:0.000456201568151243,a:"Self-certification means a user is allowed to be the certifier for his or her own access. Self-certification is often considered a security risk because it allows a user to approve and permit his or her own access, whether or not it is appropriate to his or her job. By default, IdentityIQ does not ..."},"211":{y:0,u:"../certification/access_reviews_overview.htm",l:-1,t:"About Access Reviews",i:0.000650093592046325,a:"The access review part of a certification is when someone who is an authority of some sort – such as a people manager, or someone responsible for an application like a Human Resources system or a financial database – reviews the access that other users have, to verify whether or not it is correct ..."},"212":{y:0,u:"../certification/customization_of_access_.htm",l:-1,t:"Customization of Access Reviews",i:0.000456201568151243,a:"IdentityIQ provides many ways to customization certifications and the access reviews that comprise them. These options control things like the actions a reviewer can take to correct an action, whether or not reviewers can process access decisions in bulk or only one by one, whether reviewers can ..."},"213":{y:0,u:"../certification/how_reviewers_are_notifi.htm",l:-1,t:"How Reviewers Are Notified About Access Reviews",i:0.000456201568151243,a:"Certifications can be configured to send an email notification to reviewers when the access reviews are available. An Access Review tile on the reviewer\u0027s home page also shows a count of how many reviews are awaiting the user\u0027s attention. Whether or email notifications are sent, the access reviews ..."},"214":{y:0,u:"../certification/how_access_review_items_.htm",l:-1,t:"How Access Review Items are Displayed: Important, Open, and Review Tabs",i:0.000456201568151243,a:"The items for you to review are presented in a tabbed interface.  Important The Important tab lists the access review items that require immediate attention. This includes policy violations, challenge items, and returned items. (Challenge items are items which the certifier revoked and the access ..."},"215":{y:0,u:"../certification/making_access_decisions.htm",l:-1,t:"Making Access Decisions",i:0.00167547970188024,a:"These are the decisions reviewers can make directly on an access review item: Approve the access When you approve access, you are indicating that it\u0027s OK for this user to have this access. That means no action will be taken, and the user\u0027s access will remain the same as it is now. Revoke the access ..."},"216":{y:0,u:"../certification/item_by_item_versus_bulk.htm",l:-1,t:"Item-by-Item versus Bulk Decisions",i:0.000456201568151243,a:"Review decisions can be made one at a time, or in bulk. The ability to decide on items in bulk is configurable; it can be turned off or on, both per certification, and globally. If bulk processing is enabled for your review, you will see a Bulk Decisions button in the header area of your listing of ..."},"217":{y:0,u:"../certification/changing_decisions.htm",l:-1,t:"Changing Decisions",i:0.000456201568151243,a:"Until you have signed off on the full review, you have the option to change the decisions you\u0027ve saved. You can do this immediately when you make a decision, before saving it, by re-clicking the decision button or unchecking the decision from the flyout menu.  Once a decision has been saved, you can ..."},"218":{y:0,u:"../certification/passing_access_reviews_t.htm",l:-1,t:"Passing Access Reviews to Others",i:0.000456201568151243,a:"Sometimes you may need someone else\u0027s input on an access review, or you may even need someone else to handle the review entirely. There are three ways to pass a review along to someone else, and each involves different levels of ownership or responsibility both for you and for the person you pass it ..."},"219":{y:0,u:"../certification/delegating_reviews.htm",l:-1,t:"Delegating Reviews",i:0.000456201568151243,a:"When you delegate a review item to someone else, you are allowing that person make the decisions and return the item to you, so that you can review it, accept or change their decision, and then sign off. With delegation, the original reviewer still retains ultimate control of the decision and the ..."},"220":{y:0,u:"../certification/reassigning_reviews.htm",l:-1,t:"Reassigning Reviews",i:0.000456201568151243,a:"Reassigning is different from delegating, in that reassigned items are no longer the responsibility of the original reviewer. The person the items are reassigned to assumes complete responsibility for all decisions on those items, and must sign off on those decisions themselves. However, the ..."},"221":{y:0,u:"../certification/forwarding_reviews.htm",l:-1,t:"Forwarding Reviews",i:0.000695339376685151,a:"Forwarding a review means you relinquish all responsibility for the access review. You can not retract it, or even see what activity has occurred in the review – you pass all responsibility to the new owner, including the ability to change any decisions you may have already made. Forwarding is done ..."},"222":{y:0,u:"../certification/whatreviewerscandodelreafwrd.htm",l:-1,t:"What Reviewers Can Do With Delegated, Reassigned, or Forwarded Reviews",i:0.000456201568151243,a:"Delegated Reviews When you delegate a review item, the user you delegate it to can make decisions about access in the same way as you the original owner can. An important point about delegated items is that they show up for the new reviewer as a work item under the My Work \u003e Work Items menu rather ..."},"223":{y:0,u:"../certification/undodelegationandreassign.htm",l:-1,t:"Undoing Delegation and Reassignment of Reviews",i:0.000456201568151243,a:"Sometimes when you pass a review item or an entire review to someone else, you may need recall it for some reason. To recall a review: For individual delegated items, click the decision menu for an item and choose Undo Decision. When you undo a delegation, any decisions made by the person you ..."},"224":{y:0,u:"../certification/signing_off_on_reviews.htm",l:-1,t:"Signing Off on Reviews",i:0.000456201568151243,a:"When decisions have been made for everything in your review, you can sign off on the review. Sign-off cannot occur until all items in certification have been decided, including any delegated or reassigned items, unless the certification was specifically configured to allow it. Also, if a challenge ..."},});
/* (c) Copyright 2008 SailPoint Technologies, Inc., All Rights Reserved. */

Ext.ns('SailPoint', 
       'SailPoint.Analyze', 
       'SailPoint.Analyze.Activity',
       'SailPoint.Analyze.Identity',
       'SailPoint.Analyze.Role',
       'SailPoint.Analyze.Audit',
       'SailPoint.Analyze.Certification',
       'SailPoint.Analyze.AccountGroup',
       'SailPoint.Analyze.SearchDisplayFields',
       'SailPoint.Analyze.IdentityRequest',
       'SailPoint.Analyze.Syslog');

/**Ensures that if a user hits the enter key within a text field on the search, 
* the correct button gets fired
*/ 
SailPoint.Analyze.initializeSubmit = function(formName, buttonId) {
  var submitOnEnter = new SailPoint.SubmitOnEnter(buttonId);
  var textFields = Ext.DomQuery.select('input[class*=searchInputText]', Ext.getDom(formName));
  Ext.each(textFields, function (textField) {
    submitOnEnter.registerTextField(textField);
  });
};

SailPoint.Analyze.defaultResultsPageSize = 25;

SailPoint.Analyze.gridStateIds = new Ext.util.HashMap();

SailPoint.Analyze.exportReport = function(exportType) {
  if(exportType=="csv") {
    Ext.getDom('searchSaveForm:csv').click();
  } else if (exportType=="pdf") {
    Ext.getDom('searchSaveForm:pdf').click();
  } else if (exportType=="cef") {
    Ext.getDom('searchSaveForm:cef').click();
  }

  var exportMonitor = new SailPoint.ExportMonitor('searchSaveForm');
  exportMonitor.showDialog(exportType);
};

SailPoint.Analyze.deleteSearch = function(formName, name) {
  Ext.getDom(formName + ':searchName').value = name;
  name = Ext.String.htmlEncode(name);
  var confTpl = new Ext.Template('#{msgs.identity_search_confirm_delete_search}');
  var areYouSureTpl = new Ext.Template('#{msgs.identity_search_are_you_sure_delete_search}');
  Ext.MessageBox.confirm(confTpl.apply([name]), areYouSureTpl.apply([name]), 
    function(btn, text) {
      if(btn=='yes') {
        Ext.getDom(formName + ':deleteBtn').click();
      }
    });
};

SailPoint.Analyze.loadSearch = function(formName, name, loadBtnName) {
  Ext.getDom(formName + ':searchName').value = name;
  Ext.getDom(formName + ':' + loadBtnName).click();
}; 

SailPoint.Analyze.searchOption = function() {
    var sel = Ext.get('editForm:searchOption');
    if ( ! sel ) return;
    if ( sel.value == 'saveQuery' ) {
        SailPoint.Analyze.saveQuery(Ext.get('editForm:rememberQuery'), '#{msgs.save_search}', 'search_lcase');
    } else if ( sel.value == 'saveReport' ) {
        SailPoint.Analyze.saveQuery(Ext.get('editForm:saveQueryAsReport'), '#{msgs.save_search_as_report}', 'report_lcase');
    } else if ( sel.value == 'saveIpop' ) {
        SailPoint.Analyze.saveQuery(Ext.get('editForm:saveQueryAsIpop'), '#{msgs.save_identities_as_population}', 'population_lcase');
    } else if ( sel.value == 'showEntitlements' ) {
        showEntitlements();
    } else if ( sel.value == 'saveQueryAsIdentity' ) {
        SailPoint.Analyze.saveQuery(Ext.get('editForm:rememberQueryAsIdentity'), '#{msgs.save_search_as_identity_search}', 'search_lcase');
    }
    sel.value = 'select';
};

SailPoint.Analyze.saveQuery = function(button, dialogTitle, typeKey) {
  var searchType = Ext.getDom('searchSaveForm:searchType').value;
  var windowUrl = SailPoint.getRelativeUrl("/analyze/searchRememberPanel.jsf?type="+typeKey+"&searchType="+searchType);
  SailPoint.confirm({url: windowUrl, options: {method: 'post'}},
   {windowParameters: {className:'sailpoint',
                       title: dialogTitle,
                       width:550},
    okLabel: '#{msgs.button_save}',
    cancelLabel: '#{msgs.button_cancel}',
    ok:function(win) {

      var validationSucceeded = true;
      // Validate the schedule name
      var name = Ext.getDom('searchItemName').value;
      var description = Ext.getDom('searchItemDescription').value;

      validationSucceeded = Validator.validateNonBlankString(name, '#{msgs.query_name_unspecified}');
      if (validationSucceeded)
          validationSucceeded = Validator.validateNotAllSpaces(name, '#{msgs.query_name_unspecified}');
      if (validationSucceeded)
        validationSucceeded = Validator.validateLength(name, 80, '#{msgs.query_name_too_long}');
      if (validationSucceeded) {
        Ext.getDom('searchSaveForm:searchItemName').value = name;
        Ext.getDom('searchSaveForm:searchItemDescription').value = description;
        SailPoint.Dialog.hide();
        Ext.getDom(button).click();
      }  else {
        // Unfortunately we have two divs with the id errorMessages on the analytics page.
        // This selector targets the one specifically inside the save dialog.
        var errorDivResults = document.querySelectorAll('div > #errorMessages');
        if (errorDivResults.length > 0) {
          var errorDiv = Ext.getDom(errorDivResults[0]);
          Validator.displayErrors(errorDiv);
        }
      }
      
    },
    cancel:function(win) {
      SailPoint.Dialog.hide();
    },
    focusField: 'searchItemName'
    }
  );
};


SailPoint.Analyze.validateSearch = function(formName, searchType) {
    var errors = [];
    var activePanel = null, normalizedSearchType = searchType, lowerSearchType = searchType.toLowerCase();

    /* Do different validations depending on the type of search */
    if (lowerSearchType == 'audit' || lowerSearchType == 'advancedaudit') {
        if (lowerSearchType == 'audit') {
            errors = SailPoint.Analyze.Audit.validateSearch(formName);
            normalizedSearchType = lowerSearchType;
        } else {
            normalizedSearchType = 'advancedAudit';
        }

        activePanel = Ext.getCmp('auditSearchPanel');
    }
    else if (lowerSearchType == 'activity') {
        errors = SailPoint.Analyze.Activity.validateSearch(formName);
        activePanel = Ext.getCmp('activitySearchPanel');
        normalizedSearchType = lowerSearchType;
    }
    else if (lowerSearchType == 'syslog' || lowerSearchType == 'advancedsyslog') {
        if (lowerSearchType == 'syslog') {
            errors = SailPoint.Analyze.Syslog.validateSearch(formName);
            normalizedSearchType = lowerSearchType;
        } else {
            normalizedSearchType = 'advancedSyslog';
        }

        activePanel = Ext.getCmp('syslogSearchPanel');
    }
    else if (lowerSearchType == 'role' || lowerSearchType == 'advancedrole') {
        if (lowerSearchType == 'role') {
            errors = SailPoint.Analyze.Role.validateSearch(formName);
            normalizedSearchType = lowerSearchType;
        } else {
            normalizedSearchType = 'advancedRole';
        }

        activePanel = Ext.getCmp('roleSearchPanel');
    }
    else if (lowerSearchType == 'certification' || lowerSearchType == 'advancedcertification') {
        if (lowerSearchType == 'certification') {
            errors = SailPoint.Analyze.Certification.validateSearch(formName);
            normalizedSearchType = lowerSearchType;
        } else {
            normalizedSearchType = 'advancedCertification';
        }

        activePanel = Ext.getCmp('certificationSearchPanel');
    }
    else if (lowerSearchType == 'identityrequest' || lowerSearchType == 'advancedidentityrequest') {
        if (lowerSearchType == 'identityrequest') {
            errors = SailPoint.Analyze.IdentityRequest.validateSearch(formName);
            normalizedSearchType = 'identityRequest';
        } else {
            normalizedSearchType = 'advancedIdentityRequest';
        }

        activePanel = Ext.getCmp('identityRequestSearchPanel');
    }
    else if (lowerSearchType == 'identity' || lowerSearchType == 'advancedidentity') {
        activePanel = Ext.getCmp('identitySearchPanel');
        normalizedSearchType = (lowerSearchType == 'identity') ? lowerSearchType : 'advancedIdentity';
    }
    else if (lowerSearchType == 'accountgroup' || lowerSearchType == 'advancedaccountgroup') {
        activePanel = Ext.getCmp('accountGroupSearchPanel');
        normalizedSearchType = (lowerSearchType == 'accountgroup') ? 'accountGroup' :  'advancedAccountGroup';
    }
    else if (lowerSearchType == 'link' || lowerSearchType == 'advancedlink') {
        activePanel = Ext.getCmp('linkSearchPanel');
        normalizedSearchType = (lowerSearchType === 'link') ? 'link' : 'advancedLink';
    }

    /* Make sure at least one column is selected */
    if (countSelected(Ext.getDom(normalizedSearchType + 'fieldContainer')) < 1) {
        errors.push('#{msgs.identity_search_err_select_one_column}');
    }

    /* Update/Clear error messages */
    if (activePanel) {
        activePanel.messages = null;
        if (errors.length > 0) {
            activePanel.messages = SailPoint.TabErrorMessageTemplate.applyTemplate(errors);
        }
        if (activePanel.ownerCt.updateMessages) {
            activePanel.ownerCt.updateMessages();
        }
        if(activePanel.messages == null){
            Ext.getDom(formName + ':ajaxSearchBtn').click();
        }
    }

    return errors;
};

/**
 * This is a utility method that looks for all potential error panels and returns the one that 
 * is currently in use.  
 */
SailPoint.Analyze.getErrorPanel = function() {
    // TODO: There has to be a better way of doing this, especially if we end up adding more 
    // search pages.  We only have two right now so we're going with the quick and dirty 
    // solution for now to keep it simple
    var errorPanel = Ext.getCmp('analyzeErrorPanel');
    
    return errorPanel;
};

/** This is a hack to get around the fact that since the h:selectManyCheckbox is rendered
       through ajax, it does not always submit a value when the form is submitted.  Stupid Stupid Stupid.
       So the only way to get around this is to copy the value into an inputHidden field on change. **/
SailPoint.Analyze.SearchDisplayFields.copyToSearchTypeInput = function() {
  var checkboxes = document.getElementsByName('certificationSearchForm:certificationTypeColumnList');
  var val = [];
  for(var i=0; i<checkboxes.length; i++) {
    if(checkboxes[i].checked == true)
      val.push(checkboxes[i].value);
  }
  Ext.getDom('certificationSearchForm:certificationTypeColumnListInput').value = arrayToString(val, true);
 };
 
 SailPoint.Analyze.SearchDisplayFields.createDisplayFieldPanel = function(contentEl, title) {	 
	 return Ext.create('Ext.panel.Panel', {
         collapsible: false,
         hideCollapseTool: true,
         contentEl: contentEl,
         title: title
	 });
 };
 
SailPoint.Analyze.SearchDisplayFields.initDisplayFields = function(searchType) {
  var itemList = [];
  
  if (searchType == 'identity' || searchType == 'advancedIdentity')
  {
    var idFields = SailPoint.Analyze.SearchDisplayFields.createDisplayFieldPanel(searchType + 'identityFieldsTab', '#{msgs.search_section_identity_fields}');
    itemList.push(idFields);
  }

  if (searchType == 'identity' || searchType == 'advancedIdentity')
  {
    var riskFields = SailPoint.Analyze.SearchDisplayFields.createDisplayFieldPanel(searchType + 'riskFieldsTab', '#{msgs.search_section_risk_fields}');
    itemList.push(riskFields);            
  }

  if (searchType == 'activity')
  {
    var activityFields = SailPoint.Analyze.SearchDisplayFields.createDisplayFieldPanel('activityFieldsTab', '#{msgs.search_section_activity_fields}');
    itemList.push(activityFields);            
  }

  if (searchType == 'certification' || searchType == 'advancedCertification')
  {
    var certificationFields = SailPoint.Analyze.SearchDisplayFields.createDisplayFieldPanel(searchType + 'certificationFieldsTab', '#{msgs.search_section_cert_fields}');
    itemList.push(certificationFields);            
  }

  if (searchType == 'role' || searchType == 'advancedRole')
  {
    var roleFields = SailPoint.Analyze.SearchDisplayFields.createDisplayFieldPanel(searchType + 'roleFieldsTab', '#{msgs.search_section_role_fields}');
    itemList.push(roleFields);            
  }

  if (searchType == 'audit' || searchType == 'advancedAudit')
  {
    var auditFields = SailPoint.Analyze.SearchDisplayFields.createDisplayFieldPanel(searchType + 'auditFieldsTab', '#{msgs.audit_fields}');
    itemList.push(auditFields);
  }

  if (searchType == 'accountGroup')
  {
    var accountGroupFields = SailPoint.Analyze.SearchDisplayFields.createDisplayFieldPanel(searchType + 'accountGroupFieldsTab', '#{msgs.search_section_account_group_fields}');
    itemList.push(accountGroupFields);            
  }
        
  if (searchType == 'identityRequest' || searchType == 'advancedIdentityRequest')
  {
    var identityRequestFields = SailPoint.Analyze.SearchDisplayFields.createDisplayFieldPanel(searchType + 'identityRequestFieldsTab', '#{msgs.identity_request_fields}');
    itemList.push(identityRequestFields);            
  }

  if (searchType == 'link' || searchType == 'advancedLink')
  {
    var linkFields = SailPoint.Analyze.SearchDisplayFields.createDisplayFieldPanel(searchType + 'linkFieldsTab', '#{msgs.search_section_link_fields}');
    itemList.push(linkFields);
  }

  if (searchType == 'syslog' || searchType == 'advancedSyslog')
  {
    var syslogFields = SailPoint.Analyze.SearchDisplayFields.createDisplayFieldPanel(searchType + 'syslogFieldsTab', '#{msgs.syslog_fields}');
    itemList.push(syslogFields);
  }

    var accordion = Ext.create('Ext.panel.Panel', {
    id: searchType + 'DisplayFieldsPanel',
    renderTo: searchType + 'AccordionDiv',
    layout: {
    	type: 'accordion',
        titleCollapse: false,
        fill: false,
        multi: true
    },
    items: itemList
  });
};

SailPoint.Analyze.supportLongSourceAppNames = function(formName) {
    if(Ext.getDom(formName + ':appSelection')) {
        var appNames = Ext.getDom(formName + ':appSelection').getElementsByTagName('option');
        shortenElementLabels(appNames, 45);
    }
};

//Sets the type of the startdate input object to 'after'
//if the user decides that they want to search using the start date.
//This allows us to get around the fact that the inputDate
//always initializes a date, whether the user wants to use it or not.
SailPoint.Analyze.updateStartType = function(checkbox, input, targetElement) {
  toggleDisplay(targetElement, !checkbox.checked);
  if(targetElement.isVisible()) {
    input.value = 'After';
  } else {
    input.value = 'None';
  }
};

SailPoint.Analyze.updateEndType = function (checkbox, input, targetElement) {
  toggleDisplay(targetElement, !checkbox.checked);
  if(targetElement.isVisible()) {
    input.value = 'Before';
  } else {
    input.value = 'None';
  }
};

SailPoint.Analyze.reRenderSearchItems = function(searchType) {
    // The results form doesn't have a form name, but it has a searchType,
    // so that's what we have to use to look up the right form to rerender
    var formName = SailPoint.Analyze.getFormName(searchType);

    if (Ext.getDom(formName + ':rerenderSearchItemsBtn')) {
        Ext.getDom(formName + ':rerenderSearchItemsBtn').click();
    }

    var savedSearchItemName = null;
    if (Ext.getDom('searchSaveForm:searchItemName')) {
        savedSearchItemName = Ext.getDom('searchSaveForm:searchItemName').value;
    }

    // Set the search item name on the form we need to rerender so that search 
    // is highlighted properly in the list of saved searches.
    if (Ext.getDom(formName + ':searchName')) {
        if (savedSearchItemName !== Ext.getDom(formName + ':searchName').value) {
            Ext.getDom(formName + ':searchName').value = savedSearchItemName;
        }
    }
};

SailPoint.Analyze.getFormName = function(searchType) {
    var formName;
    
    if (searchType == 'Identity') {
        formName = 'identitySearchForm';
    } else if (searchType == 'Certification') {
        formName = 'certificationSearchForm';
    } else if (searchType == 'Audit') {
        formName = 'auditSearchForm';
    } else if (searchType == 'Activity') {
        formName = 'activitySearchForm';
    } else if (searchType == 'AccountGroup') {
        formName = 'accountGroupSearchForm';
    } else if (searchType == 'Role') {
        formName = 'roleSearchForm';
    } else if (searchType == 'IdentityRequest') {
        formName = 'identityRequestSearchForm';
    } else if (searchType == 'Link') {
        formName = 'linkSearchForm';
    }  else if (searchType == 'Syslog') {
        formName = 'syslogSearchForm';
    }
    
    return formName;
};

/**
 * @cfg {String} className - class that identifies the input elements to be registered
 * @cfg {DOM} container - node that contains the inputs to be registered
 * @cfg {Function} eventHandler - Function that will handle the browser-dependent key press event.
 * @cfg {Object} options - Object containing options for use by the event handler
 * This function will be given three parameters: 
 * 1. An Ext.EventObject 
 * 2. The DOM element that fired the event
 * 3. An object containing the options to be passed to the event
 */
SailPoint.Analyze.registerSubmits = function(config) {
    var className = config.className;
    var container = config.container;
    var eventHandler = config.eventHandler;
    var options = config.options;
    var textFields = Ext.DomQuery.select('input[class*=' + className + ']', container);
    Ext.each(textFields, function (textField) {
        var fieldElement = Ext.get(textField);
        if (Ext.isGecko) {
            fieldElement.addListener('keydown', eventHandler, textField, options);
        } else {
            fieldElement.addListener('keyup', eventHandler, textField, options);
        }
    });
};

SailPoint.Analyze.submitEventHandler = function(eventObj, domElement, options) {
    if (eventObj && eventObj.getKey) {
        // Coming from a keyup event
        if (eventObj.getKey() === Ext.EventObject.ENTER) {
            SailPoint.Analyze.validateSearch(options.formName, options.searchType);
            eventObj.stopEvent();
        }
    } else {
        // Coming from a button click
        SailPoint.Analyze.validateSearch(options.formName, options.searchType);
    }
};

SailPoint.Analyze.resetFieldsToDisplay = function(type) {
    var i, j, container = type + 'fieldContainer';
    var fieldsToReset = Ext.DomQuery.select('input[type=checkbox]', container);
    var defaultFields;
    if(defaultSelectedFields) {
        defaultFields = defaultSelectedFields[type];
    }

    for (i = 0; i < fieldsToReset.length; ++i) {
        if(defaultFields) {
            for (j = 0; j < defaultFields.length; ++j) {
                if (defaultFields[j] === fieldsToReset[i].value ||
                    (type + "." + defaultFields[j]) === fieldsToReset[i].value) {
                    fieldsToReset[i].checked = true;
                    break;
                } else {
                    fieldsToReset[i].checked = false;
                }
            }
        } else {
            fieldsToReset[i].checked = false;
        }
    }
};

SailPoint.Analyze.resetSelectItems = function(selectListOrId, valueToPick) {
    var selectList;
    if (selectListOrId.options) {
        selectList = selectListOrId;
    } else {
        selectList = Ext.getDom(selectListOrId);
    }
    
    var selectOptions = selectList.options;
    var numOptions = selectOptions.length;
    var i;
    var pickedValue;
    for (i = 1; i < numOptions; ++i) {
        if (valueToPick && valueToPick == selectOptions[i].value) {
            selectOptions[i].selected = true;
            pickedValue = selectOptions[i].value;
        } else {
            selectOptions[i].selected = false;
        }
    }
    
    if (!pickedValue) {
        selectOptions[0].selected = true;
        selectList.value = selectOptions[0].value;
    } else {
        selectList.value = pickedValue;
    }
};

SailPoint.Analyze.resetTomahawkDate = function(tomahawkInputId, date) {
    var day;
    var month;
    var year;
    
    if (date) {
        day = date.getDate() + '';
        month = date.getMonth() + '';
        year = date.getFullYear() + '';
    }
    
    if (!day) {
        day = '';
    }
    
    if (!month) {
        month = '';
    }
    
    if (!year) {
        year = '';
    }
    
    Ext.getDom(tomahawkInputId + '.day').value = day;
    SailPoint.Analyze.resetSelectItems(tomahawkInputId + '.month', month);
    Ext.getDom(tomahawkInputId + '.year').value = year;
};

SailPoint.Analyze.clearExtendedAttributeFields = function(container) {
    if(Ext.typeOf(container) === 'string') {
        container = Ext.getDom(container); // DomQuery.select needs a dom object as the root, not a string.
    }
    var textAttributeFields = Ext.DomQuery.select('input[class*=searchInputText]', container);
    var selectAttributeFields = Ext.DomQuery.select('select[class*=searchInputSelect]', container);
    var dateOptionFields = Ext.DomQuery.select('input[class*=startOrEndDate]', container);
    var booleanCheckboxes = Ext.DomQuery.select('input[class*=searchBooleanCheckbox]', container);
    var suggestFields = Ext.DomQuery.select('div[id$=Suggest]', container);
    var extendedFields = Ext.DomQuery.select('input[id*=Form\:extended]', container);
    var extendedCombo = Ext.DomQuery.select('select[id*=Form\:extended]', container);

    var i;
    for (i = 0; i < textAttributeFields.length; ++i) {
        textAttributeFields[i].value = '';
    }
    
    for (i = 0; i < selectAttributeFields.length; ++i) {
        SailPoint.Analyze.resetSelectItems(selectAttributeFields[i]);
    }
    
    for (i = 0; i < dateOptionFields.length; ++i) {
        if (dateOptionFields[i].checked) {
            dateOptionFields[i].click();
        }
    }    

    for (i = 0; i < booleanCheckboxes.length; ++i) {
        booleanCheckboxes[i].checked = false;
    }

    for (i = 0; i < suggestFields.length; ++i) {
        var s = Ext.getCmp(suggestFields[i].id + "Cmp");
        if(s){
            if(s.clearValue) {
                s.clearValue();
            }
            else if(s.clear) {
                s.clear();
            }
        }
    }

    for (i = 0; i < extendedFields.length; ++i) {
        extendedFields[i].value = '';
    }

    for (i = 0; i < extendedCombo.length; ++i) {
        extendedCombo[i].value = '';
    }
};

/**
 * @param {Ext.Toolbar} Toolbar object that needs to be fixed
 */
SailPoint.Analyze.fixTheToolbar = function(toolbar) {
    var toolbarNode;
    var toolbarEl;
    
    if (toolbar) {
        toolbarEl = toolbar.getEl();
    }
    
    if (toolbarEl) {
        toolbarNode = toolbarEl.dom;
    }
    
    if (toolbarNode) {
        var fieldWrappers = Ext.DomQuery.select('div[class=x-form-field-wrap]', toolbarNode);
        var numFieldWrappers = fieldWrappers.length;
        var inputField;
        var i;
        
        for (i = 0; i < numFieldWrappers; ++i) {
            inputField = Ext.DomQuery.selectNode('input[class*=x-form-field]', fieldWrappers[i]);
            Ext.get(fieldWrappers[i]).setStyle({'width': (inputField.getWidth() + 25) + 'px'});
        }
    }
};

SailPoint.Analyze.resetSearchName = function(searchFormName) {
    var searchNameField = Ext.getDom(searchFormName + ':searchName');
    if (searchNameField) {
        searchNameField.value = '';
    }
};

SailPoint.Analyze.setButtonsDisabled = function(searchButtonName, resetButtonName, disabled) {
	var searchButton = Ext.getCmp(searchButtonName); 
	if (searchButton) {
		searchButton.disabled=disabled;
	}
	var resetButton = Ext.getCmp(resetButtonName);
	if (resetButton) {
		resetButton.disabled=disabled;
	}
};

// Resets the suggestAttribute component value, hidden input values and 
// other divs that might be associated with it on the page.
SailPoint.Analyze.resetSuggestAttribute = function(key) {
    if (null !== key) {
        if (Ext.getDom(key)) {
            Ext.getDom(key).value = '';
        }

        if(Ext.getDom(key + 'Val')) {
            Ext.getDom(key + 'Val').innerHTML = "";
        }

        if(Ext.getDom(key + 'Type')) {
            Ext.getDom(key + 'Type').innerHTML = "";
        }
    }
};


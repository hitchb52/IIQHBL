/* (c) Copyright 2008 SailPoint Technologies, Inc., All Rights Reserved. */

/** 
 * This object contains various helpers for properly styling the filter pages.
 * It also contains hooks for actions that need to happen on when the filters
 * change.  Since these actions vary from page to page, the hooks are stubbed out.
 * -- Bernie Margolis
 */
var FiltersPage;

if (!FiltersPage) {
    FiltersPage = {
        roundedClass : 'div.spTabledAjaxContent',
        tableId : 'filterBeanListTbl',
        form: 'editForm',  // The name of the form that contains this FiltersPage
        prefix: '',        // The prefix used to identify the specified instance of the FiltersPage
        isInitialized: false,

        initPage: function() {
            var refreshButton;
            if (!this.isInitialized) {
              makeTableMulticolored(Ext.getDom(this.tableId), true, false, 'even', 'odd');
              this.isInitialized = true;

              // if there is at least one filter disable app suggest
              if (Ext.getDom(this.tableId) && Ext.getDom(this.tableId).rows.length > 1) {
                  var appSuggestCmp = Ext.getCmp('applicationSuggestCmp');
                  if (appSuggestCmp) {
                      appSuggestCmp.setDisabled(true);
                  }
              }

              Ext.getDom(this.form + ':' + this.prefix + 'initComplete').value = 'true';
              
              refreshButton = Ext.getDom(this.form + ':' + this.prefix + 'refreshOperationChoices');
              if (refreshButton)
                  refreshButton.click();
            }
        },
    
        reRoundTable: function (tableDivId) {
            makeTableMulticolored(Ext.getDom(this.tableId), true, false, 'even', 'odd');
        },
        
        getFirstPartOfId: function(id) {
            var idParts = id.split(':');
            idParts[idParts.length-1] = '';
            var firstPartOfId = idParts.join(':');
            return firstPartOfId;
        },
        
      
        // Provide hooks to allow pages that include this one to specify actions to be performed when
        // filters are added or changed
        onAddFilter : function(addFilterButton){
            if(!addFilterButton)
                return;
            var firstPartOfId = FiltersPage.getFirstPartOfId(addFilterButton.id);
            var filterValue = Ext.getDom(firstPartOfId + 'filterValue');
            if(filterValue) {
                filterValue.value='';
            }

            this.resetFilterInputs();
            this.onChangeFilter();
        },
              
        onChangeFilter : function() {
            this.createFilterInputs();
        },
      
        validateGroup: function(btn, errorDiv) {
            if(countSelected(Ext.getDom(this.tableId)) < 2) {
                errorDiv.innerHTML = "#{msgs.err_group_filters}"; 
                errorDiv.className = 'formError';
                errorDiv.style.display = '';
                return;
            } else {
                if(errorDiv && Ext.get(errorDiv).isVisible()) {
                    errorDiv.style.display = 'none';
                }
                if(btn) {
                    //bug26515 isFunction does not always work in ie8. removed it here and changed it to a try catch
                    try {
                        Ext.getDom(btn).click();
                    }
                    catch (e) {
                        //suppress - no need to do anything here
                    }
                }
            }
        },
      
        instance: function(roundedClass, tableId, form, prefix) {
            function FiltersPageInstance() {}
            
            FiltersPageInstance.prototype = this;
            var instance = new FiltersPageInstance();
            if (roundedClass)
                instance.roundedClass = roundedClass;
            if (tableId)
                instance.tableId = tableId;
            if (form)
                instance.form = form;
            if (prefix)
                instance.prefix = prefix;
            
            // Forgive the javascript lesson here, but it confused me when I
            // encountered this, and I don't want others to be as confused as
            // I was. -- Bernie Margolis    
            // The following is added so that 'this' will work properly 
            // when these functions are invoked:
            instance.initPage = this.initPage;
            instance.reRoundTable = this.reRoundTable;
            instance.onAddFilter = this.onAddFilter;
            instance.onChangeFilter = this.onChangeFilter;
            instance.validateGroup = this.validateGroup;
            instance.handleEnter = this.handleEnter;
            instance.changeField = this.changeField;
            // If the statements above are left out the interpreter will
            // correctly use the prototype's functions.  Unfortunately,
            // that also causes the use of 'this' in those functions to 
            // refer to the prototype, so it will pick up all the 'default'
            // property values rather than the ones were manually set.
                
            return instance;
        },

        handleEnter: function (field, event) {
            // IE workaround
            if (!event) {
                var event = window.event;
            }

            var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
            if (keyCode === Ext.EventObject.RETURN) {
                Ext.getDom(FiltersPage.getFirstPartOfId(field.id) + this.prefix + 'addFilterBtn').click();
                return false;
            } else {
                return true;
            }
        }, 
        
        /* 
         * Each field has a different list of allowed operations. When the user changes the 
         * field value we need to update the operations select with the appropriate list.
         */
        changeField: function(selectElement) {
          if(!selectElement) {
              return;
          }
          var firstPartOfId = FiltersPage.getFirstPartOfId(selectElement.id);
          var refreshButton = Ext.getDom(firstPartOfId + this.prefix + 'refreshOperationChoices');
          refreshButton.click();
        },
        
        checkFilterCompilation: function() {
            if(Ext.getDom(this.form + ':' + this.prefix + 'compilationError').value=='true') {
                Ext.getDom(this.prefix + 'compilationErrorMessage').style.display = '';
            } else {
                Ext.getDom(this.form + ':' + this.prefix + 'filterSourceHideBtn').click();
            }
        },
        
        cancelSource: function() {
            this.reRoundTable(this.prefix + 'filterBeanListDiv'); 
            this.onChangeFilter();
        },
        
        hideFilterInputs: function() {
            var logicalOp = Ext.getDom(this.form + ':' + this.prefix + 'inputTypeChoices').value;
            return (logicalOp === 'ISNULL' || logicalOp === 'NOTNULL');
        },

        /* Create necessary components for filter input depending on type */
        createFilterInputs : function() {
            if (Ext.getDom(this.prefix + 'entitlementFilter').value === 'true') {
                this.createEntitlementSelect();
            }

            if (Ext.getDom(this.prefix + 'entitlementMultiFilter').value === 'true') {
                var multiSelect = Ext.getCmp(this.prefix + 'entitlementMultiSelect');
                if (multiSelect) {
                    multiSelect.destroy();
                }
                this.createEntitlementMultiSelect();
            }

            if (Ext.getDom(this.prefix + 'integerFilter').value === 'true') {
                this.createIntegerCmp();
            }

            // Format tomahawk date/time inputs for advanced search.
            // See SailPoint.Utils.datetimeTomahawkTable for details.
            var dateFilterField = Ext.getDom(this.prefix + 'dateFilter');
            if (dateFilterField && dateFilterField.value === 'true') {
                SailPoint.Utils.datetimeTomahawkTable();
            }
        },

        /*
            When calling this, we assume that Ext.getDom(this.form + ':' + this.prefix + 'searchFieldList') exists
            and use it for the MA "attribute" query option
         */
        createEntitlementSelect : function () {
            var page=this;
            Ext.create('SailPoint.form.ManagedAttributeValueCombo', {
                id: this.prefix + 'entitlementFilterCombo',
                renderTo: this.prefix + 'entitlementFilterSelect',
                applicationName: Ext.getDom(this.prefix + 'applicationId').value,
                attribute: Ext.getDom(this.form + ':' + this.prefix + 'searchFieldList').value,
                hidden: this.hideFilterInputs(),
                excludedTypes: 'Permission',
                listeners: {
                    change: function(combo, newValue, oldValue, eOpts) {
                        Ext.getDom(page.form + ':' + page.prefix + 'entitlementFilterValue').value = newValue;
                    }
                }
            });
        },

        createIntegerCmp : function() {
            Ext.create('Ext.form.field.Number', {
                id: this.prefix + 'integerFilterCmp',
                renderTo: this.prefix + 'integerFilterDiv',
                hidden: this.hideFilterInputs(),
                allowDecimals: false,
                hideTrigger: true,
                width: 200
            });
        },

        /*
         When calling this, we assume that Ext.getDom(this.form + ':' + this.prefix + 'searchFieldList') exists
         and use it for the MA "attribute" query option
         */
        createEntitlementMultiSelect : function() {
            var multiSelect = Ext.create('SailPoint.form.MultiSelect', {
                id: this.prefix + 'entitlementMultiSelect',
                valueField: 'value',
                displayField: 'displayValue',
                suggest: true,
                forceQuery: true,
                comboConf: {
                    listConfig: {
                        cls: 'attribute-list'
                    },
                    valueField: 'value',
                    displayField: 'displayValue',
                    extraFields: ['description'],
                    queryParam: 'value',
                    datasourceUrl: '/rest/managedAttributes',
                    httpMethod: 'GET',
                    emptyText: '#{msgs.lcm_request_entitlements_select_value}',
                    suggest: true,
                    tpl: new Ext.XTemplate(
                        '<tpl for=".">',
                        '<div class="x-boundlist-item">',
                        '<div class="sectionHeader">{displayValue:htmlEncode}</div>',
                        '<div class="indentedColumn">{[(values.description) ? values.description: ""]}</div>',
                        '</div>',
                        '</tpl>'),
                    baseParams: {purview: Ext.fly(this.prefix + 'applicationId').getValue(),
                                 excludedTypes: 'Permission',
                                 attribute: Ext.getDom(this.form + ':' + this.prefix + 'searchFieldList').value}
                },
                forceSelection: true,
                renderTo: this.prefix + 'entitlementMultiFilterSelect'
            });
        },

        /* Commit values from input component to value fields */
        commit : function() {
            this.commitEntitlementMultiSelect();
            this.commitIntegerCmp();
        },
    
        commitIntegerCmp : function() {
            var thisObj = Ext.getCmp(this.prefix + 'integerFilterCmp');
            if (thisObj) {
                Ext.getDom(this.form + ':' + this.prefix + 'integerFilterValue').value = thisObj.getValue();
            }
        },

        commitEntitlementMultiSelect : function() {
            var multiSelect = Ext.getCmp(this.prefix + 'entitlementMultiSelect');
            if (multiSelect) {
                var values = multiSelect.getValue(),
                    valueString = '';

                for (var i = 0; i < values.length; ++i) {
                    if (i > 0) {
                        valueString += '\n';
                    }
                    valueString += values[i];
                }

                Ext.getDom(this.form + ':' + this.prefix + 'entitlementMultiFilterValue').value = valueString;
            }
        },

        resetFilterInputs : function() {
            var combo = Ext.getCmp(this.prefix + 'entitlementFilterCombo');
            if (combo) {
                combo.clearValue();
            }

            var multiSelect = Ext.getCmp(this.prefix + 'entitlementMultiSelect');
            if (multiSelect) {
                multiSelect.destroy();
                this.createEntitlementMultiSelect();
            }

            var integerCmp = Ext.getCmp(this.prefix + 'integerFilterCmp');
            if (integerCmp) {
                integerCmp.initValue();
            }
        },

        clearSearchFields: function() {
            SailPoint.Analyze.resetSelectItems(this.form + ':' + this.prefix + 'inputTypeChoices');
            SailPoint.Analyze.resetSelectItems(this.form + ':' + this.prefix + 'searchFieldList');
            SailPoint.Analyze.resetSelectItems(this.form + ':' + this.prefix + 'matchMode');

            if (Ext.getDom(this.form + ':' + this.prefix + 'filterValue')) {
                Ext.getDom(this.form + ':' + this.prefix + 'filterValue').value = '';
            }

            if (Ext.getDom(this.form + ':' + this.prefix + 'filterBoolValue')) {
                SailPoint.Analyze.resetSelectItems(this.form + ':' + this.prefix + 'filterBoolValue');
            }

            this.changeField(Ext.getDom(this.form + ':' + this.prefix + 'inputTypeChoices'));
            this.reRoundTable(this.prefix + 'filterBeanListDiv');

        }
    };
};

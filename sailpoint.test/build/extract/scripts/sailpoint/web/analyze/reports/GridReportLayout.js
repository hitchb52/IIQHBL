/**
 * Store factory to hide some of the mess in creating stores.  Stores in ExtJS 4.x
 * need a model and a proxy, so let's just wrap all that up into a nice neat factory.
 *
 * TODO: If there is ever a way to determine if a model is already in memory with the
 * exact same fields, we should use that instead of creating a new uniquely named model
 * with the same info.  Probably not a big deal, but it would be cleaner.
 */
Ext.define('SailPoint.GridReportLayout', {
    // load these BEFORE this class is created
    requires : [ ],

    // load these CONCURRENTLY with this class
    uses : [ ],

    // Static methods
    statics : {

        buildGrid : function(id, gridColConf, title, dsUrl, isPreview, workItemId){
            var conf = {
                id:id,
                title : title,
                height : 450,
                url:dsUrl,
                columns : gridColConf.columns,
                fields : gridColConf.fields,
                renderTo:'gridPanel',
                remoteSort:true,
                cls : 'smallFontGrid wrappingGridCells',
                emptyText:"#{msgs.rept_preview_no_results}"
            };

            if (workItemId){
                conf.baseParams = {'workItemId' : workItemId};
            }

            if (isPreview){
                conf.tools =[{
                    type:'close',
                    tooltip: "#{msgs.rept_form_field_disable_detail}",
                    handler: function(event, toolEl, panel){
                        SailPoint.disableDetail();
                        Ext.getCmp(id).hide();
                    }
                }];
            }

            if (gridColConf.groupField){
                conf.features = [{ftype:'grouping'}];
                conf.groupField = gridColConf.groupField;
            }

            // Set a default renderer, otherwise PagingGrid will
            // set a html-encoding renderer as a default
            if (conf && conf.columns && conf.columns.length > 0){
                for(var i=0;i<conf.columns.length;i++){
                    var col = conf.columns[i];
                    if (!col.renderer){
                        col.renderer = function(str) {
                            return str;
                        };
                    }
                }
            }

            return new SailPoint.grid.PagingGrid(conf);
        },
        
        buildHeaderTables : function(headerTableJson){
            var headerTables = [];
            if (headerTableJson != null){
                var headerTable1Items = [],
                    headerTable2Items = [],
                    headerTable1 = null, 
                    headerTable2 = null;

                if (headerTableJson.values) {
                    Ext.each(headerTableJson.values, function(item, index){
                        //IIQSAW-3336 -- skip Creator and Creation Date
                        if (index >= 2) {
                            if (index%2==0) {
                                headerTable1Items.push({
                                    xtype: 'displayfield',
                                    name: item.name,
                                    fieldLabel: item.label,
                                    value:item.value
                                });
                            } else {
                                headerTable2Items.push({
                                    xtype: 'displayfield',
                                    name: item.name,
                                    fieldLabel: item.label,
                                    value:item.value
                                });
                            }
                        }
                    });
                }

                if (headerTable1Items.length > 0 || headerTable2Items > 0) {
                    headerTable1 = Ext.create('Ext.container.Container', {
                        layout: {
                            type: 'form'
                        },
                        flex:1,
                        style:{margin:'20px'},
                        defaults: {
                            labelWidth: 120,
                            flex: 1,
                            style: {
                                padding: '10px'
                            }
                        },
                        items: headerTable1Items
                    });
    
                    headerTable2 = Ext.create('Ext.container.Container', {
                        layout: {
                            type: 'form'
                        },
                        flex:1,
                        style:{margin:'20px'},
                        defaults: {
                            labelWidth: 120,
                            flex: 1,
                            style: {
                                padding: '10px'
                            }
                        },
                        items: headerTable2Items
                    });
    
                    headerTables.push(headerTable1);
                    headerTables.push(headerTable2);
                }
            }

            return headerTables;
        },


        buildSummaryTable : function(summaryTableJson){
            if (summaryTableJson != null){

                var summaryTableItems = [];

                if (summaryTableJson.title && summaryTableJson.title != ''){
                    summaryTableItems.push({
                        xtype: 'container',
                        margin:0,
                        padding:0,
                        html:"<h2>"+summaryTableJson.title+"</h2>"
                    });
                }

                if (summaryTableJson.values){
                    Ext.each(summaryTableJson.values, function(item){
                        summaryTableItems.push({
                            xtype: 'displayfield',
                            name: item.name,
                            fieldLabel: item.label,
                            value:item.value
                        });
                    });
                }

                var summaryTable = Ext.create('Ext.container.Container', {
                    layout: {
                        type: 'form'
                    },
                    flex:1,
                    style:{margin:'20px'},
                    defaults: {
                        labelWidth: 150,
                        flex: 1,
                        style: {
                            padding: '10px'
                        }
                    },
                    items: summaryTableItems
                });

                return summaryTable;
            }

            return null;
        }


    }// end statics
});

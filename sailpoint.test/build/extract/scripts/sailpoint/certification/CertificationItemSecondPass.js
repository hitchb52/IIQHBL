/* (c) Copyright 2009 SailPoint Technologies, Inc., All Rights Reserved. */
Ext.ns("SailPoint.Certification");

/**
 * This is a static class (ie - no constructor) that can be used to load second
 * pass information about certification items using AJAX.  This offloads some
 * processing from when the page is originally displayed so that the initial
 * load will be faster.
 * 
 * Requires:
 *  - misc.js: SailPoint.Log
 *  - certification.js: getCertificationItemIds()
 */
SailPoint.Certification.CertificationItemSecondPass = {

    // An object holding the second pass information loaded via AJAX.  This has
    // an array of JSON-loaded objects.
    infos: null,

    // A lock used to prevent multiple second-pass AJAX requests from executing
    // at the same time.
    executing: false,

    // A array of item IDs that have been queued for second-pass loading.
    queuedItemIds: null,

    disabled : false,
    
    /**
     * Return whether the info has been loaded yet or not.
     */
    isLoaded: function() {
        return (null != this.infos);
    },
    
    /**
     * Return the second pass information to determine whether the certification
     * item with the given ID should show the remediation dialog.  This should only
     * be called if the second pass info has finished loading, otherwise an
     * exception is thrown.
     * Update: Throwing an exception presents an ugly stack trace error dialog. So we are showing the more
     * user friendly second pass loading dialog.
     *
     * @param  itemId             The ID of the CertificationItem.
     *
     * @return The second pass info for the given item.
     */
    getInfo: function(itemId) {

        // If second pass is disabled, return a dummy object
        // with the dialogs disabled.
        if (this.disabled){
            return {
                itemId:itemId,
                showRemediationDialog : false,
                showRevokeAcctDialog : false
            };
        }

        // Throw if the info is not yet loaded.
        if (!this.isLoaded()) {
            Ext.Msg.alert("#{msgs.cert_decision_second_pass_loading_title}", "#{msgs.cert_decision_second_pass_loading}");
        }

        // If we calculated it, look for this item.
        for (var i=0; i<this.infos.length; i++) {
            var info = this.infos[i];
            if (itemId === info.itemId) {
                return info;
            }
        }

        // We got here without finding an info, so throw.
        // Update: Throwing here presents a non user friendly stack dump error dialog.
        // This isn't ideal so show the "wait for revocation data to load" error message dialog instead.
        Ext.Msg.alert("#{msgs.cert_decision_second_pass_loading_title}", "#{msgs.cert_decision_second_pass_loading}");
    },

    disable: function() {
        this.disabled = true;
    },
    
    /**
     * Load the second-pass info for the items on the page.  This will queue
     * parallel requests.
     *
     * @param isDetailPage  Whether this is loading for the detail page or the
     *                      entitlement view.
     * @param workItemId    The ID of the work item if this is a delegation.
     */
    load: function(isDetailPage, workItemId) {
        SailPoint.Log.message('load(): Entering');
    
        var container =
            (isDetailPage) ? 'currentIdentityDiv' : 'certIdsLiveGridContainer';
        if (isDetailPage && (null === Ext.getDom(container))) {
            container = 'certificationDecisions';
        }
        var itemIds = this.getCertificationItemIds(container);
    
        // Since scrolling the grid can fire this off many times, we'll lock when
        // the second pass AJAX call is executing and queue up the IDs.  We'll
        // replace the queued IDs if a newer request comes in.  After the AJAX
        // request completes, we'll kick off another request if anything is queued.
        if (!this.executing) {
            SailPoint.Log.message('load(): not executing ... launching request');
            this.loadItems(itemIds, workItemId);
        }
        else {
            SailPoint.Log.message('load(): is executing ... queuing request');
            this.queueItems(itemIds);
        }
    },


    loadGrids: function(gridIds, workItemId) {
        SailPoint.Log.message('loadGrids(): Entering');

        var itemIds = this.getGridItems(gridIds);

        // Since scrolling the grid can fire this off many times, we'll lock when
        // the second pass AJAX call is executing and queue up the IDs.  We'll
        // replace the queued IDs if a newer request comes in.  After the AJAX
        // request completes, we'll kick off another request if anything is queued.
        if (!this.executing) {
            SailPoint.Log.message('load(): not executing ... launching request');
            this.loadItems(itemIds, workItemId);
        }
        else {
            SailPoint.Log.message('load(): is executing ... queuing request');
            this.queueItems(itemIds);
        }
    },

    gridLoaded : function(workItemId, records){

        var itemIds = [];
        Ext.each(records, function(record){
            itemIds.push(record.getId());
        });


        this.loadItems(itemIds, workItemId);
    },

    
    /**
     * @private
     * 
     * Fire off an AJAX request to load the second-pass info into the infos
     * array.
     *
     * @param  itemIds     A comma-separated string of IDs to load.
     * @param  workItemId  The ID of the work item if this is a delegation.
     */
    loadItems: function(itemIds, workItemId) {
        SailPoint.Log.message('loadItems(): entering');

        var me = this,
            filteredItems = [];

        if (itemIds){
            for(var i=0;i<itemIds.length;i++){
                var id = itemIds[i];
                if (!this.hasItem(id))
                    filteredItems.push(id);
            }
        }

        if (filteredItems.length==0) {
            SailPoint.Log.message('loadItems(): no IDs - exiting');
            return;
        }
    
        SailPoint.Log.message('loadItems(): locking');
        this.executing = true;
        var params = 'itemIds='+filteredItems.join(',');
        if (null !== workItemId) {
            params += '&workItemId=' + workItemId;
        }

        Ext.Ajax.request({
            url: CONTEXT_PATH + '/certification/certificationSecondPass.json',
            method: 'post',
            params: params,
            success: function(transport) {
                SailPoint.Log.message('loadItems(): received success from AJAX request');
                var responseText = transport.responseText;
                var wrappedSecondPassInfo = JSON.parse(responseText);

                if (!me.infos){
                    me.infos = wrappedSecondPassInfo.contents;
                } else {
                    for(var i=0;i<wrappedSecondPassInfo.contents.length;i++){
                        var item = wrappedSecondPassInfo.contents[i];
                        me.infos.push(item);
                    }
                }

                me.executing = false;
                SailPoint.Log.message('loadItems(): unlocking');
    
                // If anything was queued up while this was executing, clear it off
                // the queue and fire a new request.
                if (null != me.queuedItemIds && me.queuedItemIds.length == 0) {
                    SailPoint.Log.message('loadItems(): have a queued request ... launching');
                    var newIds = this.queuedItemIds;
                    me.queuedItemIds = null;
                    me.loadItems(newIds, workItemId);
                }
            },
            failure: function() {
                SailPoint.Log.message('loadItems(): received failure from AJAX request');
                Ext.Msg.alert("#{msgs.cert_decision_second_pass_loading_title}", "#{msgs.cert_decision_second_pass_loading}");
                me.executing = false;
                SailPoint.Log.message('loadItems(): unlocking');
            }
        });
    },

    getCertificationItemIds : function(container) {
        container = (null == container) ? Ext.get('editForm') : Ext.getDom(container);
        var inputs = Ext.DomQuery.select("input.certItemPreviousStatus", container);

        var itemIds = [];

        inputs.each(function(elt) {
            var eltId = elt.id;
            var regex = /(\S+)_previousStatus/;
            if ((null != eltId) && regex.test(eltId)) {
                itemIds.push(RegExp.$1);
            }
        });

        return itemIds;
    },

    queueItems : function(itemIds){
        if (!itemIds || itemIds.length==0)
            return;

        if (!this.queuedItemIds)
            this.queuedItemIds = [];
        this.queuedItemIds.concat(itemIds);
    },

    getGridItems : function(gridIds){
        var itemIds = [];
        if (gridIds && gridIds.length > 0){
            Ext.each(gridIds, function(gridId){
                var gridStore = Ext.getCmp(gridId).getStore();
                gridStore.each(function(record){
                    itemIds.push(record.get('id'));
                });
            });
        }

        return itemIds;
    },

    hasItem : function(itemId){
        if (this.infos){
            for (i=0; i<this.infos.length; i++) {
                var info = this.infos[i];
                if (itemId === info.itemId) {
                    return true;
                }
            }
        }
        return false;
    }

};

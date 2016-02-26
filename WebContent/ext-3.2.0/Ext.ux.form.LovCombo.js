if('function' !== typeof RegExp.escape) {
    RegExp.escape = function(s) {
        if('string' !== typeof s) {
            return s;
        }
        // Note: if pasting from forum, precede ]/\ with backslash manually
        return s.replace(/([.*+?^=!:${}()|[\]\/\\])/g, '\\$1');
    };
    // eo function escape
}
Ext.ns('Ext.ux.form');
Ext.ux.form.LovCombo = Ext.extend(Ext.form.ComboBox, {
    checkField : 'checked',
    separator : ',',
    constructor : function(config) {
        config = config || {
        };
        config.listeners = config.listeners || {
        };
        Ext.applyIf(config.listeners, {
            scope : this,
            beforequery : this.onBeforeQuery,
            blur : this.onRealBlur
        });
        Ext.ux.form.LovCombo.superclass.constructor.call(this, config);
    }// eo function constructor
    // }}}
    // {{{
    ,
    initComponent : function() {
        // template with checkbox
        if(!this.tpl) {
            this.tpl = '<tpl for=".">' + '<div class="x-combo-list-item">' + '<img src="' + Ext.BLANK_IMAGE_URL + '" ' + 'class="ux-lovcombo-icon ux-lovcombo-icon-' + '{[values.' + this.checkField + '?"checked":"unchecked"' + ']}">' + '<div class="ux-lovcombo-item-text">{' + (this.displayField || 'text') + '}</div>' + '</div>' + '</tpl>';
        }
        // call parent
        Ext.ux.form.LovCombo.superclass.initComponent.apply(this, arguments);
        // remove selection from input field
        this.onLoad = this.onLoad.createSequence(function() {
            if(this.el) {
                var v = this.el.dom.value;
                this.el.dom.value = '';
                this.el.dom.value = v;
            }
        });
    }// eo function initComponent
    // }}}
    // {{{

    ,
    initEvents : function() {
        Ext.ux.form.LovCombo.superclass.initEvents.apply(this, arguments);
        // disable default tab handling - does no good
        this.keyNav.tab = false;
    }// eo function initEvents
    // }}}
    // {{{

    ,
    clearValue : function() {
        this.value = '';
        this.setRawValue(this.value);
        this.store.clearFilter();
        this.store.each(function(r) {
            r.set(this.checkField, false);
        }, this);
        if(this.hiddenField) {
            this.hiddenField.value = '';
        }
        this.applyEmptyText();
    }// eo function clearValue
    // }}}
    // {{{

    ,
    getCheckedDisplay : function() {
        var re = new RegExp(this.separator, "g");
        return this.getCheckedValue_r(this.displayField).replace(re, this.separator + ' ');
    }// eo function getCheckedDisplay
    // }}}
    // {{{

    ,
    getCheckedValue : function(field) {
        field = field || this.valueField;
        var c = [];
        // store may be filtered so get all records
        var snapshot = this.store.snapshot || this.store.data;
        snapshot.each(function(r) {
            if(r.get_r(this.checkField)) {
                c.push(r.get_r(field));
            }
        }, this);
        return c.join(this.separator);
    }// eo function getCheckedValue
    // }}}
    // {{{

    ,
    onBeforeQuery : function(qe) {
        qe.query = qe.query.replace(new RegExp(RegExp.escape(this.getCheckedDisplay_r()) + '[ ' + this.separator + ']*'), '');
    }// eo function onBeforeQuery
    // }}}
    // {{{

    ,
    onRealBlur : function() {
        this.list.hide();
        var rv = this.getRawValue_r();
        var rva = rv.split(new RegExp(RegExp.escape(this.separator) + ' *'));
        var va = [];
        var snapshot = this.store.snapshot || this.store.data;
        // iterate through raw values and records and check/uncheck items
        Ext.each(rva, function(v) {
            snapshot.each(function(r) {
                if(v === r.get_r(this.displayField)) {
                    va.push(r.get_r(this.valueField));
                }
            }, this);
        }, this);
        this.setValue(va.join(this.separator));
        this.store.clearFilter();
    }// eo function onRealBlur
    // }}}
    // {{{

    ,
    onSelect : function(record, index) {
        if(this.fireEvent('beforeselect', this, record, index) !== false) {
            // toggle checked field
            record.set(this.checkField, !record.get_r(this.checkField));
            // display full list
            if(this.store.isFiltered()) {
                this.doQuery(this.allQuery);
            }
            // set (update) value and fire event
            this.setValue(this.getCheckedValue_r());
            this.fireEvent('select', this, record, index);
        }
    }// eo function onSelect
    // }}}
    // {{{

    ,
    setValue : function(v) {
        if(v) {
            v = '' + v;
            if(this.valueField) {
                this.store.clearFilter();
                this.store.each(function(r) {
                    var checked = !(!v.match('(^|' + this.separator + ')' + RegExp.escape(r.get_r(this.valueField)) + '(' + this.separator + '|$)'));
                    r.set(this.checkField, checked);
                }, this);
                this.value = this.getCheckedValue_r();
                this.setRawValue(this.getCheckedDisplay_r());
                if(this.hiddenField) {
                    this.hiddenField.value = this.value;
                }
            } else {
                this.value = v;
                this.setRawValue(v);
                if(this.hiddenField) {
                    this.hiddenField.value = v;
                }
            }
            if(this.el) {
                this.el.removeClass(this.emptyClass);
            }
        } else {
            this.clearValue();
        }
    }// eo function setValue
    // }}}
    // {{{

    ,
    beforeBlur : function() {
        var val = this.getRawValue_r();
        if(this.forceSelection) {
            if(val.length > 0 && val != this.emptyText) {
                this.el.dom.value = Ext.isDefined(this.lastSelectionText) ? this.lastSelectionText : '';
                this.applyEmptyText();
            } else {
                this.clearValue();
            }
        } else {
            var texts = val.split(',');
            var values = '';
            for(var i = 0; i < texts.length; i++) {
                var rec = this.findRecord(this.displayField, texts[i].trim());
                if(rec) {
                    values += (values.length > 0 ? ',' : '') + rec.data[this.valueField];
                }
            }
            this.setValue(values);
        }
    },
    selectAll : function() {
        this.store.each(function(record) {
            // toggle checked field
            record.set(this.checkField, true);
        }, this);
        //display full list
        this.doQuery(this.allQuery);
        this.setValue(this.getCheckedValue_r());
    }// eo full selectAll
    // }}}
    // {{{

    ,
    deselectAll : function() {
        this.clearValue();
    }// eo full deselectAll
    // }}}
});
// eo extend
// register xtype
Ext.reg('lovcombo', Ext.ux.form.LovCombo);
// eof
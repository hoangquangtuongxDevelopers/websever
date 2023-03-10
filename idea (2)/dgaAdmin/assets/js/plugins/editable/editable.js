! function(a, b, c, d) {
    function e(b, c) {
        this.element = b, this.options = a.extend({}, g, c), this._defaults = g, this._name = f, this.init()
    }
    var f = "editable",
        g = {
            keyboard: !0,
            dblclick: !0,
            button: !0,
            buttonSelector: ".edit",
            maintainWidth: !0,
            dropdowns: {},
            edit: function() {},
            save: function() {},
            cancel: function() {}
        };
    e.prototype = {
        init: function() {
            this.editing = !1, this.options.dblclick && a(this.element).css("cursor", "pointer").bind("dblclick", this.toggle.bind(this)), this.options.button && a(this.options.buttonSelector, this.element).bind("click", this.toggle.bind(this))
        },
        toggle: function(a) {
            a.preventDefault(), this.editing = !this.editing, this.editing ? this.edit() : this.save()
        },
        edit: function() {
            var b = this,
                c = {};
            a("td[data-field]", this.element).each(function() {
                var d, e = a(this).data("field"),
                    f = a(this).text(),
                    g = a(this).width();
                if (c[e] = f, a(this).empty(), b.options.maintainWidth && a(this).width(g), e in b.options.dropdowns) {
                    d = a("<select class='form-control'></select>");
                    for (var h = 0; h < b.options.dropdowns[e].length; h++) a("<option></option>").text(b.options.dropdowns[e][h]).appendTo(d);
                    d.val(f).data("old-value", f).dblclick(b._captureEvent)
                } else d = a('<input type="text" class="form-control" />').val(f).data("old-value", f).dblclick(b._captureEvent);
                d.appendTo(this), b.options.keyboard && d.keydown(b._captureKey.bind(b))
            }), this.options.edit.bind(this.element)(c)
        },
        save: function() {
            var b = {};
            a("td[data-field]", this.element).each(function() {
                var c = a(":input", this).val();
                b[a(this).data("field")] = c, a(this).empty().text(c)
            }), this.options.save.bind(this.element)(b)
        },
        cancel: function() {
            var b = {};
            a("td[data-field]", this.element).each(function() {
                var c = a(":input", this).data("old-value");
                b[a(this).data("field")] = c, a(this).empty().text(c)
            }), this.options.cancel.bind(this.element)(b)
        },
        _captureEvent: function(a) {
            a.stopPropagation()
        },
        _captureKey: function(a) {
            13 === a.which ? (this.editing = !1, this.save()) : 27 === a.which && (this.editing = !1, this.cancel())
        }
    }, a.fn[f] = function(b) {
        return this.each(function() {
            a.data(this, "plugin_" + f) || a.data(this, "plugin_" + f, new e(this, b))
        })
    }
}(jQuery, window, document);

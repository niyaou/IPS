var ls;
(function (ls) {
    var AIAjax = (function (_super) {
        __extends(AIAjax, _super);
        function AIAjax() {
            _super.call(this);
            this.next_request_headers = {};
            this.next_override_mime = "";
            this.datas = {};
            this.cookiesHash = {};
            if (AIAjax._instance != null) {
                throw new Error("AIWebSocket 为单例！！！");
            }
            this.name = "Ajax";
            AIAjax._instance = this;
        }
        var d = __define,c=AIAjax,p=c.prototype;
        d(AIAjax, "instance"
            ,function () {
                if (this._instance == null)
                    this._instance = new AIAjax();
                return this._instance;
            }
        );
        p.initialize = function () {
            this._lastData = "";
            this.curTag = "";
            this._progress = 0;
            this.timeout = -1;
        };
        p.doRequest = function (tag, url, method, data) {
            if (data === void 0) { data = null; }
            var self = this;
            var errorFunc = function () {
                self.curTag = this.requestTag;
                self.dispatchEvent(new ls.TriggerEvent(ls.TriggerEvent.TRIGGER, self.onAjaxRequestError, { tag: this.requestTag }));
            };
            var progressFunc = function (e) {
                if (!e["lengthComputable"])
                    return;
                self._progress = e.loaded / e.total;
                self.dispatchEvent(new ls.TriggerEvent(ls.TriggerEvent.TRIGGER, self.onAjaxRequestProress, { tag: this.requestTag }));
            };
            try {
                var request;
                if (this.isWindowsPhone8)
                    request = new ActiveXObject("Microsoft.XMLHTTP");
                else
                    request = new XMLHttpRequest();
                request.requestTag = tag;
                request.requestURL = url;
                request.requestData = data;
                request.withCredentials = true;
                request.onreadystatechange = function () {
                    if (this.readyState === 4) {
                        self.curTag = this.requestTag;
                        var curData = "";
                        if (this.responseText)
                            curData = this.responseText.replace(/\r\n/g, "\n");
                        else
                            curData = "";
                        self._lastData = curData;
                        if (self.datas[this.requestTag] == null) {
                            self.datas[this.requestTag] = { tag: this.requestTag, data: curData };
                        }
                        else
                            self.datas[this.requestTag].data = curData;
                        if (this.status >= 400)
                            self.dispatchEvent(new ls.TriggerEvent(ls.TriggerEvent.TRIGGER, self.onAjaxRequestError, { tag: this.requestTag }));
                        else {
                            if (self._lastData.length > 0) {
                                self.dispatchEvent(new ls.TriggerEvent(ls.TriggerEvent.TRIGGER, self.onAjaxRequestComplete, { tag: this.requestTag }));
                            }
                        }
                    }
                };
                if (!this.isWindowsPhone8) {
                    request.onerror = errorFunc;
                    request.ontimeout = errorFunc;
                    request.onabort = errorFunc;
                    request.onprogress = progressFunc;
                }
                request.open(method, url);
                if (!this.isWindowsPhone8) {
                    if (this.timeout >= 0 && typeof request["timeout"] != "undefined") {
                        request["timeout"] = this.timeout;
                    }
                }
                try {
                    request.responseType = "text";
                }
                catch (e) {
                }
                if (data) {
                    if (request["setRequestHeader"] && !this.next_request_headers.hasOwnProperty("Content-Type")) {
                        request["setRequestHeader"]("Content-Type", "application/x-www-form-urlencoded");
                    }
                }
                if (request["setRequestHeader"]) {
                    for (var p in this.next_request_headers) {
                        if (this.next_request_headers.hasOwnProperty(p)) {
                            try {
                                request["setRequestHeader"](p, this.next_request_headers[p]);
                            }
                            catch (e) { }
                        }
                    }
                    this.next_request_headers = {};
                }
                if (this.next_override_mime && request["overrideMimeType"]) {
                    try {
                        request["overrideMimeType"](this.next_override_mime);
                    }
                    catch (e) { }
                    this.next_override_mime = "";
                }
                if (data) {
                    request.send(data);
                }
                else
                    request.send();
            }
            catch (e) {
                errorFunc();
            }
        };
        p.onAjaxRequestComplete = function (event) {
            return { instances: [this], status: event.getStatus("tag") };
        };
        p.onAjaxRequestError = function (event) {
            return { instances: [this], status: event.getStatus("tag") };
        };
        p.onAjaxRequestProress = function (event) {
            return { instances: [this], status: event.getStatus("tag") };
        };
        p.ajaxSendToURL = function (tag, url, data, method) {
            if (method === void 0) { method = "POST"; }
            this.doRequest(tag, ls.eval_e(url), method, ls.eval_e(data));
        };
        p.requestFromURL = function (tag, url) {
            this.doRequest(tag, ls.eval_e(url), "GET");
        };
        p.setRequestHeader = function (header, url) {
            this.next_request_headers[header] = ls.eval_e(url);
        };
        p.setRequestTimeout = function (timeout) {
            this.timeout = ls.eval_e(timeout) * 1000;
        };
        p.overrideMIMEType = function (m) {
            this.next_override_mime = m;
        };
        d(p, "lastData"
            ,function () {
                return this._lastData;
            }
        );
        d(p, "progress"
            ,function () {
                return this._progress;
            }
        );
        p.getData = function (tag) {
            var ajaxData = this.datas[tag];
            if (ajaxData) {
                return ajaxData.data;
            }
            return "";
        };
        p.saveToJSON = function () {
            var o = _super.prototype.saveToJSON.call(this);
            return o;
        };
        p.loadFromJSON = function (o) {
            if (o) {
                _super.prototype.loadFromJSON.call(this, o);
            }
        };
        return AIAjax;
    }(ls.AIObject));
    ls.AIAjax = AIAjax;
    egret.registerClass(AIAjax,'ls.AIAjax');
    var OnAjaxRequestCompleteEvent = (function (_super) {
        __extends(OnAjaxRequestCompleteEvent, _super);
        function OnAjaxRequestCompleteEvent() {
            _super.call(this);
        }
        var d = __define,c=OnAjaxRequestCompleteEvent,p=c.prototype;
        return OnAjaxRequestCompleteEvent;
    }(ls.BaseEvent));
    ls.OnAjaxRequestCompleteEvent = OnAjaxRequestCompleteEvent;
    egret.registerClass(OnAjaxRequestCompleteEvent,'ls.OnAjaxRequestCompleteEvent');
    var OnAjaxRequestErrorEvent = (function (_super) {
        __extends(OnAjaxRequestErrorEvent, _super);
        function OnAjaxRequestErrorEvent() {
            _super.call(this);
        }
        var d = __define,c=OnAjaxRequestErrorEvent,p=c.prototype;
        return OnAjaxRequestErrorEvent;
    }(ls.BaseEvent));
    ls.OnAjaxRequestErrorEvent = OnAjaxRequestErrorEvent;
    egret.registerClass(OnAjaxRequestErrorEvent,'ls.OnAjaxRequestErrorEvent');
    var OnAjaxRequestProressEvent = (function (_super) {
        __extends(OnAjaxRequestProressEvent, _super);
        function OnAjaxRequestProressEvent() {
            _super.call(this);
        }
        var d = __define,c=OnAjaxRequestProressEvent,p=c.prototype;
        return OnAjaxRequestProressEvent;
    }(ls.BaseEvent));
    ls.OnAjaxRequestProressEvent = OnAjaxRequestProressEvent;
    egret.registerClass(OnAjaxRequestProressEvent,'ls.OnAjaxRequestProressEvent');
})(ls || (ls = {}));

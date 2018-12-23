var ls;
(function (ls) {
    var AIFunction = (function (_super) {
        __extends(AIFunction, _super);
        function AIFunction() {
            _super.call(this);
            this.funcStacks = {};
            if (AIFunction._instance != null) {
                throw new Error("AIFunction 为单例！！！");
            }
            this.name = "Function";
            AIFunction._instance = this;
        }
        var d = __define,c=AIFunction,p=c.prototype;
        d(AIFunction, "instance"
            ,function () {
                if (this._instance == null)
                    this._instance = new AIFunction();
                return this._instance;
            }
        );
        p.getCurrentFunc = function (tag) {
            if (tag == null) {
                ls.assert(true, "调用的函数名不能为空！！！");
                return;
            }
            var fs;
            if (this.funcStacks[tag] == null) {
                var fs = new FuncStackEntry();
                this.funcStacks[tag] = fs;
            }
            return this.funcStacks[tag];
        };
        p.compareParameter = function (compareParameterEvent) {
            var fs = this.getCurrentFunc(compareParameterEvent.tag);
            if (!fs)
                return { instances: [this], status: false };
            var index = ls.eval_e(compareParameterEvent.index);
            if (index < 0 || index >= fs.params.length)
                return { instances: [this], status: false };
            return { instances: [this], status: ls.compare(fs.params[index], compareParameterEvent.operationType, compareParameterEvent.value) };
        };
        p.onFunction = function (event) {
            return { instances: [this], status: event.getStatus("tag") };
        };
        p.callExpression = function (expression) {
        };
        p.callFunction = function (tag, params) {
            var _params;
            if (params !== undefined && params !== null) {
                var paramsStr = params.toString();
                if (paramsStr.indexOf(',') != -1)
                    _params = params.split(",");
                else
                    _params = [params];
            }
            var fs = this.getCurrentFunc(tag);
            fs.tag = tag;
            fs.retVal = 0;
            fs.params = (params !== undefined && params !== null) ? _params : [];
            this.dispatchEvent(new ls.TriggerEvent(ls.TriggerEvent.TRIGGER, this.onFunction, { tag: tag }));
        };
        p.setReturnValue = function (tag, value) {
            var fs = this.getCurrentFunc(tag);
            if (fs)
                fs.retVal = ls.eval_e(value);
        };
        p.param = function (tag, index) {
            var index = Math.floor(index);
            var fs = this.getCurrentFunc(tag);
            if (fs) {
                if (index < 0 || index > fs.params.length)
                    return 0;
                return fs.params[index];
            }
            return 0;
        };
        p.call = function (tag) {
            var args = [];
            for (var _i = 1; _i < arguments.length; _i++) {
                args[_i - 1] = arguments[_i];
            }
            var fs = this.getCurrentFunc(tag);
            fs.params.length = 0;
            fs.params = fs.params.concat(args);
            this.dispatchEvent(new ls.TriggerEvent(ls.TriggerEvent.TRIGGER, this.onFunction, { tag: tag }));
        };
        p.loadFromJSON = function (o) {
        };
        p.saveToJSON = function () {
        };
        return AIFunction;
    }(ls.AIObject));
    ls.AIFunction = AIFunction;
    egret.registerClass(AIFunction,'ls.AIFunction');
    var FuncStackEntry = (function () {
        function FuncStackEntry() {
            this.retVal = 0;
            this.params = [];
        }
        var d = __define,c=FuncStackEntry,p=c.prototype;
        return FuncStackEntry;
    }());
    egret.registerClass(FuncStackEntry,'FuncStackEntry');
    var CompareParameterEvent = (function (_super) {
        __extends(CompareParameterEvent, _super);
        function CompareParameterEvent() {
            _super.call(this);
        }
        var d = __define,c=CompareParameterEvent,p=c.prototype;
        return CompareParameterEvent;
    }(ls.BaseEvent));
    ls.CompareParameterEvent = CompareParameterEvent;
    egret.registerClass(CompareParameterEvent,'ls.CompareParameterEvent');
    var OnFunctionCallEvent = (function (_super) {
        __extends(OnFunctionCallEvent, _super);
        function OnFunctionCallEvent() {
            _super.call(this);
        }
        var d = __define,c=OnFunctionCallEvent,p=c.prototype;
        return OnFunctionCallEvent;
    }(ls.BaseEvent));
    ls.OnFunctionCallEvent = OnFunctionCallEvent;
    egret.registerClass(OnFunctionCallEvent,'ls.OnFunctionCallEvent');
})(ls || (ls = {}));

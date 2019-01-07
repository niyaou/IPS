var ls;
(function (ls) {
    var SpeedMoinitorBehavior = (function (_super) {
        __extends(SpeedMoinitorBehavior, _super);
        function SpeedMoinitorBehavior() {
            _super.call(this);
        }
        var d = __define,c=SpeedMoinitorBehavior,p=c.prototype;
        p.onCreate = function () {
            this._speed = 0;
            this.pre_x = this.inst.x;
            this.pre_y = this.inst.y;
            this._angle = this.inst.angle;
            this._lastAngle = this.inst.angle;
            this._isMoving = false;
        };
        p.tick = function () {
            var dt = 1 / 60;
            var dx = this.inst.x - this.pre_x;
            var dy = this.inst.y - this.pre_y;
            this.pre_x = this.inst.x;
            this.pre_y = this.inst.y;
            if (dx !== 0 || dy !== 0) {
                this._speed = Math.sqrt(dx * dx + dy * dy) / dt;
                this._angle = ls.MathUtils.toAngle(Math.atan2(dx, dx));
                this._lastSpeed = this._speed;
                this._lastAngle = this._angle;
            }
            else {
                this._speed = 0;
            }
            if (!this._isMoving && this._speed != 0) {
                this._isMoving = true;
                this.dispatchEvent(new ls.TriggerEvent(ls.TriggerEvent.TRIGGER, this.onMovingStart));
            }
            else if (this._isMoving && this._speed === 0) {
                this._isMoving = false;
                this.dispatchEvent(new ls.TriggerEvent(ls.TriggerEvent.TRIGGER, this.onMovingStop));
            }
        };
        p.onMovingStart = function (event) {
            return { instances: [this.inst], status: true };
        };
        p.onMovingStop = function (event) {
            return { instances: [this.inst], status: true };
        };
        p.isMoving = function (event) {
            return { instances: [this.inst], status: this._isMoving };
        };
        p.speedMoinitorCompareSpeed = function (event) {
            return { instances: [this.inst], status: ls.compare(this._speed, event.operationType, event.speed) };
        };
        p.speedMoinitorCompareAngle = function (event) {
            return { instances: [this.inst], status: ls.compare(this._angle, event.operationType, event.angle) };
        };
        d(p, "speed"
            ,function () {
                return this._speed;
            }
        );
        d(p, "angle"
            ,function () {
                return this._angle;
            }
        );
        d(p, "lastSpeed"
            ,function () {
                return this._lastSpeed;
            }
        );
        d(p, "lastAngle"
            ,function () {
                return this._lastAngle;
            }
        );
        p.clone = function () {
            var bh = _super.prototype.clone.call(this);
            return bh;
        };
        return SpeedMoinitorBehavior;
    }(ls.BaseBehavior));
    ls.SpeedMoinitorBehavior = SpeedMoinitorBehavior;
    egret.registerClass(SpeedMoinitorBehavior,'ls.SpeedMoinitorBehavior');
    var OnMovingStartEvent = (function (_super) {
        __extends(OnMovingStartEvent, _super);
        function OnMovingStartEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=OnMovingStartEvent,p=c.prototype;
        return OnMovingStartEvent;
    }(ls.BaseEvent));
    ls.OnMovingStartEvent = OnMovingStartEvent;
    egret.registerClass(OnMovingStartEvent,'ls.OnMovingStartEvent');
    var OnMovingStopEvent = (function (_super) {
        __extends(OnMovingStopEvent, _super);
        function OnMovingStopEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=OnMovingStopEvent,p=c.prototype;
        return OnMovingStopEvent;
    }(ls.BaseEvent));
    ls.OnMovingStopEvent = OnMovingStopEvent;
    egret.registerClass(OnMovingStopEvent,'ls.OnMovingStopEvent');
    var IsMovingEvent = (function (_super) {
        __extends(IsMovingEvent, _super);
        function IsMovingEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=IsMovingEvent,p=c.prototype;
        return IsMovingEvent;
    }(ls.BaseEvent));
    ls.IsMovingEvent = IsMovingEvent;
    egret.registerClass(IsMovingEvent,'ls.IsMovingEvent');
    var SpeedMoinitorCompareSpeedEvent = (function (_super) {
        __extends(SpeedMoinitorCompareSpeedEvent, _super);
        function SpeedMoinitorCompareSpeedEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=SpeedMoinitorCompareSpeedEvent,p=c.prototype;
        return SpeedMoinitorCompareSpeedEvent;
    }(ls.BaseEvent));
    ls.SpeedMoinitorCompareSpeedEvent = SpeedMoinitorCompareSpeedEvent;
    egret.registerClass(SpeedMoinitorCompareSpeedEvent,'ls.SpeedMoinitorCompareSpeedEvent');
    var SpeedMoinitorCompareAngleEvent = (function (_super) {
        __extends(SpeedMoinitorCompareAngleEvent, _super);
        function SpeedMoinitorCompareAngleEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=SpeedMoinitorCompareAngleEvent,p=c.prototype;
        return SpeedMoinitorCompareAngleEvent;
    }(ls.BaseEvent));
    ls.SpeedMoinitorCompareAngleEvent = SpeedMoinitorCompareAngleEvent;
    egret.registerClass(SpeedMoinitorCompareAngleEvent,'ls.SpeedMoinitorCompareAngleEvent');
})(ls || (ls = {}));

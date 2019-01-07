var ls;
(function (ls) {
    var CarBehavior = (function (_super) {
        __extends(CarBehavior, _super);
        function CarBehavior() {
            _super.call(this);
            this.s = 0;
            this.leftKey = false;
            this.rightKey = false;
            this.upKey = false;
            this.downKey = false;
            this.simup = false;
            this.simdown = false;
            this.simleft = false;
            this.simright = false;
        }
        var d = __define,c=CarBehavior,p=c.prototype;
        p.onCreate = function () {
            this.maxSpeed = ls.eval_e(this.maxSpeed);
            this.acceleration = ls.eval_e(this.acceleration);
            this.deceleration = ls.eval_e(this.deceleration);
            this.steerSpeed = ls.eval_e(this.steerSpeed);
            this.driftRecover = ls.eval_e(this.driftRecover);
            this.friction = ls.eval_e(this.friction);
            this.setAngle = ls.eval_e(this.setAngle);
            this.defaultControls = ls.eval_e(this.defaultControls);
            this.enabled = ls.eval_e(this.enabled);
            this.upKey = false;
            this.downKey = false;
            this.leftKey = false;
            this.rightKey = false;
            this.ignoreInput = false;
            this.simup = false;
            this.simdown = false;
            this.simleft = false;
            this.simright = false;
            this.s = 0;
            this.a = this.inst.angle;
            this.m = this.inst.angle;
            if (window.addEventListener) {
                window.addEventListener("keydown", onKeyDown.bind(this), true);
                window.addEventListener("keyup", onKeyUp.bind(this), true);
            }
            function onKeyDown(event) {
                if (this.defaultControls !== 1)
                    return;
                switch (event.keyCode) {
                    case 37:
                        event.preventDefault();
                        this.leftKey = true;
                        break;
                    case 38:
                        event.preventDefault();
                        this.upKey = true;
                        break;
                    case 39:
                        event.preventDefault();
                        this.rightKey = true;
                        break;
                    case 40:
                        event.preventDefault();
                        this.downKey = true;
                        break;
                }
            }
            function onKeyUp(event) {
                if (this.defaultControls != 1)
                    return;
                switch (event.keyCode) {
                    case 37:
                        event.preventDefault();
                        this.leftKey = false;
                        break;
                    case 38:
                        event.preventDefault();
                        this.upKey = false;
                        break;
                    case 39:
                        event.preventDefault();
                        this.rightKey = false;
                        break;
                    case 40:
                        event.preventDefault();
                        this.downKey = false;
                        break;
                }
            }
        };
        p.tick = function () {
            var dt = 1 / 60;
            var left = this.leftKey || this.simleft;
            var right = this.rightKey || this.simright;
            var up = this.upKey || this.simup;
            var down = this.downKey || this.simdown;
            this.simleft = false;
            this.simright = false;
            this.simup = false;
            this.simdown = false;
            if (this.setAngle === 1 && this.inst.angle !== this.lastAngle) {
                this.a = this.inst.angle;
                this.m = this.inst.angle;
                this.lastAngle = this.inst.angle;
            }
            var collobj = ls.CollisionUtils.testOverlapSolid(this.inst);
            if (collobj) {
                if (!ls.CollisionUtils.pushOutSolidNearest(this.inst))
                    return;
            }
            if (this.ignoreInput) {
                left = false;
                right = false;
                up = false;
                down = false;
            }
            if (up && !down) {
                this.s += this.acceleration * dt;
                if (this.s > this.maxSpeed)
                    this.s = this.maxSpeed;
            }
            if (down && !up) {
                this.s -= this.deceleration * dt;
                if (this.s < -this.maxSpeed)
                    this.s = -this.maxSpeed;
            }
            if (down === up) {
                if (this.s > 0) {
                    this.s -= this.deceleration * dt * 0.1;
                    if (this.s < 0)
                        this.s = 0;
                }
                else if (this.s < 0) {
                    this.s += this.deceleration * dt * 0.1;
                    if (this.s > 0)
                        this.s = 0;
                }
            }
            if (this.s < 0) {
                var temp = left;
                left = right;
                right = temp;
            }
            if (left && !right)
                this.a = ls.MathUtils.clampAngle(this.a - this.steerSpeed * dt * (Math.abs(this.s) / this.maxSpeed));
            if (right && !left)
                this.a = ls.MathUtils.clampAngle(this.a + this.steerSpeed * dt * (Math.abs(this.s) / this.maxSpeed));
            var recover = this.driftRecover * dt;
            var diff = ls.MathUtils.angleDiff(ls.MathUtils.toRadian(this.a), ls.MathUtils.toRadian(this.m));
            if (diff > Math.PI / 2)
                recover += (diff - Math.PI / 2);
            if (diff <= recover)
                this.m = ls.MathUtils.clampAngle(this.a);
            else if (ls.MathUtils.angleClockWise(ls.MathUtils.toRadian(this.a), ls.MathUtils.toRadian(this.m)))
                this.m = ls.MathUtils.clampAngle(this.m + ls.MathUtils.toAngle(recover));
            else
                this.m = ls.MathUtils.clampAngle(this.m - ls.MathUtils.toAngle(recover));
            this.lastX = this.inst.x;
            this.lastY = this.inst.y;
            if (this.s !== 0) {
                this.inst.x += Math.cos(ls.MathUtils.toRadian(this.m)) * this.s * dt;
                this.inst.y += Math.sin(ls.MathUtils.toRadian(this.m)) * this.s * dt;
                if (this.setAngle === 1) {
                    this.inst.angle = this.a;
                    this.lastAngle = this.a;
                }
                var hitsolid = ls.CollisionUtils.testOverlapSolid(this.inst);
                if (hitsolid) {
                    this.s = Math.abs(this.s);
                    this.m = ls.MathUtils.toAngle(ls.CollisionUtils.calculateSolidBounceAngle(this.inst, this.lastX, this.lastY));
                    this.inst.x += Math.cos(ls.MathUtils.toRadian(this.m)) * this.s * dt;
                    this.inst.y += Math.sin(ls.MathUtils.toRadian(this.m)) * this.s * dt;
                    this.s *= (1 - this.friction);
                    if (!ls.CollisionUtils.pushOutSolid(this.inst, Math.cos(ls.MathUtils.toRadian(this.m)), Math.sin(ls.MathUtils.toRadian(this.m)), Math.max(this.s * 2.5 * dt, 30))) {
                        ls.CollisionUtils.pushOutSolidNearest(this.inst, 100);
                    }
                }
            }
            else if (this.setAngle === 1 && this.inst.angle !== this.a) {
                this.inst.angle = this.a;
                this.lastAngle = this.a;
                if (ls.CollisionUtils.testOverlapSolid(this.inst))
                    ls.CollisionUtils.pushOutSolidNearest(this.inst, 100);
            }
        };
        p.compareSpeed = function (event) {
            return { instances: [this.inst], status: ls.compare(this.s, event.operationType, event.speed) };
        };
        p.isMoving = function (event) {
            return { instances: [this.inst], status: this.s !== 0 };
        };
        p.setMaxSpeed = function (maxSpeed) {
            this.maxSpeed = ls.eval_e(maxSpeed);
            if (this.maxSpeed < 0)
                this.maxSpeed = 0;
        };
        p.setSpeed = function (speed) {
            speed = ls.eval_e(speed);
            if (speed < -this.maxSpeed)
                speed = -this.maxSpeed;
            if (speed > this.maxSpeed)
                speed = this.maxSpeed;
            this.s = speed;
        };
        p.setSteerSpeed = function (steerSpeed) {
            this.steerSpeed = ls.eval_e(steerSpeed);
        };
        p.setAcceleration = function (acceleration) {
            this.acceleration = ls.eval_e(acceleration);
            if (this.acceleration < 0)
                this.acceleration = 0;
        };
        p.setDeceleration = function (deceleration) {
            this.deceleration = ls.eval_e(deceleration);
            if (this.deceleration < 0)
                this.deceleration = 0;
        };
        p.setDriftRecover = function (driftRecover) {
            this.driftRecover = ls.eval_e(driftRecover);
        };
        p.setFriction = function (friction) {
            this.friction = ls.eval_e(friction);
        };
        p.setSimulateControl = function (ctrl) {
            ctrl = ls.eval_e(ctrl);
            switch (ctrl) {
                case 0:
                    this.simleft = true;
                    break;
                case 1:
                    this.simright = true;
                    break;
                case 2:
                    this.simup = true;
                    break;
                case 3:
                    this.simdown = true;
                    break;
            }
        };
        p.setEnabled = function (value) {
            this.enabled = ls.eval_e(value);
        };
        p.stop = function () {
            this.s = 0;
        };
        p.setIgnoringInput = function (value) {
            this.ignoreInput = ls.eval_e(value);
        };
        d(p, "speed"
            ,function () {
                return this.s;
            }
        );
        p.saveToJSON = function () {
            var o = _super.prototype.saveToJSON.call(this);
            o.maxSpeed = this.maxSpeed;
            o.acceleration = this.acceleration;
            o.deceleration = this.deceleration;
            o.steerSpeed = this.steerSpeed;
            o.driftRecover = this.driftRecover;
            o.friction = this.friction;
            o.setAngle = this.setAngle;
            o.defaultControls = this.defaultControls;
            return o;
        };
        p.loadFromJSON = function (o) {
            if (o) {
                this.maxSpeed = o.maxSpeed;
                this.acceleration = o.acceleration;
                this.deceleration = o.deceleration;
                this.steerSpeed = o.steerSpeed;
                this.driftRecover = o.driftRecover;
                this.friction = o.friction;
                this.setAngle = o.setAngle;
                this.defaultControls = o.defaultControls;
                _super.prototype.loadFromJSON.call(this, o);
            }
        };
        p.clone = function () {
            var bh = _super.prototype.clone.call(this);
            bh.maxSpeed = this.maxSpeed;
            bh.acceleration = this.acceleration;
            bh.deceleration = this.deceleration;
            bh.steerSpeed = this.steerSpeed;
            bh.driftRecover = this.driftRecover;
            bh.friction = this.friction;
            bh.setAngle = this.setAngle;
            bh.defaultControls = this.defaultControls;
            return bh;
        };
        return CarBehavior;
    }(ls.BaseBehavior));
    ls.CarBehavior = CarBehavior;
    egret.registerClass(CarBehavior,'ls.CarBehavior');
    var CarBehaviorCompareSpeedEvent = (function (_super) {
        __extends(CarBehaviorCompareSpeedEvent, _super);
        function CarBehaviorCompareSpeedEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=CarBehaviorCompareSpeedEvent,p=c.prototype;
        return CarBehaviorCompareSpeedEvent;
    }(ls.BaseEvent));
    ls.CarBehaviorCompareSpeedEvent = CarBehaviorCompareSpeedEvent;
    egret.registerClass(CarBehaviorCompareSpeedEvent,'ls.CarBehaviorCompareSpeedEvent');
    var CarBehaviorIsMovingEvent = (function (_super) {
        __extends(CarBehaviorIsMovingEvent, _super);
        function CarBehaviorIsMovingEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=CarBehaviorIsMovingEvent,p=c.prototype;
        return CarBehaviorIsMovingEvent;
    }(ls.BaseEvent));
    ls.CarBehaviorIsMovingEvent = CarBehaviorIsMovingEvent;
    egret.registerClass(CarBehaviorIsMovingEvent,'ls.CarBehaviorIsMovingEvent');
})(ls || (ls = {}));

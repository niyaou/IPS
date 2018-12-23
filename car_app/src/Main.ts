class Main extends egret.DisplayObjectContainer {
    private preIcon: egret.Bitmap;
    private preIconMask: egret.Bitmap;
    private beMaskShape: egret.Shape;
    private sourceMaskHeight: number = 0;
    private isHasLimitResource: boolean;
    public constructor() {
        super();
        this.addEventListener(egret.Event.ADDED_TO_STAGE, this.onAddToStage, this);
    }

    private onAddToStage(event: egret.Event) {
        ls.GameUILayer.init(this.stage);
        this.onPreResourceLoad();
    }

    /**
     * 预加载资源
     */
    private onPreResourceLoad(): void {
        RES.addEventListener(RES.ResourceEvent.CONFIG_COMPLETE, this.onConfigComplete, this);
        RES.loadConfig("resource/resource.json", "resource/");
    }

    //配置加载完成
    private onConfigComplete(event: RES.ResourceEvent): void {
        RES.removeEventListener(RES.ResourceEvent.CONFIG_COMPLETE, this.onConfigComplete, this);

        var groups: RES.ResourceItem[] = RES.getGroupByName("preload");
        if (groups == null || groups.length == 0) {
            this.onMergeResourceLoad();
        } else {
            //开始加载组
            RES.addEventListener(RES.ResourceEvent.GROUP_COMPLETE, this.onPreloadGroupComplete, this);
            RES.addEventListener(RES.ResourceEvent.GROUP_LOAD_ERROR, this.onPreloadGroupError, this);
            RES.loadGroup("preload");
        }
    }

    //预览图标加载完成    
    private onPreloadGroupComplete(event: RES.ResourceEvent): void {
        if (event.groupName == "preload") {
            RES.removeEventListener(RES.ResourceEvent.GROUP_COMPLETE, this.onPreloadGroupComplete,  this);
            RES.removeEventListener(RES.ResourceEvent.GROUP_COMPLETE, this.onPreloadGroupError, this);
            //开始图标渲染            
            this.onPreloadRender();
        }
    }

    private onPreloadRender(): void{
        var stageW: number                  = ls.GameUILayer.stage.stageWidth;
        var stageH: number                  = ls.GameUILayer.stage.stageHeight;
        this.preIcon                         = new egret.Bitmap();
        var preTexture: egret.Texture       = RES.getRes("egretIcon");
        this.preIcon.texture                 = preTexture;
        //缩小为40%
        var scaleRate: number               = 0.4;
        var stageScale: number              = stageW / stageH;
        var preIconScale: number            = preTexture.textureWidth / preTexture.textureHeight;
        var realScale: number;
        if (stageScale > preIconScale)
            realScale                       =  scaleRate * stageH/preTexture.textureHeight;//以高度为准
         else 
            realScale                       = scaleRate * stageW / preTexture.textureWidth;//以宽度为准
        
        this.preIcon.width                   = realScale * preTexture.textureWidth;
        this.preIcon.height                  = realScale * preTexture.textureHeight;
        this.preIcon.x                       = (stageW - this.preIcon.width) >> 1;
        this.preIcon.y                       = ((stageH - this.preIcon.height) >> 1)-30;
        ls.GameUILayer.preContainer.addChild(this.preIcon);

        this.preIconMask                    = new egret.Bitmap();
        this.preIconMask.texture            = RES.getRes("egretIcon");
        this.preIconMask.width              = this.preIcon.width;
        this.preIconMask.height             = this.preIcon.height;
        this.preIconMask.x                  = this.preIcon.x;
        this.preIconMask.y                  = this.preIcon.y;
        ls.GameUILayer.preContainer.addChild(this.preIconMask);

        this.beMaskShape                    = new egret.Shape();
        this.beMaskShape.graphics.beginFill(0x32d0d9);
        this.beMaskShape.graphics.drawRect(0, 0, this.preIconMask.width, 1);
        this.beMaskShape.graphics.endFill();
        this.beMaskShape.x                  = this.preIconMask.x;
        this.beMaskShape.y                  = this.preIconMask.y;
        this.sourceMaskHeight               = this.preIconMask.height;
        ls.GameUILayer.preContainer.addChild(this.beMaskShape);
        
        this.beMaskShape.mask = this.preIconMask;  

        var limitGroups: RES.ResourceItem[] = RES.getGroupByName("limit");
        this.isHasLimitResource = !(limitGroups == null || limitGroups.length == 0);

        //所有加载的顺序
        /**
         * 1、配置组 config
         * 2、合并组 resourceMerge
         * 3、限制组 limit
         * 4、组件组 components
         */
        this.onConfigResourceLoad();
    }

    //预加载图标加载错误    
    private onPreloadGroupError(event: RES.ResourceEvent): void{
        if (event.groupName == "preload") {
            RES.removeEventListener(RES.ResourceEvent.GROUP_COMPLETE, this.onPreloadGroupComplete,  this);
            RES.removeEventListener(RES.ResourceEvent.GROUP_COMPLETE, this.onPreloadGroupError,     this);

            this.onConfigResourceLoad();
        }
    }

    //预加载所有配置文件
    private onConfigResourceLoad(): void{
        var groups: RES.ResourceItem[] = RES.getGroupByName("config");
        if (groups == null || groups.length == 0)
        {
            //如果没有合并组，则加载限制组
            this.onMergeResourceLoad();
        } else {
            RES.addEventListener(RES.ResourceEvent.GROUP_COMPLETE,      this.onConfigResourceLoadComplete,   this);
            RES.addEventListener(RES.ResourceEvent.GROUP_LOAD_ERROR,    this.onConfigResourceLoadError,      this);
            RES.addEventListener(RES.ResourceEvent.GROUP_PROGRESS,      this.onConfigResourceProgress,       this);
            RES.loadGroup("config");
        }
    }

    private onConfigResourceLoadComplete(event: RES.ResourceEvent): void{
        RES.removeEventListener(RES.ResourceEvent.GROUP_COMPLETE,   this.onConfigResourceLoadComplete,   this);
        RES.removeEventListener(RES.ResourceEvent.GROUP_LOAD_ERROR, this.onConfigResourceLoadError,      this);
        RES.removeEventListener(RES.ResourceEvent.GROUP_PROGRESS,   this.onConfigResourceProgress, this);
        var groups: RES.ResourceItem[] = RES.getGroupByName("config");
        if (groups == null || groups.length == 0)
            return;

        for (var i: number = 0; i < groups.length; i++){
            var resourceItem: RES.ResourceItem = groups[i];
            ls.ResCache.configResouces[resourceItem.name] = RES.getRes(resourceItem.name);
        }

        this.onMergeResourceLoad();
    }

    private onConfigResourceLoadError(event: RES.ResourceEvent): void{
        RES.removeEventListener(RES.ResourceEvent.GROUP_COMPLETE,   this.onConfigResourceLoadComplete,   this);
        RES.removeEventListener(RES.ResourceEvent.GROUP_LOAD_ERROR, this.onConfigResourceLoadError,      this);
        RES.removeEventListener(RES.ResourceEvent.GROUP_PROGRESS, this.onConfigResourceProgress, this);
        ls.assert(true, "配置文件加载错误！！！");
    }

    private onConfigResourceProgress(event: RES.ResourceEvent): void{
        this.updateMask(event.itemsLoaded, event.itemsTotal, 0);
    }

    //加载合并的位图    
    private onMergeResourceLoad(): void {
        var groups: RES.ResourceItem[] = RES.getGroupByName("resourceMerge");
        if (groups == null || groups.length == 0)
        {
            //如果没有合并组，则加载限制组
            this.onLimitResourceLoad();
        } else {
            RES.addEventListener(RES.ResourceEvent.GROUP_COMPLETE,      this.onMergeResourceLoadComplete,   this);
            RES.addEventListener(RES.ResourceEvent.GROUP_LOAD_ERROR,    this.onMergeResourceLoadError,      this);
            RES.addEventListener(RES.ResourceEvent.GROUP_PROGRESS,      this.onMergeResourceProgress,       this);
            RES.loadGroup("resourceMerge");
        }
    }

    private onMergeResourceLoadComplete(event: RES.ResourceEvent): void {
        RES.removeEventListener(RES.ResourceEvent.GROUP_COMPLETE,   this.onMergeResourceLoadComplete,   this);
        RES.removeEventListener(RES.ResourceEvent.GROUP_LOAD_ERROR, this.onMergeResourceLoadError,      this);
        RES.removeEventListener(RES.ResourceEvent.GROUP_PROGRESS,   this.onMergeResourceProgress,       this);

        var groups: RES.ResourceItem[] = RES.getGroupByName("resourceMerge");
        if (groups == null || groups.length == 0)
            return;

        for (var i: number = 0; i < groups.length; i++){
            var resourceItem: RES.ResourceItem = groups[i];
            if (resourceItem.type == "json") {
                var jsonData: any               = RES.getRes(resourceItem.name);
                var imageFile: string           = jsonData.file;
                var imageTexture: egret.Texture = RES.getRes(imageFile);
                this.decodeMerge(jsonData, imageTexture);
            }
        }

        this.onLimitResourceLoad();
    }

    private decodeMerge(json: any, texture: egret.Texture) {
        if (json && texture) {
            var spriteSheetFrames: any          = json.frames;
            var spritesheet: egret.SpriteSheet  = new egret.SpriteSheet(texture);
            for (var key in spriteSheetFrames) {
                var spriteObject: any           = spriteSheetFrames[key];
                var itemTexture: egret.Texture  = spritesheet.createTexture(key,spriteObject.x,spriteObject.y,spriteObject.sourceW,spriteObject.sourceH,spriteObject.offX,spriteObject.offY,spriteObject.sourceW,spriteObject.sourceH);
                ls.LayoutDecoder.spriteSheetDatas["resource/userAsset/" + key] = { offsetX: spriteObject.offX, offsetY: spriteObject.offY, texture: itemTexture };
            }
        }
    }

    private onMergeResourceLoadError(event: RES.ResourceEvent): void {
         //加载限制大小组
        this.onLimitResourceLoad();
    }

    private onMergeResourceProgress(event: RES.ResourceEvent): void {
        this.updateMask(event.itemsLoaded, event.itemsTotal, 1);
    }

    private updateMask(itemsLoaded: number, itemsTotal: number,type:number): void{
        if (this.beMaskShape) {
            this.beMaskShape.graphics.clear();
            this.beMaskShape.graphics.beginFill(0x32d0d9);
            if (type == 0) {
                if (this.isHasLimitResource)
                    this.beMaskShape.graphics.drawRect(0, 0, this.preIconMask.width, itemsLoaded / itemsTotal * this.sourceMaskHeight * 0.7);
                else
                    this.beMaskShape.graphics.drawRect(0, 0, this.preIconMask.width, itemsLoaded / itemsTotal * this.sourceMaskHeight);
            } else {
                this.beMaskShape.graphics.drawRect(0, 0, this.preIconMask.width, (itemsLoaded / itemsTotal+0.7) * this.sourceMaskHeight); 
            }
           
            this.beMaskShape.graphics.endFill();
        }
    }

    private onLimitResourceLoad():void{
        var groups: RES.ResourceItem[] = RES.getGroupByName("limit");
        if (groups == null || groups.length == 0) {
            this.onComponentsResourceLoad();
        } else {
            RES.addEventListener(RES.ResourceEvent.GROUP_COMPLETE,      this.onLimitResourceLoadComplete,   this);
            RES.addEventListener(RES.ResourceEvent.GROUP_LOAD_ERROR,    this.onLimitResourceLoadError,      this);
            RES.addEventListener(RES.ResourceEvent.GROUP_PROGRESS,      this.onLimitResourceProgress,       this);
            RES.loadGroup("limit");
        }
    }

    private onLimitResourceLoadComplete(event: RES.ResourceEvent): void {
        RES.removeEventListener(RES.ResourceEvent.GROUP_COMPLETE,   this.onLimitResourceLoadComplete, this);
        RES.removeEventListener(RES.ResourceEvent.GROUP_LOAD_ERROR, this.onLimitResourceLoadError, this);
        RES.removeEventListener(RES.ResourceEvent.GROUP_PROGRESS,   this.onLimitResourceProgress, this);

        var groups: RES.ResourceItem[] = RES.getGroupByName("limit");
        if (groups == null || groups.length == 0)
            return;

        for (var i: number = 0; i < groups.length; i++){
            var resourceItem: RES.ResourceItem  = groups[i];
            var imageTexture: egret.Texture     = RES.getRes(resourceItem.name);
            ls.LayoutDecoder.spriteSheetDatas["resource/userAsset/"+resourceItem.name]     = { offsetX: 0, offsetY: 0, texture: imageTexture };
        }
        this.onComponentsResourceLoad();
    }

    private onLimitResourceLoadError(event: RES.ResourceEvent): void {
        this.onComponentsResourceLoad();
    }

    private onLimitResourceProgress(event: RES.ResourceEvent): void {
        this.updateMask(event.itemsLoaded, event.itemsTotal, 2);
    }

     private onComponentsResourceLoad():void{
        var groups: RES.ResourceItem[] = RES.getGroupByName("components");
        if (groups == null || groups.length == 0) {
            this.onStart();
        } else {
            RES.addEventListener(RES.ResourceEvent.GROUP_COMPLETE,      this.onComponentsResourceLoadComplete,   this);
            RES.addEventListener(RES.ResourceEvent.GROUP_LOAD_ERROR,    this.onComponentsResourceLoadError,      this);
            RES.addEventListener(RES.ResourceEvent.GROUP_PROGRESS,      this.onComponentsResourceProgress,       this);
            RES.loadGroup("components");
        }
    }

    private onComponentsResourceLoadComplete(event: RES.ResourceEvent): void {
        RES.removeEventListener(RES.ResourceEvent.GROUP_COMPLETE,   this.onComponentsResourceLoadComplete, this);
        RES.removeEventListener(RES.ResourceEvent.GROUP_LOAD_ERROR, this.onComponentsResourceLoadError, this);
        RES.removeEventListener(RES.ResourceEvent.GROUP_PROGRESS,   this.onComponentsResourceProgress, this);

        var groups: RES.ResourceItem[] = RES.getGroupByName("components");
        if (groups == null || groups.length == 0)
            return;

        for (var i: number = 0; i < groups.length; i++){
            var resourceItem: RES.ResourceItem  = groups[i];
            var data:any     = RES.getRes(resourceItem.name);
            ls.ResCache.componentResources[resourceItem.url] = data;
        }

         //启动
         this.onStart();
    }

    private onComponentsResourceLoadError(event: RES.ResourceEvent): void {
        this.onStart();
    }

    private onComponentsResourceProgress(event: RES.ResourceEvent): void {
        this.updateMask(event.itemsLoaded, event.itemsTotal, 3);
    }

    private onStart(): void{
        ls.GameUILayer.preContainer.alpha = 1;
        var self: Main = this;
        var tween: egret.Tween = egret.Tween.get(ls.GameUILayer.preContainer);
        tween.wait(500);
        tween.to({"alpha":0},250).call(function ():void {
            if (ls.GameUILayer.preContainer.parent)
                ls.GameUILayer.preContainer.parent.removeChild(ls.GameUILayer.preContainer);
            ls.StartUp.execute(self);
        })        
    }
    
}
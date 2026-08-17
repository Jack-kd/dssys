.class Lcom/sigmob/sdk/mraid2/c$1;
.super Lcom/sigmob/sdk/mraid2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/sigmob/sdk/mraid2/c;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/c;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/i;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->c(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->b(Lcom/sigmob/sdk/mraid2/c;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->c(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->b(Lcom/sigmob/sdk/mraid2/c;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid2/d;->a(Lorg/json/JSONObject;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->c(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/d;->d()V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->d(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->d(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->e(Lcom/sigmob/sdk/mraid2/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->d(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->e(Lcom/sigmob/sdk/mraid2/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid2/d;->c(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->f(Lcom/sigmob/sdk/mraid2/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->g(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->g(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->h(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/mraid2/a;->a(Lcom/sigmob/sdk/mraid2/c;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/c$1;->a()V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/mraid2/c$1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid2/c$1;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->b(Lcom/sigmob/sdk/mraid2/c;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->c(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/d;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/c$1;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->c(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/d;

    move-result-object p1

    new-instance p2, Lcom/sigmob/sdk/mraid2/y;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/mraid2/y;-><init>(Lcom/sigmob/sdk/mraid2/c$1;)V

    const-string v0, "javascript:(function () {\n    var uniqueId = 1;\n    var mraid = window.mraid = {};\n    var bridge = window.mraidbridge = {\n        nativeCallQueue: [],\n        nativeCallInFlight: false,\n        queue: {},\n    };\n    var bidResponse = {};\n    var bindData = undefined;\n    var isViewable = false;\n    var exposure = 0;\n    var sdkVersion = undefined;\n    var listeners = {};\n    var screenSize = {\n        width: 0,\n        height: 0\n    };\n    var currentAppOrientation = {\n        orientation: 0,\n        locked: true\n    };\n    var isNullOrEmpty = function(param) {\n        return param === null || param === undefined;\n    };\n    var EVENTS = mraid.EVENTS = {\n        error: \'error\',\n        info: \'info\',\n        ready: \'ready\',\n        viewableChange: \'viewableChange\',\n        sizeChange: \'sizeChange\',\n        exposureChange: \'exposureChange\',\n        playStateChanged: \'playStateChanged\',\n        loadStateChanged: \'loadStateChanged\',\n        currentTime: \'currentTime\',\n        playEnd: \'playEnd\',\n        pageChanged: \'pageChanged\',\n        downloadStateChanged: \'downloadStateChanged\',\n        safeAreaInsetsChange: \'safeAreaInsetsChange\',\n    };\n\n    bridge.setScreenSize = function (val) {\n       if (screenSize.width != val.width || screenSize.height != val.height) {\n            screenSize = val;\n            broadcastEvent(listeners, EVENTS.sizeChange, val.width, val.height);\n        }\n    };\n    bridge.setIsViewable = function (val) {\n        if ((val ^ isViewable) == 1) {\n            isViewable = val;\n            broadcastEvent(listeners, EVENTS.viewableChange, isViewable)\n        }\n    };\n    bridge.setExposureChange = function (val) {\n        if (val != exposure) {\n            exposure = val;\n            broadcastEvent(listeners, EVENTS.exposureChange, val)\n        }\n    };\n    bridge.setBindData = function (val) { bindData = val; };\n    bridge.sdkVersion = function (val) { sdkVersion = val; }\n    bridge.orientation = function (val) { currentAppOrientation = val; }\n    bridge.onStorageChanged = function (evt) {\n        const key = \'storage_\' + evt.key;\n        broadcastEvent(listeners, key, evt);\n    };\n    bridge.setBidResponse = function (val) {\n        bidResponse = val;\n    };\n    bridge.onChangeEvent = function(evt) {\n        broadcastEvent(listeners, evt.event, evt.data);\n    };\n    bridge.setvdReadyToPlay = function (val) {\n        let vpaid = bridge.queue[val.uniqueId]\n        broadcastEvent(vpaid.handlers, EVENTS.ready, val);\n    };\n    bridge.setvdPlayStateChanged = function (val) {\n        let vpaid = bridge.queue[val.uniqueId]\n        broadcastEvent(vpaid.handlers, EVENTS.playStateChanged, val);\n    };\n    bridge.setvdLoadStateChanged = function (val) {\n        let vpaid = bridge.queue[val.uniqueId]\n        broadcastEvent(vpaid.handlers, EVENTS.loadStateChanged, val);\n    };\n    bridge.setvdPlayCurrentTime = function (val) {\n        let vpaid = bridge.queue[val.uniqueId]\n        broadcastEvent(vpaid.handlers, EVENTS.currentTime, val);\n    };\n    bridge.setvdPlayToEnd = function (val) {\n        let vpaid = bridge.queue[val.uniqueId]\n        broadcastEvent(vpaid.handlers, EVENTS.playEnd, val);\n    };\n    bridge.setvdPlayError = function (val) {\n        let vpaid = bridge.queue[val.uniqueId]\n        broadcastEvent(vpaid.handlers, EVENTS.error, val);\n    };\n    bridge.onChangeFired = function (val) {\n        let obj = bridge.queue[val.uniqueId];\n        broadcastEvent(obj.handlers, val.event, val.args);\n    };\n    bridge.notify = function (val) {\n        console.log(val)\n        if (val.event.startsWith(\'fire_\')) {\n            broadcastEvent(listeners, val.event)\n            return\n        }\n\n        if (val.event.startsWith(\'dispatch_\')) {\n            broadcastEvent(listeners, val.event)\n            mraid.removeEventListener(val.event);\n            return\n        }\n\n        if (val.event.startsWith(\'animation_\')) {\n            broadcastEvent(listeners, val.event)\n            mraid.removeEventListener(val.event);\n            return\n        }\n\n        broadcastEvent(listeners, val.event, val.message)\n        mraid.removeEventListener(val.event);\n    };\n    bridge.notifyPageChangeEvent = function (val) {\n        broadcastEvent(listeners, EVENTS.pageChanged, val)\n    };\n    bridge.notifyApkDownloadStateEvent = function (val) {\n        broadcastEvent(listeners, EVENTS.downloadStateChanged, val)\n    };\n    bridge.setWVFinished = function (val) {\n        let web = bridge.queue[val.uniqueId]\n        broadcastEvent(web.handlers, EVENTS.ready);\n    };\n    bridge.setWVError = function (val) {\n        let web = bridge.queue[val.uniqueId]\n        broadcastEvent(web.handlers, EVENTS.error, val.error);\n    };\n    bridge.postMessage = function (msg) {\n        var msgStr = JSON.stringify(msg);\n        sigandroid.postMessage(msgStr);\n    }\n    bridge.syncMessage = function (msg) {\n        if (this.nativeCallInFlight) {\n            this.nativeCallQueue.push(msg)\n        } else {\n            this.nativeCallInFlight = true;\n            var msgStr = JSON.stringify(msg);\n            sigandroid.postMessage(msgStr);\n        }\n    }\n    bridge.nativeCallComplete = function (command) {\n        console.log(\'nativeCallCompletecommand = \' + command)\n        if (this.nativeCallQueue.length === 0) {\n            this.nativeCallInFlight = false;\n            return\n        }\n        var nextCall = this.nativeCallQueue.shift();\n        bridge.postMessage(nextCall);\n    };\n    bridge.onMotionChanged = function (evt) {\n        const key = \'motion_\' + evt.type+evt.event;\n        delete evt.type;\n        delete evt.event;\n        broadcastEvent(listeners, key, evt);\n    };\n    var changeHandlers = {\n        onChangeEvent: bridge.onChangeEvent,\n        vdReadyToPlay: bridge.setvdReadyToPlay,\n        vdPlayStateChanged: bridge.setvdPlayStateChanged,\n        vdLoadStateChanged: bridge.setvdLoadStateChanged,\n        vdPlayCurrentTime: bridge.setvdPlayCurrentTime,\n        vdPlayToEnd: bridge.setvdPlayToEnd,\n        vdPlayError: bridge.setvdPlayError,\n        wvFinished: bridge.setWVFinished,\n        wvError: bridge.setWVError,\n        screenSize: bridge.setScreenSize,\n        viewable: bridge.setIsViewable,\n        exposure: bridge.setExposureChange,\n        bindData: bridge.setBindData,\n        sdkVersion: bridge.sdkVersion,\n        orientation: bridge.orientation,\n        storageChanged: bridge.onStorageChanged,\n        bidResponse: bridge.setBidResponse,\n        notify: bridge.notify,\n        motionChanged: bridge.onMotionChanged,\n        onChangeFired: bridge.onChangeFired,\n    };\n    bridge.fireChangeEvent = function (properties) {\n        for (let p in properties) {\n            if (properties.hasOwnProperty(p)) {\n                let handler = changeHandlers[p];\n                try {\n                    handler(properties[p])\n                } catch (error) {\n                    console.log(\'error: \' + error.message);\n                }\n            }\n        }\n    };\n\n    var Storage = function (type) {\n        this.setItem = function (key, value) {\n            sigandroid.storage(JSON.stringify({ event: \'setItem\', args: { type, key, value } }))\n        };\n        this.getItem = function (key) {\n            var result = sigandroid.storage(JSON.stringify({ event: \'getItem\', args: { type, key } }));\n            return result\n        };\n        this.removeItem = function (key) {\n            sigandroid.storage(JSON.stringify({ event: \'removeItem\', args: { type, key } }))\n        };\n        this.clear = function () {\n            sigandroid.storage(JSON.stringify({ event: \'clear\', args: { type } }))\n        };\n        this.length = function () {\n            var result = sigandroid.storage(JSON.stringify({ event: \'length\', args: { type } }));\n            return parseInt(result)\n        };\n        this.addEventListener = function (key, callback) {\n            sigandroid.storage(JSON.stringify({ event: \'addEventListener\', args: { type, key } }))\n            mraid.addEventListener(\'storage_\' + key, callback);\n        };\n    };\n    var EventListeners = function (event) {\n        this.event = event;\n        this.count = 0;\n        var listeners = {};\n        this.add = function (func) {\n            var id = String(func);\n            if (!listeners[id]) {\n                listeners[id] = func;\n                this.count++\n            }\n        };\n        this.remove = function (func) {\n            var id = String(func);\n            if (listeners[id]) {\n                listeners[id] = null;\n                delete listeners[id];\n                this.count--;\n                return true\n            } else {\n                return false\n            }\n        };\n        this.removeAll = function () {\n            for (var id in listeners) {\n                if (listeners.hasOwnProperty(id)) this.remove(listeners[id])\n            }\n        };\n        this.broadcast = function (args) {\n            for (var id in listeners) {\n                if (listeners.hasOwnProperty(id)) listeners[id].apply(mraid, args)\n            }\n        };\n        this.toString = function () {\n            var out = [event, \':\'];\n            for (var id in listeners) {\n                if (listeners.hasOwnProperty(id)) out.push(\'|\', id, \'|\')\n            }\n            return out.join(\'\')\n        }\n    };\n    var contains = function (value, array) {\n        if (value.indexOf(\'motion_\') == 0) {\n            return true;\n        }\n        if (value.indexOf(\'storage_\') == 0) {\n            return true;\n        }\n        if (value.indexOf(\'fire_\') == 0) {\n            return true;\n        }\n        if (value.indexOf(\'dispatch_\') == 0) {\n            return true;\n        }\n        if (value.indexOf(\'animation_\') == 0) {\n            return true;\n        }\n        if (value.indexOf(\'open_\') == 0) {\n            return true;\n        }\n        if (value.indexOf(\'lance_\') == 0) {\n            return true;\n        }\n\n        for (var i in array) {\n            if (array[i] === value) return true\n        }\n        return false\n    };\n    var broadcastEvent = function () {\n        var args = new Array(arguments.length);\n        var l = arguments.length;\n        for (var i = 0; i < l; i++) args[i] = arguments[i];\n        var handlers = args.shift();\n        var event = args.shift();\n        if (handlers[event]) {\n            handlers[event].broadcast(args)\n        }\n    };\n    var addEventListener = function (handlers, event, listener) {\n        if (!event || !listener) {\n            broadcastEvent(listeners, EVENTS.error, \'Both event and listener are required.\', \'addEventListener\')\n        } else {\n            if (!handlers[event]) {\n                handlers[event] = new EventListeners(event)\n            }\n            handlers[event].add(listener)\n        }\n    };\n    var removeEventListener = function (funs, event, listener) {\n        if (!event) {\n            broadcastEvent(listeners, EVENTS.error, \'Event is required.\', \'removeEventListener\');\n            return\n        }\n        if (listener) {\n            var success = false;\n            if (funs[event]) {\n                success = funs[event].remove(listener)\n            }\n            if (!success) {\n                broadcastEvent(listeners, EVENTS.error, \'Listener not currently registered for event.\', \'removeEventListener\');\n                return\n            }\n        } else if (funs && funs[event]) {\n            funs[event].removeAll()\n        }\n        if (funs[event] && funs[event].count === 0) {\n            funs[event] = null;\n            delete funs[event]\n        }\n    };\n    \n    var Motion = function(type) {\n        this.uniqId = \'motion_\' + (uniqueId++) + \'_\' + new Date().getTime();\n        this.event = \'motion\';\n        var events = [];\n        this.handlers = {};\n        bridge.queue[this.uniqId] = this;\n        this.init = function (sensitivity, widgetIntervalTime, shakeTimeThreshold, shakeTriggerType) {\n            bridge.syncMessage({ event: this.event, subEvent: \'init\', args: { uniqueId: this.uniqId, type, sensitivity, widgetIntervalTime, shakeTimeThreshold, shakeTriggerType} });\n        };\n        this.initSensitivityRaw = function (sensitivity_raw) {\n            bridge.syncMessage({ event: this.event, subEvent: \'init_sensitivity_raw\', args: { uniqueId: this.uniqId, type, sensitivity_raw } });\n        };\n        this.destroy = function () {\n            bridge.syncMessage({ event: this.event, subEvent: \'destroy\',args: { uniqueId: this.uniqId, type } });\n        };\n        this.addEventListener = function (event,listener) {\n            addEventListener(this.handlers, event, listener);\n        };\n        this.removeEventListener = function (event, listener) {\n            removeEventListener(this.handlers, event, listener);\n        };\n    };\n    bridge.fireReadyEvent = function () { broadcastEvent(listeners, EVENTS.ready) };\n    bridge.frame = function (event, uniqId, x, y, w, h) {\n        if (!w || !h) {\n            broadcastEvent(listeners, EVENTS.error, \'x,y,w,h is required!\', \'frame\');\n        } else {\n            bridge.syncMessage({ event: event, subEvent: \'frame\', args: { uniqueId: uniqId, frame: { x, y, w, h } } });\n        }\n    }\n    var safeAreaInsets = {\n        top: 0,\n        left: 0,\n        bottom: 0,\n        right: 0\n    };\n    bridge.setSafeAreaInsets = function(top, left, bottom, right) {\n        if (safeAreaInsets.top == top && safeAreaInsets.left == left && safeAreaInsets.bottom == bottom && safeAreaInsets.right == right) {\n            return;\n        }\n        safeAreaInsets = {\n            top: top,\n            left: left,\n            bottom: bottom,\n            right: right\n          };\n         broadcastEvent(listeners,EVENTS.safeAreaInsetsChange, top, left, bottom, right);\n    };\n    mraid.getSafeAreaInsets = function() {\n        return {\n            top: safeAreaInsets.top,\n            left: safeAreaInsets.left,\n            bottom: safeAreaInsets.bottom,\n            right: safeAreaInsets.right\n        };\n    };\n   mraid.MotionView = function(type) {\n        this.uniqId = \'motion_view_\' + (uniqueId++) + \'_\' + new Date().getTime();\n        this.event = \'motionView\';\n        this.rect = {x: 0, y: 0, w: 0, h: 0};\n        this.handlers = {};\n        bridge.queue[this.uniqId] = this;\n        bridge.syncMessage({ event: this.event, subEvent: \'init\', args: { uniqueId: this.uniqId, type } });\n        this.frame = function (x, y, w, h) {\n            this.rect = {x, y, w, h};\n            bridge.frame(this.event, this.uniqId, x, y, w, h);\n        };\n        this.hidden = function (hidden) {\n            bridge.syncMessage({ event: this.event, subEvent: \'hidden\', args: { uniqueId: this.uniqId, hidden } });\n        };\n        this.sensitivity = function (sensitivity) {\n            bridge.syncMessage({ event: this.event, subEvent: \'sensitivity\', args: { uniqueId: this.uniqId, sensitivity } });\n        };\n        this.sensitivityRaw = function (sensitivity_raw) {\n            bridge.syncMessage({ event: this.event, subEvent: \'sensitivity_raw\', args: { uniqueId: this.uniqId, sensitivity_raw } });\n        };\n        this.widgetIntervalTime = function (widgetIntervalTime) {\n            bridge.syncMessage({ event: this.event, subEvent: \'widgetIntervalTime\', args: { uniqueId: this.uniqId, widgetIntervalTime } });\n        };\n        this.shakeTimeThreshold = function (shakeTimeThreshold) {\n            bridge.syncMessage({ event: this.event, subEvent: \'shakeTimeThreshold\', args: { uniqueId: this.uniqId, shakeTimeThreshold } });\n        };\n        this.shakeTriggerType = function (shakeTriggerType) {\n            bridge.syncMessage({ event: this.event, subEvent: \'shakeTriggerType\', args: { uniqueId: this.uniqId, shakeTriggerType } });\n        };\n        this.start = function () {\n            bridge.syncMessage({ event: this.event, subEvent: \'start\', args: { uniqueId: this.uniqId } });\n        };\n        this.destroy = function () {\n            bridge.syncMessage({ event: this.event, subEvent: \'destroy\', args: { uniqueId: this.uniqId } });\n        };\n        this.addEventListener = function (event, listener) {\n            addEventListener(this.handlers, event, listener);\n        };\n        this.removeEventListener = function (event, listener) {\n            removeEventListener(this.handlers, event, listener);\n        };\n    };\n    mraid.Vpaid = function (val) {\n        if (typeof (val) == \'object\' && val.uniqId) {\n            this.uniqId = val.uniqId;\n            uniqueId++;\n            this.rect = val.rect;\n        } else {\n            this.uniqId = \'vd_\' + (uniqueId++) + \'_\' + new Date().getTime();\n            bridge.syncMessage({ event: \'vpaid\', subEvent: \'init\', args: { uniqueId: this.uniqId } });\n            this.rect = { x: 0, y: 0, w: 0, h: 0 };\n        }\n        bridge.queue[this.uniqId] = this;\n        this.handlers = {};\n        this.assetURL = function (URL,useProxy = true) {\n            bridge.syncMessage({ event: \'vpaid\', subEvent: \'assetURL\', args: { uniqueId: this.uniqId, URL: URL,proxy:useProxy} });\n        };\n        this.play = function () {\n            bridge.syncMessage({ event: \'vpaid\', subEvent: \'play\', args: { uniqueId: this.uniqId } });\n        };\n        this.replay = function () {\n            bridge.syncMessage({ event: \'vpaid\', subEvent: \'replay\', args: { uniqueId: this.uniqId } });\n        };\n        this.pause = function () {\n            bridge.syncMessage({ event: \'vpaid\', subEvent: \'pause\', args: { uniqueId: this.uniqId } });\n        };\n        this.stop = function () {\n            bridge.syncMessage({ event: \'vpaid\', subEvent: \'stop\', args: { uniqueId: this.uniqId } });\n        };\n        this.muted = function (flag) {\n            bridge.syncMessage({ event: \'vpaid\', subEvent: \'muted\', args: { uniqueId: this.uniqId, muted: flag } });\n        };\n        this.seek = function (val) {\n            bridge.syncMessage({ event: \'vpaid\', subEvent: \'seek\', args: { uniqueId: this.uniqId, seekTime: val } });\n        };\n        this.frame = function (x, y, w, h) {\n            this.rect = { x, y, w, h };\n            bridge.frame(\'vpaid\', this.uniqId, x, y, w, h)\n        };\n        this.addEventListener = function (event, listener) {\n            addEventListener(this.handlers, event, listener);\n        };\n        this.removeEventListener = function (event, listener) {\n            removeEventListener(this.handlers, event, listener);\n        };\n    };\n\n    function callNativeFunc(kwargs, func) {\n        if (kwargs === undefined) return undefined;\n        if (func === undefined) return undefined;\n        kwargs[\'func\'] = func;\n        var returnStr = sigandroid.func(JSON.stringify(kwargs));\n        if (returnStr) {\n            try {\n                return JSON.parse(returnStr)\n            } catch (e) {\n                return JSON.stringify(returnStr)\n            }\n        } else {\n            console.log(\'-------callNativeFunc return null-----\');\n        }\n    };\n\n    mraid.Color = function(red, green, blue, alpha) {\n        this.red = red;\n        this.green = green;\n        this.blue = blue;\n        this.alpha = alpha;\n    };\n   mraid.backgroundColor = function (color) {\n        bridge.postMessage({ event: \'backgroundColor\', args: { red: color.red, green: color.green, blue: color.blue, alpha: color.alpha } });\n    };\n   mraid.uniqId = function () {\n        return sigandroid.getUniqueId()\n    };    mraid.Timer = function (interval, repeats = false, callback) {\n        if (!interval || interval <= 0) return;\n        this.uniqId = \'timer_\' + (uniqueId++) + \'_\' + new Date().getTime();\n        bridge.syncMessage({\n            event: \'timer\',\n            subEvent: \'init\',\n            args: {\n                uniqueId: this.uniqId,\n                interval: interval,\n                repeats: repeats\n            }\n        });\n        this.fire = function () {\n            mraid.addEventListener(\'fire_\' + this.uniqId, callback);\n            bridge.syncMessage({ event: \'timer\', subEvent: \'fire\', args: { uniqueId: this.uniqId } });\n        };\n        this.invalidate = function () {\n            mraid.removeEventListener(\'fire_\' + this.uniqId, callback);\n            bridge.syncMessage({ event: \'timer\', subEvent: \'invalidate\', args: { uniqueId: this.uniqId } });\n        };\n        this.pause = function () {\n            bridge.syncMessage({ event: \'timer\', subEvent: \'pause\', args: { uniqueId: this.uniqId } });\n        };\n        this.resume = function () {\n            bridge.syncMessage({ event: \'timer\', subEvent: \'resume\', args: { uniqueId: this.uniqId } });\n        };\n    };\n    mraid.WebView = function () {\n        this.uniqId = \'wv_\' + (uniqueId++) + \'_\' + new Date().getTime();\n        this.event = \'webView\'\n        this.handlers = {}\n        this.rect = { x: 0, y: 0, w: 0, h: 0 };\n        var args = undefined;\n        if (arguments) {\n            args = JSON.stringify(arguments);\n        }\n        bridge.queue[this.uniqId] = this;\n        bridge.syncMessage({ event: this.event, subEvent: \'init\', args: { uniqueId: this.uniqId, args } });\n        this.frame = function (x, y, w, h) {\n            this.rect = { x, y, w, h };\n            bridge.frame(this.event, this.uniqId, x, y, w, h)\n        };\n        this.loadURL = function (url) {\n            bridge.syncMessage({ event: this.event, subEvent: \'loadURL\', args: { uniqueId: this.uniqId, url } });\n        };\n        this.loadURLByPackage = function (URL) {\n            bridge.syncMessage({ event: this.event, subEvent: \'loadURLByPackage\', args: { uniqueId: this.uniqId, URL } });\n        };\n        this.loadHTMLString = function (html) {\n            bridge.syncMessage({ event: this.event, subEvent: \'loadHTMLString\', args: { uniqueId: this.uniqId, html } });\n        };\n        this.loadById = function (id) {\n            bridge.syncMessage({ event: this.event, subEvent: \'loadId\', args: { uniqueId: this.uniqId, id } });\n        };\n        this.reload = function (id) {\n            bridge.syncMessage({ event: this.event, subEvent: \'reload\', args: { uniqueId: this.uniqId } });\n        };\n        this.stopLoading = function (id) {\n            bridge.syncMessage({ event: this.event, subEvent: \'stopLoading\', args: { uniqueId: this.uniqId } });\n        };\n        this.addEventListener = function (event, listener) {\n            addEventListener(this.handlers, event, listener);\n        };\n        this.removeEventListener = function (event, listener) {\n            removeEventListener(this.handlers, event, listener);\n        };\n    };\n    mraid.motion = {\n        shake: new Motion(\'shake\'),\n        twist: new Motion(\'twist\'),\n        slope: new Motion(\'slope\'),\n        swing: new Motion(\'swing\'),\n    };\n    mraid.blurEffect = {\n        init: function (color) {\n            bridge.syncMessage({ event: \'blurEffect\', subEvent: \'init\', args: { red: color.red, green: color.green, blue: color.blue, alpha: color.alpha } });\n        },\n        destroy: function () {\n            bridge.syncMessage({ event: \'blurEffect\', subEvent: \'destroy\' });\n        },\n    };\n    mraid.localStorage = new Storage(1);\n    mraid.sessionStorage = new Storage(2);\n    mraid.getVersion = () => sdkVersion;\n    mraid.getOs = () => 2;\n    mraid.isViewable = () => isViewable;\n    mraid.getState = () => state;\n    mraid.version = () => \'2.2\'; \n     mraid.getScreenSize = () => screenSize;\n    mraid.getCurrentAppOrientation = () => currentAppOrientation;\n    mraid.bidResponse = () => bidResponse;\n    mraid.visible = function(visible) {\n        bridge.syncMessage({ event: \'visible\', args: {visible} });\n    };\n    mraid.feedbackByVid = function(vid) {\n        bridge.postMessage({ event: \'feedbackByVid\', args: { vid } });\n    };\n    mraid.openByVid = function(vid, data, cbObj = {}) {\n        var event = \'open_\' + new Date().getTime();\n        if (cbObj.onSuccess) {\n            mraid.addEventListener(event + \"_success\", cbObj.onSuccess)\n        }\n        if (cbObj.onFailed) {\n            mraid.addEventListener(event + \"_failed\", cbObj.onFailed)\n        }\n        bridge.syncMessage({ event: \'openByVid\', args: {vid, event, data} });\n    };\n    mraid.open = function (url, data, cbObj = {}) {\n        var event = \'open_\' + new Date().getTime();\n        if (cbObj.onSuccess) {\n            mraid.addEventListener(event + \"_success\", cbObj.onSuccess)\n        }\n        if (cbObj.onFailed) {\n            mraid.addEventListener(event + \"_failed\", cbObj.onFailed)\n        }\n        bridge.postMessage({ event: \'open\', args: { url, event, data } })\n    };\n   mraid.subscribe = function(uniqId, event, listener) {\n        if (isNullOrEmpty(uniqId) || isNullOrEmpty(event)) {\n            broadcastEvent(listeners, EVENTS.error, \'Both event and uniqId are required.\', \'subscribe\');\n            return;\n        }\n        let key = uniqId + \'~\' + event;\n        addEventListener(listeners, key, listener);\n        if (listeners[key] && listeners[key].count == 1) {\n            bridge.syncMessage({ event: \'subscribe\', args: { uniqId, event } });\n        }\n    };\n    mraid.unsubscribe = function(uniqId, event, listener) {\n        if (isNullOrEmpty(uniqId) || isNullOrEmpty(event)) {\n            broadcastEvent(listeners, EVENTS.error, \'Both event and uniqId are required.\', \'unsubscribe\');\n            return;\n        }\n        let key = uniqId + \'~\' + event;\n        removeEventListener(listeners, key, listener);\n        if (isNullOrEmpty(listeners[key])) {\n            bridge.syncMessage({ event: \'unsubscribe\', args: { uniqId, event } });\n        }\n    };\n    mraid.publish = function(event, data) {\n        if (isNullOrEmpty(event)) {\n            broadcastEvent(listeners, EVENTS.error, \'event are required.\', \'publish\');\n            return;\n        }\n        bridge.syncMessage({ event: \'publish\', args: {event, data} });\n    };\n    mraid.ready = function () { bridge.postMessage({ event: \'ready\' }); };\n    mraid.close = function () { bridge.postMessage({ event: \'close\' }) };\n    mraid.unload = function () { bridge.postMessage({ event: \'unload\' }) }\n    mraid.addSubview = function (val) { bridge.syncMessage({ event: \'addSubview\', args: { uniqueId: val.uniqId } }); };\n    mraid.belowSubview = function (val) { bridge.syncMessage({ event: \'belowSubview\', args: { uniqueId: val.uniqId } }); };\n    mraid.useScrollView = function (flag) { bridge.syncMessage({ event: \'useScrollView\', args: { flag } }); };\n    mraid.touchStart = function (x, y) { bridge.postMessage({ event: \'touchStart\', args: { x, y } }); };\n    mraid.touchMove = function (x, y) { bridge.postMessage({ event: \'touchMove\', args: { x, y } }); };\n    mraid.touchEnd = function (x, y) { bridge.postMessage({ event: \'touchEnd\', args: { x, y } }); };\n    mraid.dispatchAfter = function (delay, callback) {\n        var event = \'dispatch_\' + new Date().getTime();\n        mraid.addEventListener(event, callback);\n        bridge.postMessage({ event: \'dispatch_after\', args: { \'event\': event, \'delay\': delay } });\n    };\n    mraid.useCustomClose = function (flag) { bridge.postMessage({ event: \'useCustomClose\', args: { flag } }) };\n    mraid.addEventListener = function (event, listener) { addEventListener(listeners, event, listener); };\n    mraid.removeEventListener = function (event, listener) { removeEventListener(listeners, event, listener); };\n    mraid.arguments = () => bindData;\n    mraid.reward = function () {\n        bridge.postMessage({ event: \'reward\' })\n    };\n    mraid.addMacro = function (key, value, vid) {\n        callNativeFunc({ event: \'addMacro\', args: { key, value, vid } }, \'handleMacro:\')\n    };\n    mraid.addAllMacros = function (maps, vid) {\n        callNativeFunc({ event: \'addAllMacros\', args: { maps, vid } }, \'handleMacro:\')\n    };\n    mraid.removeMacro = function (key, vid) {\n        callNativeFunc({ event: \'removeMacro\', args: { key, vid } }, \'handleMacro:\')\n    };\n    mraid.clearMacro = function (vid) {\n        callNativeFunc({ event: \'clearMacro\', args: { vid } }, \'handleMacro:\')\n    };\n    mraid.getMacro = function (key, vid) {\n        return callNativeFunc({ event: \'getMacro\', args: { key, vid } }, \'handleMacro:\')\n    };\n    mraid.addDclog = function (data, vid) {\n        return callNativeFunc({ data, vid }, \'addDclog:\')\n    };\n    mraid.device = function () {\n        var device = sigandroid.getDeviceInfo()\n        if (device) {\n            return JSON.parse(device)\n        }\n    };\n    mraid.tracking = function (urls, event, data) {\n        if (urls.length > 0 || event) {\n            return callNativeFunc({ urls, event, data }, \'tracking:\')\n        }\n    };\n    mraid.android = {\n        getApKDownloadProcess: function (vid) {\n            var process = sigandroidapk.getApKDownloadProcessId(vid);\n            return process\n        },\n        addEventListener: function (event, vid, listener) {\n            sigandroidapk.registerDownloadEvent(vid);\n            addEventListener(listeners, event, listener);\n        },\n        removeEventListener: function (event, listener) {\n            removeEventListener(listeners, event, listener);\n        }\n    };\n\n    mraid.loadAd = function (data, callback) {\n        var event = \'lance_\' + new Date().getTime();\n        mraid.addEventListener(event, callback);\n        bridge.postMessage({ event: \'mraidLoadAd\', args: { \'event\': event, \'data\': data } });\n    };\n\n    mraid.setCurPlayAd = function (vid) { bridge.postMessage({ event: \'curPlayAd\', args: { vid } }); };\n\n    mraid.animation = function (duration, obj, from, to, completion) {\n        const fromRect = { x: from.x, y: from.y, w: from.w, h: from.h };\n        const toRect = { x: to.x, y: to.y, w: to.w, h: to.h };\n        var event = \'animation_\' + new Date().getTime();\n        mraid.addEventListener(event, completion);\n        bridge.postMessage({ event: \'animation\', args: { \'event\': event, duration, uniqueId: obj.uniqId, from: fromRect, to: toRect } });\n    };\n\n    (function () {\n        bridge.postMessage({ event: \'mraidJsLoaded\' })\n    })();\n\n    console.log(\'mraid ---- successed!!!\')\n}());\n"

    invoke-virtual {p1, v0, p2}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " error:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object p1

    const/4 p4, 0x0

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v7, 0x0

    const-string v0, "h5_error"

    const-string v1, "mraid2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->d(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->e(Lcom/sigmob/sdk/mraid2/c;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->d(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/c;->e(Lcom/sigmob/sdk/mraid2/c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, p3}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 8

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v7, 0x0

    const-string v0, "h5_error"

    const-string v1, "mraid2"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->d(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->e(Lcom/sigmob/sdk/mraid2/c;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->d(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/c;->e(Lcom/sigmob/sdk/mraid2/c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, v0, p3}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 8

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v7, 0x0

    const-string v0, "h5_error"

    const-string v1, "mraid2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, LB/a;->a(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sigmob/windad/WindAdError;->RENDER_PROCESS_GONE_WITH_CRASH:Lcom/sigmob/windad/WindAdError;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sigmob/windad/WindAdError;->RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/sigmob/windad/WindAdError;

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleRenderProcessGone "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/c;->g(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/a;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/c;->g(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sigmob/sdk/mraid2/a;->a(Lcom/sigmob/windad/WindAdError;)V

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->b()V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v3, p2, v0}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$1;->c:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v2

    :cond_6
    :goto_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v2
.end method

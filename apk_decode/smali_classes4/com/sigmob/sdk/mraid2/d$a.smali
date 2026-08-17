.class Lcom/sigmob/sdk/mraid2/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sigmob/sdk/mraid2/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/d$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static synthetic a(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private synthetic a(Lorg/json/JSONObject;)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/d$a;->a()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/d;->a()Lcom/sigmob/sdk/mraid2/c;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/sigmob/sdk/mraid2/H;

    invoke-direct {v2, v0, p1}, Lcom/sigmob/sdk/mraid2/H;-><init>(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic a(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 4

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_ac_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/mraid2/d$a;->a(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/mraid2/d$a;->a(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/mraid2/d$a;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid2/d$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic e(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/mraid2/d$a;->a(Lorg/json/JSONObject;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/mraid2/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/mraid2/d;

    return-object v0
.end method

.method public addDclog(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "_ac_type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDclog: jsonData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Mraid2Bridge"

    invoke-static {v3, v1, v2}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "not params"

    const/16 v0, 0x190

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/mraid2/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/d$a;->a()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "vid"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "category"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "start"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/d;->c(Lcom/sigmob/sdk/mraid2/d;)Lcom/sigmob/sdk/mraid2/f;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/d;->c(Lcom/sigmob/sdk/mraid2/d;)Lcom/sigmob/sdk/mraid2/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/sigmob/sdk/mraid2/f;->d()V

    :cond_1
    if-nez v2, :cond_2

    move-object p1, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p1}, Lcom/sigmob/sdk/mraid2/d;->b(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    :goto_0
    if-nez v2, :cond_3

    move-object v2, v1

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/d;->d(Lcom/sigmob/sdk/mraid2/d;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    move-result-object v2

    :goto_1
    new-instance v4, Lcom/sigmob/sdk/mraid2/I;

    invoke-direct {v4, v3}, Lcom/sigmob/sdk/mraid2/I;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0, p1, v2, v4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xc8

    const-string v0, "add dc log success"

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/mraid2/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :try_start_1
    const-string p1, "_ac_type is empty"

    const/16 v0, 0x12c

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/mraid2/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_2
    const/16 v0, 0x1f4

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/mraid2/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public func(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "func"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "func is empty."

    const/16 v0, 0x190

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/mraid2/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, ":"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;

    invoke-direct {v0, p0, p1}, Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_1
    const/16 v0, 0x1f4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/mraid2/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "Mraid2Bridge"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getDeviceInfo"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "clientType"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "osVersion"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appVersion"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "width"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "height"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "screenDensity"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getDensityDpi()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "networkType"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getActiveNetworkType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "pkgName"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "userAgent"

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "uid"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "udid"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getUDID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "imei"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "androidId"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/czhj/sdk/common/ClientMetadata;->getAndroidId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "googleId"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/czhj/sdk/common/ClientMetadata;->getAdvertisingId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "oaid"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/czhj/sdk/common/ClientMetadata;->getOAID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "android"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceInfo: error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/d$a;->a()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/d;->a()Lcom/sigmob/sdk/mraid2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMacro(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMacro: jsonData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Mraid2Bridge"

    invoke-static {v3, v0, v2}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v2, "event"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "args"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v3, "key"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/d$a;->a()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/d$a;->a()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sigmob/sdk/mraid2/d;->b(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_9

    :cond_2
    move-object v5, v0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "getMacro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v10

    goto :goto_2

    :sswitch_1
    const-string v1, "removeMacro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v9

    goto :goto_2

    :sswitch_2
    const-string v1, "clearMacro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v8

    goto :goto_2

    :sswitch_3
    const-string v6, "addAllMacros"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :sswitch_4
    const-string v1, "addMacro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_f

    if-eq v1, v7, :cond_c

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_6

    if-eq v1, v8, :cond_4

    goto/16 :goto_a

    :cond_4
    if-nez v5, :cond_5

    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/Sigmob;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    :goto_3
    invoke-virtual {p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->clearMacro()V

    goto/16 :goto_a

    :cond_5
    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object v0

    :cond_7
    if-nez v5, :cond_8

    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/Sigmob;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    :goto_4
    invoke-virtual {p1, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->removeMarcoKey(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    goto :goto_4

    :cond_9
    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object v0

    :cond_a
    if-nez v5, :cond_b

    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/Sigmob;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    :goto_5
    invoke-virtual {p1, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->getMarcoKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    goto :goto_5

    :cond_c
    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    return-object v0

    :cond_d
    if-nez v5, :cond_e

    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/Sigmob;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    :goto_6
    invoke-virtual {p1, v3, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    goto :goto_6

    :cond_f
    const-string v1, "maps"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_10

    return-object v0

    :cond_10
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v5, :cond_11

    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/Sigmob;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v4

    :goto_8
    invoke-virtual {v4, v2, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    :goto_a
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4aaf9055 -> :sswitch_4
        -0x2d3f6c79 -> :sswitch_3
        -0x2cb42281 -> :sswitch_2
        -0x12859a58 -> :sswitch_1
        0x74cb4216 -> :sswitch_0
    .end sparse-switch
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postMessage: data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Mraid2Bridge"

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/d$a;->a()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/d;->e(Lcom/sigmob/sdk/mraid2/d;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/d;->e(Lcom/sigmob/sdk/mraid2/d;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/mraid2/F;

    invoke-direct {v2, v0, p1}, Lcom/sigmob/sdk/mraid2/F;-><init>(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public storage(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storage: json = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Mraid2Bridge"

    invoke-static {v3, v0, v2}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "event"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "args"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    const-string v3, "type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "key"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_b

    :cond_2
    invoke-static {}, Lcom/sigmob/sdk/mraid2/d;->h()Lcom/sigmob/sdk/mraid2/p;

    move-result-object v7

    if-nez v7, :cond_3

    new-instance v7, Lcom/sigmob/sdk/mraid2/p;

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/d$a;->a()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v8

    invoke-static {v8}, Lcom/sigmob/sdk/mraid2/d;->e(Lcom/sigmob/sdk/mraid2/d;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sigmob/sdk/mraid2/p;-><init>(Landroid/content/Context;)V

    invoke-static {v7}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/mraid2/p;)Lcom/sigmob/sdk/mraid2/p;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x3

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "setItem"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :sswitch_1
    const-string v1, "removeItem"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v5

    goto :goto_2

    :sswitch_2
    const-string v1, "clear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v10

    goto :goto_2

    :sswitch_3
    const-string v1, "getItem"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v6

    goto :goto_2

    :sswitch_4
    const-string v1, "addEventListener"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v9

    goto :goto_2

    :sswitch_5
    const-string v1, "length"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v8

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_a

    if-eq v1, v6, :cond_9

    if-eq v1, v5, :cond_8

    if-eq v1, v10, :cond_7

    if-eq v1, v8, :cond_6

    if-eq v1, v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/sigmob/sdk/mraid2/d;->h()Lcom/sigmob/sdk/mraid2/p;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/mraid2/G;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid2/G;-><init>(Lcom/sigmob/sdk/mraid2/d$a;)V

    invoke-virtual {p1, v3, v4, v0}, Lcom/sigmob/sdk/mraid2/p;->a(ILjava/lang/String;Lcom/sigmob/sdk/mraid2/p$a;)V

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/sigmob/sdk/mraid2/d;->h()Lcom/sigmob/sdk/mraid2/p;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sigmob/sdk/mraid2/p;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {}, Lcom/sigmob/sdk/mraid2/d;->h()Lcom/sigmob/sdk/mraid2/p;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sigmob/sdk/mraid2/p;->a(I)V

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/sigmob/sdk/mraid2/d;->h()Lcom/sigmob/sdk/mraid2/p;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/sigmob/sdk/mraid2/p;->b(ILjava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/sigmob/sdk/mraid2/d;->h()Lcom/sigmob/sdk/mraid2/p;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/sigmob/sdk/mraid2/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-static {}, Lcom/sigmob/sdk/mraid2/d;->h()Lcom/sigmob/sdk/mraid2/p;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v0}, Lcom/sigmob/sdk/mraid2/p;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_4
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x41f1c51a -> :sswitch_5
        -0x254d19b3 -> :sswitch_4
        -0x47f1c77 -> :sswitch_3
        0x5a5b64d -> :sswitch_2
        0x417605b7 -> :sswitch_1
        0x764baa95 -> :sswitch_0
    .end sparse-switch
.end method

.method public tracking(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 18
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tracking: jsonData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Mraid2Bridge"

    invoke-static {v4, v1, v3}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "not params"

    const/16 v2, 0x190

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/mraid2/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    const-string v3, "event"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "urls"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ""

    if-nez v0, :cond_1

    move v9, v2

    move v14, v9

    move v15, v14

    move/from16 v16, v15

    move-object v10, v6

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v7, "inQueue"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "statistic"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "retry"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "vid"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "repeat"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    move v15, v7

    move/from16 v16, v8

    move v14, v11

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sigmob/sdk/mraid2/d$a;->a()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v8, v1

    goto :goto_1

    :cond_2
    invoke-static {v7}, Lcom/sigmob/sdk/mraid2/d;->e(Lcom/sigmob/sdk/mraid2/d;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    :goto_1
    if-nez v7, :cond_3

    move-object v13, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v10}, Lcom/sigmob/sdk/mraid2/d;->b(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v7

    move-object v13, v7

    :goto_2
    const-string v7, "click"

    invoke-static {v3, v7}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v8, :cond_8

    if-nez v13, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v13}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v7

    if-nez v0, :cond_5

    move v10, v2

    goto :goto_3

    :cond_5
    const-string v10, "clickLoseRate"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    :goto_3
    sget v11, Lcom/sigmob/sdk/base/utils/d;->b:I

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const-string v12, "clickCbState"

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7, v10, v12}, Lcom/sigmob/sdk/base/utils/d;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tracking: clickCbState = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v4, v7, v10}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_7

    const-string v4, "normalClick"

    const/4 v7, 0x1

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    invoke-virtual {v13}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v4, "action.interstitial.click"

    invoke-static {v8, v0, v4}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    :goto_5
    const-string v0, "tracking: value is null."

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v7}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_6
    const-string v0, "js"

    if-eqz v5, :cond_d

    :try_start_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_a

    goto :goto_9

    :cond_a
    :goto_7
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_c

    new-instance v12, Lcom/sigmob/sdk/base/common/ai;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_b
    move-object v7, v6

    :goto_8
    invoke-direct {v12, v4, v3, v7}, Lcom/sigmob/sdk/base/common/ai;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/czhj/sdk/common/track/AdTracker;->setRetryNum(Ljava/lang/Integer;)V

    invoke-virtual {v12, v0}, Lcom/czhj/sdk/common/track/AdTracker;->setSource(Ljava/lang/String;)V

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/czhj/sdk/common/track/AdTracker;Lcom/sigmob/sdk/base/models/BaseAdUnit;ZZZLcom/czhj/sdk/common/track/TrackManager$Listener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    const-string v0, "tracking success"

    const/16 v2, 0xc8

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/mraid2/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    :goto_9
    if-nez v13, :cond_e

    move-object v2, v1

    goto :goto_a

    :cond_e
    invoke-virtual {v13, v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdTracker(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_a
    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/sigmob/sdk/base/common/ai;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/czhj/sdk/common/track/AdTracker;->setRetryNum(Ljava/lang/Integer;)V

    invoke-virtual {v12, v0}, Lcom/czhj/sdk/common/track/AdTracker;->setSource(Ljava/lang/String;)V

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/czhj/sdk/common/track/AdTracker;Lcom/sigmob/sdk/base/models/BaseAdUnit;ZZZLcom/czhj/sdk/common/track/TrackManager$Listener;)V

    goto :goto_b

    :cond_f
    const-string v0, "urls is empty"

    const/16 v2, 0x12c

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/mraid2/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f4

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/mraid2/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/ad/adapter/AdNativeExpressAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;
.source "SourceFile"


# instance fields
.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:Lcom/windmill/sdk/natives/WMNativeAd;

.field public v:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ad/adapter/AdNativeExpressAd;->t:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/ad/adapter/AdNativeExpressAd;->w:I

    .line 9
    .line 10
    const/4 v0, -0x2

    .line 11
    iput v0, p0, Lcom/ad/adapter/AdNativeExpressAd;->x:I

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/ad/adapter/AdNativeExpressAd;)Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ad/adapter/AdNativeExpressAd;->v:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/ad/adapter/AdNativeExpressAd;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/adapter/AdNativeExpressAd;->v:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public destory()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ad/adapter/AdNativeExpressAd$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/ad/adapter/AdNativeExpressAd$c;-><init>(Lcom/ad/adapter/AdNativeExpressAd;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lg/a;->b(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ad/adapter/a;->a()Lcom/ad/adapter/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ad/adapter/a;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/adapter/AdNativeExpressAd;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ad/adapter/a;->a()Lcom/ad/adapter/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ad/adapter/a;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "app_id"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/ad/adapter/AdNativeExpressAd;->r:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "unit_id"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/ad/adapter/AdNativeExpressAd;->s:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    :try_start_1
    const-string v0, "key_width"

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    invoke-static {p3, v0, v1}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    invoke-static {p1, v0}, Lg/b;->a(Landroid/content/Context;F)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/ad/adapter/AdNativeExpressAd;->w:I

    .line 30
    .line 31
    const-string v0, "key_height"

    .line 32
    .line 33
    const/4 v1, -0x2

    .line 34
    invoke-static {p3, v0, v1}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    int-to-float p3, p3

    .line 39
    invoke-static {p1, p3}, Lg/b;->a(Landroid/content/Context;F)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    iput p3, p0, Lcom/ad/adapter/AdNativeExpressAd;->x:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p3

    .line 47
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p3, p0, Lcom/ad/adapter/AdNativeExpressAd;->r:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-nez p3, :cond_1

    .line 57
    .line 58
    iget-object p3, p0, Lcom/ad/adapter/AdNativeExpressAd;->s:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-eqz p3, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    invoke-static {}, Lcom/ad/adapter/a;->a()Lcom/ad/adapter/a;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    new-instance v0, Lcom/ad/adapter/AdNativeExpressAd$a;

    .line 72
    .line 73
    invoke-direct {v0, p0, p1}, Lcom/ad/adapter/AdNativeExpressAd$a;-><init>(Lcom/ad/adapter/AdNativeExpressAd;Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p1, p2, v0}, Lcom/ad/adapter/a;->d(Landroid/content/Context;Ljava/util/Map;Lcom/ad/adapter/a$b;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    :goto_1
    const-string p1, ""

    .line 81
    .line 82
    const-string p2, "TbAd appid or unitId is empty."

    .line 83
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    .line 87
    :catchall_0
    :goto_2
    return-void
.end method

.method public startBiddingRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATBiddingListener;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 p4, 0x1

    .line 2
    iput-boolean p4, p0, Lcom/ad/adapter/AdNativeExpressAd;->t:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/ad/adapter/AdNativeExpressAd;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method

.method public startLoadAd(Landroid/content/Context;)V
    .locals 5

    .line 1
    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    const-string v0, "tbAdn  context must be activity."

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "ad_key_width"

    .line 19
    .line 20
    iget v2, p0, Lcom/ad/adapter/AdNativeExpressAd;->w:I

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v1, "ad_key_height"

    .line 30
    .line 31
    iget v2, p0, Lcom/ad/adapter/AdNativeExpressAd;->x:I

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/windmill/sdk/natives/WMNativeAdRequest;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/ad/adapter/AdNativeExpressAd;->s:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x1

    .line 50
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/windmill/sdk/natives/WMNativeAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/windmill/sdk/natives/WMNativeAd;

    .line 54
    .line 55
    invoke-direct {v0, p1, v1}, Lcom/windmill/sdk/natives/WMNativeAd;-><init>(Landroid/content/Context;Lcom/windmill/sdk/natives/WMNativeAdRequest;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/ad/adapter/AdNativeExpressAd;->u:Lcom/windmill/sdk/natives/WMNativeAd;

    .line 59
    .line 60
    new-instance v1, Lcom/ad/adapter/AdNativeExpressAd$b;

    .line 61
    .line 62
    invoke-direct {v1, p0, p1}, Lcom/ad/adapter/AdNativeExpressAd$b;-><init>(Lcom/ad/adapter/AdNativeExpressAd;Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAd;->loadAd(Lcom/windmill/sdk/natives/WMNativeAd$NativeAdLoadListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :catchall_0
    return-void
.end method

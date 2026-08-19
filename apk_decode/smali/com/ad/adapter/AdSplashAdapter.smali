.class public Lcom/ad/adapter/AdSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;
.source "SourceFile"


# instance fields
.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:Lcom/windmill/sdk/splash/WMSplashAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ad/adapter/AdSplashAdapter;->t:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/ad/adapter/AdSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/ad/adapter/AdSplashAdapter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic c(Lcom/ad/adapter/AdSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/ad/adapter/AdSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/ad/adapter/AdSplashAdapter;)Lcom/windmill/sdk/splash/WMSplashAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ad/adapter/AdSplashAdapter;->u:Lcom/windmill/sdk/splash/WMSplashAd;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/adapter/AdSplashAdapter;->u:Lcom/windmill/sdk/splash/WMSplashAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/splash/WMSplashAd;->destroy()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ad/adapter/AdSplashAdapter;->u:Lcom/windmill/sdk/splash/WMSplashAd;

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
    iget-object v0, p0, Lcom/ad/adapter/AdSplashAdapter;->s:Ljava/lang/String;

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

.method public isAdReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/adapter/AdSplashAdapter;->u:Lcom/windmill/sdk/splash/WMSplashAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/splash/WMSplashAd;->isReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
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
    sget-object p3, Lcom/ad/adapter/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, " splash loadCustomNetworkAd "

    .line 4
    .line 5
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string p3, "app_id"

    .line 9
    .line 10
    invoke-static {p2, p3}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    iput-object p3, p0, Lcom/ad/adapter/AdSplashAdapter;->r:Ljava/lang/String;

    .line 15
    .line 16
    const-string p3, "unit_id"

    .line 17
    .line 18
    invoke-static {p2, p3}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    iput-object p3, p0, Lcom/ad/adapter/AdSplashAdapter;->s:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p3, p0, Lcom/ad/adapter/AdSplashAdapter;->r:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-nez p3, :cond_1

    .line 31
    .line 32
    iget-object p3, p0, Lcom/ad/adapter/AdSplashAdapter;->s:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/ad/adapter/a;->a()Lcom/ad/adapter/a;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    new-instance v0, Lcom/ad/adapter/AdSplashAdapter$a;

    .line 49
    .line 50
    invoke-direct {v0, p0, p1}, Lcom/ad/adapter/AdSplashAdapter$a;-><init>(Lcom/ad/adapter/AdSplashAdapter;Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p1, p2, v0}, Lcom/ad/adapter/a;->d(Landroid/content/Context;Ljava/util/Map;Lcom/ad/adapter/a$b;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    :goto_0
    const-string p1, ""

    .line 58
    .line 59
    const-string p2, "TbAd appid or unitId is empty."

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :catchall_0
    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const/16 p2, 0x63

    .line 8
    .line 9
    iput p2, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    .line 10
    .line 11
    const-string p2, ""

    .line 12
    .line 13
    const-string v0, "Container is null"

    .line 14
    .line 15
    const-string v1, "4006"

    .line 16
    .line 17
    invoke-static {v1, p2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p1, p2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/ad/adapter/AdSplashAdapter;->u:Lcom/windmill/sdk/splash/WMSplashAd;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/ad/adapter/AdSplashAdapter$c;

    .line 35
    .line 36
    invoke-direct {p1, p0, p2}, Lcom/ad/adapter/AdSplashAdapter$c;-><init>(Lcom/ad/adapter/AdSplashAdapter;Landroid/view/ViewGroup;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public startBiddingRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)Z
    .locals 1
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
    sget-object p4, Lcom/ad/adapter/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, " splash startBiddingRequest "

    .line 4
    .line 5
    invoke-static {p4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p4, 0x1

    .line 9
    iput-boolean p4, p0, Lcom/ad/adapter/AdSplashAdapter;->t:Z

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/ad/adapter/AdSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return p4
.end method

.method public startLoadAd(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/ad/adapter/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, " splash startLoadAd "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v0, Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/ad/adapter/AdSplashAdapter;->s:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/windmill/sdk/splash/WMSplashAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/windmill/sdk/splash/WMSplashAd;

    .line 23
    .line 24
    check-cast p1, Landroid/app/Activity;

    .line 25
    .line 26
    new-instance v2, Lcom/ad/adapter/AdSplashAdapter$b;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/ad/adapter/AdSplashAdapter$b;-><init>(Lcom/ad/adapter/AdSplashAdapter;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p1, v0, v2}, Lcom/windmill/sdk/splash/WMSplashAd;-><init>(Landroid/app/Activity;Lcom/windmill/sdk/splash/WMSplashAdRequest;Lcom/windmill/sdk/splash/WMSplashAdListener;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/ad/adapter/AdSplashAdapter;->u:Lcom/windmill/sdk/splash/WMSplashAd;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/windmill/sdk/splash/WMSplashAd;->loadAdOnly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :catchall_0
    return-void
.end method

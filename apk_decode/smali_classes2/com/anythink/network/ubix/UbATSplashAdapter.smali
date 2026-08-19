.class public Lcom/anythink/network/ubix/UbATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/ubix/ssp/open/splash/UBiXSplashManager;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->b:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->c:Z

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    iput v1, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->e:I

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->f:Z

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/ubix/UbATSplashAdapter;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    return p1
.end method

.method public static synthetic a(Lcom/anythink/network/ubix/UbATSplashAdapter;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->f:Z

    .line 24
    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    if-eqz v0, :cond_1

    .line 25
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/ubix/ssp/open/manager/UBiXAdManager;->createSpreadAd()Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->d:Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 7
    iget v1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mFetchAdTimeout:I

    if-lez v1, :cond_0

    .line 8
    invoke-interface {v0, v1}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->setMaxTimeout(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->d:Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    invoke-static {p2}, Lcom/anythink/network/ubix/UbATConst;->toExtraMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->setExtraInfo(Ljava/util/HashMap;)V

    .line 10
    iget-object p2, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->d:Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->b:Ljava/lang/String;

    new-instance v1, Lcom/anythink/network/ubix/UbATSplashAdapter$b;

    invoke-direct {v1, p0}, Lcom/anythink/network/ubix/UbATSplashAdapter$b;-><init>(Lcom/anythink/network/ubix/UbATSplashAdapter;)V

    invoke-interface {p2, p1, v0, v1}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->loadSplashAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;)V

    .line 11
    iget p1, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->e:I

    const/4 p2, 0x3

    if-ge p1, p2, :cond_1

    .line 12
    iput p2, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->e:I

    .line 13
    :cond_1
    iget p1, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->e:I

    const/16 p2, 0xa

    if-le p1, p2, :cond_2

    .line 14
    iput p2, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->e:I

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->d:Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    iget p2, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->e:I

    mul-int/lit16 p2, p2, 0x3e8

    invoke-interface {p1, p2}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->setSkipTime(I)V

    .line 16
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->d:Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    invoke-interface {p1}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->loadAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 17
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ubix startLoadAd exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p0, p2, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/ubix/UbATSplashAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/ubix/UbATSplashAdapter;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x63

    .line 18
    iput v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    .line 19
    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    if-eqz v0, :cond_0

    .line 20
    const-string v1, "4006"

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a()V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/ubix/UbATSplashAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/ubix/ssp/open/splash/UBiXSplashManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->d:Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/ubix/UbATSplashAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic e(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public baseOnAdapterBridgeVersion()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/ubix/UbATInitManager;->getInstance()Lcom/anythink/network/ubix/UbATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/ubix/UbATInitManager;->getAdapterBridgeVersion()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public destory()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->d:Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->destroy()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->d:Lcom/ubix/ssp/open/splash/UBiXSplashManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    :catchall_0
    :cond_0
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/ubix/UbATInitManager;->getInstance()Lcom/anythink/network/ubix/UbATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/ubix/UbATInitManager;->getNetworkName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/ubix/UbATInitManager;->getInstance()Lcom/anythink/network/ubix/UbATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/ubix/UbATInitManager;->getNetworkVersion()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->d:Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
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
    const-string v0, "unit_id"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->b:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "skip_time"

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-static {p2, v0, v1}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->e:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {}, Lcom/anythink/network/ubix/UbATInitManager;->getInstance()Lcom/anythink/network/ubix/UbATInitManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lcom/anythink/network/ubix/UbATSplashAdapter$a;

    .line 38
    .line 39
    invoke-direct {v1, p0, p1, p3}, Lcom/anythink/network/ubix/UbATSplashAdapter$a;-><init>(Lcom/anythink/network/ubix/UbATSplashAdapter;Landroid/content/Context;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/network/ubix/UbATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    :goto_0
    const-string p1, ""

    .line 47
    .line 48
    const-string p2, "ubix: unit_id or context is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->d:Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->d:Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 12
    .line 13
    invoke-interface {p1, p2}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->showAd(Landroid/view/ViewGroup;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p1, "mSplashAd is null or is not ready"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
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
    iput-boolean p4, p0, Lcom/anythink/network/ubix/UbATSplashAdapter;->c:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/ubix/UbATSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method

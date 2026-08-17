.class public Lcom/anythink/network/funlink/FunlinkATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/fl/saas/adx/api/FLSpread;

.field private e:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->b:Z

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->c:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)F"
        }
    .end annotation

    const-string v0, "key_height"

    const/high16 v1, 0x3f400000    # 0.75f

    if-eqz p2, :cond_0

    .line 20
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-gtz p2, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    cmpg-float p1, p2, v1

    if-gez p1, :cond_3

    return v1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :goto_1
    return v1
.end method

.method public static synthetic a(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;)Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->e:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
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

    const/4 p2, 0x0

    .line 5
    :try_start_0
    iput-boolean p2, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->f:Z

    .line 6
    new-instance p2, Lcom/fl/saas/adx/api/FLSpread$Builder;

    invoke-direct {p2, p1}, Lcom/fl/saas/adx/api/FLSpread$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v0}, Lcom/fl/saas/adx/base/base/BaseBuilder;->setKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fl/saas/adx/api/FLSpread$Builder;

    .line 8
    invoke-direct {p0, p1, p3}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->setScreenPercentage(F)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/adx/api/FLSpread$Builder;

    new-instance p2, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$c;

    invoke-direct {p2, p0}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$c;-><init>(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)V

    .line 9
    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/api/FLSpread$Builder;->setSpreadLoadListener(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;)Lcom/fl/saas/adx/api/FLSpread$Builder;

    move-result-object p1

    new-instance p2, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;

    invoke-direct {p2, p0}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;-><init>(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/api/FLSpread$Builder;->setSpreadListener(Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;)Lcom/fl/saas/adx/api/FLSpread$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/fl/saas/adx/api/FLSpread$Builder;->build()Lcom/fl/saas/adx/api/FLSpread;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->d:Lcom/fl/saas/adx/api/FLSpread;

    .line 12
    invoke-virtual {p1}, Lcom/fl/saas/adx/api/FLSpread;->requestSpread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p0, p2, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x63

    .line 14
    iput v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    .line 15
    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    if-eqz v0, :cond_0

    .line 16
    const-string v1, "4006"

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V

    .line 17
    iget-object p1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->f:Z

    return p1
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 18
    const-string p2, "unit_id"

    invoke-static {p1, p2}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->c:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static synthetic b(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/fl/saas/adx/api/FLSpread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->d:Lcom/fl/saas/adx/api/FLSpread;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
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
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getInstance()Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getAdapterBridgeVersion()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public destory()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->d:Lcom/fl/saas/adx/api/FLSpread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/BaseAPI;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->d:Lcom/fl/saas/adx/api/FLSpread;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->e:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    :catchall_0
    return-void
.end method

.method public getMediationInitManager()Lcom/anythink/core/api/ATInitMediation;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getInstance()Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getInstance()Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getNetworkName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getInstance()Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getNetworkVersion()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->d:Lcom/fl/saas/adx/api/FLSpread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->e:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->f:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
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
    invoke-direct {p0, p2, p3}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Ljava/util/Map;Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    const-string p2, "unit_id is empty!"

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getInstance()Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$a;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$a;-><init>(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/network/funlink/FunlinkATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->e:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->f:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;->show(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const-string p1, "SpreadAd is null or is not ready or container is null"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    return-void

    .line 29
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
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
    iput-boolean p4, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->b:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method

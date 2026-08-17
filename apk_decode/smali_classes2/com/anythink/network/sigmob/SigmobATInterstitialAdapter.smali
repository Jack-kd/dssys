.class public Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "SigmobATInterstitialAdapter"


# instance fields
.field private a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;

.field private b:Ljava/lang/String;

.field private c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

.field private d:D

.field e:Ljava/lang/String;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private a()V
    .locals 4

    .line 3
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->setShakeStatus()V

    .line 4
    new-instance v0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;

    .line 5
    new-instance v0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;

    invoke-direct {v0, v1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;-><init>(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;)V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 6
    new-instance v1, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;

    invoke-direct {v1, p0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$b;-><init>(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->setWindNewInterstitialAdListener(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;)V

    .line 7
    iget-boolean v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    if-eqz v0, :cond_1

    .line 8
    const-string v1, "USD"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/m;->setCurrency(Ljava/lang/String;)V

    .line 9
    iget-wide v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/m;->setBidFloor(I)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    invoke-virtual {v0}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->loadAd()Z

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->loadAd(Ljava/lang/String;)Z

    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    invoke-virtual {v0}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->loadAd()Z

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 15
    iget-boolean v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->f:Z

    iget-object v1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    iget-object v2, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/core/api/ATBiddingListener;Lcom/anythink/core/api/ATCustomLoadListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic l(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public baseOnAdapterBridgeVersion()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getAdapterBridgeVersion()I

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
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->destroy()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public getBidRequestInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V
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
            "Lcom/anythink/core/api/ATBidRequestInfoListener;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "placement_id"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getNetworkName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getNetworkVersion()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/sigmob/sdk/c;->isReady()Z

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
    .locals 3
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
    const-string p3, "app_id"

    .line 2
    .line 3
    invoke-static {p2, p3}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const-string v0, "app_key"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "placement_id"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "payload"

    .line 22
    .line 23
    invoke-static {p2, v1}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->e:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "bid_floor"

    .line 30
    .line 31
    invoke-static {p2, v1}, Lcom/anythink/core/api/ATInitMediation;->getDoubleFromMap(Ljava/util/Map;Ljava/lang/String;)D

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iput-wide v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d:D

    .line 36
    .line 37
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-nez p3, :cond_1

    .line 42
    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-nez p3, :cond_1

    .line 48
    .line 49
    iget-object p3, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-eqz p3, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p3, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a;

    .line 59
    .line 60
    invoke-direct {p3, p0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a;-><init>(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p3}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    :goto_0
    const-string p1, ""

    .line 68
    .line 69
    const-string p2, "app_id\u3001app_key\u3001placement_id could not be null."

    .line 70
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->isAdReady()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->f:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getEcpmInt(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/m;->setBidEcpm(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->show(Ljava/util/HashMap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void

    .line 35
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
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
    iput-boolean p4, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->f:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method

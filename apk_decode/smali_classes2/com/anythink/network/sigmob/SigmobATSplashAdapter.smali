.class public Lcom/anythink/network/sigmob/SigmobATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String; = "SigmobATSplashAdapter"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/sigmob/windad/Splash/WindSplashAD;

.field private c:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

.field private d:Lcom/sigmob/windad/Splash/WindSplashADListener;

.field private e:Ljava/lang/String;

.field private f:D

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    return p1
.end method

.method public static synthetic a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAD;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;Lcom/sigmob/windad/Splash/WindSplashADListener;)Lcom/sigmob/windad/Splash/WindSplashADListener;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->d:Lcom/sigmob/windad/Splash/WindSplashADListener;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;Lcom/sigmob/windad/Splash/WindSplashAdRequest;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->c:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    return-object p1
.end method

.method private a()V
    .locals 1

    .line 7
    new-instance v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    invoke-direct {v0, p0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;-><init>(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)V

    invoke-virtual {p0, v0}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 8
    iget-boolean v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->g:Z

    iget-object v1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    iget-object v2, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/core/api/ATBiddingListener;Lcom/anythink/core/api/ATCustomLoadListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mDismissType:I

    return p1
.end method

.method public static synthetic b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->c:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->f:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic l(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mFetchAdTimeout:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic o(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashADListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->d:Lcom/sigmob/windad/Splash/WindSplashADListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic s(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAD;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

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
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->c:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->d:Lcom/sigmob/windad/Splash/WindSplashADListener;

    .line 7
    .line 8
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
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a:Ljava/lang/String;

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

.method public getFormatAdapterMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/anythink/core/api/bridge/ATBaseAdAdapter;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-class v2, Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object v0
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
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->isReady()Z

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
    iput-object v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->e:Ljava/lang/String;

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
    iput-wide v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->f:D

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
    iget-object p3, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a:Ljava/lang/String;

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
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    new-instance v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$a;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$a;-><init>(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p1, p2, v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    :goto_0
    const-string p1, ""

    .line 72
    .line 73
    const-string p2, "app_id\u3001app_key\u3001placement_id could not be null."

    .line 74
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->isAdReady()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->g:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getEcpmInt(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/m;->setBidEcpm(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->show(Landroid/view/ViewGroup;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
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
    iput-boolean p4, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->g:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method

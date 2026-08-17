.class public Lcom/anythink/network/sigmob/SigmobATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private volatile d:Z

.field private e:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/sigmob/SigmobATAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 4

    .line 4
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->setShakeStatus()V

    .line 5
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    new-instance v1, Lcom/sigmob/windad/natives/WindNativeAdRequest;

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p2, v3}, Lcom/sigmob/windad/natives/WindNativeAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;-><init>(Lcom/sigmob/windad/natives/WindNativeAdRequest;)V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    new-instance v0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/sigmob/SigmobATAdapter$a;-><init>(Lcom/anythink/network/sigmob/SigmobATAdapter;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->setNativeAdLoadListener(Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;)V

    .line 8
    iget-boolean p1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->d:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    if-eqz p1, :cond_2

    .line 9
    iget-wide v0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->e:D

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-lez p2, :cond_1

    double-to-int p2, v0

    mul-int/lit8 p2, p2, 0x64

    .line 10
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->setBidFloor(I)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    const-string p2, "USD"

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->setCurrency(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->loadAd()Z

    return-void

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->loadAd(Ljava/lang/String;)Z

    return-void

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->loadAd()Z

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/sigmob/SigmobATAdapter;Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATAdapter;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/sigmob/SigmobATAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATAdapter;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 16
    iget-boolean v0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->d:Z

    iget-object v1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    iget-object v2, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/core/api/ATBiddingListener;Lcom/anythink/core/api/ATCustomLoadListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/sigmob/SigmobATAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/sigmob/SigmobATAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/anythink/network/sigmob/SigmobATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/network/sigmob/SigmobATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

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
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->destroy()V

    .line 6
    .line 7
    .line 8
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
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->b:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->b:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->b:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->c:Ljava/lang/String;

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
    iput-wide v1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->e:D

    .line 36
    .line 37
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-nez p3, :cond_2

    .line 42
    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-nez p3, :cond_2

    .line 48
    .line 49
    iget-object p3, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->b:Ljava/lang/String;

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
    iget p3, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mRequestNum:I

    .line 59
    .line 60
    const/4 v0, 0x3

    .line 61
    if-le p3, v0, :cond_1

    .line 62
    .line 63
    iput v0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mRequestNum:I

    .line 64
    .line 65
    :cond_1
    iget p3, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mRequestNum:I

    .line 66
    .line 67
    new-instance v0, Lcom/anythink/network/sigmob/SigmobATAdapter$b;

    .line 68
    .line 69
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/anythink/network/sigmob/SigmobATAdapter$b;-><init>(Lcom/anythink/network/sigmob/SigmobATAdapter;Landroid/content/Context;Ljava/util/Map;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    :goto_0
    const-string p1, ""

    .line 77
    .line 78
    const-string p2, "app_id\u3001app_key\u3001placement_id could not be null."

    .line 79
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATAdapter;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
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
    iput-boolean p4, p0, Lcom/anythink/network/sigmob/SigmobATAdapter;->d:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/network/sigmob/SigmobATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return p4
.end method

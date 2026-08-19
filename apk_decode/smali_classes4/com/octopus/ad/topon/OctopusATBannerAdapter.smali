.class public Lcom/octopus/ad/topon/OctopusATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private floorPrice:I

.field private mBannerAd:Lcom/octopus/ad/BannerAd;

.field private mBannerView:Landroid/view/View;

.field private mSlotId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

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
    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mSlotId:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->floorPrice:I

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic access$000(Lcom/octopus/ad/topon/OctopusATBannerAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->startLoadBanner(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/octopus/ad/BannerAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mBannerAd:Lcom/octopus/ad/BannerAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->floorPrice:I

    .line 2
    .line 3
    return p0
.end method

.method private startLoadBanner(Landroid/content/Context;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/octopus/ad/BannerAd;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mSlotId:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;-><init>(Lcom/octopus/ad/topon/OctopusATBannerAdapter;Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1, v1, v2}, Lcom/octopus/ad/BannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/BannerAdListener;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mBannerAd:Lcom/octopus/ad/BannerAd;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {v0, p1}, Lcom/octopus/ad/BannerAd;->openAdInNativeBrowser(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mBannerAd:Lcom/octopus/ad/BannerAd;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/octopus/ad/BannerAd;->loadAd()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mBannerAd:Lcom/octopus/ad/BannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/BannerAd;->destroy()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mBannerAd:Lcom/octopus/ad/BannerAd;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mBannerView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/topon/OctopusATInitManager;->getInstance()Lcom/octopus/ad/topon/OctopusATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/topon/OctopusATInitManager;->getNetworkName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mSlotId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/topon/OctopusATInitManager;->getInstance()Lcom/octopus/ad/topon/OctopusATInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/topon/OctopusATInitManager;->getNetworkVersion()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mBannerAd:Lcom/octopus/ad/BannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/BannerAd;->isLoaded()Z

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
    const-string p3, "slot_id"

    .line 2
    .line 3
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mSlotId:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    :try_start_0
    const-string p3, "floor_price"

    .line 18
    .line 19
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    check-cast p3, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    iput p3, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->floorPrice:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    const/4 p3, 0x0

    .line 39
    iput p3, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->floorPrice:I

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mSlotId:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_4

    .line 48
    .line 49
    iget-object p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 50
    .line 51
    const-string p2, "SlotId is empty!"

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    const-string p3, "80000"

    .line 56
    .line 57
    invoke-interface {p1, p3, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-static {p2}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const/4 p3, 0x0

    .line 69
    invoke-interface {p1, p2, p3}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void

    .line 73
    :cond_4
    invoke-static {}, Lcom/octopus/ad/topon/OctopusATInitManager;->getInstance()Lcom/octopus/ad/topon/OctopusATInitManager;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Lcom/octopus/ad/topon/OctopusATBannerAdapter$1;

    .line 82
    .line 83
    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter$1;-><init>(Lcom/octopus/ad/topon/OctopusATBannerAdapter;Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, v0, p2, v1}, Lcom/octopus/ad/topon/OctopusATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public showBannerAd(Lcom/octopus/ad/NativeAdResponse;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;-><init>(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/octopus/ad/NativeAdResponse;->setNativeAdEventListener(Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/octopus/ad/NativeAdResponse;->getNativeView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->mBannerView:Landroid/view/View;

    .line 17
    .line 18
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
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

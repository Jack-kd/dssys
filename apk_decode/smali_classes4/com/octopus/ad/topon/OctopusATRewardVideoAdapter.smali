.class public Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TYPE_INTER:I

.field private final TYPE_REWARD:I

.field private floorPrice:I

.field private mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

.field private mRewardVideoAd:Lcom/octopus/ad/RewardVideoAd;

.field private mSlotId:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

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
    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->TYPE_INTER:I

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    iput v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->TYPE_REWARD:I

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    iput-object v1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mSlotId:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->floorPrice:I

    .line 26
    .line 27
    iput v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mType:I

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic access$000(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mType:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->startLoad(Landroid/content/Context;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/octopus/ad/RewardVideoAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mRewardVideoAd:Lcom/octopus/ad/RewardVideoAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->floorPrice:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1500(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->startLoadInter(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2100(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2200(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2300(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2400(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2500(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2600(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2700(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/octopus/ad/InterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2800(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2900(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3000(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3100(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3200(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3300(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3400(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private startLoad(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
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

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/octopus/ad/RewardVideoAd;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mSlotId:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$2;-><init>(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1, v1, v2}, Lcom/octopus/ad/RewardVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/RewardVideoAdListener;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mRewardVideoAd:Lcom/octopus/ad/RewardVideoAd;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    const-string p1, "user_id"

    .line 21
    .line 22
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mRewardVideoAd:Lcom/octopus/ad/RewardVideoAd;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/octopus/ad/RewardVideoAd;->setUserId(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    if-eqz p2, :cond_2

    .line 42
    .line 43
    const-string p1, "user_custom_data"

    .line 44
    .line 45
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mRewardVideoAd:Lcom/octopus/ad/RewardVideoAd;

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p2, p1}, Lcom/octopus/ad/RewardVideoAd;->setExtraData(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mRewardVideoAd:Lcom/octopus/ad/RewardVideoAd;

    .line 65
    .line 66
    const/4 p2, 0x1

    .line 67
    invoke-virtual {p1, p2}, Lcom/octopus/ad/RewardVideoAd;->openAdInNativeBrowser(Z)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mRewardVideoAd:Lcom/octopus/ad/RewardVideoAd;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/octopus/ad/RewardVideoAd;->loadAd()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private startLoadInter(Landroid/content/Context;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/octopus/ad/InterstitialAd;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mSlotId:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$3;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$3;-><init>(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1, v1, v2}, Lcom/octopus/ad/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/InterstitialAdListener;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {v0, p1}, Lcom/octopus/ad/InterstitialAd;->openAdInNativeBrowser(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/octopus/ad/InterstitialAd;->loadAd()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mRewardVideoAd:Lcom/octopus/ad/RewardVideoAd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/octopus/ad/RewardVideoAd;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mRewardVideoAd:Lcom/octopus/ad/RewardVideoAd;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/octopus/ad/InterstitialAd;->destroy()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    .line 19
    .line 20
    :cond_1
    return-void
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
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mSlotId:Ljava/lang/String;

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mRewardVideoAd:Lcom/octopus/ad/RewardVideoAd;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/octopus/ad/RewardVideoAd;->isLoaded()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    return v3

    .line 20
    :cond_1
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/octopus/ad/InterstitialAd;->isLoaded()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    return v2

    .line 34
    :cond_2
    return v3
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
    const-string v0, "slot_id"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mSlotId:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    :try_start_0
    const-string v0, "floor_price"

    .line 18
    .line 19
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->floorPrice:I

    .line 36
    .line 37
    :cond_1
    const-string v0, "type"

    .line 38
    .line 39
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->floorPrice:I

    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    iput v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mType:I

    .line 63
    .line 64
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mSlotId:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget-object p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 73
    .line 74
    const-string p2, "SlotId is empty!"

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    const-string p3, "80000"

    .line 79
    .line 80
    invoke-interface {p1, p3, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object p1, p0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 84
    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    invoke-static {p2}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    const/4 p3, 0x0

    .line 92
    invoke-interface {p1, p2, p3}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    return-void

    .line 96
    :cond_5
    invoke-static {}, Lcom/octopus/ad/topon/OctopusATInitManager;->getInstance()Lcom/octopus/ad/topon/OctopusATInitManager;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    new-instance v2, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$1;

    .line 105
    .line 106
    invoke-direct {v2, p0, p1, p3}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter$1;-><init>(Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;Landroid/content/Context;Ljava/util/Map;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1, p2, v2}, Lcom/octopus/ad/topon/OctopusATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mRewardVideoAd:Lcom/octopus/ad/RewardVideoAd;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/octopus/ad/RewardVideoAd;->isLoaded()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mRewardVideoAd:Lcom/octopus/ad/RewardVideoAd;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/octopus/ad/RewardVideoAd;->show(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 v1, 0x2

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/octopus/ad/InterstitialAd;->isLoaded()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->mInterstitialAd:Lcom/octopus/ad/InterstitialAd;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/octopus/ad/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 42
    .line 43
    .line 44
    :cond_1
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/octopus/ad/topon/OctopusATRewardVideoAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

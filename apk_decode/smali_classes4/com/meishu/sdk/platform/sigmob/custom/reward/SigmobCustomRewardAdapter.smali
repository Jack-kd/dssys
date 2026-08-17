.class public Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;
.super Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;
.source "SourceFile"


# instance fields
.field private sigmobCustomRewardAd:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

.field private windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;-><init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->loadAdWithCallback(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->sigmobCustomRewardAd:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onRenderSuccess(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onAdExposure(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onAdClick(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onAdClosed(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onReward(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;->onError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/sigmob/windad/rewardVideo/WindRewardAdRequest;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, p1, v1, v2}, Lcom/sigmob/windad/rewardVideo/WindRewardAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;-><init>(Lcom/sigmob/windad/rewardVideo/WindRewardAdRequest;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 15
    .line 16
    new-instance v0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;-><init>(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->sigmobCustomRewardAd:Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 24
    .line 25
    new-instance v0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$2;-><init>(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->setWindRewardVideoAdListener(Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->loadAd()Z

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->getInstance()Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v1, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$1;

    .line 8
    .line 9
    invoke-direct {v1, p0, p3}, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter$1;-><init>(Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p4, v0, p1, p2, v1}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v0, "CNY"

    .line 6
    .line 7
    const-string v1, "CURRENCY"

    .line 8
    .line 9
    const-string v2, "AUCTION_PRICE"

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    :try_start_1
    new-instance p1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-string v2, "HIGHEST_LOSS_PRICE"

    .line 36
    .line 37
    iget-object v3, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    iget-object v5, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-static {v3, p2, v4, v5}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string p2, "LOSS_REASON"

    .line 97
    .line 98
    sget-object v0, Lcom/sigmob/windad/WindAdBiddingLossReason;->LOSS_REASON_LOW_PRICE:Lcom/sigmob/windad/WindAdBiddingLossReason;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdBiddingLossReason;->getCode()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAdapter;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    .line 116
    :cond_1
    return-void

    .line 117
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.class public Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;",
        "Lcom/meishu/sdk/core/ad/reward/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRewardVideoAdWrapper"


# instance fields
.field private isBidding:Z

.field private rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;->isBidding:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;)Lcom/huawei/hms/ads/reward/RewardAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;->rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public loadAd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/huawei/hms/ads/reward/RewardAd;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 32
    .line 33
    check-cast v1, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/ads/reward/RewardAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;->rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;

    .line 49
    .line 50
    new-instance v0, Lcom/huawei/hms/ads/AdParam$Builder;

    .line 51
    .line 52
    invoke-direct {v0}, Lcom/huawei/hms/ads/AdParam$Builder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;->isBidding:Z

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    :try_start_0
    new-instance v1, Lcom/huawei/hms/ads/BiddingParam$Builder;

    .line 60
    .line 61
    invoke-direct {v1}, Lcom/huawei/hms/ads/BiddingParam$Builder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    int-to-float v2, v2

    .line 73
    const/high16 v3, 0x42c80000    # 100.0f

    .line 74
    .line 75
    div-float/2addr v2, v3

    .line 76
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/huawei/hms/ads/BiddingParam$Builder;->setBidFloor(Ljava/lang/Float;)Lcom/huawei/hms/ads/BiddingParam$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "CNY"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lcom/huawei/hms/ads/BiddingParam$Builder;->setBidFloorCur(Ljava/lang/String;)Lcom/huawei/hms/ads/BiddingParam$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/huawei/hms/ads/BiddingParam$Builder;->build()Lcom/huawei/hms/ads/BiddingParam;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/ads/AdParam$Builder;->addBiddingParamMap(Ljava/lang/String;Lcom/huawei/hms/ads/BiddingParam;)Lcom/huawei/hms/ads/AdParam$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    :goto_0
    const/16 v1, 0xbb8

    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/AdParam$Builder;->setTMax(Ljava/lang/Integer;)Lcom/huawei/hms/ads/AdParam$Builder;

    .line 117
    .line 118
    .line 119
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;->rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/huawei/hms/ads/AdParam$Builder;->build()Lcom/huawei/hms/ads/AdParam;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    new-instance v2, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;

    .line 126
    .line 127
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/ads/reward/RewardAd;->loadAd(Lcom/huawei/hms/ads/AdParam;Lcom/huawei/hms/ads/reward/RewardAdLoadListener;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;->rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/reward/RewardAd;->getBiddingInfo()Lcom/huawei/hms/ads/BiddingInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v1, "CNY"

    .line 12
    .line 13
    const-string v2, "AUCTION_CURRENCY"

    .line 14
    .line 15
    const/high16 v3, 0x3f800000    # 1.0f

    .line 16
    .line 17
    const/high16 v4, 0x42c80000    # 100.0f

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    :try_start_1
    new-instance p1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/huawei/hms/ads/BiddingInfo;->getPrice()Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    mul-float/2addr v0, v4

    .line 35
    float-to-int v0, v0

    .line 36
    iget-object v5, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    iget-object v6, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 43
    .line 44
    invoke-virtual {v6}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-static {v0, p2, v5, v6}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const-string v0, "SECOND_PRICE"

    .line 53
    .line 54
    int-to-float p2, p2

    .line 55
    mul-float/2addr p2, v3

    .line 56
    div-float/2addr p2, v4

    .line 57
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;->rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;

    .line 68
    .line 69
    new-instance v0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$2;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$2;-><init>(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p1, v0}, Lcom/huawei/hms/ads/reward/RewardAd;->sendBiddingSuccess(Ljava/util/Map;Lcom/huawei/hms/ads/ReportUrlListener;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v0, "AUCTION_PRICE"

    .line 86
    .line 87
    int-to-float p2, p2

    .line 88
    mul-float/2addr p2, v3

    .line 89
    div-float/2addr p2, v4

    .line 90
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string p2, "AUCTION_LOSS"

    .line 101
    .line 102
    const/16 v0, 0x66

    .line 103
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
    const-string p2, "AUCTION_CP_ID"

    .line 112
    .line 113
    const-string v0, "100"

    .line 114
    .line 115
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;->rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;

    .line 119
    .line 120
    new-instance v0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$3;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper$3;-><init>(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p1, v0}, Lcom/huawei/hms/ads/reward/RewardAd;->sendBiddingFailed(Ljava/util/Map;Lcom/huawei/hms/ads/ReportUrlListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    :cond_1
    return-void

    .line 129
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    return-void
.end method

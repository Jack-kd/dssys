.class public Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;
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
.field private static final TAG:Ljava/lang/String; = "GDTRewardVideoAdWrapper"


# instance fields
.field private final RewardAdapter:Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;

.field private apiInteractionListener:Lcom/meishu/sdk/core/loader/InteractionListener;

.field private apiRewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

.field private rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance v3, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 7
    .line 8
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/a;

    .line 9
    .line 10
    invoke-direct {v3, p0, v0}, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;-><init>(Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;Lcom/meishu/sdk/core/ad/reward/a;)V

    .line 11
    .line 12
    .line 13
    iput-object v3, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->RewardAdapter:Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/google/gson/Gson;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-class v2, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 41
    .line 42
    move-object v1, v0

    .line 43
    new-instance v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 44
    .line 45
    move-object v2, v1

    .line 46
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v4, v2

    .line 51
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/b;->getVideoIsMute()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    xor-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;->getToken()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    move v6, v5

    .line 66
    move-object v5, v4

    .line 67
    move v4, v6

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;ZLjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    move-object p1, v0

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 82
    .line 83
    if-nez v0, :cond_1

    .line 84
    .line 85
    new-instance v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->RewardAdapter:Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/b;->getVideoIsMute()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    xor-int/lit8 p1, p1, 0x1

    .line 102
    .line 103
    invoke-direct {v0, v1, p2, v2, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 107
    .line 108
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 109
    .line 110
    new-instance p2, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 111
    .line 112
    invoke-direct {p2}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->userId()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p2, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p2}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p1, p2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    :goto_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getApiInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->apiInteractionListener:Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->apiRewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRewardVideoAd()Lcom/qq/e/ads/rewardvideo/RewardVideoAD;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 2
    .line 3
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public loadAd()V
    .locals 3

    .line 1
    :try_start_0
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "expectCostPrice"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v0, "highestLossPrice"

    .line 28
    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {v1, p2, v2, v3}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lcom/qq/e/ads/LiteAbstractAD;->sendWinNotification(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v0, "winPrice"

    .line 72
    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const-string p2, "lossReason"

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string p2, "adnId"

    .line 91
    .line 92
    const-string v0, "2"

    .line 93
    .line 94
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Lcom/qq/e/ads/LiteAbstractAD;->sendLossNotification(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void

    .line 103
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public setApiInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->apiInteractionListener:Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 2
    .line 3
    return-void
.end method

.method public setApiRewardAdMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->apiRewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public setEcpm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public showAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->showAD()V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->rewardVideoAd:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->showAD(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

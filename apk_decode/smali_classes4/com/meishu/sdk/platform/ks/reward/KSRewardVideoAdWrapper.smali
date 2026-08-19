.class public Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;
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


# instance fields
.field private apiRewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

.field private mRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;)Lcom/kwad/sdk/api/KsRewardVideoAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->mRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;Lcom/kwad/sdk/api/KsRewardVideoAd;)Lcom/kwad/sdk/api/KsRewardVideoAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->mRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->apiRewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-object v0
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
    new-instance v0, Lcom/kwad/sdk/api/KsScene$Builder;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper$1;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v0, v2}, Lcom/kwad/sdk/api/KsLoadManager;->loadRewardVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->mRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsRewardVideoAd;->getECPM()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    int-to-long v1, p1

    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->mRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsRewardVideoAd;->getECPM()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {p1, p2, v3, v4}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    int-to-long p1, p1

    .line 35
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/kwad/sdk/api/KsRewardVideoAd;->setBidEcpm(JJ)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Lcom/kwad/sdk/api/model/AdExposureFailedReason;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/kwad/sdk/api/model/AdExposureFailedReason;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x3

    .line 47
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->setAdnType(I)Lcom/kwad/sdk/api/model/AdExposureFailedReason;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->setWinEcpm(I)Lcom/kwad/sdk/api/model/AdExposureFailedReason;

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->mRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsRewardVideoAd;->reportAdExposureFailed(ILcom/kwad/sdk/api/model/AdExposureFailedReason;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public setApiRewardAdMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->apiRewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/RewardVideoAd$RewardVideoAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BDRewardVideoListener"


# instance fields
.field private adLoader:Lcom/meishu/sdk/core/loader/c;

.field private bdRewardVideoLoader:Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;

.field private mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

.field private mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

.field private msListener:Lcom/meishu/sdk/core/ad/reward/a;

.field private sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/reward/a;Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->msListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->bdRewardVideoLoader:Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "BDRewardVideoListener"

    .line 16
    .line 17
    const-string v1, "send onAdClick"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public onAdClose(F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAdFailed, msg: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BDRewardVideoListener"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string v0, "exception"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 36
    .line 37
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->msListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->msListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->bdRewardVideoLoader:Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;-><init>(Lcom/baidu/mobads/sdk/api/RewardVideoAd;Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->getECPMLevel()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->msListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->msListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->msListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->getMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->getMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void

    .line 58
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onAdSkip(F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->getMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->getMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onSkippedVideo()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onRewardVerify(Z)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->msListener:Lcom/meishu/sdk/core/ad/reward/a;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "rewardVerify"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->msListener:Lcom/meishu/sdk/core/ad/reward/a;

    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/ad/reward/a;->onReward(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onRewardVerify(ZLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->msListener:Lcom/meishu/sdk/core/ad/reward/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "rewardVerify"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->msListener:Lcom/meishu/sdk/core/ad/reward/a;

    invoke-interface {p1, p2}, Lcom/meishu/sdk/core/ad/reward/a;->onReward(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 2

    .line 1
    const-string v0, "BDRewardVideoListener"

    .line 2
    .line 3
    const-string v1, "onVideoDownloadFailed, onVideoDownloadFailed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->msListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->msListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/reward/a;->onVideoCached(Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public playCompletion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->getMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mBDRewardAd:Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->getMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoCompleted()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public setRewardVideoAd(Lcom/baidu/mobads/sdk/api/RewardVideoAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 2
    .line 3
    return-void
.end method

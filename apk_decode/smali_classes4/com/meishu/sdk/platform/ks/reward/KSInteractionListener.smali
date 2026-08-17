.class public Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "KSInteractionListener"


# instance fields
.field private ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const-string v0, "KSInteractionListener"

    .line 42
    .line 43
    const-string v1, "send onAdClicked"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 73
    .line 74
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 79
    .line 80
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    :cond_1
    return-void

    .line 107
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public onExtraRewardVerify(I)V
    .locals 0

    return-void
.end method

.method public onPageDismiss()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/a;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void

    .line 61
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onRewardStepVerify(II)V
    .locals 0

    return-void
.end method

.method public onRewardVerify()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/reward/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/reward/a;->onReward(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onRewardVerify(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onVideoPlayEnd()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void

    .line 30
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onVideoPlayError(II)V
    .locals 2

    .line 1
    :try_start_0
    const-string p2, "KSInteractionListener"

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "onVideoError: "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void

    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onVideoPlayStart()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/a;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void

    .line 74
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public onVideoSkipToEnd(J)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/reward/KSInteractionListener;->ad:Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onSkippedVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void

    .line 30
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

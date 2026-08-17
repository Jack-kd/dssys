.class public Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;


# instance fields
.field public adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

.field public ksRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsRewardVideoAd;Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "KS"

    .line 2
    .line 3
    invoke-direct {p0, p2, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->ksRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdWrapper()Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAdValid()Z
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getLoadedTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/32 v2, 0x360420

    .line 17
    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-ltz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/a;->isAdValid()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;->setApiRewardAdMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public showAd()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v1

    check-cast v1, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/b;->getVideoIsMute()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->ksRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v1, v2, v0}, Lcom/kwad/sdk/api/KsRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 7
    :try_start_0
    new-instance v0, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v1

    check-cast v1, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/b;->getVideoIsMute()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->ksRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-interface {v1, p1, v0}, Lcom/kwad/sdk/api/KsRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/reward/KSRewardAd;->adWrapper:Lcom/meishu/sdk/platform/ks/reward/KSRewardVideoAdWrapper;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

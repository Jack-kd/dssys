.class public Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "BDRewardAd"


# instance fields
.field private bdRewardVideoLoader:Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;

.field public mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

.field public rewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

.field private sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/RewardVideoAd;Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;)V
    .locals 1

    .line 1
    const-string v0, "BAIDU"

    .line 2
    .line 3
    invoke-direct {p0, p2, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->bdRewardVideoLoader:Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->rewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->rewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->show()V

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->bdRewardVideoLoader:Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->bdRewardVideoLoader:Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;

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

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 6
    :try_start_0
    const-string p1, "BDRewardAd"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->isReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->show()V

    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->bdRewardVideoLoader:Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardAd;->bdRewardVideoLoader:Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;

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

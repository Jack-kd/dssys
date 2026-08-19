.class public Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

.field public listener:Lcom/huawei/hms/ads/reward/RewardAdStatusListener;

.field private rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;Lcom/huawei/hms/ads/reward/RewardAd;)V
    .locals 1

    .line 1
    const-string v0, "HW"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;-><init>(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->listener:Lcom/huawei/hms/ads/reward/RewardAdStatusListener;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;)Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 0

    return-void
.end method

.method public showAd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hms/ads/reward/RewardAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;

    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->listener:Lcom/huawei/hms/ads/reward/RewardAdStatusListener;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/ads/reward/RewardAd;->show(Landroid/app/Activity;Lcom/huawei/hms/ads/reward/RewardAdStatusListener;)V

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hms/ads/reward/RewardAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->rewardAd:Lcom/huawei/hms/ads/reward/RewardAd;

    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->listener:Lcom/huawei/hms/ads/reward/RewardAdStatusListener;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/hms/ads/reward/RewardAd;->show(Landroid/app/Activity;Lcom/huawei/hms/ads/reward/RewardAdStatusListener;)V

    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

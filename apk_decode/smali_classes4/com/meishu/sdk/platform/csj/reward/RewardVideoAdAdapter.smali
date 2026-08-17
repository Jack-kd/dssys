.class public Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

.field private ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 1

    .line 1
    const-string v0, "CSJ"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;->ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdWrapper()Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;->setApiRewardAdMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public showAd()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;->ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

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
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;->ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    .line 7
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

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

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

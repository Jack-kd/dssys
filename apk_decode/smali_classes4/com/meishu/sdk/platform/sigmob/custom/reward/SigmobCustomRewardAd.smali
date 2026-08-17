.class public Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;
.super Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;

.field private windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;-><init>(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->adWrapper:Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public showAd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/c;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->adWrapper:Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "bidding"

    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->adWrapper:Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-virtual {v0}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/m;->setBidEcpm(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->show(Ljava/util/HashMap;)Z

    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->adWrapper:Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->adWrapper:Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/c;->isReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->adWrapper:Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "bidding"

    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->adWrapper:Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-virtual {p1}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/m;->setBidEcpm(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->windRewardVideoAd:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->show(Ljava/util/HashMap;)Z

    .line 13
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->adWrapper:Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/reward/SigmobCustomRewardAd;->adWrapper:Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

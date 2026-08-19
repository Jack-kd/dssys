.class Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;
.super Lcom/huawei/hms/ads/reward/RewardAdStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/ads/reward/RewardAdStatusListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRewardAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->access$000(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;)Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->access$000(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;)Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

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
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public onRewardAdFailedToShow(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/huawei/hms/ads/reward/RewardAdStatusListener;->onRewardAdFailedToShow(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRewardAdOpened()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->access$000(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;)Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->access$000(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;)Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

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
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public onRewarded(Lcom/huawei/hms/ads/reward/Reward;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->access$000(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;)Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd$1;->this$0:Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;->access$000(Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAd;)Lcom/meishu/sdk/platform/huawei/reward/HWRewardVideoAdWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/ad/reward/a;->onReward(Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

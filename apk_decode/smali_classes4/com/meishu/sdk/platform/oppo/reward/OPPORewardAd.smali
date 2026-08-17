.class Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;


# instance fields
.field private rewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

.field private rewardVideoAd:Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;

.field private showed:Z


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;)V
    .locals 1

    .line 1
    const-string v0, "OPPO"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;->showed:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;->rewardVideoAd:Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;->destroyAd()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;->rewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;->rewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public setRewardAd(Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;->rewardVideoAd:Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;->showed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;->showed:Z

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAd;->rewardVideoAd:Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/heytap/msp/mobad/api/ad/RewardVideoAd;->showAd()V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

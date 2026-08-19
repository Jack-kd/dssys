.class public Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "MimoRewardAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

.field private hasShown:Z

.field private rewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

.field private rewardVideoAd:Lcom/miui/zeus/mimo/sdk/RewardVideoAd;


# direct methods
.method public constructor <init>(Lcom/miui/zeus/mimo/sdk/RewardVideoAd;Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "MIMO"

    .line 2
    .line 3
    invoke-direct {p0, p2, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->hasShown:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->rewardVideoAd:Lcom/miui/zeus/mimo/sdk/RewardVideoAd;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->rewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private showReward(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->hasShown:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->hasShown:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->rewardVideoAd:Lcom/miui/zeus/mimo/sdk/RewardVideoAd;

    .line 33
    .line 34
    new-instance v1, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd$1;-><init>(Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Lcom/miui/zeus/mimo/sdk/RewardVideoAd;->showAd(Landroid/app/Activity;Lcom/miui/zeus/mimo/sdk/RewardVideoAd$RewardVideoInteractionListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->rewardVideoAd:Lcom/miui/zeus/mimo/sdk/RewardVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/zeus/mimo/sdk/RewardVideoAd;->recycle()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->rewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->showReward(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/mimo/reward/MimoRewardAd;->showReward(Landroid/app/Activity;)V

    return-void
.end method

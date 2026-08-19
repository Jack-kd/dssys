.class public abstract Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;


# instance fields
.field private rewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;)V
    .locals 1

    .line 1
    const-string v0, "CUSTOM"

    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;-><init>(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;->rewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;->rewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 0

    return-void
.end method

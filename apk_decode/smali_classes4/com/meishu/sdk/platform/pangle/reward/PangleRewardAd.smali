.class public Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAd;
.super Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;
.source "SourceFile"


# instance fields
.field private rewardedAd:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;-><init>(Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAd;->rewardedAd:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAd;->rewardedAd:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;->show(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

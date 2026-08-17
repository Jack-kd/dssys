.class Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;

    new-instance v1, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAd;

    invoke-direct {v1, v0, p1}, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAd;-><init>(Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;->access$202(Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAd;)Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAd;

    .line 3
    new-instance v0, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter$2$1;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter$2$1;-><init>(Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter$2;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;)V

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;

    invoke-static {p1}, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;)Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAd;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;->access$600(Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAd;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter$2;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;->access$100(Lcom/meishu/sdk/platform/pangle/reward/PangleRewardAdapter;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

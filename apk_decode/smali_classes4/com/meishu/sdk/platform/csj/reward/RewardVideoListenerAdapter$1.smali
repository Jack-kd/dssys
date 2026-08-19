.class Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;

.field public final synthetic val$ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->this$0:Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->val$ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->this$0:Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;

    .line 2
    .line 3
    new-instance v1, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->access$100(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;)Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->val$ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;-><init>(Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->access$002(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;)Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->val$ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 18
    .line 19
    new-instance v1, Lcom/meishu/sdk/platform/csj/reward/CSJInteractionListener;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->this$0:Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->access$100(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;)Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->this$0:Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;

    .line 28
    .line 29
    invoke-static {v3}, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->access$000(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;)Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->val$ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 34
    .line 35
    invoke-direct {v1, v2, v3, v4}, Lcom/meishu/sdk/platform/csj/reward/CSJInteractionListener;-><init>(Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->this$0:Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->access$200(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;)Lcom/meishu/sdk/core/ad/reward/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->this$0:Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->access$200(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;)Lcom/meishu/sdk/core/ad/reward/a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->this$0:Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->access$000(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;)Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->this$0:Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->access$200(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;)Lcom/meishu/sdk/core/ad/reward/a;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter$1;->this$0:Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;->access$000(Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;)Lcom/meishu/sdk/platform/csj/reward/RewardVideoAdAdapter;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    return-void

    .line 83
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

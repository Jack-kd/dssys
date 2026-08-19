.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->onVideoStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSkip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3202(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$002(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/bquery/i;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget v1, Lcom/meishu/sdk/R$id;->ms_reward_close_button_parent:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/bquery/i;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget v1, Lcom/meishu/sdk/R$id;->ms_reward_skip_button:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 82
    .line 83
    const/16 v1, 0x8

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_0
    return-void
.end method

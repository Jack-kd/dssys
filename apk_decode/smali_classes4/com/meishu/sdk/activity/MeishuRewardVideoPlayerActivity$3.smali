.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$3;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->safeOnCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->e()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$800()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$802(Z)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/bquery/i;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget v0, Lcom/meishu/sdk/R$id;->ms_reward_voice_button:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 44
    .line 45
    sget v0, Lcom/meishu/sdk/R$drawable;->ms_voice_open:I

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->c(I)Lcom/meishu/sdk/core/bquery/e;

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p1, 0x1

    .line 63
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$802(Z)Z

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/bquery/i;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget v0, Lcom/meishu/sdk/R$id;->ms_reward_voice_button:I

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 79
    .line 80
    sget v0, Lcom/meishu/sdk/R$drawable;->ms_voice_closed:I

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->c(I)Lcom/meishu/sdk/core/bquery/e;

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$3;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void

    .line 95
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

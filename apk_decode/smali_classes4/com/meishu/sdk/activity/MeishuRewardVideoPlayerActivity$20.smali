.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$20;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;
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
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$20;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$20;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$20;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$20;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getCurrentPosition()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$20;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$20;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    int-to-long v4, v0

    .line 44
    invoke-static {v1, v2, v3, v4, v5}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;JJ)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$20;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-wide/16 v1, 0x64

    .line 54
    .line 55
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

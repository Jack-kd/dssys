.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/n0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->loadRewardVideo()V
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
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6302(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-object v4, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 14
    .line 15
    invoke-static {v4}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    invoke-static {v0, v2, v3, v4, v5}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;JJ)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$002(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$16;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 54
    .line 55
    const-string v1, "broadcast_on_video_complete"

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

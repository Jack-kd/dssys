.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$2;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$2;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$2;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$2;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 14
    .line 15
    new-instance v1, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5902(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$2;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$7000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

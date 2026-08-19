.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$12;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->loadRewardImage()V
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
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$12;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

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
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$12;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$12;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4202(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$12;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

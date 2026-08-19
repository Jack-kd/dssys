.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$4;
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
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$4;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

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
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$4;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p1, "MeishuRewardVideoPlayer"

    .line 11
    .line 12
    const-string v0, "video_playing_download_button  clicked"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$4;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-static {p1, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1102(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$4;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1202(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$4;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

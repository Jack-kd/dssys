.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1$2;
.super Lcom/meishu/sdk/core/safe/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;->safeOnClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1$2;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1$2;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 7
    .line 8
    const/16 p2, 0x13

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1$2;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p1, p2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

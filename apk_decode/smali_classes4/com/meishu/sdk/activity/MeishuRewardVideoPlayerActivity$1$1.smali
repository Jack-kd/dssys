.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1$1;
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
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;

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
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 7
    .line 8
    const/16 p2, 0x14

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->e()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->resume()V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

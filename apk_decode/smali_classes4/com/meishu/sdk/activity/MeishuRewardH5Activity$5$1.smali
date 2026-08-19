.class Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;->onPageStarted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;

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
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/l;->safeRun()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$900(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Lcom/meishu/sdk/core/bquery/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lcom/meishu/sdk/R$id;->ms_reward_back_layout:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 19
    .line 20
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$300()Lcom/meishu/sdk/core/webview/s;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v1, v1, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/16 v1, 0x8

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 37
    .line 38
    .line 39
    return-void
.end method

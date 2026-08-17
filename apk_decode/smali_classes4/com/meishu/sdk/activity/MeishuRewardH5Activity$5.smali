.class Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/webview/listener/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->initStateByWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;ZZI)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$500()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onPageFinished: "

    .line 11
    .line 12
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " code:"

    .line 19
    .line 20
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-static {p2, p3}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 34
    .line 35
    invoke-static {p2, p1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$402(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 2
    .line 3
    new-instance v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5$1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5$1;-><init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity$5;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

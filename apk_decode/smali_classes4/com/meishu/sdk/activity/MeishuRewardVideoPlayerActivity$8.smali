.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/webview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->initWebView(J)V
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
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCloseWebView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRewardSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onWebClicked()V
    .locals 0

    return-void
.end method

.method public onWebReady(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/webview/s;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/webview/s;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    const/4 v1, 0x0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 32
    .line 33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-static {p1, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1402(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 39
    .line 40
    invoke-static {p1, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 53
    .line 54
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1402(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 60
    .line 61
    invoke-static {p1, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 66
    .line 67
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v1, v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1402(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    invoke-static {p1, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1702(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Landroid/widget/RelativeLayout;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;

    .line 89
    .line 90
    invoke-direct {v1, p0, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;Landroid/webkit/WebView;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-static {p1, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

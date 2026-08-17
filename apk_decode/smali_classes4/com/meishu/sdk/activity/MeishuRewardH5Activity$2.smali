.class Lcom/meishu/sdk/activity/MeishuRewardH5Activity$2;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->initClickEvent(Lcom/meishu/sdk/core/bquery/i;)V
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
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$2;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/o;->safeOnClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$300()Lcom/meishu/sdk/core/webview/s;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$300()Lcom/meishu/sdk/core/webview/s;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p1, p1, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$300()Lcom/meishu/sdk/core/webview/s;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$300()Lcom/meishu/sdk/core/webview/s;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/meishu/sdk/core/webview/q;->a(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$300()Lcom/meishu/sdk/core/webview/s;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p1, p1, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$300()Lcom/meishu/sdk/core/webview/s;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$300()Lcom/meishu/sdk/core/webview/s;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p1, p1, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

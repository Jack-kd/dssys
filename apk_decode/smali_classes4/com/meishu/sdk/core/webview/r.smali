.class public Lcom/meishu/sdk/core/webview/r;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/meishu/sdk/core/webview/q;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/webview/q;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/r;->b:Lcom/meishu/sdk/core/webview/q;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/webview/r;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "javascript:window.ADMateJSBridge.updateTempState(\'%s\')"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/webview/r;->a:Ljava/lang/String;

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/meishu/sdk/core/webview/r;->b:Lcom/meishu/sdk/core/webview/q;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/meishu/sdk/core/webview/q;->a:Landroid/webkit/WebView;

    .line 16
    .line 17
    new-instance v2, Lcom/meishu/sdk/core/webview/r$a;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/meishu/sdk/core/webview/r$a;-><init>(Lcom/meishu/sdk/core/webview/r;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

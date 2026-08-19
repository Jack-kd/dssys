.class public Lcom/meishu/sdk/core/webview/l;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/ref/SoftReference;

.field public final synthetic b:Lcom/meishu/sdk/core/webview/m;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/webview/m;Ljava/lang/ref/SoftReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/l;->b:Lcom/meishu/sdk/core/webview/m;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/webview/l;->a:Ljava/lang/ref/SoftReference;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/l;->b:Lcom/meishu/sdk/core/webview/m;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/webview/l;->a:Ljava/lang/ref/SoftReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/webkit/WebView;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/webview/m;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

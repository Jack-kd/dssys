.class Lcom/beizi/fusion/widget/LandingView$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/widget/LandingView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/widget/LandingView;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/widget/LandingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/widget/LandingView$c;->a:Lcom/beizi/fusion/widget/LandingView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/beizi/fusion/w3;->b()Lcom/beizi/fusion/w3;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/beizi/fusion/w3;->f()Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Lcom/beizi/fusion/widget/LandingView$c$a;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/beizi/fusion/widget/LandingView$c$a;-><init>(Lcom/beizi/fusion/widget/LandingView$c;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/beizi/fusion/widget/LandingView$c;->a:Lcom/beizi/fusion/widget/LandingView;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/beizi/fusion/widget/LandingView;->e(Lcom/beizi/fusion/widget/LandingView;)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/beizi/fusion/widget/LandingView$c;->a:Lcom/beizi/fusion/widget/LandingView;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/beizi/fusion/widget/LandingView;->c(Lcom/beizi/fusion/widget/LandingView;)Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getShowTime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/beizi/fusion/widget/LandingView$c;->a:Lcom/beizi/fusion/widget/LandingView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/beizi/fusion/widget/LandingView;->f(Lcom/beizi/fusion/widget/LandingView;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/beizi/fusion/widget/LandingView$c;->a:Lcom/beizi/fusion/widget/LandingView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/beizi/fusion/widget/LandingView;->f(Lcom/beizi/fusion/widget/LandingView;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/beizi/fusion/widget/LandingView$c;->a:Lcom/beizi/fusion/widget/LandingView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/beizi/fusion/widget/LandingView;->f(Lcom/beizi/fusion/widget/LandingView;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

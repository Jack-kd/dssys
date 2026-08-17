.class final Lcom/kwad/sdk/core/webview/KsAdWebView$1;
.super Lcom/kwad/sdk/core/webview/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/webview/KsAdWebView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/KsAdWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/webview/KsAdWebView$1;->bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/webview/a/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/webview/a/c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/KsAdWebView$1;->bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->g(Lcom/kwad/sdk/core/webview/KsAdWebView;)Lcom/kwad/sdk/core/webview/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/KsAdWebView$1;->bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->g(Lcom/kwad/sdk/core/webview/KsAdWebView;)Lcom/kwad/sdk/core/webview/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/kwad/sdk/core/webview/KsAdWebView$1;->bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/kwad/sdk/core/webview/KsAdWebView;->h(Lcom/kwad/sdk/core/webview/KsAdWebView;)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/webview/d;->c(Lcom/kwad/sdk/core/webview/a/c$a;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/KsAdWebView$1;->bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->g(Lcom/kwad/sdk/core/webview/KsAdWebView;)Lcom/kwad/sdk/core/webview/d;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/KsAdWebView$1;->bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->i(Lcom/kwad/sdk/core/webview/KsAdWebView;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/KsAdWebView$1;->bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/16 p2, 0x64

    .line 50
    .line 51
    if-lt p1, p2, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/KsAdWebView$1;->bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->g(Lcom/kwad/sdk/core/webview/KsAdWebView;)Lcom/kwad/sdk/core/webview/d;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/kwad/sdk/core/webview/KsAdWebView$1;->bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 60
    .line 61
    invoke-static {p2}, Lcom/kwad/sdk/core/webview/KsAdWebView;->h(Lcom/kwad/sdk/core/webview/KsAdWebView;)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/webview/d;->e(Lcom/kwad/sdk/core/webview/a/c$a;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/core/webview/a/c;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/KsAdWebView$1;->bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->g(Lcom/kwad/sdk/core/webview/KsAdWebView;)Lcom/kwad/sdk/core/webview/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/KsAdWebView$1;->bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->g(Lcom/kwad/sdk/core/webview/KsAdWebView;)Lcom/kwad/sdk/core/webview/d;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/KsAdWebView$1;->bcg:Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->h(Lcom/kwad/sdk/core/webview/KsAdWebView;)Lcom/kwad/sdk/core/webview/a/c$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/kwad/sdk/core/webview/d;->d(Lcom/kwad/sdk/core/webview/a/c$a;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

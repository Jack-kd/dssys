.class Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HsWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$000(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Landroid/widget/ProgressBar;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$000(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Landroid/widget/ProgressBar;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p2, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$300(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p2, ""

    :cond_2
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$300(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;->onTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$300(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;

    move-result-object p1

    invoke-interface {p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;->onLoadSuccess()V

    :cond_3
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$000(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$000(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$000(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$000(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$300(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$300(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;

    move-result-object p1

    invoke-interface {p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;->onLoadFailed()V

    :cond_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$100(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$200(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$100(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$200(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

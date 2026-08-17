.class Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HsWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebChromeClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebChromeClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$000(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebChromeClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$000(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebChromeClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$000(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebChromeClient;->this$0:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->access$000(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

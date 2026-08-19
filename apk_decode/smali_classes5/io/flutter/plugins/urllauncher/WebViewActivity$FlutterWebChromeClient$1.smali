.class Lio/flutter/plugins/urllauncher/WebViewActivity$FlutterWebChromeClient$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/urllauncher/WebViewActivity$FlutterWebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/flutter/plugins/urllauncher/WebViewActivity$FlutterWebChromeClient;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/urllauncher/WebViewActivity$FlutterWebChromeClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity$FlutterWebChromeClient$1;->this$1:Lio/flutter/plugins/urllauncher/WebViewActivity$FlutterWebChromeClient;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebResourceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity$FlutterWebChromeClient$1;->this$1:Lio/flutter/plugins/urllauncher/WebViewActivity$FlutterWebChromeClient;

    .line 2
    .line 3
    iget-object p1, p1, Lio/flutter/plugins/urllauncher/WebViewActivity$FlutterWebChromeClient;->this$0:Lio/flutter/plugins/urllauncher/WebViewActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lio/flutter/plugins/urllauncher/WebViewActivity;->webview:Landroid/webkit/WebView;

    .line 6
    .line 7
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method

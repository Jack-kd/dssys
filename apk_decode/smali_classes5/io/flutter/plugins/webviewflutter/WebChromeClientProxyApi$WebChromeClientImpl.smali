.class public Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;
.super Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebChromeClientImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebChromeClientImpl"


# instance fields
.field private final api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

.field private returnValueForOnConsoleMessage:Z

.field private returnValueForOnJsAlert:Z

.field private returnValueForOnJsConfirm:Z

.field private returnValueForOnJsPrompt:Z

.field private returnValueForOnShowFileChooser:Z


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnShowFileChooser:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnConsoleMessage:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnJsAlert:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnJsConfirm:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnJsPrompt:Z

    .line 14
    .line 15
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static synthetic b(Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static synthetic c(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/JsResult;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->lambda$onJsAlert$8(Landroid/webkit/JsResult;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static synthetic e(Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static synthetic f(Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static synthetic g(Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static synthetic h(Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static synthetic i(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/JsResult;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->lambda$onJsConfirm$9(Landroid/webkit/JsResult;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/JsPromptResult;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->lambda$onJsPrompt$10(Landroid/webkit/JsPromptResult;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;ZLandroid/webkit/ValueCallback;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->lambda$onShowFileChooser$5(ZLandroid/webkit/ValueCallback;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onJsAlert$8(Landroid/webkit/JsResult;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lio/flutter/plugins/webviewflutter/ResultCompat;->isFailure()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p2}, Lio/flutter/plugins/webviewflutter/ResultCompat;->exceptionOrNull()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v0, "WebChromeClientImpl"

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method private synthetic lambda$onJsConfirm$9(Landroid/webkit/JsResult;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lio/flutter/plugins/webviewflutter/ResultCompat;->isFailure()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p2}, Lio/flutter/plugins/webviewflutter/ResultCompat;->exceptionOrNull()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v0, "WebChromeClientImpl"

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p2}, Lio/flutter/plugins/webviewflutter/ResultCompat;->getOrNull()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-object v1
.end method

.method private synthetic lambda$onJsPrompt$10(Landroid/webkit/JsPromptResult;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lio/flutter/plugins/webviewflutter/ResultCompat;->isFailure()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p2}, Lio/flutter/plugins/webviewflutter/ResultCompat;->exceptionOrNull()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v0, "WebChromeClientImpl"

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-virtual {p2}, Lio/flutter/plugins/webviewflutter/ResultCompat;->getOrNull()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-object v1
.end method

.method private synthetic lambda$onShowFileChooser$5(ZLandroid/webkit/ValueCallback;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;
    .locals 3

    .line 1
    invoke-virtual {p3}, Lio/flutter/plugins/webviewflutter/ResultCompat;->isFailure()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p3}, Lio/flutter/plugins/webviewflutter/ResultCompat;->exceptionOrNull()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string p3, "WebChromeClientImpl"

    .line 22
    .line 23
    invoke-virtual {p1, p3, p2}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-virtual {p3}, Lio/flutter/plugins/webviewflutter/ResultCompat;->getOrNull()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Ljava/util/List;

    .line 32
    .line 33
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    check-cast p3, Ljava/util/List;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    new-array p1, p1, [Landroid/net/Uri;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ge v0, v2, :cond_1

    .line 52
    .line 53
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    aput-object v2, p1, v0

    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-object v1
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/Y2;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/Y2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, v1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->onConsoleMessage(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/ConsoleMessage;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnConsoleMessage:Z

    .line 12
    .line 13
    return p1
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/W2;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/W2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->onGeolocationPermissionsHidePrompt(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/GeolocationPermissions$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/a3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/a3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, p2, v1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->onGeolocationPermissionsShowPrompt(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onHideCustomView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/f3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/f3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->onHideCustomView(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnJsAlert:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 6
    .line 7
    new-instance v0, Lio/flutter/plugins/webviewflutter/b3;

    .line 8
    .line 9
    invoke-direct {v0, p0, p4}, Lio/flutter/plugins/webviewflutter/b3;-><init>(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/JsResult;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lio/flutter/plugins/webviewflutter/ResultCompat;->asCompatCallback(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    invoke-virtual/range {v1 .. v6}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->onJsAlert(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnJsConfirm:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 6
    .line 7
    new-instance v0, Lio/flutter/plugins/webviewflutter/V2;

    .line 8
    .line 9
    invoke-direct {v0, p0, p4}, Lio/flutter/plugins/webviewflutter/V2;-><init>(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/JsResult;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lio/flutter/plugins/webviewflutter/ResultCompat;->asCompatCallback(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    invoke-virtual/range {v1 .. v6}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->onJsConfirm(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnJsPrompt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 6
    .line 7
    new-instance v0, Lio/flutter/plugins/webviewflutter/X2;

    .line 8
    .line 9
    invoke-direct {v0, p0, p5}, Lio/flutter/plugins/webviewflutter/X2;-><init>(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/JsPromptResult;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lio/flutter/plugins/webviewflutter/ResultCompat;->asCompatCallback(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move-object v6, p4

    .line 21
    invoke-virtual/range {v1 .. v7}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->onJsPrompt(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 2
    .param p1    # Landroid/webkit/PermissionRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/d3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/d3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, v1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->onPermissionRequest(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/PermissionRequest;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 2
    .line 3
    int-to-long v3, p2

    .line 4
    new-instance v5, Lio/flutter/plugins/webviewflutter/c3;

    .line 5
    .line 6
    invoke-direct {v5}, Lio/flutter/plugins/webviewflutter/c3;-><init>()V

    .line 7
    .line 8
    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-virtual/range {v0 .. v5}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->onProgressChanged(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/WebView;JLkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/Z2;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/Z2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, p2, v1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->onShowCustomView(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/ValueCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/webkit/WebChromeClient$FileChooserParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnShowFileChooser:Z

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    .line 4
    .line 5
    new-instance v2, Lio/flutter/plugins/webviewflutter/e3;

    .line 6
    .line 7
    invoke-direct {v2, p0, v0, p2}, Lio/flutter/plugins/webviewflutter/e3;-><init>(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;ZLandroid/webkit/ValueCallback;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lio/flutter/plugins/webviewflutter/ResultCompat;->asCompatCallback(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {v1, p0, p1, p3, p2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->onShowFileChooser(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient$FileChooserParams;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    return v0
.end method

.method public setReturnValueForOnConsoleMessage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnConsoleMessage:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReturnValueForOnJsAlert(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnJsAlert:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReturnValueForOnJsConfirm(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnJsConfirm:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReturnValueForOnJsPrompt(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnJsPrompt:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReturnValueForOnShowFileChooser(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->returnValueForOnShowFileChooser:Z

    .line 2
    .line 3
    return-void
.end method

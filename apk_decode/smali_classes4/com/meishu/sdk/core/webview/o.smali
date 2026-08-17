.class public Lcom/meishu/sdk/core/webview/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;Lcom/meishu/sdk/core/webview/n;Lcom/meishu/sdk/core/webview/listener/a;Lcom/meishu/sdk/core/webview/listener/d;)Lcom/meishu/sdk/core/webview/s;
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    instance-of v3, p2, Lcom/meishu/sdk/meishu_ad/nativ/d;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 2
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result v3

    move-object v4, p2

    check-cast v4, Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 3
    iget v4, v4, Lcom/meishu/sdk/meishu_ad/nativ/d;->a:I

    if-ne v3, v4, :cond_0

    move v3, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    move v3, v2

    .line 4
    :goto_0
    new-instance v4, Lcom/meishu/sdk/core/webview/b;

    new-instance v5, LO0/c;

    invoke-direct {v5, p2, v3}, LO0/c;-><init>(Lcom/meishu/sdk/platform/ms/c;Z)V

    invoke-direct {v4, v5}, Lcom/meishu/sdk/core/webview/b;-><init>(Lcom/meishu/sdk/core/webview/b$b;)V

    .line 5
    new-instance v5, Landroid/webkit/WebView;

    new-instance v6, Landroid/content/ContextWrapper;

    invoke-direct {v6, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v5, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 7
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 8
    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 9
    invoke-virtual {v6, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 10
    invoke-virtual {v6, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 11
    invoke-virtual {v6, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 12
    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v6, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 16
    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 17
    new-instance v6, Lcom/meishu/sdk/core/webview/g;

    invoke-direct {v6, p1}, Lcom/meishu/sdk/core/webview/g;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6, p4}, Lcom/meishu/sdk/core/webview/g;->a(Lcom/meishu/sdk/core/webview/listener/a;)V

    .line 19
    new-instance v7, Lcom/meishu/sdk/core/webview/o$a;

    invoke-direct {v7, v4}, Lcom/meishu/sdk/core/webview/o$a;-><init>(Lcom/meishu/sdk/core/webview/b;)V

    invoke-virtual {v6, v7}, Lcom/meishu/sdk/core/webview/g;->a(Lcom/meishu/sdk/core/webview/listener/a;)V

    .line 20
    invoke-static {p0}, Lcom/meishu/sdk/core/webview/d;->a(Landroid/content/Context;)Lcom/meishu/sdk/core/webview/d;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 21
    new-instance v7, Lcom/meishu/sdk/core/webview/f;

    invoke-direct {v7, p0, p1, v6}, Lcom/meishu/sdk/core/webview/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/webview/g;)V

    .line 22
    iput-boolean v2, v7, Lcom/meishu/sdk/core/webview/f;->f:Z

    .line 23
    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 24
    new-instance p0, Lcom/meishu/sdk/core/webview/e;

    invoke-direct {p0, p1, v6}, Lcom/meishu/sdk/core/webview/e;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/webview/g;)V

    invoke-virtual {v5, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    if-eqz p3, :cond_1

    .line 25
    iget-object p0, p3, Lcom/meishu/sdk/core/webview/n;->a:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v5, p0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 27
    :cond_1
    new-instance p0, Lcom/meishu/sdk/core/webview/a;

    invoke-direct {p0, p2, v5, v6, v3}, Lcom/meishu/sdk/core/webview/a;-><init>(Lcom/meishu/sdk/platform/ms/c;Landroid/webkit/WebView;Lcom/meishu/sdk/core/webview/g;Z)V

    .line 28
    iput-object p5, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 29
    new-instance p3, LO0/d;

    invoke-direct {p3, v4}, LO0/d;-><init>(Lcom/meishu/sdk/core/webview/b;)V

    .line 30
    iput-object p3, p0, Lcom/meishu/sdk/core/webview/a;->f:Lcom/meishu/sdk/core/webview/listener/c;

    .line 31
    const-string p3, "ADMateJSBridge"

    invoke-virtual {v5, p0, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x1a

    .line 32
    invoke-static {p2, v3, p0, v2}, Lcom/meishu/sdk/core/webview/o;->a(Lcom/meishu/sdk/platform/ms/c;ZII)V

    .line 33
    invoke-static {v5, p1}, Lcom/meishu/sdk/core/webview/o;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 34
    new-instance p0, Lcom/meishu/sdk/core/webview/s;

    invoke-direct {p0, v5, v7, v6, v4}, Lcom/meishu/sdk/core/webview/s;-><init>(Landroid/webkit/WebView;Lcom/meishu/sdk/core/webview/f;Lcom/meishu/sdk/core/webview/g;Lcom/meishu/sdk/core/webview/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 35
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    instance-of p0, p4, Lcom/meishu/sdk/core/webview/listener/g;

    if-eqz p0, :cond_2

    .line 37
    check-cast p4, Lcom/meishu/sdk/core/webview/listener/g;

    invoke-interface {p4, p1, v1, v2, v0}, Lcom/meishu/sdk/core/webview/listener/g;->onPageFinished(Ljava/lang/String;ZZI)Z

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .param p0    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    :try_start_0
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/d1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 50
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/meishu/sdk/core/utils/d1;->a()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 56
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object v3, v0

    goto :goto_4

    .line 58
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 59
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    const-string v0, "o"

    const-string v1, "use local webView"

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v5, "UTF-8"

    const/4 v6, 0x0

    const-string v4, "text/html"

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v1, p0

    move-object v2, p1

    .line 62
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/meishu/sdk/core/webview/b;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 39
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    new-instance v1, Lcom/meishu/sdk/core/webview/c;

    invoke-direct {v1, p0, p1, v0}, Lcom/meishu/sdk/core/webview/c;-><init>(Lcom/meishu/sdk/core/webview/b;ZI)V

    invoke-static {v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/meishu/sdk/platform/ms/c;ZII)V
    .locals 2

    .line 41
    :try_start_0
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object p0

    check-cast p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 42
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempId()I

    move-result v0

    if-eqz p1, :cond_0

    if-gtz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getRewardTmpId()I

    move-result v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object p0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"web_temp_id\":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p0, p2, p3, p1}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/platform/ms/c;ZZI)V
    .locals 0

    if-nez p2, :cond_0

    const/16 p2, 0x1c

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/meishu/sdk/core/webview/o;->a(Lcom/meishu/sdk/platform/ms/c;ZII)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 64
    :cond_0
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->p:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 65
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

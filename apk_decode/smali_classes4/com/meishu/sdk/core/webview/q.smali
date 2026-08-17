.class public Lcom/meishu/sdk/core/webview/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String;

.field public static i:Landroid/os/Handler;

.field public static j:I


# instance fields
.field public a:Landroid/webkit/WebView;

.field public b:I

.field public c:I

.field public d:Z

.field public e:J

.field public f:Ljava/lang/Runnable;

.field public g:Lcom/meishu/sdk/core/webview/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "\n<!DOCTYPE html>\n<html>\n<head>\n    <meta charset=\"utf-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\n    <title>500 - \u670d\u52a1\u5668\u9519\u8bef</title>\n    <style>\n        body {\n            margin: 0;\n            padding: 0;\n            background-color: white;\n            display: flex;\n            flex-direction: column;\n            justify-content: center;\n            align-items: center;\n            height: 100vh;\n            overflow: hidden;\n            touch-action: none;\n        }\n        .error-image {\n            width: 140px;\n            height: 119px;\n            margin-bottom: 16px;\n        }\n        .error-text {\n            font-weight: 400;\n            font-size: 14px;\n            color: #888888;\n            text-align: center;\n            line-height: 24px;\n            max-width: 80%;\n        }\n    </style>\n</head>\n<body>\n<img class=\"error-image\" src=\"data:image/png;base64,"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget v2, Lcom/meishu/sdk/R$drawable;->ad_mate_error:I

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/webview/q;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "\" alt=\"500\u9519\u8bef\u63d0\u793a\u56fe\">\n<p class=\"error-text\">\u9875\u9762\u52a0\u8f7d\u5931\u8d25<br>\u53ef\u5c1d\u8bd5\u5237\u65b0\u6216\u68c0\u67e5\u7f51\u7edc~</p>\n</body>\n</html>\n"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/meishu/sdk/core/webview/q;->h:Ljava/lang/String;

    .line 30
    .line 31
    const/16 v0, 0x2328

    .line 32
    .line 33
    sput v0, Lcom/meishu/sdk/core/webview/q;->j:I

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/meishu/sdk/core/webview/q;->b:I

    .line 6
    .line 7
    new-instance v0, Lcom/meishu/sdk/core/webview/q$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/webview/q$a;-><init>(Lcom/meishu/sdk/core/webview/q;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/meishu/sdk/core/webview/q;->f:Ljava/lang/Runnable;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 17
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 19
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x2

    .line 20
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 21
    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    .line 9
    sget-object p0, Lcom/meishu/sdk/core/webview/q;->i:Landroid/os/Handler;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a(Lcom/meishu/sdk/core/webview/q;Ljava/lang/String;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/q;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meishu/sdk/core/webview/q;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 14
    const-string v0, "WebViewUtil"

    const-string v1, "notifyWebStatus----------------"

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/q;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/meishu/sdk/core/webview/r;

    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/core/webview/r;-><init>(Lcom/meishu/sdk/core/webview/q;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/core/webview/q;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/webview/q;->d:Z

    return p1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "about:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "data:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android_asset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.class public Lcom/meishu/sdk/core/webview/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

.field public final b:Lcom/meishu/sdk/platform/ms/c;

.field public final c:Lcom/meishu/sdk/core/webview/g;

.field public d:Z

.field public final e:Lcom/meishu/sdk/core/webview/k;

.field public f:Lcom/meishu/sdk/core/webview/listener/c;

.field public g:Lcom/meishu/sdk/core/webview/listener/d;

.field public h:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/c;Landroid/webkit/WebView;Lcom/meishu/sdk/core/webview/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/a;->b:Lcom/meishu/sdk/platform/ms/c;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/meishu/sdk/core/webview/a;->c:Lcom/meishu/sdk/core/webview/g;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/meishu/sdk/core/webview/a;->d:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    instance-of p3, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    check-cast p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/a;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    :cond_1
    new-instance p1, Ljava/lang/ref/SoftReference;

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/a;->h:Ljava/lang/ref/SoftReference;

    .line 35
    .line 36
    new-instance p1, Lcom/meishu/sdk/core/webview/a$a;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/meishu/sdk/core/webview/a$a;-><init>(Lcom/meishu/sdk/core/webview/a;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/a;->e:Lcom/meishu/sdk/core/webview/k;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/core/webview/a;Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/meishu/sdk/core/webview/a;->a(Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic a(Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;ILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;->getCallbackFunc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/meishu/sdk/core/webview/a$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meishu/sdk/core/webview/a$b;-><init>(Lcom/meishu/sdk/core/webview/a;Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 13
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/core/utils/v;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;

    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;

    const-string v0, "ADMateJSBridge"

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->getAct_type()I

    move-result p2

    if-gtz p2, :cond_1

    .line 8
    const-string p1, "clickTemp, The act_type is invalid"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    if-eqz p2, :cond_3

    .line 10
    invoke-interface {p2, p1}, Lcom/meishu/sdk/core/webview/listener/d;->onWebClicked(Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 12
    :cond_2
    :goto_0
    const-string p1, "clickTemp, The request is invalid"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/a;->c:Lcom/meishu/sdk/core/webview/g;

    .line 16
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/g;->d:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Lcom/meishu/sdk/core/webview/o;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkAppInstall(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/CheckAppInstallParam;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/CheckAppInstallParam;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/CheckAppInstallParam;->getDeep_link()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/CheckAppInstallParam;->getDeep_link()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v1, "{\"install_status\":"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, "}"

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_2
    :goto_1
    const-string p1, "ADMateJSBridge"

    .line 65
    .line 66
    const-string v0, "checkAppInstall, The request is invalid"

    .line 67
    .line 68
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p1, ""

    .line 72
    .line 73
    return-object p1
.end method

.method public clickAppDownloadInfo(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickAppDownloadInfoParam;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickAppDownloadInfoParam;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickAppDownloadInfoParam;->getType()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/webview/listener/d;->clickAppDownloadInfo(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/a;->b:Lcom/meishu/sdk/platform/ms/c;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickAppDownloadInfoParam;->getType()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/view/DownloadView;->openByType(Lcom/meishu/sdk/platform/ms/c;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    :goto_0
    const-string p1, "ADMateJSBridge"

    .line 57
    .line 58
    const-string v0, "clickAppDownloadInfo, The request is invalid"

    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_1
    return-void
.end method

.method public clickTemp(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public closePage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/meishu/sdk/core/webview/listener/d;->onClosePage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_0
    const-string p1, "ADMateJSBridge"

    .line 41
    .line 42
    const-string v0, "closePage, The request is invalid"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public dismissAd(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/meishu/sdk/core/webview/listener/d;->dismissAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_0
    const-string p1, "ADMateJSBridge"

    .line 41
    .line 42
    const-string v0, "dismissAd, The request is invalid"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public eventUrlReport(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/EventUrlReportParam;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/EventUrlReportParam;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/a;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/EventUrlReportParam;->getEvent_id()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/EventUrlReportParam;->getError_code()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/EventUrlReportParam;->getError_mesg()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, v1, v2, p1}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    :goto_0
    const-string p1, "ADMateJSBridge"

    .line 55
    .line 56
    const-string v0, "eventUrlReport, The request is invalid"

    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public getActivityState(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 16
    .line 17
    const-string v0, "ADMateJSBridge"

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/meishu/sdk/core/webview/listener/d;->getActivityState()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "{\"state\":"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, "}"

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "getActivityState callback."

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_1
    :goto_0
    const-string p1, "getActivityState, The request is invalid"

    .line 83
    .line 84
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-object v1
.end method

.method public getAdInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 8
    .line 9
    const-string v0, "ADMateJSBridge"

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/core/webview/a;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 24
    .line 25
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/y0;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-boolean v2, p0, Lcom/meishu/sdk/core/webview/a;->d:Z

    .line 34
    .line 35
    invoke-static {p1, v1, v2}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->make(Lcom/meishu/sdk/core/ad/AdSlot;Ljava/lang/String;Z)Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v1, Lcom/meishu/sdk/core/utils/v;->a:Lcom/google/gson/Gson;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "getAdInfo, callback:"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_1
    :goto_0
    const-string p1, "getAdInfo, The request is invalid"

    .line 67
    .line 68
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p1, ""

    .line 72
    .line 73
    return-object p1
.end method

.method public getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 16
    .line 17
    const-string v0, "ADMateJSBridge"

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/meishu/sdk/core/webview/listener/d;->getDeviceInfo()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "getDeviceInfo callback."

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_1
    :goto_0
    const-string p1, "getDeviceInfo, The request is invalid"

    .line 61
    .line 62
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-object v1
.end method

.method public getJSApiVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p1, "{\"version\":2051300}"

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    :goto_0
    const-string p1, "ADMateJSBridge"

    .line 25
    .line 26
    const-string v0, "getJSApiVersion, The request is invalid"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    return-object p1
.end method

.method public h5NotifyError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/H5NotifyErrorParam;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/H5NotifyErrorParam;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/a;->a:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/H5NotifyErrorParam;->getCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/H5NotifyErrorParam;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/16 v2, 0xf

    .line 32
    .line 33
    invoke-static {v0, v2, v1, p1}, Lcom/meishu/sdk/core/utils/b1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 39
    .line 40
    .line 41
    :goto_0
    :try_start_3
    iget-object p1, p0, Lcom/meishu/sdk/core/webview/a;->e:Lcom/meishu/sdk/core/webview/k;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/webview/k;->a(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :catch_1
    move-exception p1

    .line 49
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :catch_2
    move-exception p1

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    :goto_1
    const-string p1, "ADMateJSBridge"

    .line 56
    .line 57
    const-string v0, "h5NotifyError, The request is invalid"

    .line 58
    .line 59
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :goto_3
    return-void
.end method

.method public h5Readied(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/core/webview/a;->e:Lcom/meishu/sdk/core/webview/k;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/webview/k;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    const-string p1, "ADMateJSBridge"

    .line 34
    .line 35
    const-string v0, "h5Readied, The request is invalid"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public invokeDeepLink(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/meishu/sdk/core/webview/jsbridge/a;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/meishu/sdk/core/webview/a;->b:Lcom/meishu/sdk/platform/ms/c;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/meishu/sdk/core/webview/jsbridge/a;-><init>(Lcom/meishu/sdk/platform/ms/c;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, LO0/a;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, LO0/a;-><init>(Lcom/meishu/sdk/core/webview/a;Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lcom/meishu/sdk/core/webview/jsbridge/a;->a(Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;Lcom/meishu/sdk/core/webview/jsbridge/a$a;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    :goto_0
    const-string p1, "ADMateJSBridge"

    .line 38
    .line 39
    const-string v0, "invokeDeepLink, The request is invalid"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public isAppBackground(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/meishu/sdk/core/webview/listener/d;->isAppBackground()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "{\"is_background\":"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, "}"

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_1
    :goto_0
    const-string p1, "ADMateJSBridge"

    .line 61
    .line 62
    const-string v0, "isAppBackground, The request is invalid"

    .line 63
    .line 64
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-object v1
.end method

.method public isSoundsOpen(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 16
    .line 17
    const-string v0, "ADMateJSBridge"

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/meishu/sdk/core/webview/listener/d;->isSoundsOpen()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "isSoundsOpen isOpen:"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "{\"isOpen\":"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, "}"

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_1
    :goto_0
    const-string p1, "isSoundsOpen, The request is invalid"

    .line 83
    .line 84
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-object v1
.end method

.method public notifyRewarded(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/meishu/sdk/core/webview/listener/d;->notifyRewarded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_0
    const-string p1, "ADMateJSBridge"

    .line 41
    .line 42
    const-string v0, "notifyRewarded, The request is invalid"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public onQuickRewardClick(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public openWebViewPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/OpenWebViewPageParam;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/OpenWebViewPageParam;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    new-instance v1, Lcom/meishu/sdk/core/webview/jsbridge/b;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/meishu/sdk/core/webview/a;->b:Lcom/meishu/sdk/platform/ms/c;

    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/meishu/sdk/core/webview/jsbridge/b;-><init>(Lcom/meishu/sdk/platform/ms/c;)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    :try_start_0
    iget-object v4, v1, Lcom/meishu/sdk/core/webview/jsbridge/b;->a:Lcom/meishu/sdk/core/webview/jsbridge/bean/a;

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    const-string p1, "\u521d\u59cb\u5316\u9519\u8bef"

    .line 36
    .line 37
    invoke-static {v3, p1}, Lcom/meishu/sdk/core/webview/jsbridge/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/OpenWebViewPageParam;->getUrl()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    const-string p1, "url \u4e3a\u7a7a"

    .line 55
    .line 56
    invoke-static {v3, p1}, Lcom/meishu/sdk/core/webview/jsbridge/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_2
    iget-object v4, v1, Lcom/meishu/sdk/core/webview/jsbridge/b;->a:Lcom/meishu/sdk/core/webview/jsbridge/bean/a;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/OpenWebViewPageParam;->getUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    filled-new-array {v5}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setdUrl([Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    iget-object v1, v1, Lcom/meishu/sdk/core/webview/jsbridge/b;->a:Lcom/meishu/sdk/core/webview/jsbridge/bean/a;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/OpenWebViewPageParam;->getOpen_type()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    const/4 v5, 0x1

    .line 85
    if-ne p1, v5, :cond_3

    .line 86
    .line 87
    move p1, v5

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    move p1, v3

    .line 90
    :goto_0
    invoke-static {v2, v4, v1, p1}, Lcom/meishu/sdk/core/utils/f;->b(Lcom/meishu/sdk/platform/ms/c;Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Z)V

    .line 91
    .line 92
    .line 93
    invoke-static {v5, v0}, Lcom/meishu/sdk/core/webview/jsbridge/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-object p1

    .line 98
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "\u672a\u77e5\u9519\u8bef:"

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :catch_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v3, p1}, Lcom/meishu/sdk/core/webview/jsbridge/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    :cond_4
    :goto_2
    const-string p1, "ADMateJSBridge"

    .line 128
    .line 129
    const-string v1, "openWebViewPage, The request is invalid"

    .line 130
    .line 131
    invoke-static {p1, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-object v0
.end method

.method public setShakeOrTurnState(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/SetShakeOrTurnStateParam;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/SetShakeOrTurnStateParam;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/SetShakeOrTurnStateParam;->getIsOpen()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/webview/listener/d;->setShakeOrTurnState(Z)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "{\"isOpen\":"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, "}"

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    const-string p1, "ADMateJSBridge"

    .line 70
    .line 71
    const-string v0, "setShakeOrTurnState, The request is invalid"

    .line 72
    .line 73
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_1
    return-object v1
.end method

.method public setSoundsOpen(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/SetSoundsOpenParam;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/SetSoundsOpenParam;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/SetSoundsOpenParam;->getIsOpen()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-interface {v0, v2}, Lcom/meishu/sdk/core/webview/listener/d;->setSoundsOpen(Z)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "{\"isOpen\":"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/SetSoundsOpenParam;->getIsOpen()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, "}"

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object p1

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    const-string p1, "ADMateJSBridge"

    .line 73
    .line 74
    const-string v0, "setSoundsOpen, The request is invalid"

    .line 75
    .line 76
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    return-object v1
.end method

.method public setVideoPlayState(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const-class v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/SetVideoPlayStateParam;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/webview/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/webview/jsbridge/bean/SetVideoPlayStateParam;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;->getUuid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/meishu/sdk/core/webview/a;->a()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/a;->g:Lcom/meishu/sdk/core/webview/listener/d;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/SetVideoPlayStateParam;->getIsPlay()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-interface {v0, v2}, Lcom/meishu/sdk/core/webview/listener/d;->setVideoPlayState(Z)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "{\"isPlay\":"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/SetVideoPlayStateParam;->getIsPlay()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, "}"

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object p1

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    const-string p1, "ADMateJSBridge"

    .line 73
    .line 74
    const-string v0, "setVideoPlayState, The request is invalid"

    .line 75
    .line 76
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    return-object v1
.end method

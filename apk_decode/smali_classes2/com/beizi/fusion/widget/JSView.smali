.class public Lcom/beizi/fusion/widget/JSView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private a:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/beizi/fusion/widget/JSView;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/beizi/fusion/widget/JSView;->b:I

    .line 8
    new-instance p1, Lcom/beizi/fusion/widget/JSView$a;

    invoke-direct {p1, p0}, Lcom/beizi/fusion/widget/JSView$a;-><init>(Lcom/beizi/fusion/widget/JSView;)V

    iput-object p1, p0, Lcom/beizi/fusion/widget/JSView;->d:Landroid/os/Handler;

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/beizi/fusion/widget/JSView;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/beizi/fusion/widget/JSView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/widget/JSView;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/beizi/fusion/widget/JSView;->a:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 5
    invoke-virtual {p2}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getRepeatCount()I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/widget/JSView;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/widget/JSView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/widget/JSView;->b:I

    return p0
.end method

.method private a()V
    .locals 11

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/widget/JSView;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    move-result-object v0

    new-instance v1, Lcom/beizi/fusion/events/EventBean;

    sget-object v2, Lcom/beizi/fusion/q1;->u:Ljava/lang/String;

    const-string v3, ""

    const-string v4, "510.200"

    const-string v5, ""

    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/beizi/fusion/q1;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventCar;->goRoad(Lcom/beizi/fusion/events/EventBean;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearFormData()V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/widget/JSView;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private b()V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/widget/JSView;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    move-result-object v0

    new-instance v1, Lcom/beizi/fusion/events/EventBean;

    sget-object v2, Lcom/beizi/fusion/q1;->u:Ljava/lang/String;

    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/beizi/fusion/q1;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v8, ""

    const-string v10, ""

    const-string v3, ""

    const-string v4, "510.500"

    const-string v5, ""

    const-string v7, ""

    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventCar;->goRoad(Lcom/beizi/fusion/events/EventBean;)V

    return-void
.end method

.method public static synthetic b(Lcom/beizi/fusion/widget/JSView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/widget/JSView;->a()V

    return-void
.end method

.method public static synthetic c(Lcom/beizi/fusion/widget/JSView;)Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/widget/JSView;->a:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/beizi/fusion/widget/JSView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/widget/JSView;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/beizi/fusion/widget/JSView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/widget/JSView;->d:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/beizi/fusion/widget/JSView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/widget/JSView;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/beizi/fusion/widget/JSView$b;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/beizi/fusion/widget/JSView$b;-><init>(Lcom/beizi/fusion/widget/JSView;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/beizi/fusion/widget/JSView$c;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/beizi/fusion/widget/JSView$c;-><init>(Lcom/beizi/fusion/widget/JSView;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public load()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/widget/JSView;->a:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getContentUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/widget/JSView;->a:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getContentUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/beizi/fusion/widget/JSView;->b:I

    .line 25
    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    iput v0, p0, Lcom/beizi/fusion/widget/JSView;->b:I

    .line 29
    .line 30
    :cond_0
    return-void
.end method

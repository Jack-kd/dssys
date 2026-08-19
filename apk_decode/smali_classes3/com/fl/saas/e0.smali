.class public Lcom/fl/saas/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/e0$c;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Lcom/fl/saas/d0;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kShowDay"

    iput-object v0, p0, Lcom/fl/saas/e0;->d:Ljava/lang/String;

    const-string v0, "kShowNumber"

    iput-object v0, p0, Lcom/fl/saas/e0;->e:Ljava/lang/String;

    const-string v0, "kShowSec"

    iput-object v0, p0, Lcom/fl/saas/e0;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fl/saas/e0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/fl/saas/e0;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/e0;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/fl/saas/e0;->a:Landroid/webkit/WebView;

    return-object p1
.end method

.method public static a()Lcom/fl/saas/e0;
    .locals 1

    .line 5
    invoke-static {}, Lcom/fl/saas/e0$c;->a()Lcom/fl/saas/e0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/fl/saas/e0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/e0;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(J)V
    .locals 1

    .line 6
    new-instance v0, Lcom/fl/saas/h2;

    invoke-direct {v0, p0}, Lcom/fl/saas/h2;-><init>(Lcom/fl/saas/e0;)V

    invoke-static {p1, p2, v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/e0;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/fl/saas/e0;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .line 4
    :try_start_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/fl/saas/e0;->b:Ljava/lang/String;

    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/fl/saas/e0;->a:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/fl/saas/e0;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/fl/saas/e0$b;

    invoke-direct {v0, p0}, Lcom/fl/saas/e0$b;-><init>(Lcom/fl/saas/e0;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/fl/saas/e0;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/fl/saas/e0;->a:Landroid/webkit/WebView;

    const-string v2, "about:blank"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<html>\n<body><script>async function a(b) {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/fl/saas/e0;->c:Lcom/fl/saas/d0;

    invoke-virtual {v3}, Lcom/fl/saas/d0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fl/saas/m;->b(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}</script></body></html>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/e0;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/e0;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method private synthetic b()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/e0;->c:Lcom/fl/saas/d0;

    invoke-virtual {v1}, Lcom/fl/saas/d0;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fl/saas/e0$a;

    invoke-direct {v2, p0}, Lcom/fl/saas/e0$a;-><init>(Lcom/fl/saas/e0;)V

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/Y;->a(Ljava/lang/String;Lcom/fl/saas/T;)V

    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/e0;)Lcom/fl/saas/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/e0;->c:Lcom/fl/saas/d0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/fl/saas/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/e0;->b()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fl/saas/d0;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7
    iput-object v1, v0, Lcom/fl/saas/e0;->c:Lcom/fl/saas/d0;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/fl/saas/d0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/fl/saas/e0;->c:Lcom/fl/saas/d0;

    invoke-virtual {v1}, Lcom/fl/saas/d0;->f()I

    move-result v1

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v2

    const-string v3, "kShowDay"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/fl/saas/S0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v3

    const-string v4, "kShowNumber"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/fl/saas/S0;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v6

    const-string v7, "kShowSec"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/fl/saas/S0;->a(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDate()Ljava/lang/String;

    move-result-object v10

    int-to-long v11, v1

    const-wide/16 v13, 0x3e8

    move-wide v15, v8

    mul-long v8, v11, v13

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/fl/saas/S0;->b(Ljava/lang/String;I)Lcom/fl/saas/S0;

    invoke-direct {v0, v8, v9}, Lcom/fl/saas/e0;->a(J)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/fl/saas/e0;->c:Lcom/fl/saas/d0;

    invoke-virtual {v1}, Lcom/fl/saas/d0;->b()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/fl/saas/e0;->c:Lcom/fl/saas/d0;

    invoke-virtual {v1}, Lcom/fl/saas/d0;->b()I

    move-result v1

    if-ge v3, v1, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/fl/saas/e0;->c:Lcom/fl/saas/d0;

    invoke-virtual {v1}, Lcom/fl/saas/d0;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    cmp-long v2, v6, v15

    if-lez v2, :cond_2

    if-lez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v13

    sub-long/2addr v2, v6

    add-long/2addr v2, v11

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    :cond_2
    invoke-direct {v0, v8, v9}, Lcom/fl/saas/e0;->a(J)V

    :cond_3
    return-void
.end method

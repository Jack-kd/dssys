.class public Lcom/androidquery/util/WebImage;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# static fields
.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static template:Ljava/lang/String;


# instance fields
.field private color:I

.field private control:Z

.field private progress:Ljava/lang/Object;

.field private url:Ljava/lang/String;

.field private wv:Landroid/webkit/WebView;

.field private zoom:Z


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;ZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/androidquery/util/WebImage;->zoom:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/androidquery/util/WebImage;->control:Z

    .line 13
    .line 14
    iput p6, p0, Lcom/androidquery/util/WebImage;->color:I

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic access$000(Lcom/androidquery/util/WebImage;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/androidquery/util/WebImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/androidquery/util/WebImage;->setup()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private delaySetup()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 2
    .line 3
    new-instance v1, Lcom/androidquery/util/WebImage$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/androidquery/util/WebImage$1;-><init>(Lcom/androidquery/util/WebImage;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 12
    .line 13
    const-string v1, "text/html"

    .line 14
    .line 15
    const-string v2, "utf-8"

    .line 16
    .line 17
    const-string v3, "<html></html>"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 23
    .line 24
    iget v1, p0, Lcom/androidquery/util/WebImage;->color:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static disableZoomControl(Landroid/webkit/WebView;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    filled-new-array {p0}, [Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const-string v1, "setDisplayZoomControls"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private done(Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static fixWebviewTip(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "WebViewSettings"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v0, 0x1

    .line 9
    const-string v2, "double_tap_toast_count"

    .line 10
    .line 11
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private static getSource(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/androidquery/util/WebImage;->template:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "com/androidquery/util/web_image.html"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/androidquery/util/WebImage;->template:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    sget-object p0, Lcom/androidquery/util/WebImage;->template:Ljava/lang/String;

    .line 32
    .line 33
    return-object p0
.end method

.method private setup()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/androidquery/util/WebImage;->getSource(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "@src"

    .line 12
    .line 13
    iget-object v2, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lcom/androidquery/util/WebImage;->color:I

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "@color"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 37
    .line 38
    const-string v7, "utf-8"

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    const-string v6, "text/html"

    .line 43
    .line 44
    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 48
    .line 49
    iget v1, p0, Lcom/androidquery/util/WebImage;->color:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public load()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 4
    .line 5
    const v2, 0x40ff0001

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/androidquery/util/WebImage;->fixWebviewTip(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-boolean v1, p0, Lcom/androidquery/util/WebImage;->zoom:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 44
    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/androidquery/util/WebImage;->zoom:Z

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/androidquery/util/WebImage;->control:Z

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/androidquery/util/WebImage;->disableZoomControl(Landroid/webkit/WebView;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 65
    .line 66
    iget v2, p0, Lcom/androidquery/util/WebImage;->color:I

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object v2, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0, v2, v1}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-lez v0, :cond_3

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/androidquery/util/WebImage;->setup()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    invoke-direct {p0}, Lcom/androidquery/util/WebImage;->delaySetup()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/androidquery/util/WebImage;->done(Landroid/webkit/WebView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/androidquery/util/WebImage;->done(Landroid/webkit/WebView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0

    return-void
.end method

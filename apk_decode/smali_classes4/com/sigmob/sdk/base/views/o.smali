.class public Lcom/sigmob/sdk/base/views/o;
.super Lcom/sigmob/sdk/base/views/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/o$b;,
        Lcom/sigmob/sdk/base/views/o$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "o"


# instance fields
.field private final b:Lcom/sigmob/sdk/base/views/b;

.field private c:Lcom/sigmob/sdk/base/views/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/g;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/o;->j()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object p4, Lcom/sigmob/sdk/base/views/o;->a:Ljava/lang/String;

    invoke-static {p4, p1}, Lcom/sigmob/sdk/base/utils/j;->a(Ljava/lang/String;Landroid/webkit/WebSettings;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/g;->a(Z)V

    const/4 p4, 0x0

    invoke-virtual {p0, p4}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p3, :cond_0

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p4, -0x1

    const/4 v0, -0x2

    invoke-direct {p3, p4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance p4, Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0, p1}, Lcom/sigmob/sdk/base/views/b;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lcom/sigmob/sdk/base/views/o;->b:Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {p4, p2}, Lcom/sigmob/sdk/base/views/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/k;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/base/views/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/o;->b:Lcom/sigmob/sdk/base/views/b;

    :goto_0
    new-instance p1, Lcom/sigmob/sdk/base/views/o$b;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/base/views/o$b;-><init>(Lcom/sigmob/sdk/base/views/o;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/o;)Lcom/sigmob/sdk/base/views/o$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/o;->c:Lcom/sigmob/sdk/base/views/o$a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/sigmob/sdk/base/views/o;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sigmob/sdk/base/views/o;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sigmob/sdk/base/views/o;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollBarStyle(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    .line 3
    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Md5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".html"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/utils/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/g;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getBaseUrlScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://localhost/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "utf-8"

    const/4 v7, 0x0

    const-string v5, "text/html"

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const-string v0, "CreativeWebView destroy() callSigmobLog.d( \"CreativeWebView destroy() called\");ed"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/sigmob/sdk/base/views/g;->destroy()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public setLogoClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/o;->b:Lcom/sigmob/sdk/base/views/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setWebViewClickListener(Lcom/sigmob/sdk/base/views/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/o;->c:Lcom/sigmob/sdk/base/views/o$a;

    return-void
.end method

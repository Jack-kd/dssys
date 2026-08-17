.class public Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/ubix/ssp/ad/e/c0/b$a;
.implements Lcom/ubix/ssp/ad/e/c0/d$b;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private adBytes:[B

.field private adType:Ljava/lang/String;

.field private bl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/ad/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private container:Landroid/widget/FrameLayout;

.field private finishOnce:Z

.field private hasError:Z

.field private needRemovePackageName:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field private reg:Ljava/lang/String;

.field private replacePgk:Ljava/lang/String;

.field private sendTracker:Z

.field private userInnerFace:Z

.field private webUrl:Ljava/lang/String;

.field private webView:Lcom/ubix/ssp/ad/e/c0/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->sendTracker:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->needRemovePackageName:Z

    const-string v1, "\\b([a-z][a-z0-9_]*\\.)+[a-z][a-z0-9_]*\\b"

    iput-object v1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->reg:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->hasError:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->bl:Ljava/util/ArrayList;

    const-string v1, "0"

    iput-object v1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->adType:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->userInnerFace:Z

    return-void
.end method

.method private finishCurrentActivity()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "closeImmediately"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->container:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private generalBlockList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/ad/d/d;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->j:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/ubix/ssp/ad/d/b;->j:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/ubix/ssp/ad/d/b;->k:Z

    invoke-static {v4, v5}, Lcom/ubix/ssp/ad/d/d;->a(Ljava/lang/String;Z)Lcom/ubix/ssp/ad/d/d;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private initBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/ubix/ssp/ad/e/c0/c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/c0/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    new-instance v1, Lcom/ubix/ssp/ad/e/c0/b;

    invoke-direct {v1, p0, p0}, Lcom/ubix/ssp/ad/e/c0/b;-><init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/c0/b$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    new-instance v1, Lcom/ubix/ssp/ad/e/c0/d;

    invoke-direct {v1, p0, p0}, Lcom/ubix/ssp/ad/e/c0/d;-><init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/c0/d$b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    iget-object v1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->adBytes:[B

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/c0/c;->setMaterial([B)V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->needRemovePackageName:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->updateCookies(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    iget-object p2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private updateCookies(Ljava/lang/String;)V
    .locals 9

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v4, v1, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public fullScreenOrShowStatusBar()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    return-void
.end method

.method public needReplace()Z
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->replacePgk:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->finishCurrentActivity()V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x2713

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->onBackPressed()V

    return-void

    :cond_0
    const-string p1, "0"

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->adType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "closeImmediately"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/ubix/ssp/ad/e/c0/a;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/e/c0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "webUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webUrl:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "adType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->adType:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "useInnerFace"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->userInnerFace:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "slotId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "ubixAdBytes"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->adBytes:[B

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "replacePkg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->replacePgk:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "removePkg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->needRemovePackageName:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------webUrl "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;)V

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x2716

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->container:Landroid/widget/FrameLayout;

    :try_start_1
    iget-object v2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->adType:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->initBrowser(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2713

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p1, 0x2717

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x2714

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v2, Lcom/ubix/ssp/ad/e/a0/w;->a:Lcom/ubix/ssp/ad/e/a0/w;

    invoke-virtual {v2, p0}, Lcom/ubix/ssp/ad/e/a0/w;->a(Landroid/app/Activity;)V

    iget-boolean v2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->userInnerFace:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 p1, 0x2711

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->finishCurrentActivity()V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->generalBlockList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->bl:Ljava/util/ArrayList;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MainFrameDestroy"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "error"

    :try_start_1
    iget-boolean v2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->hasError:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "webview download url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    :try_start_0
    iget-boolean p2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->finishOnce:Z

    if-nez p2, :cond_0

    const/16 p2, 0x64

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {p0, p2, p3, p4}, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->setWebViewProgress(IZZ)V

    iput-boolean p4, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->finishOnce:Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p2, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "android.intent.action.VIEW"

    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->finishCurrentActivity()V

    :cond_1
    return v1
.end method

.method public onPause()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->hasError:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;)V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onTwiceClicked(I)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "__MP_RESULT__"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    if-eqz p1, :cond_0

    const/16 v1, 0xca

    invoke-virtual {p1, v1, v0}, Lcom/ubix/ssp/ad/e/c0/c;->a(ILjava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public replacePackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->replacePgk:Ljava/lang/String;

    return-object v0
.end method

.method public sendTracker()V
    .locals 5

    iget-boolean v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->sendTracker:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->sendTracker:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------webView page_url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v3, v0, :cond_1

    const-string v3, "ad_type"

    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "ad_slot_id"

    :try_start_2
    aget-object v0, v2, v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "page_url"

    :try_start_3
    iget-object v2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ad_sizes"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2715

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWebViewProgress(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/16 p2, 0x8

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    const-string v1, "error"

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "MainFrameHasError"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->hasError:Z

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Intent;)Z

    :cond_2
    if-eqz p3, :cond_3

    iget-boolean p1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->finishOnce:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->finishOnce:Z

    new-instance p1, Landroid/content/Intent;

    const-string p2, "WebViewLoadFinished"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->hasError:Z

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Intent;)Z

    :cond_3
    return-void
.end method

.method public shouldCheckRule()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/ad/d/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->webView:Lcom/ubix/ssp/ad/e/c0/c;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/open/comm/UBiXWebViewActivity;->bl:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

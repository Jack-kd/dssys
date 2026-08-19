.class public Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;,
        Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebChromeClient;,
        Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;
    }
.end annotation


# instance fields
.field private enableQuickApp:Z

.field private hasFastAppJump:Z

.field public layout:Landroid/widget/LinearLayout;

.field private mStatus:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;

.field private progressbar:Landroid/widget/ProgressBar;

.field private ydCommonDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->hasFastAppJump:Z

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->initConfig(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->hasFastAppJump:Z

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->initConfig(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-string v1, "android.intent.action.VIEW"

    .line 7
    .line 8
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9
    .line 10
    .line 11
    const/high16 p1, 0x10000000

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->isInstall(Landroid/content/Intent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->progressbar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->urlCanLoad(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;Landroid/net/Uri;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->startThirdPartyApp(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->mStatus:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;

    return-object p0
.end method

.method private isInstall(Landroid/content/Intent;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private startThirdPartyApp(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->reportUrl(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->hasFastAppJump:Z

    if-eqz v2, :cond_0

    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->enableQuickApp:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->urlIntercept(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->isInstall(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return v2

    :cond_3
    iput-boolean v2, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->hasFastAppJump:Z

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getQuickAppInterceptionType()I

    move-result v1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->ydCommonDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    if-nez v1, :cond_4

    new-instance v1, Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8df3\u8f6c\u63d0\u793a"

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    move-result-object v1

    const-string v2, "\u60f3\u8981\u6253\u5f00\u201c\u5feb\u5e94\u7528\u201d\n\u662f\u5426\u5141\u8bb8"

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setContent(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setCanDismiss(Z)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    move-result-object v1

    const-string v2, "\u62d2\u7edd"

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setCancelName(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    move-result-object v1

    const-string v2, "\u5141\u8bb8"

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setSubmitName(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->ydCommonDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    :cond_4
    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->ydCommonDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->ydCommonDialog:Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    new-instance v2, Lcom/fl/saas/adx/base/activity/h5/a;

    invoke-direct {v2, p0, p1}, Lcom/fl/saas/adx/base/activity/h5/a;-><init>(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->setOnSubmitListener(Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return v0

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_6
    return v0
.end method

.method private urlCanLoad(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ftp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public canScroll()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public getProgressbar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->progressbar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public initConfig(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->layout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3, v0, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->layout:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/ProgressBar;

    const v2, 0x1010077

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->progressbar:Landroid/widget/ProgressBar;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->layout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebChromeClient;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebChromeClient;-><init>(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance p1, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$HsWebViewClient;-><init>(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->mStatus:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;->onEndScroll()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->mStatus:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;->onStartScroll()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEnableQuickApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->enableQuickApp:Z

    return-void
.end method

.method public setProgressbar(Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->progressbar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public setStatusListener(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->mStatus:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;

    return-void
.end method

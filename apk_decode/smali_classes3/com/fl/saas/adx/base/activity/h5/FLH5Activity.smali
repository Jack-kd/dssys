.class public Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$MyWebViewDownLoadListener;
    }
.end annotation


# instance fields
.field private enableQuickApp:Z

.field private html:Ljava/lang/String;

.field private ivBack:Landroid/widget/ImageView;

.field private ivRefresh:Landroid/widget/ImageView;

.field private titleView:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private webView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->titleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->webView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->url:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->downloadByBrowser(Ljava/lang/String;)V

    return-void
.end method

.method private bindDownloaderListener()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->webView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    new-instance v1, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$MyWebViewDownLoadListener;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$MyWebViewDownLoadListener;-><init>(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method private downloadByBrowser(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initChildView(Landroid/widget/RelativeLayout;)V
    .locals 6

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->ivRefresh:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v3

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v5

    invoke-direct {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->ivRefresh:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->ivBack:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$mipmap;->fl_adx_icon_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->ivRefresh:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$mipmap;->fl_adx_icon_refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->titleView:Landroid/widget/TextView;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->titleView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->titleView:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->titleView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileWidth()I

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->ivRefresh:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static launch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_1

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static launch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "title"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_1

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static launch(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_1

    const-string p2, "htmlSnippet"

    :goto_0
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string p2, "url"

    goto :goto_0

    :goto_1
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_2

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static launchWithEnableQuickApp(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "enableQuickApp"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_1

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private operateClick()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->ivRefresh:Landroid/widget/ImageView;

    new-instance v1, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$2;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$2;-><init>(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$3;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$3;-><init>(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {p0}, Lcom/fl/saas/K;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fl/saas/K;->a(Landroid/app/Activity;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v1}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->initChildView(Landroid/widget/RelativeLayout;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->operateClick()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->url:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "htmlSnippet"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->html:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "enableQuickApp"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->enableQuickApp:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    new-instance v3, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-direct {v3, p0}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->webView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    iget-boolean v4, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->enableQuickApp:Z

    invoke-virtual {v3, v4}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->setEnableQuickApp(Z)V

    iget-object v3, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->webView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v2, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->webView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    new-instance v2, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$1;

    invoke-direct {v2, p0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$1;-><init>(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)V

    invoke-virtual {v0, v2}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->setStatusListener(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->webView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const-string p1, "FLSDK-FLH5Activity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->webView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->html:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->webView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    iget-object v2, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->html:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->webView:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->getProgressbar()Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->bindDownloaderListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->clearHistory()V

    return-void
.end method

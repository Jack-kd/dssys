.class public Lcom/anythink/network/funlink/FunlinkATExpressAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "FunlinkATExpressAd"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/fl/saas/adx/api/mixNative/NativeAd;

.field private c:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

.field private d:Landroid/view/View;

.field private e:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/anythink/network/funlink/FunlinkATExpressAd;->a(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/anythink/network/funlink/FunlinkATExpressAd;->b()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->e:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 3
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdAppInfo()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 4
    :try_start_1
    new-instance v1, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;

    invoke-direct {v1, v0}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;-><init>(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;)V

    .line 5
    invoke-virtual {v1}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;->getPublisher()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdAppInfo(Lcom/anythink/core/api/ATAdAppInfo;)V

    .line 7
    invoke-virtual {v1}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;->getAppName()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;->getAppVersion()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 8
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 9
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/anythink/network/funlink/FunlinkATExpressAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->c:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 10
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->d:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 11
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    invoke-virtual {p0}, Lcom/anythink/network/funlink/FunlinkATExpressAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->renderAdContainer(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Landroid/view/View;)V

    .line 13
    new-instance v0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;

    invoke-direct {v0}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;-><init>()V

    .line 14
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setActivity(Landroid/app/Activity;)V

    .line 15
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->prepare(Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 16
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_4
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    new-instance v1, Lcom/anythink/network/funlink/FunlinkATExpressAd$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/anythink/network/funlink/FunlinkATExpressAd$a;-><init>(Lcom/anythink/network/funlink/FunlinkATExpressAd;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->setNativeEventListener(Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    :goto_0
    iput-object v1, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 15
    .line 16
    :cond_0
    iput-object v1, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->c:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->d:Landroid/view/View;

    .line 19
    .line 20
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->e:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->d:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->c:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->c:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATExpressAd;->c:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 15
    .line 16
    return-object v0
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

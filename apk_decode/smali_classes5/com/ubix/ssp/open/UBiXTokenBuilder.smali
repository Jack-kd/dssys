.class public Lcom/ubix/ssp/open/UBiXTokenBuilder;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->c:I

    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->a:Ljava/lang/String;

    iput p2, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->b:I

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/ubix/ssp/open/manager/UBiXAdManager;->createNativeAd()Lcom/ubix/ssp/open/nativee/UBiXNativeManager;

    move-result-object v1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->a:Ljava/lang/String;

    iget v4, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->b:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/ubix/ssp/open/nativee/UBiXNativeManager;->loadNativeAd(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/open/nativee/UBiXNativeAdListener;)V

    invoke-interface {v1}, Lcom/ubix/ssp/open/nativee/UBiXNativeManager;->getBiddingToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->b:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/open/manager/UBiXAdManager;->createRewardVideoAd()Lcom/ubix/ssp/open/video/UBiXRewardVideoManager;

    move-result-object v1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/ubix/ssp/open/video/UBiXRewardVideoManager;->loadRewardVideoAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;)V

    invoke-interface {v1}, Lcom/ubix/ssp/open/video/UBiXRewardVideoManager;->getBiddingToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/ubix/ssp/open/manager/UBiXAdManager;->createInterstitialAd()Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;

    move-result-object v1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;->loadInterstitialAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/interstitial/UBiXInterstitialAdListener;)V

    invoke-interface {v1}, Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;->getBiddingToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/ubix/ssp/open/manager/UBiXAdManager;->createIconAd()Lcom/ubix/ssp/open/icon/UBiXIconManager;

    move-result-object v1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0, v0}, Lcom/ubix/ssp/open/icon/UBiXIconManager;->loadIconAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/AdSize;Lcom/ubix/ssp/open/icon/UBiXIconAdListener;)V

    invoke-interface {v1}, Lcom/ubix/ssp/open/icon/UBiXIconManager;->getBiddingToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {}, Lcom/ubix/ssp/open/manager/UBiXAdManager;->createNativeExpressAd()Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressManager;

    move-result-object v1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressManager;->loadNativeExpressAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressAdListener;)V

    invoke-interface {v1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressManager;->getBiddingToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static {}, Lcom/ubix/ssp/open/manager/UBiXAdManager;->createSpreadAd()Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    move-result-object v1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->loadSplashAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;)V

    invoke-interface {v1}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->getBiddingToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/ubix/ssp/open/UBiXTokenBuilder;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRenderType(I)Lcom/ubix/ssp/open/UBiXTokenBuilder;
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/open/UBiXTokenBuilder;->c:I

    return-object p0
.end method

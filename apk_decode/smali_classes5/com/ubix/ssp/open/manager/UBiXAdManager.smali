.class public Lcom/ubix/ssp/open/manager/UBiXAdManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBannerAd()Lcom/ubix/ssp/open/banner/UBiXBannerManager;
    .locals 1

    new-instance v0, Lcom/ubix/ssp/open/manager/a;

    invoke-direct {v0}, Lcom/ubix/ssp/open/manager/a;-><init>()V

    return-object v0
.end method

.method public static createIconAd()Lcom/ubix/ssp/open/icon/UBiXIconManager;
    .locals 1

    new-instance v0, Lcom/ubix/ssp/open/manager/b;

    invoke-direct {v0}, Lcom/ubix/ssp/open/manager/b;-><init>()V

    return-object v0
.end method

.method public static createInterstitialAd()Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;
    .locals 1

    new-instance v0, Lcom/ubix/ssp/open/manager/c;

    invoke-direct {v0}, Lcom/ubix/ssp/open/manager/c;-><init>()V

    return-object v0
.end method

.method public static createNativeAd()Lcom/ubix/ssp/open/nativee/UBiXNativeManager;
    .locals 1

    new-instance v0, Lcom/ubix/ssp/open/manager/e;

    invoke-direct {v0}, Lcom/ubix/ssp/open/manager/e;-><init>()V

    return-object v0
.end method

.method public static createNativeExpressAd()Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressManager;
    .locals 1

    new-instance v0, Lcom/ubix/ssp/open/manager/d;

    invoke-direct {v0}, Lcom/ubix/ssp/open/manager/d;-><init>()V

    return-object v0
.end method

.method public static createRewardVideoAd()Lcom/ubix/ssp/open/video/UBiXRewardVideoManager;
    .locals 1

    new-instance v0, Lcom/ubix/ssp/open/manager/f;

    invoke-direct {v0}, Lcom/ubix/ssp/open/manager/f;-><init>()V

    return-object v0
.end method

.method public static createSpreadAd()Lcom/ubix/ssp/open/splash/UBiXSplashManager;
    .locals 1

    new-instance v0, Lcom/ubix/ssp/open/manager/g;

    invoke-direct {v0}, Lcom/ubix/ssp/open/manager/g;-><init>()V

    return-object v0
.end method

.class public Lcom/meishu/sdk/platform/bd/BDSdkPlatform;
.super Lcom/meishu/sdk/core/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bannerLoader(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    new-instance p3, Lcom/meishu/sdk/platform/bd/banner/BDBannerAdLoader;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/bd/banner/BDBannerAdLoader;-><init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public createConfig()Lcom/meishu/sdk/core/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/bd/BDSdkConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/platform/bd/BDSdkConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public drawLoader(Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    new-instance p3, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;-><init>(Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public fullScreenVideoLoader(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    new-instance p3, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;-><init>(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public interstitialLoader(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    new-instance p3, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;-><init>(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public pasterLoader(Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    new-instance p3, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;-><init>(Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public recyclerLoader(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    new-instance p3, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;-><init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public rewardLoader(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    new-instance p3, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;-><init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public splashLoader(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;-><init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public support()[Lcom/meishu/sdk/core/ad/AdType;
    .locals 7

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->FEED:Lcom/meishu/sdk/core/ad/AdType;

    .line 2
    .line 3
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->FEED_PRE_RENDER:Lcom/meishu/sdk/core/ad/AdType;

    .line 4
    .line 5
    sget-object v2, Lcom/meishu/sdk/core/ad/AdType;->FEED_MIX:Lcom/meishu/sdk/core/ad/AdType;

    .line 6
    .line 7
    sget-object v3, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    .line 8
    .line 9
    sget-object v4, Lcom/meishu/sdk/core/ad/AdType;->FULL_SCREEN_VIDEO:Lcom/meishu/sdk/core/ad/AdType;

    .line 10
    .line 11
    sget-object v5, Lcom/meishu/sdk/core/ad/AdType;->INTERSTITIAL:Lcom/meishu/sdk/core/ad/AdType;

    .line 12
    .line 13
    sget-object v6, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lcom/meishu/sdk/core/ad/AdType;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

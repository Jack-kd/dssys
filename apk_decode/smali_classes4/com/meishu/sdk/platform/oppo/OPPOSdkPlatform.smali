.class public Lcom/meishu/sdk/platform/oppo/OPPOSdkPlatform;
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
    new-instance p3, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;-><init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public createConfig()Lcom/meishu/sdk/core/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/oppo/OPPOAdConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/platform/oppo/OPPOAdConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public fullScreenVideoLoader(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    new-instance p3, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;-><init>(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public interstitialLoader(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    new-instance p3, Lcom/meishu/sdk/platform/oppo/interstitial/OPPOInterstitialAdLoader;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/oppo/interstitial/OPPOInterstitialAdLoader;-><init>(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public pasterLoader(Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public recyclerLoader(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    new-instance p3, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;-><init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public rewardLoader(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    new-instance p3, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/oppo/reward/OPPORewardAdLoader;-><init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public splashLoader(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    new-instance p3, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

    .line 2
    .line 3
    invoke-direct {p3, p1, p2}, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;-><init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method

.method public support()[Lcom/meishu/sdk/core/ad/AdType;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/meishu/sdk/core/ad/AdType;

    .line 3
    .line 4
    return-object v0
.end method

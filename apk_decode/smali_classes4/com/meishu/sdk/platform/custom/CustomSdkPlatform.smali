.class public Lcom/meishu/sdk/platform/custom/CustomSdkPlatform;
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
.method public bridge synthetic bannerLoader(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/meishu/sdk/platform/custom/CustomSdkPlatform;->bannerLoader(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bannerLoader(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 4
    const-class v0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    const-class v1, Lcom/meishu/sdk/core/domain/SdkAdInfo;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 6
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createConfig()Lcom/meishu/sdk/core/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/custom/MsCustomAdConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/platform/custom/MsCustomAdConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public drawLoader(Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const-class v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 20
    .line 21
    const-class v1, Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 22
    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    .line 34
    .line 35
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    return-object p1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    return-object p1
.end method

.method public fullScreenVideoLoader(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const-class v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;

    .line 20
    .line 21
    const-class v1, Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 22
    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    .line 34
    .line 35
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    return-object p1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    return-object p1
.end method

.method public bridge synthetic interstitialLoader(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/meishu/sdk/platform/custom/CustomSdkPlatform;->interstitialLoader(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;

    move-result-object p1

    return-object p1
.end method

.method public interstitialLoader(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 4
    const-class v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    const-class v1, Lcom/meishu/sdk/core/domain/SdkAdInfo;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 6
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic recyclerLoader(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/meishu/sdk/platform/custom/CustomSdkPlatform;->recyclerLoader(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public recyclerLoader(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 4
    const-class v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    const-class v1, Lcom/meishu/sdk/core/domain/SdkAdInfo;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 6
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic rewardLoader(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/meishu/sdk/platform/custom/CustomSdkPlatform;->rewardLoader(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;

    move-result-object p1

    return-object p1
.end method

.method public rewardLoader(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 4
    const-class v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    const-class v1, Lcom/meishu/sdk/core/domain/SdkAdInfo;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 6
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/platform/custom/reward/MsCustomRewardAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic splashLoader(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/meishu/sdk/platform/custom/CustomSdkPlatform;->splashLoader(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;

    move-result-object p1

    return-object p1
.end method

.method public splashLoader(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 4
    const-class v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    const-class v1, Lcom/meishu/sdk/core/domain/SdkAdInfo;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 6
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public support()[Lcom/meishu/sdk/core/ad/AdType;
    .locals 7

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->FEED_MIX:Lcom/meishu/sdk/core/ad/AdType;

    .line 2
    .line 3
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->BANNER:Lcom/meishu/sdk/core/ad/AdType;

    .line 4
    .line 5
    sget-object v2, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    .line 6
    .line 7
    sget-object v3, Lcom/meishu/sdk/core/ad/AdType;->INTERSTITIAL:Lcom/meishu/sdk/core/ad/AdType;

    .line 8
    .line 9
    sget-object v4, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 10
    .line 11
    sget-object v5, Lcom/meishu/sdk/core/ad/AdType;->DRAW:Lcom/meishu/sdk/core/ad/AdType;

    .line 12
    .line 13
    sget-object v6, Lcom/meishu/sdk/core/ad/AdType;->FULL_SCREEN_VIDEO:Lcom/meishu/sdk/core/ad/AdType;

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

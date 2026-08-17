.class public Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;",
        "Lcom/meishu/sdk/core/ad/splash/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KSSplashAdWrapper"


# instance fields
.field private ksSplashScreenAd:Lcom/kwad/sdk/api/KsSplashScreenAd;

.field private showed:Z

.field private splashAd:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;Lcom/kwad/sdk/api/KsNativeAd;Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->showNativeSplash(Lcom/kwad/sdk/api/KsNativeAd;Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->showed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1502(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->showed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1600(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;Lcom/kwad/sdk/api/KsSplashScreenAd;)Lcom/kwad/sdk/api/KsSplashScreenAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->ksSplashScreenAd:Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$2100(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2200(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2300(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->splashAd:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method private loadExpressAd()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "KSSplashAdWrapper"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string v0, "onNoAD, Activity is not FragmentActivity"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    const-string v0, "onNoAD, LoadManager is null"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 55
    .line 56
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    :cond_2
    new-instance v0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;-><init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->splashAd:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 66
    .line 67
    new-instance v0, Lcom/kwad/sdk/api/KsScene$Builder;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;

    .line 91
    .line 92
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;-><init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v1, v0, v2}, Lcom/kwad/sdk/api/KsLoadManager;->loadSplashScreenAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private loadNativeAd()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/kwad/sdk/api/KsScene$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsScene$Builder;->adNum(I)Lcom/kwad/sdk/api/KsScene$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;-><init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v0, v2}, Lcom/kwad/sdk/api/KsLoadManager;->loadNativeAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private showNativeSplash(Lcom/kwad/sdk/api/KsNativeAd;Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    sget v4, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash:I

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 21
    .line 22
    sget v4, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_bg:I

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Landroid/widget/ImageView;

    .line 29
    .line 30
    sget v4, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_ll:I

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    sget v6, Lcom/meishu/sdk/R$id;->activity_sdk_splash_mediaContainer:I

    .line 39
    .line 40
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    sget v7, Lcom/meishu/sdk/R$id;->ms_skipView:I

    .line 47
    .line 48
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 53
    .line 54
    sget v7, Lcom/meishu/sdk/R$id;->layout_native_splash_imageview:I

    .line 55
    .line 56
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 61
    .line 62
    sget v8, Lcom/meishu/sdk/R$id;->layout_native_splash_title:I

    .line 63
    .line 64
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    check-cast v8, Landroid/widget/TextView;

    .line 69
    .line 70
    sget v9, Lcom/meishu/sdk/R$id;->layout_native_splash_icon:I

    .line 71
    .line 72
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    check-cast v9, Landroid/widget/ImageView;

    .line 77
    .line 78
    sget v10, Lcom/meishu/sdk/R$id;->layout_native_splash_score:I

    .line 79
    .line 80
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    check-cast v10, Landroid/widget/ImageView;

    .line 85
    .line 86
    sget v11, Lcom/meishu/sdk/R$id;->layout_native_splash_desc:I

    .line 87
    .line 88
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    check-cast v11, Landroid/widget/TextView;

    .line 93
    .line 94
    sget v12, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_cid:I

    .line 95
    .line 96
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    check-cast v12, Landroid/widget/TextView;

    .line 101
    .line 102
    sget v13, Lcom/meishu/sdk/R$id;->ms_jump_btn:I

    .line 103
    .line 104
    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    check-cast v13, Landroid/widget/TextView;

    .line 109
    .line 110
    iget-object v14, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 111
    .line 112
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v14

    .line 116
    sget v15, Lcom/meishu/sdk/R$drawable;->ms_ksad_sdk_logo:I

    .line 117
    .line 118
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    move-object/from16 v16, v7

    .line 131
    .line 132
    const/4 v7, 0x0

    .line 133
    invoke-virtual {v14, v7, v7, v15, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    .line 135
    .line 136
    const/4 v5, 0x0

    .line 137
    invoke-virtual {v12, v14, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    .line 140
    new-instance v5, Lcom/meishu/sdk/core/bquery/i;

    .line 141
    .line 142
    invoke-direct {v5, v3}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getAdDescription()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    const/16 v14, 0x8

    .line 154
    .line 155
    if-nez v12, :cond_0

    .line 156
    .line 157
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getAdDescription()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    :goto_0
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getAppName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-nez v11, :cond_1

    .line 183
    .line 184
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getAppName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    :goto_1
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getAppIconUrl()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    if-nez v8, :cond_2

    .line 210
    .line 211
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    iput-object v9, v5, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 215
    .line 216
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getAppIconUrl()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-virtual {v5, v8, v7}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_2
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    :goto_2
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getInteractionType()I

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    const/4 v9, 0x1

    .line 232
    if-eq v8, v9, :cond_3

    .line 233
    .line 234
    const-string v8, "\u70b9\u51fb\u6216\u6447\u52a8\u4e86\u89e3\u8be6\u60c5"

    .line 235
    .line 236
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_3
    const-string v8, "\u70b9\u51fb\u4e0b\u8f7d"

    .line 241
    .line 242
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    new-instance v10, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;

    .line 254
    .line 255
    invoke-direct {v10, v0, v2}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;-><init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v1, v4, v8, v10}, Lcom/kwad/sdk/api/KsNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V

    .line 259
    .line 260
    .line 261
    iget-object v4, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 262
    .line 263
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    iget v8, v4, Landroid/util/DisplayMetrics;->density:F

    .line 272
    .line 273
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 274
    .line 275
    int-to-float v4, v4

    .line 276
    const/high16 v10, 0x428c0000    # 70.0f

    .line 277
    .line 278
    mul-float/2addr v8, v10

    .line 279
    sub-float/2addr v4, v8

    .line 280
    float-to-int v4, v4

    .line 281
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    const/4 v10, -0x1

    .line 286
    if-ne v8, v9, :cond_5

    .line 287
    .line 288
    iget-object v5, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 289
    .line 290
    new-instance v8, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    .line 291
    .line 292
    invoke-direct {v8}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v8, v7}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-virtual {v7}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    invoke-interface {v1, v5, v7}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoView(Landroid/content/Context;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)Landroid/view/View;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    if-eqz v5, :cond_7

    .line 308
    .line 309
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 310
    .line 311
    .line 312
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoWidth()I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoHeight()I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-lez v7, :cond_4

    .line 321
    .line 322
    if-lez v1, :cond_4

    .line 323
    .line 324
    mul-int/2addr v1, v4

    .line 325
    div-int/2addr v1, v7

    .line 326
    :cond_4
    invoke-virtual {v6, v5, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 327
    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_5
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    if-eqz v1, :cond_7

    .line 335
    .line 336
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    if-lez v6, :cond_7

    .line 341
    .line 342
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    check-cast v6, Lcom/kwad/sdk/api/KsImage;

    .line 347
    .line 348
    invoke-interface {v6}, Lcom/kwad/sdk/api/KsImage;->getWidth()I

    .line 349
    .line 350
    .line 351
    move-result v8

    .line 352
    invoke-interface {v6}, Lcom/kwad/sdk/api/KsImage;->getHeight()I

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    check-cast v1, Lcom/kwad/sdk/api/KsImage;

    .line 361
    .line 362
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsImage;->getImageUrl()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    move-object/from16 v9, v16

    .line 367
    .line 368
    iput-object v9, v5, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 369
    .line 370
    invoke-virtual {v5, v1, v7}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 371
    .line 372
    .line 373
    if-lez v8, :cond_6

    .line 374
    .line 375
    if-lez v6, :cond_6

    .line 376
    .line 377
    mul-int/2addr v6, v4

    .line 378
    div-int v7, v6, v8

    .line 379
    .line 380
    :cond_6
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 385
    .line 386
    iput v10, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 387
    .line 388
    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    .line 390
    .line 391
    :cond_7
    :goto_4
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 392
    .line 393
    .line 394
    invoke-direct {v0, v3, v2}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->showSkipView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;)V

    .line 395
    .line 396
    .line 397
    return-void
.end method

.method private showSkipView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;)V
    .locals 1

    .line 1
    sget v0, Lcom/meishu/sdk/R$id;->ms_skipView:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;->setSkipView(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;

    .line 13
    .line 14
    invoke-direct {v0, p0, p2}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;-><init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->setOnSkipListener(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public loadAd()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$1;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 42
    .line 43
    const-string v1, "KEY_AUTO_SHOW"

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAd_type()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->FEED:Lcom/meishu/sdk/core/ad/AdType;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eq v0, v1, :cond_0

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->loadExpressAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->loadNativeAd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->ksSplashScreenAd:Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsSplashScreenAd;->getECPM()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    int-to-long v1, p1

    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->ksSplashScreenAd:Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsSplashScreenAd;->getECPM()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {p1, p2, v3, v4}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    int-to-long p1, p1

    .line 35
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/kwad/sdk/api/KsSplashScreenAd;->setBidEcpm(JJ)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Lcom/kwad/sdk/api/model/AdExposureFailedReason;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/kwad/sdk/api/model/AdExposureFailedReason;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x3

    .line 47
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->setAdnType(I)Lcom/kwad/sdk/api/model/AdExposureFailedReason;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->setWinEcpm(I)Lcom/kwad/sdk/api/model/AdExposureFailedReason;

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->ksSplashScreenAd:Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsSplashScreenAd;->reportAdExposureFailed(ILcom/kwad/sdk/api/model/AdExposureFailedReason;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

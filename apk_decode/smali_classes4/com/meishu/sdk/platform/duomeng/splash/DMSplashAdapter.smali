.class public Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;
.super Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DMSplashAdapter"


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;-><init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;->loadAdWithCallback(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onAdExposure(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onAdClick(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onAdSkip(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;Landroid/view/View;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onRenderSuccess(Landroid/view/View;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onRenderFail(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/domob/sdk/common/config/DMAdConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/domob/sdk/common/config/DMAdConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/domob/sdk/common/config/DMAdConfig;->setTemplateViewSize(FF)Lcom/domob/sdk/common/config/DMAdConfig;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Lcom/domob/sdk/common/config/DMAdConfig;->setCodeId(Ljava/lang/String;)Lcom/domob/sdk/common/config/DMAdConfig;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    instance-of v0, v0, Landroid/app/Activity;

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    invoke-static {}, Lcom/domob/sdk/platform/DMAdSdk;->getInstance()Lcom/domob/sdk/platform/interfaces/PlatformAdTemplate;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroid/app/Activity;

    .line 77
    .line 78
    new-instance v2, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;

    .line 79
    .line 80
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;-><init>(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1, p1, v2}, Lcom/domob/sdk/platform/interfaces/PlatformAdTemplate;->loadSplashAdTemplate(Landroid/content/Context;Lcom/domob/sdk/common/config/DMAdConfig;Lcom/domob/sdk/platform/interfaces/ad/DMSplashAdListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    return-void

    .line 90
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/duomeng/DmInitManager;->getInstance()Lcom/meishu/sdk/platform/duomeng/DmInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    new-instance v0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$1;

    .line 10
    .line 11
    invoke-direct {v0, p0, p3}, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$1;-><init>(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p4, p1, v0}, Lcom/meishu/sdk/platform/duomeng/DmInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/duomeng/DmInitManager$InitCallback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

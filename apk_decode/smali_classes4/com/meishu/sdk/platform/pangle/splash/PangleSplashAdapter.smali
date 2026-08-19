.class public Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;
.super Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;
.source "SourceFile"


# instance fields
.field private pangleSplashAd:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;


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

.method public static synthetic access$000(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->loadAdWithCallback(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;)Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->pangleSplashAd:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;)Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->pangleSplashAd:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onAdExposure(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onAdClick(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onAdSkip(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onRenderFail(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;Landroid/view/View;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;->onRenderSuccess(Landroid/view/View;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x1388

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;->setTimeout(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;-><init>(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;->loadAd(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->getInstance()Lcom/meishu/sdk/platform/pangle/PangleInitManager;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$1;

    .line 8
    .line 9
    invoke-direct {v0, p0, p3}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$1;-><init>(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p4, p1, v0}, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

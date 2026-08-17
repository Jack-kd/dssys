.class public Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;
.super Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;
.source "SourceFile"


# instance fields
.field private pangleInterstitialAd:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;-><init>(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;->loadAdWithCallback(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->onError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;)Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;->pangleInterstitialAd:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;)Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;->pangleInterstitialAd:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->onAdExposure(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->onAdClick(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->onAdClosed(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;->onRenderSuccess(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;-><init>(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;->loadAd(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    .line 12
    .line 13
    .line 14
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
    new-instance v0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$1;

    .line 8
    .line 9
    invoke-direct {v0, p0, p3}, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$1;-><init>(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p4, p1, v0}, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

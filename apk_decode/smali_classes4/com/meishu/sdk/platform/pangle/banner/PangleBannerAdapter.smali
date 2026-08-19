.class public Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;
.super Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;
.source "SourceFile"


# instance fields
.field private extMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pangleBannerAd:Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;-><init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->loadAdWithCallback(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;)Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->pangleBannerAd:Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;)Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->pangleBannerAd:Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;->onAdExposure(Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;->onAdClick(Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;Landroid/view/View;Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;->onRenderSuccess(Landroid/view/View;Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->BANNER_W_320_H_50:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->extMap:Ljava/util/Map;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    const-string v2, "banner_wh"

    .line 8
    .line 9
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->extMap:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-string v2, "300_250"

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->BANNER_W_300_H_250:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v2, "728_90"

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->BANNER_W_728_H_90:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 45
    .line 46
    :cond_1
    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3;-><init>(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;->loadAd(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance p2, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$1;-><init>(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p2, p4, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Ljava/util/Map;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->extMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-static {}, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->getInstance()Lcom/meishu/sdk/platform/pangle/PangleInitManager;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object p4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 33
    .line 34
    new-instance v0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$2;

    .line 35
    .line 36
    invoke-direct {v0, p0, p3}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$2;-><init>(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p4, p1, v0}, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

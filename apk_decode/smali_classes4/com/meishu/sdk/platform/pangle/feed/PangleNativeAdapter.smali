.class public Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;
.super Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;-><init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;->loadAdWithCallback(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onFeedAdLoad(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private loadAdWithCallback(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter$2;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter$2;-><init>(Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;->loadAd(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeRequest;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;)V

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
    new-instance v0, Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter$1;

    .line 8
    .line 9
    invoke-direct {v0, p0, p3}, Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter$1;-><init>(Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p4, p1, v0}, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

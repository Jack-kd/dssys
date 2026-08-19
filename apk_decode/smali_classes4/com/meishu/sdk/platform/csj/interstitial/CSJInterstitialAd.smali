.class public Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CSJInterstitialAd"


# instance fields
.field private final ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field private adListener:Lcom/meishu/sdk/core/ad/interstitial/b;

.field private adWrapper:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

.field private isClick:Z

.field private lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

.field private lifecycleListener:Lcom/meishu/sdk/meishu_ad/lifecycle/d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;Lcom/meishu/sdk/core/ad/interstitial/b;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 1

    .line 1
    const-string v0, "CSJ"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd$1;-><init>(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->lifecycleListener:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->adListener:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->isClick:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->isClick:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public getAdListener()Lcom/meishu/sdk/core/ad/interstitial/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->adListener:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdWrapper()Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public setClick()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->isClick:Z

    .line 3
    .line 4
    return-void
.end method

.method public showAd()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getEnableInterstitialAutoClose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 6
    iput-object v1, v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->b:Landroid/app/Activity;

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->lifecycleListener:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->a(Lcom/meishu/sdk/meishu_ad/lifecycle/d;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->showInteractionExpressAd(Landroid/app/Activity;)V

    .line 9
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getEnableInterstitialAutoClose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    :cond_0
    if-eqz p1, :cond_1

    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    .line 14
    iput-object p1, v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->b:Landroid/app/Activity;

    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->lifecycleListener:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->a(Lcom/meishu/sdk/meishu_ad/lifecycle/d;)V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->showInteractionExpressAd(Landroid/app/Activity;)V

    .line 17
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd(Landroid/app/Activity;)V

    return-void
.end method

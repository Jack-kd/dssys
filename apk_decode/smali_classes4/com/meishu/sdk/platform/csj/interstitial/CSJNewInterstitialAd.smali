.class public Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CSJNewInterstitialAd"


# instance fields
.field private ad:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

.field private adListener:Lcom/meishu/sdk/core/ad/interstitial/b;

.field private adWrapper:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

.field private isClick:Z

.field private lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;Lcom/meishu/sdk/core/ad/interstitial/b;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 1

    .line 1
    const-string v0, "CSJ"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd$1;-><init>(Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->adListener:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->ad:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->isClick:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->isClick:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;)Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public setClick()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->isClick:Z

    .line 3
    .line 4
    return-void
.end method

.method public showAd()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getEnableInterstitialAutoClose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->ad:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :cond_1
    :goto_2
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 8
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getEnableInterstitialAutoClose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->ad:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 12
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :cond_1
    :goto_2
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd(Landroid/app/Activity;)V

    return-void
.end method

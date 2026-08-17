.class public Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

.field private interstitialAd:Lcom/huawei/hms/ads/InterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;Lcom/huawei/hms/ads/InterstitialAd;)V
    .locals 1

    .line 1
    const-string v0, "HW"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;->interstitialAd:Lcom/huawei/hms/ads/InterstitialAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public showAd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;->interstitialAd:Lcom/huawei/hms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;->interstitialAd:Lcom/huawei/hms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 3
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd()V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;->interstitialAd:Lcom/huawei/hms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;->interstitialAd:Lcom/huawei/hms/ads/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/ads/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 6
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd()V

    :cond_0
    return-void
.end method

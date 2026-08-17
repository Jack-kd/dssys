.class public Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;
.super Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;

.field private windNewInterstitialAd:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;-><init>(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;->windNewInterstitialAd:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public showAd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;->windNewInterstitialAd:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/c;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "bidding"

    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;->windNewInterstitialAd:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    invoke-virtual {v0}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/m;->setBidEcpm(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;->windNewInterstitialAd:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->show(Ljava/util/HashMap;)Z

    .line 6
    invoke-super {p0}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;->showAd()V

    :cond_1
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;->windNewInterstitialAd:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/c;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "bidding"

    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;->windNewInterstitialAd:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    invoke-virtual {v0}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/m;->setBidEcpm(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;->windNewInterstitialAd:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->show(Ljava/util/HashMap;)Z

    .line 12
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

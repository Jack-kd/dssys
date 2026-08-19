.class public Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# instance fields
.field public adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

.field public mKsInterstitialAd:Lcom/kwad/sdk/api/KsInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsInterstitialAd;Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "KS"

    .line 2
    .line 3
    invoke-direct {p0, p2, v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->mKsInterstitialAd:Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getAdWrapper()Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public showAd()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->mKsInterstitialAd:Lcom/kwad/sdk/api/KsInterstitialAd;

    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v1, v2, v0}, Lcom/kwad/sdk/api/KsInterstitialAd;->showInterstitialAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    .line 5
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 7
    :try_start_0
    new-instance v0, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;-><init>()V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->mKsInterstitialAd:Lcom/kwad/sdk/api/KsInterstitialAd;

    invoke-interface {v1, p1, v0}, Lcom/kwad/sdk/api/KsInterstitialAd;->showInterstitialAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    .line 11
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

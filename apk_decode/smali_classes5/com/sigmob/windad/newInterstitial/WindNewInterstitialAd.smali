.class public Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;
.super Lcom/sigmob/sdk/c;

# interfaces
.implements Lcom/sigmob/sdk/videoAd/k;
.implements Lcom/sigmob/sdk/videoAd/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/c<",
        "Lcom/sigmob/sdk/newInterstitial/a;",
        ">;",
        "Lcom/sigmob/sdk/videoAd/k;",
        "Lcom/sigmob/sdk/videoAd/m;"
    }
.end annotation


# instance fields
.field protected m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/c;-><init>(Lcom/sigmob/windad/WindAdRequest;ZI)V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/c;->setAdLoadListener(Lcom/sigmob/sdk/videoAd/k;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createAdManager()Lcom/sigmob/sdk/manager/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->createAdManager()Lcom/sigmob/sdk/newInterstitial/a;

    move-result-object v0

    return-object v0
.end method

.method public createAdManager()Lcom/sigmob/sdk/newInterstitial/a;
    .locals 1

    .line 2
    new-instance v0, Lcom/sigmob/sdk/newInterstitial/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/newInterstitial/a;-><init>()V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    invoke-super {p0}, Lcom/sigmob/sdk/c;->destroy()V

    return-void
.end method

.method public loadAd()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sigmob/sdk/c;->loadAd()Z

    move-result v0

    return v0
.end method

.method public loadAd(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/sigmob/sdk/c;->loadAd(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onAdClicked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;->onInterstitialAdClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;->onInterstitialAdClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;->onInterstitialAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;->onInterstitialAdLoadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onAdPreLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;->onInterstitialAdPreLoadFail(Ljava/lang/String;)V

    return-void
.end method

.method public onAdPreLoadSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;->onInterstitialAdPreLoadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onAdShow(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;->onInterstitialAdShow(Ljava/lang/String;)V

    return-void
.end method

.method public onAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;->onInterstitialAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPlayComplete(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVideoAdPlayEnd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setWindNewInterstitialAdListener(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    return-void
.end method

.method public show(Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1, p0}, Lcom/sigmob/sdk/c;->show(Ljava/util/HashMap;Lcom/sigmob/sdk/videoAd/m;)Z

    move-result p1

    return p1
.end method

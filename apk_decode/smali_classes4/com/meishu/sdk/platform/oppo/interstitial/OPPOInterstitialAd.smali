.class public Lcom/meishu/sdk/platform/oppo/interstitial/OPPOInterstitialAd;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# instance fields
.field private interstitialAd:Lcom/heytap/msp/mobad/api/ad/InterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;)V
    .locals 1

    .line 1
    const-string v0, "OPPO"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getInterstitialAd()Lcom/heytap/msp/mobad/api/ad/InterstitialAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/interstitial/OPPOInterstitialAd;->interstitialAd:Lcom/heytap/msp/mobad/api/ad/InterstitialAd;

    .line 2
    .line 3
    return-object v0
.end method

.method public setInterstitialAd(Lcom/heytap/msp/mobad/api/ad/InterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/interstitial/OPPOInterstitialAd;->interstitialAd:Lcom/heytap/msp/mobad/api/ad/InterstitialAd;

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/interstitial/OPPOInterstitialAd;->interstitialAd:Lcom/heytap/msp/mobad/api/ad/InterstitialAd;

    invoke-virtual {v0}, Lcom/heytap/msp/mobad/api/ad/InterstitialAd;->showAd()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

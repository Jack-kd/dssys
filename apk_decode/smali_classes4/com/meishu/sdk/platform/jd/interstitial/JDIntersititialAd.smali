.class public Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

.field private interstitialAd:Lcom/jd/ad/sdk/interstitial/JADInterstitial;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "JD"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;->adWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;->activity:Landroid/app/Activity;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getInterstitialAd()Lcom/jd/ad/sdk/interstitial/JADInterstitial;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;->interstitialAd:Lcom/jd/ad/sdk/interstitial/JADInterstitial;

    .line 2
    .line 3
    return-object v0
.end method

.method public setInterstitialAd(Lcom/jd/ad/sdk/interstitial/JADInterstitial;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;->interstitialAd:Lcom/jd/ad/sdk/interstitial/JADInterstitial;

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;->interstitialAd:Lcom/jd/ad/sdk/interstitial/JADInterstitial;

    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/jd/ad/sdk/interstitial/JADInterstitial;->showAd(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;->interstitialAd:Lcom/jd/ad/sdk/interstitial/JADInterstitial;

    invoke-virtual {v0, p1}, Lcom/jd/ad/sdk/interstitial/JADInterstitial;->showAd(Landroid/app/Activity;)V

    .line 5
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

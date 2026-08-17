.class public Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# instance fields
.field private activity:Landroid/content/Context;

.field private adWrapper:Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;

.field private interstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;Landroid/content/Context;Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;)V
    .locals 1

    .line 1
    const-string v0, "BAIDU"

    .line 2
    .line 3
    invoke-direct {p0, p3, v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;->interstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;->activity:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public showAd()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;->interstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;->activity:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->show(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3
    :goto_0
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;->interstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->show(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd(Landroid/app/Activity;)V

    return-void
.end method

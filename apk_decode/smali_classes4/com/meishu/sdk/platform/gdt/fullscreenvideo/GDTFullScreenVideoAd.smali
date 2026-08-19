.class public Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;
.super Lcom/meishu/sdk/core/ad/fullscreenvideo/b;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;

.field private mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

.field private unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "GDT"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getMediaListener()Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;->mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkAd()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnifiedInterstitialAD()Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;->mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public setUnifiedInterstitialAD(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->showFullScreenAD(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;->showAd()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->showFullScreenAD(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;->showAd(Landroid/app/Activity;)V

    return-void
.end method

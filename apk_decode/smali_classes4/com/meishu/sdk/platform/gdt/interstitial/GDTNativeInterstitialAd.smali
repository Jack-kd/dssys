.class public Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

.field private interstitialAd:Lcom/qq/e/ads/nativ/NativeUnifiedADData;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .locals 1

    .line 1
    const-string v0, "GDT"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->interstitialAd:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public showAd()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->interstitialAd:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureWidth()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->interstitialAd:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureHeight()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->interstitialAd:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-static {v3}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setSdkAd(Ljava/lang/Object;)V

    .line 5
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    invoke-static {v3}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setAdWrapper(Lcom/meishu/sdk/platform/BasePlatformLoader;)V

    .line 6
    invoke-static {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setMsAd(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 7
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    const-string v4, "isVideoAutoPlay"

    iget-object v5, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v5

    check-cast v5, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;->getIsVideoAutoPlay()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    const-string v4, "act_type"

    iget-object v5, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAct_type()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    const-string v4, "layout_type"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    const-string v2, "layout_width"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    const-string v0, "layout_height"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 14
    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 15
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->interstitialAd:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureWidth()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->interstitialAd:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureHeight()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->interstitialAd:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-static {v3}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setSdkAd(Ljava/lang/Object;)V

    .line 19
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    invoke-static {v3}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setAdWrapper(Lcom/meishu/sdk/platform/BasePlatformLoader;)V

    .line 20
    invoke-static {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setMsAd(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 21
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    const-string v4, "isVideoAutoPlay"

    iget-object v5, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v5

    check-cast v5, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;->getIsVideoAutoPlay()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    const-string v4, "act_type"

    iget-object v5, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAct_type()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    const-string v4, "layout_type"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    const-string v2, "layout_width"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    const-string v0, "layout_height"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 28
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 29
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

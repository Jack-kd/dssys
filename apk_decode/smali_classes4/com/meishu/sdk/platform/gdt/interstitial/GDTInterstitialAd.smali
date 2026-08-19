.class public Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTInterstitialAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

.field private isClick:Z

.field private lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

.field private lifecycleListener:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

.field private unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "GDT"

    .line 2
    .line 3
    invoke-direct {p0, p2, v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd$1;-><init>(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->lifecycleListener:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->isClick:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public getSdkAd()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 2
    .line 3
    return-object v0
.end method

.method public setClick()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->isClick:Z

    .line 3
    .line 4
    return-void
.end method

.method public showAd()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getEnableInterstitialAutoClose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 6
    iput-object v1, v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->b:Landroid/app/Activity;

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->lifecycleListener:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->a(Lcom/meishu/sdk/meishu_ad/lifecycle/d;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->show()V

    .line 9
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 11
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getEnableInterstitialAutoClose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    .line 15
    iput-object p1, v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->b:Landroid/app/Activity;

    .line 16
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->lifecycleListener:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->a(Lcom/meishu/sdk/meishu_ad/lifecycle/d;)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->show(Landroid/app/Activity;)V

    .line 18
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;->showAd(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 19
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

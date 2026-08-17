.class public Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;
.super Lcom/meishu/sdk/core/ad/splash/c;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTSplashAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

.field private autoShow:Z

.field private showed:Z

.field private splashAD:Lcom/qq/e/ads/splash/SplashAD;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Z)V
    .locals 1

    .line 1
    const-string v0, "GDT"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/splash/c;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 7
    .line 8
    iput-boolean p2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->autoShow:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getSdkAd()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSplashAd()Lcom/qq/e/ads/splash/SplashAD;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 2
    .line 3
    return-object v0
.end method

.method public setSplashAD(Lcom/qq/e/ads/splash/SplashAD;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 2
    .line 3
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->showed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->isSplashFullScreen()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/splash/SplashAD;->showFullScreenAd(Landroid/view/ViewGroup;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/splash/SplashAD;->showAd(Landroid/view/ViewGroup;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->showed:Z

    .line 37
    .line 38
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->showAd(Landroid/view/ViewGroup;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    invoke-static {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public splashAnimationFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/qq/e/ads/splash/SplashAD;->zoomOutAnimationFinish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

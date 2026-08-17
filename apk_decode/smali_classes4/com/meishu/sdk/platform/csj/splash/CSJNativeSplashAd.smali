.class public Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;
.super Lcom/meishu/sdk/core/ad/splash/c;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

.field private showed:Z

.field private skipView:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)V
    .locals 1

    .line 1
    const-string v0, "CSJ"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/splash/c;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;->adWrapper:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public setSkipView(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;->skipView:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 2
    .line 3
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;->showed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {p1, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;->showed:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;->skipView:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->c()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->showAd(Landroid/view/ViewGroup;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;->adWrapper:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;->adWrapper:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-static {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

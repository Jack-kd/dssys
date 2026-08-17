.class public Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;
.super Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;

.field private mWindSplashAD:Lcom/sigmob/windad/Splash/WindSplashAD;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;-><init>(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;->adWrapper:Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setSplashAD(Lcom/sigmob/windad/Splash/WindSplashAD;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;->mWindSplashAD:Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 2
    .line 3
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;->mWindSplashAD:Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;->adWrapper:Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "bidding"

    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;->adWrapper:Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;->mWindSplashAD:Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->getEcpm()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/m;->setBidEcpm(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;->mWindSplashAD:Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->show(Landroid/view/ViewGroup;)V

    .line 54
    .line 55
    .line 56
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->showAd(Landroid/view/ViewGroup;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

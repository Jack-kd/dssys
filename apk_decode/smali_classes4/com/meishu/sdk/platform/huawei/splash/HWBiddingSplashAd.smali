.class public Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;
.super Lcom/meishu/sdk/core/ad/splash/c;
.source "SourceFile"


# instance fields
.field private final adWrapper:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

.field private showed:Z

.field private final splashAd:Lcom/huawei/hms/ads/splash/SplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;Lcom/huawei/hms/ads/splash/SplashAd;)V
    .locals 1

    .line 1
    const-string v0, "HW"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/splash/c;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;->splashAd:Lcom/huawei/hms/ads/splash/SplashAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public showAd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;->showed:Z

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
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;->showed:Z

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;->splashAd:Lcom/huawei/hms/ads/splash/SplashAd;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/splash/SplashAd;->showAd(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->showAd(Landroid/view/ViewGroup;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    invoke-static {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

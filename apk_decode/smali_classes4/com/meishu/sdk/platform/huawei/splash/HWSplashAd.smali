.class public Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;
.super Lcom/meishu/sdk/core/ad/splash/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd$IAdShowListener;
    }
.end annotation


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

.field private listener:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd$IAdShowListener;

.field private showed:Z


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "HW"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/splash/c;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public setOnAdShowListener(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd$IAdShowListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;->listener:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd$IAdShowListener;

    .line 2
    .line 3
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;->showed:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_3

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
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;->showed:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;->listener:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd$IAdShowListener;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd$IAdShowListener;->onShow()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->showAd(Landroid/view/ViewGroup;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;->adWrapper:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    invoke-static {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

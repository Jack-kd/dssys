.class public Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jd/ad/sdk/splash/JADSplashListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "JDSplashAdListenerImpl"


# instance fields
.field private autoShow:Z

.field private jdSplashAdWrapper:Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;

.field private loadSuccess:Z

.field private splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

.field private splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;Lcom/meishu/sdk/core/ad/splash/d;Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->jdSplashAdWrapper:Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->autoShow:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->jdSplashAdWrapper:Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->jdSplashAdWrapper:Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "JDSplashAdListenerImpl"

    .line 26
    .line 27
    const-string v1, "send onADClicked"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->jdSplashAdWrapper:Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->jdSplashAdWrapper:Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public onClose()V
    .locals 2

    .line 1
    const-string v0, "JDSplashAdListenerImpl"

    .line 2
    .line 3
    const-string v1, "onADDismissed: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->loadSuccess:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public onExposure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->jdSplashAdWrapper:Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public onLoadFailure(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/jd/JDPlatformError;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->jdSplashAdWrapper:Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/jd/JDPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onLoadSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;->getSplashAd()Lcom/jd/ad/sdk/splash/JADSplash;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->loadSuccess:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;->getSplashAd()Lcom/jd/ad/sdk/splash/JADSplash;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/jd/ad/sdk/splash/JADSplash;->getJADExtra()Lcom/jd/ad/sdk/dl/model/IJADExtra;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/jd/ad/sdk/splash/JADSplash;->getJADExtra()Lcom/jd/ad/sdk/dl/model/IJADExtra;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/jd/ad/sdk/dl/model/IJADExtra;->getPrice()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->jdSplashAdWrapper:Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public onRenderFailure(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p2, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/meishu/sdk/platform/jd/JDPlatformError;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->jdSplashAdWrapper:Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/jd/JDPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;->splashAd:Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/ad/splash/d;->onAdPresent(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

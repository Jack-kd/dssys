.class public Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jd/ad/sdk/interstitial/JADInterstitialListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "JDInterstitialAdListene"


# instance fields
.field private jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

.field private jdInterstitialAdWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

.field private loadListener:Lcom/meishu/sdk/core/ad/interstitial/b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;Lcom/meishu/sdk/core/ad/interstitial/b;Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdInterstitialAdWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdInterstitialAdWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdInterstitialAdWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

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
    const-string v0, "JDInterstitialAdListene"

    .line 26
    .line 27
    const-string v1, "send onADClicked"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdInterstitialAdWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdInterstitialAdWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

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
    iget-object v2, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 55
    .line 56
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void

    .line 85
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public onClose()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onExposure()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdInterstitialAdWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void

    .line 46
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
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
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdInterstitialAdWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/interstitial/b;

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
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;->getInterstitialAd()Lcom/jd/ad/sdk/interstitial/JADInterstitial;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdInterstitialAdWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getRsp()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdInterstitialAdWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getImp()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;->getInterstitialAd()Lcom/jd/ad/sdk/interstitial/JADInterstitial;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/jd/ad/sdk/interstitial/JADInterstitial;->getExtra()Lcom/jd/ad/sdk/dl/model/IJADExtra;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/jd/ad/sdk/interstitial/JADInterstitial;->getExtra()Lcom/jd/ad/sdk/dl/model/IJADExtra;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/jd/ad/sdk/dl/model/IJADExtra;->getPrice()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdInterstitialAdWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 70
    .line 71
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void

    .line 75
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public onRenderFailure(ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p2, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    new-instance v0, Lcom/meishu/sdk/platform/jd/JDPlatformError;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdInterstitialAdWrapper:Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/jd/JDPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;->jdIntersititialAd:Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.class public Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jd/ad/sdk/banner/JADBannerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "JDBannerAdListenerImpl"


# instance fields
.field private jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

.field private jdBannerAdWrapper:Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;

.field private loadListener:Lcom/meishu/sdk/core/ad/banner/b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;Lcom/meishu/sdk/core/ad/banner/b;Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAdWrapper:Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/banner/b;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAdWrapper:Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAdWrapper:Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;

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
    const-string v0, "JDBannerAdListenerImpl"

    .line 26
    .line 27
    const-string v1, "send onADClicked"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAdWrapper:Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAdWrapper:Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;

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
    iget-object v2, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/banner/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public onExposure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAdWrapper:Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/banner/b;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAdWrapper:Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/banner/b;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onLoadSuccess()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;->getBannerAd()Lcom/jd/ad/sdk/banner/JADBanner;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAdWrapper:Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAdWrapper:Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;->getBannerAd()Lcom/jd/ad/sdk/banner/JADBanner;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/jd/ad/sdk/banner/JADBanner;->getExtra()Lcom/jd/ad/sdk/dl/model/IJADExtra;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/jd/ad/sdk/banner/JADBanner;->getExtra()Lcom/jd/ad/sdk/dl/model/IJADExtra;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAdWrapper:Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ""

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/banner/b;

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

    .line 83
    .line 84
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void

    .line 88
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public onRenderFailure(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/banner/b;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAdWrapper:Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/banner/b;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/banner/b;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;->jdBannerAd:Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

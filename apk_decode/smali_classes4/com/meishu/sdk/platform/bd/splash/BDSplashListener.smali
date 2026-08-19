.class public Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/SplashInteractionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BDSplashListener"


# instance fields
.field private isAdLoaded:Z

.field private isExposed:Z

.field public loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

.field public meishuListener:Lcom/meishu/sdk/core/ad/splash/d;

.field public splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/meishu/sdk/core/ad/splash/d;Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->isExposed:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->meishuListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onADLoaded()V
    .locals 3

    .line 1
    const-string v0, "bd onADLoaded------------------------"

    .line 2
    .line 3
    const-string v1, "BDSplashListener"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "currentThread="

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->meishuListener:Lcom/meishu/sdk/core/ad/splash/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->getSplashAd()Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->getECPMLevel()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :goto_0
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->isAdLoaded:Z

    .line 68
    .line 69
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->meishuListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 72
    .line 73
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->meishuListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 79
    .line 80
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_0
    :goto_2
    return-void
.end method

.method public onAdCacheFailed()V
    .locals 0

    return-void
.end method

.method public onAdCacheSuccess()V
    .locals 0

    return-void
.end method

.method public onAdClick()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

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
    const-string v0, "BDSplashListener"

    .line 26
    .line 27
    const-string v1, "send onAdClick"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

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
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_1
    return-void

    .line 105
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public onAdDismissed()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->meishuListener:Lcom/meishu/sdk/core/ad/splash/d;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

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

.method public onAdExposed()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->isExposed:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->meishuListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdPresent(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->meishuListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 61
    .line 62
    .line 63
    :cond_2
    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->isExposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    return-void

    .line 67
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "BDSplashListener"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onAdFailed, msg: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->isAdLoaded:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->meishuListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    invoke-interface {v0, p1, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    const-string v0, "exception"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    new-instance v0, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->meishuListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onAdPresent()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->loader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->isExposed:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->meishuListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdPresent(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->meishuListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->splashAd:Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 61
    .line 62
    .line 63
    :cond_2
    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashListener;->isExposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    return-void

    .line 67
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public onAdSkip()V
    .locals 0

    return-void
.end method

.method public onLpClosed()V
    .locals 0

    return-void
.end method

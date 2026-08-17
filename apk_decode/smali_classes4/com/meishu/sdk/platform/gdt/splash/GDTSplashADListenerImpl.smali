.class public Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTSplashADListenerImpl"


# instance fields
.field private isAdClicked:Z

.field private isAdLoaded:Z

.field private leftMilliseconds:J

.field private splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

.field private splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

.field private splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/meishu/sdk/core/ad/splash/d;Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public createListenerProxy()Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/qq/e/ads/splash/SplashADListener;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-object v1, v0

    .line 6
    :goto_0
    if-nez v1, :cond_0

    .line 7
    .line 8
    :try_start_1
    const-string v1, "com.qq.e.ads.splash.SplashADZoomOutListener"

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    goto :goto_1

    .line 15
    :catch_1
    return-object v0

    .line 16
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl$1;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl$1;-><init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public onADClicked()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->isAdClicked:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string v0, "GDTSplashADListenerImpl"

    .line 29
    .line 30
    const-string v1, "send onADClicked"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 52
    .line 53
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 58
    .line 59
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    :cond_1
    return-void

    .line 108
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public onADDismissed()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->isAdClicked:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->leftMilliseconds:J

    .line 10
    .line 11
    const-wide/16 v3, 0x320

    .line 12
    .line 13
    cmp-long v1, v1, v3

    .line 14
    .line 15
    if-gez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdTimeOver(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdSkip(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void

    .line 55
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onADExposure()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "GDTSplashADListenerImpl"

    .line 2
    .line 3
    const-string v1, "send onADExposure"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void

    .line 59
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onADLoaded(J)V
    .locals 0

    .line 1
    const-string p1, "GDTSplashADListenerImpl"

    .line 2
    .line 3
    const-string p2, "load GDT  succ------------------------"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;->getSplashAd()Lcom/qq/e/ads/splash/SplashAD;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 49
    .line 50
    invoke-interface {p1, p2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 54
    .line 55
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 56
    .line 57
    invoke-interface {p1, p2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->isAdLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    :cond_1
    return-void

    .line 64
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public onADPresent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAd;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdPresent(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onADTick(J)V
    .locals 1

    .line 1
    :try_start_0
    iput-wide p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->leftMilliseconds:J

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/ad/splash/d;->onAdTick(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "GDTSplashADListenerImpl"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onNoAD, code: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", msg: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->isAdLoaded:Z

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    new-instance v0, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashAdWrapper:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->splashADListener:Lcom/meishu/sdk/core/ad/splash/d;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-interface {v0, v1, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void

    .line 78
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

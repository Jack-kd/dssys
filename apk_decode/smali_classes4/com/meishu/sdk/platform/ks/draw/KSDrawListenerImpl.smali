.class public Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "KSDrawListenerImpl"


# instance fields
.field private adNativeWrapper:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

.field private hasExposed:Z

.field private ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->adNativeWrapper:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->adNativeWrapper:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "KSDrawListenerImpl"

    .line 20
    .line 21
    const-string v1, "send onAdClicked"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->adNativeWrapper:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->adNativeWrapper:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 43
    .line 44
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 49
    .line 50
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->adNativeWrapper:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->adNativeWrapper:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :cond_1
    return-void

    .line 97
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->hasExposed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->adNativeWrapper:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->hasExposed:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->adNativeWrapper:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/a;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public onVideoPlayEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playCompletion()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoPlayError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playError()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoPlayPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playPause()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoPlayResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playResume()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoPlayStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;->ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playRenderingStart()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

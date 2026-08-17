.class public Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "KsIntersititialListener"


# instance fields
.field private ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const-string v0, "KsIntersititialListener"

    .line 42
    .line 43
    const-string v1, "send onAdClicked"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 73
    .line 74
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 79
    .line 80
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto :goto_1

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    .line 125
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    :cond_1
    return-void

    .line 135
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void

    .line 49
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onPageDismiss()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;->getAdWrapper()Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;->ad:Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void

    .line 61
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onSkippedAd()V
    .locals 0

    return-void
.end method

.method public onVideoPlayEnd()V
    .locals 0

    return-void
.end method

.method public onVideoPlayError(II)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onVideoError: "

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "KsIntersititialListener"

    .line 19
    .line 20
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onVideoPlayStart()V
    .locals 0

    return-void
.end method

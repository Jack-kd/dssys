.class public Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RewardVideoAdListenerAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

.field private apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

.field private isAdLoaded:Z

.field private rewardVideoAdAdapter:Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;Lcom/meishu/sdk/core/ad/reward/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onADClick()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

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
    const-string v0, "RewardVideoAdListenerAd"

    .line 26
    .line 27
    const-string v1, "send onADClick"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

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
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->rewardVideoAdAdapter:Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getApiInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getApiInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void

    .line 103
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public onADClose()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getApiInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getApiInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onADExpose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getApiInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getApiInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onADLoad()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;-><init>(Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->rewardVideoAdAdapter:Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->setEcpm()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->rewardVideoAdAdapter:Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->rewardVideoAdAdapter:Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->isAdLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void

    .line 40
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onADShow()V
    .locals 2

    .line 1
    const-string v0, "RewardVideoAdListenerAd"

    .line 2
    .line 3
    const-string v1, "onADShow: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoStart()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "RewardVideoAdListenerAd"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onError, code: "

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
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v1, 0xfaf

    .line 44
    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->isAdLoaded:Z

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoError()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_0
    new-instance v0, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-interface {v0, v1, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    return-void

    .line 105
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public onReward()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/reward/a;->onReward(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/ad/reward/a;->onReward(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/reward/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->rewardVideoAdAdapter:Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdAdapter;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/reward/a;->onVideoCached(Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/reward/RewardVideoAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/reward/GDTRewardVideoAdWrapper;->getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoCompleted()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

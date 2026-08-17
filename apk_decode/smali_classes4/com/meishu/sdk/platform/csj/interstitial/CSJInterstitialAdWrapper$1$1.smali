.class Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

.field public final synthetic val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

.field public final synthetic val$ttFullScreenVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->val$ttFullScreenVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void

    .line 45
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->val$ttFullScreenVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;->getEcpm()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setGmShowEcpm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_1
    move-exception v0

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_3
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;->setClick()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const-string v0, "CSJInterstitialAdWrappe"

    .line 35
    .line 36
    const-string v1, "send onAdVideoBarClick"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

    .line 62
    .line 63
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 68
    .line 69
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/interstitial/CSJNewInterstitialAd;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAdWrapper;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public onSkippedVideo()V
    .locals 0

    return-void
.end method

.method public onVideoComplete()V
    .locals 0

    return-void
.end method

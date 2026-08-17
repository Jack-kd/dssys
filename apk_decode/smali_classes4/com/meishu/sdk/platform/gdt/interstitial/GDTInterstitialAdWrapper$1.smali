.class Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->setClick()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const-string v0, "GDTInterstitialAdWrapper"

    .line 46
    .line 47
    const-string v1, "send onADClicked"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 69
    .line 70
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 71
    .line 72
    .line 73
    move-result-object v2

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    :cond_2
    return-void

    .line 140
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public onADClosed()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onADExposure()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onADLeftApplication()V
    .locals 0

    return-void
.end method

.method public onADOpened()V
    .locals 0

    return-void
.end method

.method public onADReceive()V
    .locals 0

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "GDTInterstitialAdWrapper"

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
    new-instance v0, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onRenderFail()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 16
    .line 17
    const-string v1, "GDTRenderFail"

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    invoke-interface {v0, v1, v2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void

    .line 27
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onRenderSuccess()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void

    .line 78
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public onVideoCached()V
    .locals 0

    return-void
.end method

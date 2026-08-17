.class Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/FullScreenVideoAd$FullScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

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
    const-string v0, "BDFullscreenVideoLoader"

    .line 26
    .line 27
    const-string v1, "send onADClicked"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

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
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$000(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 59
    .line 60
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$000(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$000(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public onAdClose(F)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$000(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$000(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void

    .line 30
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "BDFullscreenVideoLoader"

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
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string v0, "exception"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void

    .line 57
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$100(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->getECPMLevel()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$200(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/c;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$000(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/c;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$000(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-void

    .line 66
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/c;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$000(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;

    .line 26
    .line 27
    .line 28
    move-result-object v0

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$000(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;

    .line 38
    .line 39
    .line 40
    move-result-object v0

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

.method public onAdSkip(F)V
    .locals 0

    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 0

    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 0

    return-void
.end method

.method public playCompletion()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$000(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;->getMediaListener()Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;->access$000(Lcom/meishu/sdk/platform/bd/fullscreenvideo/BDFullscreenVideoLoader;)Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;->getMediaListener()Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;->onVideoCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void

    .line 30
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

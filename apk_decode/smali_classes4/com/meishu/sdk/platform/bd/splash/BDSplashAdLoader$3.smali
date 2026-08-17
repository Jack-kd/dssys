.class Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/NativeResponse$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->showNativeLayout(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;ZZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

.field public final synthetic val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public adActReward(I)V
    .locals 0

    return-void
.end method

.method public adActRewardSuccess()V
    .locals 0

    return-void
.end method

.method public onADExposed()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "BDSplashAdLoader"

    .line 2
    .line 3
    const-string v1, "onADExposed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$300(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$302(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void

    .line 64
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public onADExposureFailed(I)V
    .locals 0

    return-void
.end method

.method public onADStatusChanged()V
    .locals 0

    return-void
.end method

.method public onAdClick()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "BDSplashAdLoader"

    .line 2
    .line 3
    const-string v1, "send onAdClicked"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$200(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 47
    .line 48
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 78
    .line 79
    if-eqz v0, :cond_1

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$3;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

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

.method public onAdUnionClick()V
    .locals 0

    return-void
.end method

.class Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->showNativeLayout(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

.field public final synthetic val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "GDTSplashAdWrapper"

    .line 14
    .line 15
    const-string v1, "send onADClicked"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3700(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Landroid/content/Context;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

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
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;

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

.method public onADError(Lcom/qq/e/comm/util/AdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3900(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-interface {v0, v1, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onADExposed()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3600(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3602(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Z)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$5;->val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void

    .line 57
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onADStatusChanged()V
    .locals 0

    return-void
.end method

.class Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->loadNativeAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLpClosed()V
    .locals 0

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;)V
    .locals 1

    .line 3
    :try_start_0
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 0

    .line 1
    :try_start_0
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onNativeLoad(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 16
    .line 17
    new-instance v0, Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;-><init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 27
    .line 28
    .line 29
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    :try_start_1
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getECPMLevel()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception v1

    .line 49
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 53
    .line 54
    invoke-static {v1, p1, v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$000(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_1
    :goto_1
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    .line 59
    .line 60
    const-string v0, "list is null"

    .line 61
    .line 62
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_3
    return-void
.end method

.method public onNoAd(ILjava/lang/String;)V
    .locals 1

    .line 3
    :try_start_0
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onNoAd(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 0

    .line 1
    :try_start_0
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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

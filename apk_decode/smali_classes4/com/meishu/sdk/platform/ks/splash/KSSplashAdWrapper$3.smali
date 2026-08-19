.class Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->loadNativeAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "KSSplashAdWrapper"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/meishu/sdk/platform/ks/KSPlatformError;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$1300(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/ks/KSPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$1200(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onNativeAdLoad(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsNativeAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onNativeAdLoad ksNativeAdList is null"

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    :try_start_0
    const-string p1, "KSSplashAdWrapper"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lcom/meishu/sdk/platform/ks/KSPlatformError;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$900(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {p1, v0, v1, v2}, Lcom/meishu/sdk/platform/ks/KSPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$800(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/kwad/sdk/api/KsNativeAd;

    .line 53
    .line 54
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsNativeAd;->getECPM()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$1000(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v1, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3$1;

    .line 76
    .line 77
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3$1;-><init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;Lcom/kwad/sdk/api/KsNativeAd;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

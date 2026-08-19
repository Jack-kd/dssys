.class Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->loadExpressAd()V
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
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

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
    const-string v1, "onNoAD, code: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", msg: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "KSSplashAdWrapper"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/meishu/sdk/platform/ks/KSPlatformError;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$100(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/ks/KSPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onRequestResult(I)V
    .locals 0

    return-void
.end method

.method public onSplashScreenAdLoad(Lcom/kwad/sdk/api/KsSplashScreenAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$202(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;Lcom/kwad/sdk/api/KsSplashScreenAd;)Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$300(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$300(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->setSplashAD(Lcom/kwad/sdk/api/KsSplashScreenAd;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$400(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    :try_start_0
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsSplashScreenAd;->getECPM()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$500(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$600(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$300(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$700(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$300(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    return-void
.end method

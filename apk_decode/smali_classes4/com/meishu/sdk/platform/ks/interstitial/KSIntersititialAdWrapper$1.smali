.class Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->loadExpress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

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
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/platform/ks/KSPlatformError;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$100(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/ks/KSPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$000(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onInterstitialAdLoad(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsInterstitialAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$202(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;Lcom/kwad/sdk/api/KsInterstitialAd;)Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$200(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 30
    .line 31
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;-><init>(Lcom/kwad/sdk/api/KsInterstitialAd;Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$200(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;

    .line 41
    .line 42
    invoke-direct {v1, p1}, Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialListener;-><init>(Lcom/meishu/sdk/platform/ks/interstitial/KsIntersititialAd;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsInterstitialAd;->setAdInteractionListener(Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$300(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$200(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsInterstitialAd;->getECPM()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$400(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$500(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 93
    .line 94
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$600(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 104
    .line 105
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :cond_0
    :goto_2
    return-void
.end method

.method public onRequestResult(I)V
    .locals 0

    return-void
.end method

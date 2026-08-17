.class Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->loadNative()V
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
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

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
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "KSIntersititialAdWrappe"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$900(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/ks/KSPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$800(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
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
    if-eqz p1, :cond_2

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/kwad/sdk/api/KsNativeAd;

    .line 33
    .line 34
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getECPM()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;->access$700(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v2, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/kwad/sdk/api/KsNativeAd;

    .line 60
    .line 61
    new-instance v0, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 64
    .line 65
    invoke-direct {v0, v1, p1}, Lcom/meishu/sdk/platform/ks/interstitial/KsNativeIntersititialAd;-><init>(Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;Lcom/kwad/sdk/api/KsNativeAd;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 75
    .line 76
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 86
    .line 87
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    :goto_1
    const-string p1, "KSIntersititialAdWrappe"

    .line 92
    .line 93
    const-string v0, "onNativeAdLoad ksNativeAdList is null"

    .line 94
    .line 95
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/interstitial/KSIntersititialAdWrapper;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 113
    .line 114
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    :cond_3
    return-void

    .line 118
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.class Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADUnifiedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->loadNativeInterstitial()V
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
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
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
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

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
    check-cast p1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$302(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$300(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTNativeInterstitialAd;-><init>(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->access$400(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

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
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 81
    .line 82
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 92
    .line 93
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    return-void

    .line 97
    :cond_2
    new-instance p1, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 98
    .line 99
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    .line 100
    .line 101
    const-string v1, "data is null"

    .line 102
    .line 103
    const/4 v2, -0x1

    .line 104
    invoke-direct {v0, v2, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

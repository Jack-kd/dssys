.class public Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;",
        "Lcom/meishu/sdk/core/ad/interstitial/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTInterstitialAdWrapper"


# instance fields
.field private gdtInterstitialAd:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

.field private interstitialAd:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field private unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

.field private unifiedInterstitialADListener:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialADListener:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->gdtInterstitialAd:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->interstitialAd:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->interstitialAd:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method private loadExpressInterstitial()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :try_start_1
    new-instance v0, Lcom/google/gson/Gson;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-class v2, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 31
    .line 32
    new-instance v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/app/Activity;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialADListener:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;->getToken()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-direct/range {v1 .. v6}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;Ljava/util/Map;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 66
    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    new-instance v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/app/Activity;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialADListener:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    .line 84
    .line 85
    invoke-direct {v0, v1, v2, v3}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 89
    .line 90
    :cond_1
    new-instance v0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 93
    .line 94
    invoke-direct {v0, v1, p0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;-><init>(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->gdtInterstitialAd:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadAD()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :goto_2
    return-void
.end method

.method private loadNativeInterstitial()V
    .locals 4

    .line 1
    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;

    .line 18
    .line 19
    invoke-direct {v3, p0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper$2;-><init>(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v3}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public loadAd()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-ne v0, v1, :cond_0

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->loadNativeInterstitial()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->loadExpressInterstitial()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "expectCostPrice"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v0, "highestLossPrice"

    .line 28
    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {v1, p2, v2, v3}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lcom/qq/e/ads/LiteAbstractAD;->sendWinNotification(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v0, "winPrice"

    .line 72
    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const-string p2, "lossReason"

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string p2, "adnId"

    .line 91
    .line 92
    const-string v0, "2"

    .line 93
    .line 94
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Lcom/qq/e/ads/LiteAbstractAD;->sendLossNotification(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void

    .line 103
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.class public Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;",
        "Lcom/meishu/sdk/core/ad/banner/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTViewWrapper"


# instance fields
.field private bannerAd:Lcom/meishu/sdk/core/ad/banner/a;

.field private gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

.field private isAdLoaded:Z

.field private unifiedBannerADListener:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;-><init>(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->unifiedBannerADListener:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    :try_start_1
    new-instance v0, Lcom/google/gson/Gson;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-class v2, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 37
    .line 38
    new-instance v1, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/app/Activity;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->unifiedBannerADListener:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;->getToken()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-direct/range {v1 .. v6}, Lcom/qq/e/ads/banner2/UnifiedBannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p1, v0

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    new-instance v0, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/app/Activity;

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->unifiedBannerADListener:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    .line 87
    .line 88
    invoke-direct {v0, p1, p2, v1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 92
    .line 93
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 94
    .line 95
    const/4 p2, 0x0

    .line 96
    invoke-virtual {p1, p2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :goto_2
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->isAdLoaded:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->isAdLoaded:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/qq/e/ads/banner2/UnifiedBannerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->bannerAd:Lcom/meishu/sdk/core/ad/banner/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;Lcom/meishu/sdk/core/ad/banner/a;)Lcom/meishu/sdk/core/ad/banner/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->bannerAd:Lcom/meishu/sdk/core/ad/banner/a;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
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
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 26
    .line 27
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->loadAD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->getECPM()I

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->getECPM()I

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
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->sendWinNotification(Ljava/util/Map;)V

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
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->sendLossNotification(Ljava/util/Map;)V
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

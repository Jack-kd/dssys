.class public Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;",
        "Lcom/meishu/sdk/core/ad/recycler/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRecyclerAdWrapper"

.field private static final TEMPLATE_AD:I = 0x63


# instance fields
.field private volatile hasExposed:Z

.field private isBidding:Z

.field private mNativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->isBidding:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)Lcom/huawei/hms/ads/nativead/NativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->mNativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;Lcom/huawei/hms/ads/nativead/NativeAd;)Lcom/huawei/hms/ads/nativead/NativeAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->mNativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->hasExposed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->hasExposed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private loadNativeAD(I)V
    .locals 4

    .line 1
    new-instance p1, Lcom/huawei/hms/ads/nativead/NativeAdLoader$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {p1, v0, v1}, Lcom/huawei/hms/ads/nativead/NativeAdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;

    .line 24
    .line 25
    invoke-direct {v1, p0, v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;-><init>(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/huawei/hms/ads/nativead/NativeAdLoader$Builder;->setNativeAdLoadedListener(Lcom/huawei/hms/ads/nativead/NativeAd$NativeAdLoadedListener;)Lcom/huawei/hms/ads/nativead/NativeAdLoader$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;

    .line 33
    .line 34
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/huawei/hms/ads/nativead/NativeAdLoader$Builder;->setAdListener(Lcom/huawei/hms/ads/AdListener;)Lcom/huawei/hms/ads/nativead/NativeAdLoader$Builder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/huawei/hms/ads/nativead/NativeAdLoader$Builder;->build()Lcom/huawei/hms/ads/nativead/NativeAdLoader;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lcom/huawei/hms/ads/AdParam$Builder;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/huawei/hms/ads/AdParam$Builder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->isBidding:Z

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    :try_start_0
    new-instance v1, Lcom/huawei/hms/ads/BiddingParam$Builder;

    .line 54
    .line 55
    invoke-direct {v1}, Lcom/huawei/hms/ads/BiddingParam$Builder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    int-to-float v2, v2

    .line 67
    const/high16 v3, 0x42c80000    # 100.0f

    .line 68
    .line 69
    div-float/2addr v2, v3

    .line 70
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/huawei/hms/ads/BiddingParam$Builder;->setBidFloor(Ljava/lang/Float;)Lcom/huawei/hms/ads/BiddingParam$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "CNY"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lcom/huawei/hms/ads/BiddingParam$Builder;->setBidFloorCur(Ljava/lang/String;)Lcom/huawei/hms/ads/BiddingParam$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/huawei/hms/ads/BiddingParam$Builder;->build()Lcom/huawei/hms/ads/BiddingParam;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/ads/AdParam$Builder;->addBiddingParamMap(Ljava/lang/String;Lcom/huawei/hms/ads/BiddingParam;)Lcom/huawei/hms/ads/AdParam$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :goto_0
    const/16 v1, 0xbb8

    .line 105
    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/AdParam$Builder;->setTMax(Ljava/lang/Integer;)Lcom/huawei/hms/ads/AdParam$Builder;

    .line 111
    .line 112
    .line 113
    :cond_0
    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/AdParam$Builder;->setSupportTemplate(Z)Lcom/huawei/hms/ads/AdParam$Builder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/huawei/hms/ads/AdParam$Builder;->build()Lcom/huawei/hms/ads/AdParam;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Lcom/huawei/hms/ads/nativead/NativeAdLoader;->loadAd(Lcom/huawei/hms/ads/AdParam;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 25
    .line 26
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getFetchCount()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-gtz v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 37
    .line 38
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getFetchCount()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->loadNativeAD(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->mNativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/nativead/NativeAd;->getBiddingInfo()Lcom/huawei/hms/ads/BiddingInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v1, "CNY"

    .line 12
    .line 13
    const-string v2, "AUCTION_CURRENCY"

    .line 14
    .line 15
    const/high16 v3, 0x3f800000    # 1.0f

    .line 16
    .line 17
    const/high16 v4, 0x42c80000    # 100.0f

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    :try_start_1
    new-instance p1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/huawei/hms/ads/BiddingInfo;->getPrice()Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    mul-float/2addr v0, v4

    .line 35
    float-to-int v0, v0

    .line 36
    iget-object v5, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    iget-object v6, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 43
    .line 44
    invoke-virtual {v6}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-static {v0, p2, v5, v6}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const-string v0, "SECOND_PRICE"

    .line 53
    .line 54
    int-to-float p2, p2

    .line 55
    mul-float/2addr p2, v3

    .line 56
    div-float/2addr p2, v4

    .line 57
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->mNativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 68
    .line 69
    new-instance v0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$3;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$3;-><init>(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p1, v0}, Lcom/huawei/hms/ads/nativead/NativeAd;->sendBiddingSuccess(Ljava/util/Map;Lcom/huawei/hms/ads/ReportUrlListener;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v0, "AUCTION_PRICE"

    .line 86
    .line 87
    int-to-float p2, p2

    .line 88
    mul-float/2addr p2, v3

    .line 89
    div-float/2addr p2, v4

    .line 90
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string p2, "AUCTION_LOSS"

    .line 101
    .line 102
    const/16 v0, 0x66

    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string p2, "AUCTION_CP_ID"

    .line 112
    .line 113
    const-string v0, "100"

    .line 114
    .line 115
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->mNativeAd:Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 119
    .line 120
    new-instance v0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$4;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$4;-><init>(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p1, v0}, Lcom/huawei/hms/ads/nativead/NativeAd;->sendBiddingFailed(Ljava/util/Map;Lcom/huawei/hms/ads/ReportUrlListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    :cond_1
    return-void

    .line 129
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    return-void
.end method

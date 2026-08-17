.class public Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;",
        "Lcom/meishu/sdk/core/ad/splash/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HWSplashAdWrapper"


# instance fields
.field private biddingSplashAd:Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

.field private hwSplashAd:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;

.field private isAdClosed:Z

.field private isAdShowed:Z

.field private splashAd:Lcom/huawei/hms/ads/splash/SplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->biddingSplashAd:Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->biddingSplashAd:Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/huawei/hms/ads/splash/SplashAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->splashAd:Lcom/huawei/hms/ads/splash/SplashAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->hwSplashAd:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;)Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->hwSplashAd:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->isAdShowed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$402(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->isAdShowed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->isAdClosed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$502(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->isAdClosed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private loadBiddingAd()V
    .locals 4

    .line 1
    new-instance v0, Lcom/huawei/hms/ads/AdParam$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/ads/AdParam$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lcom/huawei/hms/ads/BiddingParam$Builder;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/huawei/hms/ads/BiddingParam$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    const/high16 v3, 0x42c80000    # 100.0f

    .line 21
    .line 22
    div-float/2addr v2, v3

    .line 23
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/huawei/hms/ads/BiddingParam$Builder;->setBidFloor(Ljava/lang/Float;)Lcom/huawei/hms/ads/BiddingParam$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "CNY"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/huawei/hms/ads/BiddingParam$Builder;->setBidFloorCur(Ljava/lang/String;)Lcom/huawei/hms/ads/BiddingParam$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/huawei/hms/ads/BiddingParam$Builder;->build()Lcom/huawei/hms/ads/BiddingParam;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/ads/AdParam$Builder;->addBiddingParamMap(Ljava/lang/String;Lcom/huawei/hms/ads/BiddingParam;)Lcom/huawei/hms/ads/AdParam$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_0
    const/16 v1, 0xbb8

    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/AdParam$Builder;->setTMax(Ljava/lang/Integer;)Lcom/huawei/hms/ads/AdParam$Builder;

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/huawei/hms/ads/splash/SplashAd;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 69
    .line 70
    invoke-direct {v1, v2}, Lcom/huawei/hms/ads/splash/SplashAd;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->splashAd:Lcom/huawei/hms/ads/splash/SplashAd;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0}, Lcom/huawei/hms/ads/AdParam$Builder;->build()Lcom/huawei/hms/ads/AdParam;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v3, 0x1

    .line 88
    invoke-virtual {v1, v2, v3, v0}, Lcom/huawei/hms/ads/splash/SplashAd;->setAdParam(Ljava/lang/String;ILcom/huawei/hms/ads/AdParam;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->splashAd:Lcom/huawei/hms/ads/splash/SplashAd;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Lcom/huawei/hms/ads/splash/SplashAd;->setAudioFocusType(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->splashAd:Lcom/huawei/hms/ads/splash/SplashAd;

    .line 97
    .line 98
    new-instance v1, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$1;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/splash/SplashAd;->setSplashListener(Lcom/huawei/hms/ads/splash/listener/SplashListener;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->splashAd:Lcom/huawei/hms/ads/splash/SplashAd;

    .line 107
    .line 108
    new-instance v1, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 109
    .line 110
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/splash/SplashAd;->loadAd(Lcom/huawei/hms/ads/splash/listener/SplashLoadListener;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method private loadNormalAd()V
    .locals 5

    .line 1
    new-instance v0, Lcom/huawei/hms/ads/splash/SplashView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 4
    .line 5
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/huawei/hms/ads/splash/SplashView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/huawei/hms/ads/AdParam$Builder;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/huawei/hms/ads/AdParam$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/huawei/hms/ads/AdParam$Builder;->build()Lcom/huawei/hms/ads/AdParam;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;Lcom/huawei/hms/ads/splash/SplashView;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$4;

    .line 29
    .line 30
    invoke-direct {v3, p0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$4;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/huawei/hms/ads/splash/SplashView;->setAdDisplayListener(Lcom/huawei/hms/ads/splash/SplashAdDisplayListener;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-virtual {v0, v3}, Lcom/huawei/hms/ads/splash/SplashView;->setAudioFocusType(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/huawei/hms/ads/splash/SplashView;->load(Ljava/lang/String;ILcom/huawei/hms/ads/AdParam;Lcom/huawei/hms/ads/splash/SplashView$SplashAdLoadListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

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
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->loadBiddingAd()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->splashAd:Lcom/huawei/hms/ads/splash/SplashAd;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/splash/SplashAd;->getBiddingInfo()Lcom/huawei/hms/ads/BiddingInfo;

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
    iget-object p2, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->splashAd:Lcom/huawei/hms/ads/splash/SplashAd;

    .line 68
    .line 69
    new-instance v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$5;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$5;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p1, v0}, Lcom/huawei/hms/ads/splash/SplashAd;->sendBiddingSuccess(Ljava/util/Map;Lcom/huawei/hms/ads/ReportUrlListener;)V

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
    iget-object p2, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->splashAd:Lcom/huawei/hms/ads/splash/SplashAd;

    .line 119
    .line 120
    new-instance v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$6;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$6;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p1, v0}, Lcom/huawei/hms/ads/splash/SplashAd;->sendBiddingFailed(Ljava/util/Map;Lcom/huawei/hms/ads/ReportUrlListener;)V
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

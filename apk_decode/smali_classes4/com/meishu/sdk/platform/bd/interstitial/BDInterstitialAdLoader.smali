.class public Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;
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
.field private static final TAG:Ljava/lang/String; = "BDInterstitialAdLoader"


# instance fields
.field private expressInterAd:Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;

.field private expressInterstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

.field private interAd:Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;)Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->expressInterstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;)Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->expressInterAd:Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method private loadExpress(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 4
    .line 5
    check-cast v1, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1, p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->expressInterstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 19
    .line 20
    new-instance p1, Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p1, v0, v1, p0}, Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;-><init>(Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;Landroid/content/Context;Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->expressInterAd:Lcom/meishu/sdk/platform/bd/interstitial/BDExpressInterstitialAd;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->expressInterstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 32
    .line 33
    new-instance v0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader$2;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader$2;-><init>(Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setLoadListener(Lcom/baidu/mobads/sdk/api/ExpressInterstitialListener;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->expressInterstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setDialogFrame(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->expressInterstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->load()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private loadNativeAd()V
    .locals 3

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

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
    invoke-direct {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->setAppSid(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->setCacheVideoOnlyWifi(Z)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    invoke-virtual {v1, v2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->downloadAppConfirmPolicy(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader$1;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader$1;-><init>(Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadFeedAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    .line 53
    .line 54
    .line 55
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
    const-string v0, "BDInterstitialAdLoader"

    .line 2
    .line 3
    const-string v1, "startloadBaiduInterstitialAd: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 9
    .line 10
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 29
    .line 30
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x1

    .line 43
    if-eq v0, v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->loadExpress(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->loadNativeAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 9

    .line 1
    const-string v0, "203"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "isWin="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ",price="

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "BDInterstitialAdLoader"

    .line 29
    .line 30
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    const-class v1, Lcom/baidu/mobads/sdk/api/SplashAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    const-class v2, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    :try_start_1
    const-string v3, "biddingSuccess"

    .line 40
    .line 41
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->expressInterstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->getECPMLevel()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    iget-object v5, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {v3, p2, v4, v5}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    const-string v3, "biddingFail"

    .line 88
    .line 89
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->expressInterstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 98
    .line 99
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catchall_0
    const/4 v1, 0x1

    .line 108
    const-string v2, "bid_t"

    .line 109
    .line 110
    const-wide/16 v3, 0x3e8

    .line 111
    .line 112
    const-string v5, "ad_time"

    .line 113
    .line 114
    const-string v6, "ecpm"

    .line 115
    .line 116
    if-eqz p1, :cond_1

    .line 117
    .line 118
    :try_start_2
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->expressInterstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->getECPMLevel()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iget-object v7, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 134
    .line 135
    invoke-virtual {v7}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    iget-object v8, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 140
    .line 141
    invoke-virtual {v8}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    invoke-static {v0, p2, v7, v8}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v6

    .line 160
    div-long/2addr v6, v3

    .line 161
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p1, v5, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->expressInterstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 176
    .line 177
    new-instance v0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader$3;

    .line 178
    .line 179
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader$3;-><init>(Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->biddingSuccess(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 187
    .line 188
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    new-instance p2, Ljava/util/Random;

    .line 199
    .line 200
    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 201
    .line 202
    .line 203
    const/16 v6, 0xa

    .line 204
    .line 205
    invoke-virtual {p2, v6}, Ljava/util/Random;->nextInt(I)I

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    const-string v6, "adn"

    .line 210
    .line 211
    if-nez p2, :cond_2

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_2
    move v1, p2

    .line 215
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 223
    .line 224
    .line 225
    move-result-wide v6

    .line 226
    div-long/2addr v6, v3

    .line 227
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-virtual {p1, v5, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    const/4 p2, 0x3

    .line 235
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    const-string p2, "reason"

    .line 243
    .line 244
    invoke-virtual {p1, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;->expressInterstitialAd:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    .line 248
    .line 249
    new-instance v0, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader$4;

    .line 250
    .line 251
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader$4;-><init>(Lcom/meishu/sdk/platform/bd/interstitial/BDInterstitialAdLoader;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->biddingFail(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    .line 256
    .line 257
    :catchall_1
    :goto_1
    return-void
.end method

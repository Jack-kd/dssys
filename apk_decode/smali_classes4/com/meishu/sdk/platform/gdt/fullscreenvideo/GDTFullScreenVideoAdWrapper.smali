.class public Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;",
        "Lcom/meishu/sdk/core/ad/fullscreenvideo/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTFullScreenVideoAdWrapper"


# instance fields
.field private gdtFullScreenVideoAd:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;

.field private listener:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

.field private unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper$2;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper$2;-><init>(Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->listener:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;)Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->gdtFullScreenVideoAd:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
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
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 24
    .line 25
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;-><init>(Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->gdtFullScreenVideoAd:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    :try_start_1
    new-instance v0, Lcom/google/gson/Gson;

    .line 51
    .line 52
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-class v2, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 68
    .line 69
    new-instance v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/app/Activity;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->listener:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;->getToken()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const/4 v5, 0x0

    .line 92
    invoke-direct/range {v1 .. v6}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;Ljava/util/Map;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 105
    .line 106
    if-nez v0, :cond_1

    .line 107
    .line 108
    new-instance v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Landroid/app/Activity;

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->listener:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    .line 125
    .line 126
    invoke-direct {v0, v1, v2, v3}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 130
    .line 131
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->gdtFullScreenVideoAd:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;->setUnifiedInterstitialAD(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 139
    .line 140
    new-instance v1, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper$1;

    .line 141
    .line 142
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 149
    .line 150
    const/16 v1, 0x1f4

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMaxVideoDuration(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 156
    .line 157
    const/4 v1, 0x5

    .line 158
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMinVideoDuration(I)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 162
    .line 163
    invoke-direct {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 167
    .line 168
    check-cast v1, Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/b;->getVideoIsMute()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 183
    .line 184
    invoke-virtual {v1, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadFullScreenAD()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    .line 195
    .line 196
    :goto_2
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

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
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

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
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->unifiedInterstitialAD:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

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

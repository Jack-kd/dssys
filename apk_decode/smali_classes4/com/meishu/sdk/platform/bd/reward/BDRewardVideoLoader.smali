.class public Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;",
        "Lcom/meishu/sdk/core/ad/reward/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BDRewardVideoLoader"


# instance fields
.field private mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 10
    .line 11
    check-cast v1, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Lcom/meishu/sdk/core/utils/i;

    .line 30
    .line 31
    invoke-direct {v3}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2, v3}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 40
    .line 41
    check-cast v2, Lcom/meishu/sdk/core/ad/reward/a;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-direct {v1, v2, v3, v4, p0}, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;-><init>(Lcom/meishu/sdk/core/ad/reward/a;Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 57
    .line 58
    check-cast v3, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-direct {v2, v3, v0, v1, v4}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RewardVideoAd$RewardVideoAdListener;Z)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v2, v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->setAppSid(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 80
    .line 81
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/meishu/sdk/core/MSAdConfig;->userId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->setUserId(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoListener;->setRewardVideoAd(Lcom/baidu/mobads/sdk/api/RewardVideoAd;)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->downloadConfirm()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    const/4 v1, 0x2

    .line 106
    if-eq v0, v1, :cond_0

    .line 107
    .line 108
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 109
    .line 110
    const/4 v1, 0x1

    .line 111
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->setDownloadAppConfirmPolicy(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto :goto_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 118
    .line 119
    const/4 v1, 0x3

    .line 120
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->setDownloadAppConfirmPolicy(I)V

    .line 121
    .line 122
    .line 123
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->load()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 9

    .line 1
    const-string v0, "203"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/baidu/mobads/sdk/api/RewardVideoAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    const-class v2, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_1
    const-string v3, "biddingSuccess"

    .line 10
    .line 11
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->getECPMLevel()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget-object v5, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v3, p2, v4, v5}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    const-string v3, "biddingFail"

    .line 58
    .line 59
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 68
    .line 69
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    const/4 v1, 0x1

    .line 78
    const-string v2, "bid_t"

    .line 79
    .line 80
    const-wide/16 v3, 0x3e8

    .line 81
    .line 82
    const-string v5, "ad_time"

    .line 83
    .line 84
    const-string v6, "ecpm"

    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    :try_start_2
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->getECPMLevel()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-object v7, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 104
    .line 105
    invoke-virtual {v7}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    iget-object v8, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 110
    .line 111
    invoke-virtual {v8}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    invoke-static {v0, p2, v7, v8}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v6

    .line 130
    div-long/2addr v6, v3

    .line 131
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p1, v5, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 146
    .line 147
    new-instance v0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader$1;

    .line 148
    .line 149
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader$1;-><init>(Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->biddingSuccess(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 157
    .line 158
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    new-instance p2, Ljava/util/Random;

    .line 169
    .line 170
    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 171
    .line 172
    .line 173
    const/16 v6, 0xa

    .line 174
    .line 175
    invoke-virtual {p2, v6}, Ljava/util/Random;->nextInt(I)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    const-string v6, "adn"

    .line 180
    .line 181
    if-nez p2, :cond_2

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_2
    move v1, p2

    .line 185
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 193
    .line 194
    .line 195
    move-result-wide v6

    .line 196
    div-long/2addr v6, v3

    .line 197
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p1, v5, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    const/4 p2, 0x3

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    const-string p2, "reason"

    .line 213
    .line 214
    invoke-virtual {p1, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;->mRewardVideoAd:Lcom/baidu/mobads/sdk/api/RewardVideoAd;

    .line 218
    .line 219
    new-instance v0, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader$2;

    .line 220
    .line 221
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader$2;-><init>(Lcom/meishu/sdk/platform/bd/reward/BDRewardVideoLoader;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobads/sdk/api/RewardVideoAd;->biddingFail(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    .line 226
    .line 227
    :catchall_1
    :goto_1
    return-void
.end method

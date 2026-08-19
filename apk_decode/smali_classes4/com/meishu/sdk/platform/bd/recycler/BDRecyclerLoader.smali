.class public Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;
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
.field private static final TAG:Ljava/lang/String; = "BDRecyclerLoader"


# instance fields
.field private bdRecyclerExpressListener:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

.field private bdRecyclerListener:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;

.field private isPreRender:Z

.field private nativeManager:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->isPreRender:Z

    .line 6
    .line 7
    return-void
.end method

.method private expressBiddingResult(ZILcom/baidu/mobads/sdk/api/ExpressResponse;)V
    .locals 9

    .line 1
    const-string v0, "203"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/baidu/mobads/sdk/api/ExpressResponse;
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
    invoke-interface {p3}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getECPMLevel()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-static {v2, p2, v3, v4}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    const-string v3, "biddingFail"

    .line 56
    .line 57
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    const/4 v1, 0x1

    .line 74
    const-string v2, "bid_t"

    .line 75
    .line 76
    const-wide/16 v3, 0x3e8

    .line 77
    .line 78
    const-string v5, "ad_time"

    .line 79
    .line 80
    const-string v6, "ecpm"

    .line 81
    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    :try_start_2
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-interface {p3}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getECPMLevel()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget-object v7, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 98
    .line 99
    invoke-virtual {v7}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    iget-object v8, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 104
    .line 105
    invoke-virtual {v8}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    invoke-static {v0, p2, v7, v8}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v6

    .line 124
    div-long/2addr v6, v3

    .line 125
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p1, v5, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    new-instance p2, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader$1;

    .line 140
    .line 141
    invoke-direct {p2, p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader$1;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->biddingSuccess(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    new-instance p2, Ljava/util/Random;

    .line 161
    .line 162
    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 163
    .line 164
    .line 165
    const/16 v6, 0xa

    .line 166
    .line 167
    invoke-virtual {p2, v6}, Ljava/util/Random;->nextInt(I)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    const-string v6, "adn"

    .line 172
    .line 173
    if-nez p2, :cond_2

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_2
    move v1, p2

    .line 177
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide v6

    .line 188
    div-long/2addr v6, v3

    .line 189
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {p1, v5, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    const/4 p2, 0x3

    .line 197
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    const-string p2, "reason"

    .line 205
    .line 206
    invoke-virtual {p1, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    new-instance p2, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader$2;

    .line 210
    .line 211
    invoke-direct {p2, p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader$2;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->biddingFail(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    .line 216
    .line 217
    :catchall_1
    :goto_1
    return-void
.end method

.method private loadExpressAd()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->isPreRender:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    int-to-float v1, v1

    .line 61
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 62
    .line 63
    :goto_0
    div-float/2addr v1, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 66
    .line 67
    int-to-float v1, v1

    .line 68
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :goto_1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-lez v2, :cond_1

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    int-to-float v2, v2

    .line 114
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 115
    .line 116
    div-float/2addr v2, v3

    .line 117
    goto :goto_2

    .line 118
    :cond_1
    const/4 v2, 0x0

    .line 119
    :goto_2
    new-instance v3, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 120
    .line 121
    invoke-direct {v3}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 122
    .line 123
    .line 124
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 125
    .line 126
    mul-float/2addr v1, v4

    .line 127
    float-to-int v1, v1

    .line 128
    invoke-virtual {v3, v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->setWidth(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 133
    .line 134
    mul-float/2addr v2, v0

    .line 135
    float-to-int v0, v2

    .line 136
    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->setHeight(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const/4 v1, 0x2

    .line 141
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->downloadAppConfirmPolicy(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v1, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 150
    .line 151
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 152
    .line 153
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 154
    .line 155
    invoke-direct {v1, p0, v2}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;Lcom/meishu/sdk/core/ad/recycler/a;)V

    .line 156
    .line 157
    .line 158
    iput-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->bdRecyclerExpressListener:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 159
    .line 160
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->nativeManager:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    .line 161
    .line 162
    invoke-virtual {v2, v0, v1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadExpressAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method private loadNativeAd()V
    .locals 4

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->downloadAppConfirmPolicy(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 18
    .line 19
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getFetchCount()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-direct {v1, v2, p0, v3}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;-><init>(Lcom/meishu/sdk/core/ad/recycler/a;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->bdRecyclerListener:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->nativeManager:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    .line 37
    .line 38
    invoke-virtual {v2, v0, v1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadFeedAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private nativeBiddingResult(ZILcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 9

    .line 1
    const-string v0, "203"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/baidu/mobads/sdk/api/NativeResponse;
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
    invoke-interface {p3}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getECPMLevel()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-static {v2, p2, v3, v4}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    const-string v3, "biddingFail"

    .line 56
    .line 57
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    const/4 v1, 0x1

    .line 74
    const-string v2, "bid_t"

    .line 75
    .line 76
    const-wide/16 v3, 0x3e8

    .line 77
    .line 78
    const-string v5, "ad_time"

    .line 79
    .line 80
    const-string v6, "ecpm"

    .line 81
    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    :try_start_2
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-interface {p3}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getECPMLevel()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget-object v7, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 98
    .line 99
    invoke-virtual {v7}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    iget-object v8, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 104
    .line 105
    invoke-virtual {v8}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    invoke-static {v0, p2, v7, v8}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v6

    .line 124
    div-long/2addr v6, v3

    .line 125
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p1, v5, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    new-instance p2, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader$3;

    .line 140
    .line 141
    invoke-direct {p2, p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader$3;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->biddingSuccess(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    new-instance p2, Ljava/util/Random;

    .line 161
    .line 162
    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 163
    .line 164
    .line 165
    const/16 v6, 0xa

    .line 166
    .line 167
    invoke-virtual {p2, v6}, Ljava/util/Random;->nextInt(I)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    const-string v6, "adn"

    .line 172
    .line 173
    if-nez p2, :cond_2

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_2
    move v1, p2

    .line 177
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p1, v6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide v6

    .line 188
    div-long/2addr v6, v3

    .line 189
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {p1, v5, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    const/4 p2, 0x3

    .line 197
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p1, v2, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    const-string p2, "reason"

    .line 205
    .line 206
    invoke-virtual {p1, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    new-instance p2, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader$4;

    .line 210
    .line 211
    invoke-direct {p2, p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader$4;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p3, p1, p2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->biddingFail(Ljava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    .line 216
    .line 217
    :catchall_1
    :goto_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->nativeManager:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->nativeManager:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 4

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
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Lcom/meishu/sdk/core/utils/i;

    .line 26
    .line 27
    invoke-direct {v3}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2, v3}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v1, v2, v0}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->nativeManager:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->setAppSid(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->nativeManager:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->setCacheVideoOnlyWifi(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getAdPatternType()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const v2, 0x30d40

    .line 74
    .line 75
    .line 76
    if-ne v0, v2, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/16 v2, 0xb

    .line 87
    .line 88
    if-ne v0, v2, :cond_0

    .line 89
    .line 90
    invoke-direct {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->loadExpressAd()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto :goto_1

    .line 96
    :cond_0
    const/4 v2, 0x2

    .line 97
    if-eq v0, v2, :cond_2

    .line 98
    .line 99
    if-ne v0, v1, :cond_1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    .line 103
    .line 104
    const-string v1, "\u4fe1\u606f\u6d41\u6a21\u5f0f\u4e0d\u652f\u6301"

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-direct {v0, v1, v2}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->loadNativeAd()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_3
    invoke-direct {p0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->loadNativeAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->isPreRender:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->bdRecyclerExpressListener:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->getList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->bdRecyclerExpressListener:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->getList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 36
    .line 37
    invoke-direct {p0, p1, p2, v1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->expressBiddingResult(ZILcom/baidu/mobads/sdk/api/ExpressResponse;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->bdRecyclerListener:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->getList()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->bdRecyclerListener:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->getList()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 74
    .line 75
    invoke-direct {p0, p1, p2, v1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;->nativeBiddingResult(ZILcom/baidu/mobads/sdk/api/NativeResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    return-void

    .line 80
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.class public Lcom/anythink/network/ks/KSATBiddingNotice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/ATBiddingNotice;


# instance fields
.field a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getNoticePriceCurrency()Lcom/anythink/core/api/ATAdConst$CURRENCY;
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 2
    .line 3
    return-object v0
.end method

.method public notifyBidDisplay(ZD)V
    .locals 0

    return-void
.end method

.method public declared-synchronized notifyBidLoss(Ljava/lang/String;DLjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "adn_id"

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    invoke-static {p4, v0, v1}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x4

    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x2

    .line 13
    if-eq v0, v4, :cond_1

    .line 14
    .line 15
    if-eq v0, v5, :cond_1

    .line 16
    .line 17
    if-eq v0, v3, :cond_0

    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    move v0, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v0, v4

    .line 26
    :goto_0
    const-string v6, "other"

    .line 27
    .line 28
    const-string v7, "adn_extra_nw_firm_id"

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    invoke-static {p4, v7, v8}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-lez v7, :cond_4

    .line 36
    .line 37
    const/16 v9, 0xf

    .line 38
    .line 39
    if-eq v7, v9, :cond_3

    .line 40
    .line 41
    const/16 v9, 0x16

    .line 42
    .line 43
    if-eq v7, v9, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-string v6, "baidu"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_3
    const-string v6, "chuanshanjia"

    .line 53
    .line 54
    :cond_4
    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    .line 55
    .line 56
    .line 57
    move-result-wide p2

    .line 58
    long-to-int p2, p2

    .line 59
    new-instance p3, Lcom/kwad/sdk/api/model/AdExposureFailedReason;

    .line 60
    .line 61
    invoke-direct {p3}, Lcom/kwad/sdk/api/model/AdExposureFailedReason;-><init>()V

    .line 62
    .line 63
    .line 64
    iput p2, p3, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->winEcpm:I

    .line 65
    .line 66
    iput v0, p3, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adnType:I

    .line 67
    .line 68
    iput-object v6, p3, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adnName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    const/16 v0, 0x32

    .line 75
    .line 76
    if-eq p2, v0, :cond_6

    .line 77
    .line 78
    const/16 v0, 0x35

    .line 79
    .line 80
    if-eq p2, v0, :cond_5

    .line 81
    .line 82
    packed-switch p2, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :pswitch_0
    const-string p2, "104"

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_7

    .line 93
    .line 94
    move v1, v8

    .line 95
    goto :goto_2

    .line 96
    :pswitch_1
    const-string p2, "103"

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_7

    .line 103
    .line 104
    move v1, v5

    .line 105
    goto :goto_2

    .line 106
    :pswitch_2
    const-string p2, "102"

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    move v1, v4

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    const-string p2, "5"

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    move v1, v3

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    const-string p2, "2"

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_7

    .line 133
    .line 134
    move v1, v2

    .line 135
    :cond_7
    :goto_2
    if-eqz v1, :cond_9

    .line 136
    .line 137
    if-eq v1, v4, :cond_8

    .line 138
    .line 139
    if-eq v1, v5, :cond_8

    .line 140
    .line 141
    if-eq v1, v3, :cond_a

    .line 142
    .line 143
    move v3, v8

    .line 144
    goto :goto_3

    .line 145
    :cond_8
    move v3, v5

    .line 146
    goto :goto_3

    .line 147
    :cond_9
    move v3, v4

    .line 148
    :cond_a
    :goto_3
    const-string p1, ""

    .line 149
    .line 150
    const-string p2, ""

    .line 151
    .line 152
    const-string v0, "adn_extra_native_material_info"

    .line 153
    .line 154
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    if-eqz v0, :cond_b

    .line 159
    .line 160
    :try_start_1
    move-object v1, v0

    .line 161
    check-cast v1, Ljava/util/Map;

    .line 162
    .line 163
    const-string v2, "native_material_tittle"

    .line 164
    .line 165
    const-string v4, ""

    .line 166
    .line 167
    invoke-static {v1, v2, v4}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast v0, Ljava/util/Map;

    .line 172
    .line 173
    const-string v1, "native_material_publisher_name"

    .line 174
    .line 175
    const-string v2, ""

    .line 176
    .line 177
    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    :catchall_1
    :cond_b
    :try_start_2
    iput-object p1, p3, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adTitle:Ljava/lang/String;

    .line 182
    .line 183
    iput-object p2, p3, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adUserName:Ljava/lang/String;

    .line 184
    .line 185
    const-string p1, "adn_request_id"

    .line 186
    .line 187
    const-string p2, ""

    .line 188
    .line 189
    invoke-static {p4, p1, p2}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iput-object p1, p3, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->adRequestId:Ljava/lang/String;

    .line 194
    .line 195
    const-string p1, "adn_is_show"

    .line 196
    .line 197
    invoke-static {p4, p1, v5}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    iput p1, p3, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->isShow:I

    .line 202
    .line 203
    const-string p1, "adn_is_click"

    .line 204
    .line 205
    invoke-static {p4, p1, v5}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    iput p1, p3, Lcom/kwad/sdk/api/model/AdExposureFailedReason;->isClick:I

    .line 210
    .line 211
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    .line 213
    .line 214
    :try_start_3
    iget-object p1, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 215
    .line 216
    instance-of p2, p1, Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 217
    .line 218
    if-eqz p2, :cond_c

    .line 219
    .line 220
    check-cast p1, Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 221
    .line 222
    invoke-interface {p1, v3, p3}, Lcom/kwad/sdk/api/KsRewardVideoAd;->reportAdExposureFailed(ILcom/kwad/sdk/api/model/AdExposureFailedReason;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 223
    .line 224
    .line 225
    monitor-exit p0

    .line 226
    return-void

    .line 227
    :catchall_2
    :cond_c
    :try_start_4
    iget-object p1, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 228
    .line 229
    instance-of p2, p1, Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 230
    .line 231
    if-eqz p2, :cond_d

    .line 232
    .line 233
    check-cast p1, Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 234
    .line 235
    invoke-interface {p1, v3, p3}, Lcom/kwad/sdk/api/KsInterstitialAd;->reportAdExposureFailed(ILcom/kwad/sdk/api/model/AdExposureFailedReason;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 236
    .line 237
    .line 238
    monitor-exit p0

    .line 239
    return-void

    .line 240
    :catchall_3
    :cond_d
    :try_start_5
    iget-object p1, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 241
    .line 242
    instance-of p2, p1, Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    .line 243
    .line 244
    if-eqz p2, :cond_e

    .line 245
    .line 246
    check-cast p1, Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    .line 247
    .line 248
    invoke-interface {p1, v3, p3}, Lcom/kwad/sdk/api/KsFullScreenVideoAd;->reportAdExposureFailed(ILcom/kwad/sdk/api/model/AdExposureFailedReason;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 249
    .line 250
    .line 251
    monitor-exit p0

    .line 252
    return-void

    .line 253
    :catchall_4
    :cond_e
    :try_start_6
    iget-object p1, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 254
    .line 255
    instance-of p2, p1, Lcom/kwad/sdk/api/KsDrawAd;

    .line 256
    .line 257
    if-eqz p2, :cond_f

    .line 258
    .line 259
    check-cast p1, Lcom/kwad/sdk/api/KsDrawAd;

    .line 260
    .line 261
    invoke-interface {p1, v3, p3}, Lcom/kwad/sdk/api/KsDrawAd;->reportAdExposureFailed(ILcom/kwad/sdk/api/model/AdExposureFailedReason;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 262
    .line 263
    .line 264
    monitor-exit p0

    .line 265
    return-void

    .line 266
    :catchall_5
    :cond_f
    :try_start_7
    iget-object p1, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 267
    .line 268
    instance-of p2, p1, Lcom/kwad/sdk/api/KsFeedAd;

    .line 269
    .line 270
    if-eqz p2, :cond_10

    .line 271
    .line 272
    check-cast p1, Lcom/kwad/sdk/api/KsFeedAd;

    .line 273
    .line 274
    invoke-interface {p1, v3, p3}, Lcom/kwad/sdk/api/KsFeedAd;->reportAdExposureFailed(ILcom/kwad/sdk/api/model/AdExposureFailedReason;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 275
    .line 276
    .line 277
    monitor-exit p0

    .line 278
    return-void

    .line 279
    :catchall_6
    :cond_10
    :try_start_8
    iget-object p1, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 280
    .line 281
    instance-of p2, p1, Lcom/kwad/sdk/api/KsNativeAd;

    .line 282
    .line 283
    if-eqz p2, :cond_11

    .line 284
    .line 285
    check-cast p1, Lcom/kwad/sdk/api/KsNativeAd;

    .line 286
    .line 287
    invoke-interface {p1, v3, p3}, Lcom/kwad/sdk/api/KsNativeAd;->reportAdExposureFailed(ILcom/kwad/sdk/api/model/AdExposureFailedReason;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 288
    .line 289
    .line 290
    monitor-exit p0

    .line 291
    return-void

    .line 292
    :catchall_7
    :cond_11
    :try_start_9
    iget-object p1, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 293
    .line 294
    instance-of p2, p1, Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 295
    .line 296
    if-eqz p2, :cond_12

    .line 297
    .line 298
    check-cast p1, Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 299
    .line 300
    invoke-interface {p1, v3, p3}, Lcom/kwad/sdk/api/KsSplashScreenAd;->reportAdExposureFailed(ILcom/kwad/sdk/api/model/AdExposureFailedReason;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 301
    .line 302
    .line 303
    monitor-exit p0

    .line 304
    return-void

    .line 305
    :catchall_8
    :cond_12
    :try_start_a
    iget-object p1, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 306
    .line 307
    instance-of p2, p1, Lcom/kwad/sdk/api/KsBannerAd;

    .line 308
    .line 309
    if-eqz p2, :cond_13

    .line 310
    .line 311
    check-cast p1, Lcom/kwad/sdk/api/KsBannerAd;

    .line 312
    .line 313
    invoke-interface {p1, v3, p3}, Lcom/kwad/sdk/api/KsBannerAd;->reportAdExposureFailed(ILcom/kwad/sdk/api/model/AdExposureFailedReason;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 314
    .line 315
    .line 316
    monitor-exit p0

    .line 317
    return-void

    .line 318
    :catchall_9
    :cond_13
    const/4 p1, 0x0

    .line 319
    :try_start_b
    iput-object p1, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 320
    .line 321
    monitor-exit p0

    .line 322
    return-void

    .line 323
    :goto_4
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 324
    throw p1

    .line 325
    :pswitch_data_0
    .packed-switch 0xbdf3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized notifyBidWin(DDLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 3
    .line 4
    .line 5
    move-result-wide p1

    .line 6
    long-to-int p1, p1

    .line 7
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    .line 8
    .line 9
    .line 10
    move-result-wide p2

    .line 11
    long-to-int p2, p2

    .line 12
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 13
    .line 14
    .line 15
    :try_start_1
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 16
    .line 17
    instance-of p3, p3, Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p3, Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 30
    .line 31
    invoke-interface {p3}, Lcom/kwad/sdk/api/KsRewardVideoAd;->getECPM()I

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p3, Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 37
    .line 38
    int-to-long p4, p1

    .line 39
    int-to-long v0, p2

    .line 40
    invoke-interface {p3, p4, p5, v0, v1}, Lcom/kwad/sdk/api/KsRewardVideoAd;->setBidEcpm(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    :cond_1
    :try_start_2
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 46
    .line 47
    instance-of p3, p3, Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 48
    .line 49
    if-eqz p3, :cond_3

    .line 50
    .line 51
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-eqz p3, :cond_2

    .line 56
    .line 57
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p3, Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 60
    .line 61
    invoke-interface {p3}, Lcom/kwad/sdk/api/KsInterstitialAd;->getECPM()I

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p3, Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 67
    .line 68
    int-to-long p4, p1

    .line 69
    int-to-long v0, p2

    .line 70
    invoke-interface {p3, p4, p5, v0, v1}, Lcom/kwad/sdk/api/KsInterstitialAd;->setBidEcpm(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    .line 72
    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :catchall_1
    :cond_3
    :try_start_3
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 76
    .line 77
    instance-of p3, p3, Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    .line 78
    .line 79
    if-eqz p3, :cond_5

    .line 80
    .line 81
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    if-eqz p3, :cond_4

    .line 86
    .line 87
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p3, Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    .line 90
    .line 91
    invoke-interface {p3}, Lcom/kwad/sdk/api/KsFullScreenVideoAd;->getECPM()I

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p3, Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    .line 97
    .line 98
    int-to-long p4, p1

    .line 99
    int-to-long v0, p2

    .line 100
    invoke-interface {p3, p4, p5, v0, v1}, Lcom/kwad/sdk/api/KsFullScreenVideoAd;->setBidEcpm(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 101
    .line 102
    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 105
    :catchall_2
    :cond_5
    :try_start_4
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 106
    .line 107
    instance-of p3, p3, Lcom/kwad/sdk/api/KsDrawAd;

    .line 108
    .line 109
    if-eqz p3, :cond_7

    .line 110
    .line 111
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    if-eqz p3, :cond_6

    .line 116
    .line 117
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p3, Lcom/kwad/sdk/api/KsDrawAd;

    .line 120
    .line 121
    invoke-interface {p3}, Lcom/kwad/sdk/api/KsDrawAd;->getECPM()I

    .line 122
    .line 123
    .line 124
    :cond_6
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p3, Lcom/kwad/sdk/api/KsDrawAd;

    .line 127
    .line 128
    int-to-long p4, p1

    .line 129
    int-to-long v0, p2

    .line 130
    invoke-interface {p3, p4, p5, v0, v1}, Lcom/kwad/sdk/api/KsDrawAd;->setBidEcpm(JJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 131
    .line 132
    .line 133
    monitor-exit p0

    .line 134
    return-void

    .line 135
    :catchall_3
    :cond_7
    :try_start_5
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 136
    .line 137
    instance-of p3, p3, Lcom/kwad/sdk/api/KsFeedAd;

    .line 138
    .line 139
    if-eqz p3, :cond_9

    .line 140
    .line 141
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    if-eqz p3, :cond_8

    .line 146
    .line 147
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast p3, Lcom/kwad/sdk/api/KsFeedAd;

    .line 150
    .line 151
    invoke-interface {p3}, Lcom/kwad/sdk/api/KsFeedAd;->getECPM()I

    .line 152
    .line 153
    .line 154
    :cond_8
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p3, Lcom/kwad/sdk/api/KsFeedAd;

    .line 157
    .line 158
    int-to-long p4, p1

    .line 159
    int-to-long v0, p2

    .line 160
    invoke-interface {p3, p4, p5, v0, v1}, Lcom/kwad/sdk/api/KsFeedAd;->setBidEcpm(JJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 161
    .line 162
    .line 163
    monitor-exit p0

    .line 164
    return-void

    .line 165
    :catchall_4
    :cond_9
    :try_start_6
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 166
    .line 167
    instance-of p3, p3, Lcom/kwad/sdk/api/KsNativeAd;

    .line 168
    .line 169
    if-eqz p3, :cond_b

    .line 170
    .line 171
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 172
    .line 173
    .line 174
    move-result p3

    .line 175
    if-eqz p3, :cond_a

    .line 176
    .line 177
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p3, Lcom/kwad/sdk/api/KsNativeAd;

    .line 180
    .line 181
    invoke-interface {p3}, Lcom/kwad/sdk/api/KsNativeAd;->getECPM()I

    .line 182
    .line 183
    .line 184
    :cond_a
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p3, Lcom/kwad/sdk/api/KsNativeAd;

    .line 187
    .line 188
    int-to-long p4, p1

    .line 189
    int-to-long v0, p2

    .line 190
    invoke-interface {p3, p4, p5, v0, v1}, Lcom/kwad/sdk/api/KsNativeAd;->setBidEcpm(JJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 191
    .line 192
    .line 193
    monitor-exit p0

    .line 194
    return-void

    .line 195
    :catchall_5
    :cond_b
    :try_start_7
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 196
    .line 197
    instance-of p3, p3, Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 198
    .line 199
    if-eqz p3, :cond_d

    .line 200
    .line 201
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 202
    .line 203
    .line 204
    move-result p3

    .line 205
    if-eqz p3, :cond_c

    .line 206
    .line 207
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast p3, Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 210
    .line 211
    invoke-interface {p3}, Lcom/kwad/sdk/api/KsSplashScreenAd;->getECPM()I

    .line 212
    .line 213
    .line 214
    :cond_c
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast p3, Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 217
    .line 218
    int-to-long p4, p1

    .line 219
    int-to-long v0, p2

    .line 220
    invoke-interface {p3, p4, p5, v0, v1}, Lcom/kwad/sdk/api/KsSplashScreenAd;->setBidEcpm(JJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 221
    .line 222
    .line 223
    monitor-exit p0

    .line 224
    return-void

    .line 225
    :catchall_6
    :cond_d
    :try_start_8
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 226
    .line 227
    instance-of p3, p3, Lcom/kwad/sdk/api/KsBannerAd;

    .line 228
    .line 229
    if-eqz p3, :cond_f

    .line 230
    .line 231
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 232
    .line 233
    .line 234
    move-result p3

    .line 235
    if-eqz p3, :cond_e

    .line 236
    .line 237
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast p3, Lcom/kwad/sdk/api/KsBannerAd;

    .line 240
    .line 241
    invoke-interface {p3}, Lcom/kwad/sdk/api/KsBannerAd;->getECPM()I

    .line 242
    .line 243
    .line 244
    :cond_e
    iget-object p3, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast p3, Lcom/kwad/sdk/api/KsBannerAd;

    .line 247
    .line 248
    int-to-long p4, p1

    .line 249
    int-to-long p1, p2

    .line 250
    invoke-interface {p3, p4, p5, p1, p2}, Lcom/kwad/sdk/api/KsBannerAd;->setBidEcpm(JJ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 251
    .line 252
    .line 253
    monitor-exit p0

    .line 254
    return-void

    .line 255
    :catchall_7
    :cond_f
    const/4 p1, 0x0

    .line 256
    :try_start_9
    iput-object p1, p0, Lcom/anythink/network/ks/KSATBiddingNotice;->a:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 257
    .line 258
    monitor-exit p0

    .line 259
    return-void

    .line 260
    :catchall_8
    move-exception p1

    .line 261
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 262
    throw p1
.end method

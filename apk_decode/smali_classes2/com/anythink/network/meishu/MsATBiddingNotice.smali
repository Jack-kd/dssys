.class public Lcom/anythink/network/meishu/MsATBiddingNotice;
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
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

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
    .locals 4
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
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    .line 8
    .line 9
    .line 10
    move-result-wide p2

    .line 11
    long-to-int p2, p2

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string p3, "winPrice"

    .line 17
    .line 18
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string p2, "adn_id"

    .line 22
    .line 23
    const/4 p3, -0x1

    .line 24
    invoke-static {p4, p2, p3}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 p4, 0x3

    .line 29
    const/4 v1, 0x2

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eq p2, v2, :cond_2

    .line 32
    .line 33
    if-eq p2, v1, :cond_1

    .line 34
    .line 35
    if-eq p2, p4, :cond_0

    .line 36
    .line 37
    move p2, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move p2, p4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p2, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move p2, v2

    .line 44
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v3, "adnId"

    .line 49
    .line 50
    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const/16 v3, 0x35

    .line 61
    .line 62
    if-eq p2, v3, :cond_6

    .line 63
    .line 64
    packed-switch p2, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :pswitch_0
    const-string p2, "104"

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move p3, p4

    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :pswitch_1
    const-string p2, "103"

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move p3, v1

    .line 92
    goto :goto_1

    .line 93
    :pswitch_2
    const-string p2, "102"

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    move p3, v2

    .line 103
    goto :goto_1

    .line 104
    :cond_6
    const-string p2, "5"

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_7

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_7
    const/4 p3, 0x0

    .line 114
    :goto_1
    if-eqz p3, :cond_8

    .line 115
    .line 116
    if-eq p3, v2, :cond_9

    .line 117
    .line 118
    if-eq p3, v1, :cond_9

    .line 119
    .line 120
    if-eq p3, p4, :cond_8

    .line 121
    .line 122
    const/16 v2, 0x2711

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_8
    const/16 v2, 0x65

    .line 126
    .line 127
    :cond_9
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string p2, "lossReason"

    .line 132
    .line 133
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    :try_start_1
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 140
    .line 141
    instance-of p1, p1, Lcom/meishu/sdk/core/ad/splash/ISplashAd;

    .line 142
    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_a

    .line 150
    .line 151
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/ISplashAd;

    .line 154
    .line 155
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    :cond_a
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/ISplashAd;

    .line 165
    .line 166
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/s2s/ISBidding;->sendLossNotification(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    .line 168
    .line 169
    monitor-exit p0

    .line 170
    return-void

    .line 171
    :catchall_1
    :cond_b
    :try_start_2
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 172
    .line 173
    instance-of p1, p1, Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 174
    .line 175
    if-eqz p1, :cond_d

    .line 176
    .line 177
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_c

    .line 182
    .line 183
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 186
    .line 187
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    :cond_c
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 197
    .line 198
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/s2s/ISBidding;->sendLossNotification(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 199
    .line 200
    .line 201
    monitor-exit p0

    .line 202
    return-void

    .line 203
    :catchall_2
    :cond_d
    :try_start_3
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 204
    .line 205
    instance-of p1, p1, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;

    .line 206
    .line 207
    if-eqz p1, :cond_f

    .line 208
    .line 209
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_e

    .line 214
    .line 215
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p1, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;

    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    :cond_e
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p1, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/a;->sendLossNotification(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 231
    .line 232
    .line 233
    monitor-exit p0

    .line 234
    return-void

    .line 235
    :catchall_3
    :cond_f
    :try_start_4
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 236
    .line 237
    instance-of p1, p1, Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    .line 238
    .line 239
    if-eqz p1, :cond_11

    .line 240
    .line 241
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_10

    .line 246
    .line 247
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast p1, Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    .line 250
    .line 251
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    :cond_10
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast p1, Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    .line 261
    .line 262
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/s2s/ISBidding;->sendLossNotification(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 263
    .line 264
    .line 265
    monitor-exit p0

    .line 266
    return-void

    .line 267
    :catchall_4
    :cond_11
    :try_start_5
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 268
    .line 269
    instance-of p1, p1, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 270
    .line 271
    if-eqz p1, :cond_13

    .line 272
    .line 273
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-eqz p1, :cond_12

    .line 278
    .line 279
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 282
    .line 283
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    :cond_12
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 293
    .line 294
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/s2s/ISBidding;->sendLossNotification(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 295
    .line 296
    .line 297
    monitor-exit p0

    .line 298
    return-void

    .line 299
    :catchall_5
    :cond_13
    :try_start_6
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 300
    .line 301
    instance-of p1, p1, Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 302
    .line 303
    if-eqz p1, :cond_15

    .line 304
    .line 305
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-eqz p1, :cond_14

    .line 310
    .line 311
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 314
    .line 315
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    :cond_14
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 325
    .line 326
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/s2s/ISBidding;->sendLossNotification(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 327
    .line 328
    .line 329
    monitor-exit p0

    .line 330
    return-void

    .line 331
    :catchall_6
    :cond_15
    const/4 p1, 0x0

    .line 332
    :try_start_7
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 333
    .line 334
    monitor-exit p0

    .line 335
    return-void

    .line 336
    :goto_3
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 337
    throw p1

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch 0xbdf3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized notifyBidWin(DDLjava/util/Map;)V
    .locals 0
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

    .line 13
    .line 14
    .line 15
    new-instance p3, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p4, "expectCostPrice"

    .line 25
    .line 26
    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "highestLossPrice"

    .line 34
    .line 35
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 36
    .line 37
    .line 38
    :try_start_1
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 39
    .line 40
    instance-of p1, p1, Lcom/meishu/sdk/core/ad/splash/ISplashAd;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/ISplashAd;

    .line 53
    .line 54
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/ISplashAd;

    .line 64
    .line 65
    invoke-interface {p1, p3}, Lcom/meishu/sdk/core/s2s/ISBidding;->sendWinNotification(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :catchall_0
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 71
    .line 72
    instance-of p1, p1, Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 85
    .line 86
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 96
    .line 97
    invoke-interface {p1, p3}, Lcom/meishu/sdk/core/s2s/ISBidding;->sendWinNotification(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    .line 99
    .line 100
    monitor-exit p0

    .line 101
    return-void

    .line 102
    :catchall_1
    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 103
    .line 104
    instance-of p1, p1, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;

    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p1, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p1, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;

    .line 128
    .line 129
    invoke-virtual {p1, p3}, Lcom/meishu/sdk/core/ad/a;->sendWinNotification(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 130
    .line 131
    .line 132
    monitor-exit p0

    .line 133
    return-void

    .line 134
    :catchall_2
    :cond_5
    :try_start_4
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 135
    .line 136
    instance-of p1, p1, Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    .line 137
    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_6

    .line 145
    .line 146
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p1, Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    .line 149
    .line 150
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    :cond_6
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p1, Lcom/meishu/sdk/core/ad/banner/IBannerAd;

    .line 160
    .line 161
    invoke-interface {p1, p3}, Lcom/meishu/sdk/core/s2s/ISBidding;->sendWinNotification(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 162
    .line 163
    .line 164
    monitor-exit p0

    .line 165
    return-void

    .line 166
    :catchall_3
    :cond_7
    :try_start_5
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 167
    .line 168
    instance-of p1, p1, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 169
    .line 170
    if-eqz p1, :cond_9

    .line 171
    .line 172
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_8

    .line 177
    .line 178
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 181
    .line 182
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    :cond_8
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 192
    .line 193
    invoke-interface {p1, p3}, Lcom/meishu/sdk/core/s2s/ISBidding;->sendWinNotification(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 194
    .line 195
    .line 196
    monitor-exit p0

    .line 197
    return-void

    .line 198
    :catchall_4
    :cond_9
    :try_start_6
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 199
    .line 200
    instance-of p1, p1, Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 201
    .line 202
    if-eqz p1, :cond_b

    .line 203
    .line 204
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_a

    .line 209
    .line 210
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 213
    .line 214
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getData()Lcom/meishu/sdk/core/utils/ResultBean;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/ResultBean;->getEcpm()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    :cond_a
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 224
    .line 225
    invoke-interface {p1, p3}, Lcom/meishu/sdk/core/s2s/ISBidding;->sendWinNotification(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 226
    .line 227
    .line 228
    monitor-exit p0

    .line 229
    return-void

    .line 230
    :catchall_5
    :cond_b
    const/4 p1, 0x0

    .line 231
    :try_start_7
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATBiddingNotice;->a:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 232
    .line 233
    monitor-exit p0

    .line 234
    return-void

    .line 235
    :catchall_6
    move-exception p1

    .line 236
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 237
    throw p1
.end method

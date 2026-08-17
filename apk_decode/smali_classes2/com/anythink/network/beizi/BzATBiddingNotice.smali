.class public Lcom/anythink/network/beizi/BzATBiddingNotice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/ATBiddingNotice;


# instance fields
.field private a:Ljava/lang/String;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/network/beizi/BzATBiddingNotice;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    if-eq p1, v0, :cond_7

    .line 4
    .line 5
    const/16 v0, 0x16

    .line 6
    .line 7
    if-eq p1, v0, :cond_6

    .line 8
    .line 9
    const/16 v0, 0x1c

    .line 10
    .line 11
    if-eq p1, v0, :cond_5

    .line 12
    .line 13
    const/16 v0, 0x27

    .line 14
    .line 15
    if-eq p1, v0, :cond_4

    .line 16
    .line 17
    const/16 v0, 0x2e

    .line 18
    .line 19
    if-eq p1, v0, :cond_3

    .line 20
    .line 21
    const/16 v0, 0x48

    .line 22
    .line 23
    if-eq p1, v0, :cond_2

    .line 24
    .line 25
    const/16 v0, 0x4a

    .line 26
    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x5f

    .line 30
    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    const-string p1, "9999"

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    const-string p1, "6666"

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    const-string p1, "1030"

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_2
    const-string p1, "1021"

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_3
    const-string p1, "1022"

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_4
    const-string p1, "1020"

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_5
    const-string p1, "1019"

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_6
    const-string p1, "1018"

    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_7
    const-string p1, "1013"

    .line 58
    .line 59
    return-object p1
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
    .locals 6
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
    invoke-static {p4, p2}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const-string p3, "9999"

    .line 28
    .line 29
    const-string v1, "adn_extra_nw_firm_id"

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {p4, v1, v2}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    if-lez p4, :cond_0

    .line 37
    .line 38
    invoke-direct {p0, p4}, Lcom/anythink/network/beizi/BzATBiddingNotice;->a(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_0
    const/4 p4, 0x5

    .line 47
    if-ne p2, p4, :cond_1

    .line 48
    .line 49
    const-string p3, "6666"

    .line 50
    .line 51
    :cond_1
    :goto_0
    const-string p2, "adnId"

    .line 52
    .line 53
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string p2, "999"

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    const/16 p4, 0x32

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    const/4 v3, 0x2

    .line 69
    const/4 v4, 0x3

    .line 70
    const/4 v5, 0x4

    .line 71
    if-eq p3, p4, :cond_7

    .line 72
    .line 73
    const/16 p4, 0x35

    .line 74
    .line 75
    if-eq p3, p4, :cond_5

    .line 76
    .line 77
    packed-switch p3, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_0
    const-string p3, "104"

    .line 82
    .line 83
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v2, v5

    .line 91
    goto :goto_2

    .line 92
    :pswitch_1
    const-string p3, "103"

    .line 93
    .line 94
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move v2, v4

    .line 102
    goto :goto_2

    .line 103
    :pswitch_2
    const-string p3, "102"

    .line 104
    .line 105
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_4

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    move v2, v3

    .line 113
    goto :goto_2

    .line 114
    :cond_5
    const-string p3, "5"

    .line 115
    .line 116
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_6

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    move v2, v1

    .line 124
    goto :goto_2

    .line 125
    :cond_7
    const-string p3, "2"

    .line 126
    .line 127
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_8

    .line 132
    .line 133
    :goto_1
    const/4 v2, -0x1

    .line 134
    :cond_8
    :goto_2
    if-eqz v2, :cond_a

    .line 135
    .line 136
    if-eq v2, v1, :cond_a

    .line 137
    .line 138
    if-eq v2, v3, :cond_9

    .line 139
    .line 140
    if-eq v2, v4, :cond_9

    .line 141
    .line 142
    if-eq v2, v5, :cond_9

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_9
    const-string p2, "1"

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_a
    const-string p2, "2"

    .line 149
    .line 150
    :goto_3
    const-string p1, "lossReason"

    .line 151
    .line 152
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .line 157
    .line 158
    :try_start_1
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 159
    .line 160
    instance-of p1, p1, Lcom/beizi/fusion/SplashAd;

    .line 161
    .line 162
    if-eqz p1, :cond_c

    .line 163
    .line 164
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_b

    .line 169
    .line 170
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Lcom/beizi/fusion/SplashAd;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/beizi/fusion/SplashAd;->getECPM()I

    .line 175
    .line 176
    .line 177
    :cond_b
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p1, Lcom/beizi/fusion/SplashAd;

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lcom/beizi/fusion/SplashAd;->sendLossNotificationWithInfo(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    .line 183
    .line 184
    monitor-exit p0

    .line 185
    return-void

    .line 186
    :catchall_1
    :cond_c
    :try_start_2
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 187
    .line 188
    instance-of p1, p1, Lcom/beizi/fusion/RewardedVideoAd;

    .line 189
    .line 190
    if-eqz p1, :cond_e

    .line 191
    .line 192
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_d

    .line 197
    .line 198
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p1, Lcom/beizi/fusion/RewardedVideoAd;

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/beizi/fusion/RewardedVideoAd;->getECPM()I

    .line 203
    .line 204
    .line 205
    :cond_d
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p1, Lcom/beizi/fusion/RewardedVideoAd;

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Lcom/beizi/fusion/RewardedVideoAd;->sendLossNotificationWithInfo(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 210
    .line 211
    .line 212
    monitor-exit p0

    .line 213
    return-void

    .line 214
    :catchall_2
    :cond_e
    :try_start_3
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 215
    .line 216
    instance-of p1, p1, Lcom/beizi/fusion/InterstitialAd;

    .line 217
    .line 218
    if-eqz p1, :cond_10

    .line 219
    .line 220
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_f

    .line 225
    .line 226
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p1, Lcom/beizi/fusion/InterstitialAd;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/beizi/fusion/InterstitialAd;->getECPM()I

    .line 231
    .line 232
    .line 233
    :cond_f
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast p1, Lcom/beizi/fusion/InterstitialAd;

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Lcom/beizi/fusion/InterstitialAd;->sendLossNotificationWithInfo(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 238
    .line 239
    .line 240
    monitor-exit p0

    .line 241
    return-void

    .line 242
    :catchall_3
    :cond_10
    :try_start_4
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 243
    .line 244
    instance-of p1, p1, Lcom/beizi/fusion/NativeAd;

    .line 245
    .line 246
    if-eqz p1, :cond_12

    .line 247
    .line 248
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-eqz p1, :cond_11

    .line 253
    .line 254
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast p1, Lcom/beizi/fusion/NativeAd;

    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/beizi/fusion/NativeAd;->getECPM()I

    .line 259
    .line 260
    .line 261
    :cond_11
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast p1, Lcom/beizi/fusion/NativeAd;

    .line 264
    .line 265
    invoke-virtual {p1, v0}, Lcom/beizi/fusion/NativeAd;->sendLossNotificationWithInfo(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 266
    .line 267
    .line 268
    monitor-exit p0

    .line 269
    return-void

    .line 270
    :catchall_4
    :cond_12
    :try_start_5
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 271
    .line 272
    instance-of p1, p1, Lcom/beizi/fusion/NativeUnifiedAd;

    .line 273
    .line 274
    if-eqz p1, :cond_14

    .line 275
    .line 276
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-eqz p1, :cond_13

    .line 281
    .line 282
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast p1, Lcom/beizi/fusion/NativeUnifiedAd;

    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/beizi/fusion/NativeUnifiedAd;->getECPM()I

    .line 287
    .line 288
    .line 289
    :cond_13
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast p1, Lcom/beizi/fusion/NativeUnifiedAd;

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Lcom/beizi/fusion/NativeUnifiedAd;->sendLossNotificationWithInfo(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 294
    .line 295
    .line 296
    monitor-exit p0

    .line 297
    return-void

    .line 298
    :catchall_5
    :cond_14
    const/4 p1, 0x0

    .line 299
    :try_start_6
    iput-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 300
    .line 301
    monitor-exit p0

    .line 302
    return-void

    .line 303
    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 304
    throw p1

    .line 305
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

    .line 13
    .line 14
    .line 15
    const-string p3, "adn_id"

    .line 16
    .line 17
    invoke-static {p5, p3}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    const-string p4, "9999"

    .line 22
    .line 23
    const-string v0, "adn_extra_nw_firm_id"

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p5, v0, v1}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p5

    .line 30
    if-lez p5, :cond_0

    .line 31
    .line 32
    invoke-direct {p0, p5}, Lcom/anythink/network/beizi/BzATBiddingNotice;->a(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    const/4 p5, 0x5

    .line 41
    if-ne p3, p5, :cond_1

    .line 42
    .line 43
    const-string p4, "6666"

    .line 44
    .line 45
    :cond_1
    :goto_0
    new-instance p3, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p5, "winPrice"

    .line 55
    .line 56
    invoke-interface {p3, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "highestLossPrice"

    .line 64
    .line 65
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string p1, "adnId"

    .line 69
    .line 70
    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :try_start_1
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 74
    .line 75
    instance-of p1, p1, Lcom/beizi/fusion/SplashAd;

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Lcom/beizi/fusion/SplashAd;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/beizi/fusion/SplashAd;->getECPM()I

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Lcom/beizi/fusion/SplashAd;

    .line 95
    .line 96
    invoke-virtual {p1, p3}, Lcom/beizi/fusion/SplashAd;->sendWinNotificationWithInfo(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    .line 98
    .line 99
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :catchall_1
    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 102
    .line 103
    instance-of p1, p1, Lcom/beizi/fusion/RewardedVideoAd;

    .line 104
    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p1, Lcom/beizi/fusion/RewardedVideoAd;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/beizi/fusion/RewardedVideoAd;->getECPM()I

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Lcom/beizi/fusion/RewardedVideoAd;

    .line 123
    .line 124
    invoke-virtual {p1, p3}, Lcom/beizi/fusion/RewardedVideoAd;->sendWinNotificationWithInfo(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 125
    .line 126
    .line 127
    monitor-exit p0

    .line 128
    return-void

    .line 129
    :catchall_2
    :cond_5
    :try_start_3
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 130
    .line 131
    instance-of p1, p1, Lcom/beizi/fusion/InterstitialAd;

    .line 132
    .line 133
    if-eqz p1, :cond_7

    .line 134
    .line 135
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_6

    .line 140
    .line 141
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast p1, Lcom/beizi/fusion/InterstitialAd;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/beizi/fusion/InterstitialAd;->getECPM()I

    .line 146
    .line 147
    .line 148
    :cond_6
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p1, Lcom/beizi/fusion/InterstitialAd;

    .line 151
    .line 152
    invoke-virtual {p1, p3}, Lcom/beizi/fusion/InterstitialAd;->sendWinNotificationWithInfo(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 153
    .line 154
    .line 155
    monitor-exit p0

    .line 156
    return-void

    .line 157
    :catchall_3
    :cond_7
    :try_start_4
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 158
    .line 159
    instance-of p1, p1, Lcom/beizi/fusion/NativeAd;

    .line 160
    .line 161
    if-eqz p1, :cond_9

    .line 162
    .line 163
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_8

    .line 168
    .line 169
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p1, Lcom/beizi/fusion/NativeAd;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/beizi/fusion/NativeAd;->getECPM()I

    .line 174
    .line 175
    .line 176
    :cond_8
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p1, Lcom/beizi/fusion/NativeAd;

    .line 179
    .line 180
    invoke-virtual {p1, p3}, Lcom/beizi/fusion/NativeAd;->sendWinNotificationWithInfo(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 181
    .line 182
    .line 183
    monitor-exit p0

    .line 184
    return-void

    .line 185
    :catchall_4
    :cond_9
    :try_start_5
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 186
    .line 187
    instance-of p1, p1, Lcom/beizi/fusion/NativeUnifiedAd;

    .line 188
    .line 189
    if-eqz p1, :cond_b

    .line 190
    .line 191
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_a

    .line 196
    .line 197
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast p1, Lcom/beizi/fusion/NativeUnifiedAd;

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/beizi/fusion/NativeUnifiedAd;->getECPM()I

    .line 202
    .line 203
    .line 204
    :cond_a
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p1, Lcom/beizi/fusion/NativeUnifiedAd;

    .line 207
    .line 208
    invoke-virtual {p1, p3}, Lcom/beizi/fusion/NativeUnifiedAd;->sendWinNotificationWithInfo(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 209
    .line 210
    .line 211
    monitor-exit p0

    .line 212
    return-void

    .line 213
    :catchall_5
    :cond_b
    const/4 p1, 0x0

    .line 214
    :try_start_6
    iput-object p1, p0, Lcom/anythink/network/beizi/BzATBiddingNotice;->b:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 215
    .line 216
    monitor-exit p0

    .line 217
    return-void

    .line 218
    :goto_1
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 219
    throw p1
.end method

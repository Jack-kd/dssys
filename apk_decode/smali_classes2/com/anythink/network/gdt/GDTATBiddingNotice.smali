.class public Lcom/anythink/network/gdt/GDTATBiddingNotice;
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
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

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

.method public notifyBidLoss(Ljava/lang/String;DLjava/util/Map;)V
    .locals 7
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
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x3

    .line 15
    const/4 v4, -0x1

    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x1

    .line 18
    sparse-switch v2, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    :goto_0
    move p1, v4

    .line 22
    goto :goto_1

    .line 23
    :sswitch_0
    const-string v2, "104"

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move p1, v3

    .line 33
    goto :goto_1

    .line 34
    :sswitch_1
    const-string v2, "103"

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move p1, v5

    .line 44
    goto :goto_1

    .line 45
    :sswitch_2
    const-string v2, "102"

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move p1, v6

    .line 55
    goto :goto_1

    .line 56
    :sswitch_3
    const-string v2, "2"

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    const/16 p1, 0x2711

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :pswitch_0
    move p1, v6

    .line 73
    goto :goto_2

    .line 74
    :pswitch_1
    move p1, v5

    .line 75
    :goto_2
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    .line 76
    .line 77
    .line 78
    move-result-wide p2

    .line 79
    long-to-int p2, p2

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const-string p3, "winPrice"

    .line 85
    .line 86
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p2, "lossReason"

    .line 94
    .line 95
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    :try_start_0
    const-string p1, "adn_id"

    .line 99
    .line 100
    invoke-static {p4, p1, v4}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eq p1, v6, :cond_6

    .line 105
    .line 106
    if-eq p1, v5, :cond_7

    .line 107
    .line 108
    if-eq p1, v3, :cond_5

    .line 109
    .line 110
    if-eq p1, v1, :cond_4

    .line 111
    .line 112
    move v1, p1

    .line 113
    goto :goto_3

    .line 114
    :cond_4
    move v1, v5

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    move v1, v3

    .line 117
    goto :goto_3

    .line 118
    :cond_6
    move v1, v6

    .line 119
    :cond_7
    :goto_3
    if-eq v1, v4, :cond_8

    .line 120
    .line 121
    const-string p1, "adnId"

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    :catchall_0
    :cond_8
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_a

    .line 135
    .line 136
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 137
    .line 138
    if-eqz p1, :cond_9

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    :cond_a
    :try_start_1
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 147
    .line 148
    instance-of p2, p1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 149
    .line 150
    if-eqz p2, :cond_b

    .line 151
    .line 152
    check-cast p1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lcom/qq/e/ads/LiteAbstractAD;->sendLossNotification(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :catchall_1
    :cond_b
    :try_start_2
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 159
    .line 160
    instance-of p2, p1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 161
    .line 162
    if-eqz p2, :cond_c

    .line 163
    .line 164
    check-cast p1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Lcom/qq/e/ads/LiteAbstractAD;->sendLossNotification(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :catchall_2
    :cond_c
    :try_start_3
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 171
    .line 172
    instance-of p2, p1, Lcom/qq/e/ads/splash/SplashAD;

    .line 173
    .line 174
    if-eqz p2, :cond_d

    .line 175
    .line 176
    check-cast p1, Lcom/qq/e/ads/splash/SplashAD;

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Lcom/qq/e/ads/LiteAbstractAD;->sendLossNotification(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 179
    .line 180
    .line 181
    goto :goto_4

    .line 182
    :catchall_3
    :cond_d
    :try_start_4
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 183
    .line 184
    instance-of p2, p1, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 185
    .line 186
    if-eqz p2, :cond_e

    .line 187
    .line 188
    check-cast p1, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->sendLossNotification(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :catchall_4
    :cond_e
    :try_start_5
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 195
    .line 196
    instance-of p2, p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    .line 197
    .line 198
    if-eqz p2, :cond_f

    .line 199
    .line 200
    check-cast p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    .line 201
    .line 202
    iget-object p1, p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->b:Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 203
    .line 204
    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/IBiddingLoss;->sendLossNotification(Ljava/util/Map;)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_f
    instance-of p2, p1, Lcom/anythink/network/gdt/GDTATNativePatchAd;

    .line 209
    .line 210
    if-eqz p2, :cond_10

    .line 211
    .line 212
    check-cast p1, Lcom/anythink/network/gdt/GDTATNativePatchAd;

    .line 213
    .line 214
    iget-object p1, p1, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 215
    .line 216
    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/IBiddingLoss;->sendLossNotification(Ljava/util/Map;)V

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_10
    instance-of p2, p1, Lcom/anythink/network/gdt/GDTATNativeAd;

    .line 221
    .line 222
    if-eqz p2, :cond_11

    .line 223
    .line 224
    check-cast p1, Lcom/anythink/network/gdt/GDTATNativeAd;

    .line 225
    .line 226
    iget-object p1, p1, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 227
    .line 228
    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/IBiddingLoss;->sendLossNotification(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 229
    .line 230
    .line 231
    :goto_4
    return-void

    .line 232
    :catchall_5
    :cond_11
    const/4 p1, 0x0

    .line 233
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 234
    .line 235
    return-void

    .line 236
    nop

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_3
        0xbdf3 -> :sswitch_2
        0xbdf4 -> :sswitch_1
        0xbdf5 -> :sswitch_0
    .end sparse-switch

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public notifyBidWin(DDLjava/util/Map;)V
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
    const-string p1, "expectCostPrice"

    .line 2
    .line 3
    new-instance p2, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 p5, 0x4

    .line 6
    invoke-direct {p2, p5}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    .line 10
    .line 11
    .line 12
    move-result-wide p3

    .line 13
    long-to-int p3, p3

    .line 14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    const-string p4, "highestLossPrice"

    .line 19
    .line 20
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object p3, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 24
    .line 25
    instance-of p4, p3, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 26
    .line 27
    if-eqz p4, :cond_2

    .line 28
    .line 29
    check-cast p3, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 32
    .line 33
    .line 34
    move-result p4

    .line 35
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    if-eqz p4, :cond_1

    .line 47
    .line 48
    iget-object p4, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 49
    .line 50
    if-eqz p4, :cond_0

    .line 51
    .line 52
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p3, p2}, Lcom/qq/e/ads/LiteAbstractAD;->sendWinNotification(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    :cond_2
    :try_start_1
    iget-object p3, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 63
    .line 64
    instance-of p4, p3, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 65
    .line 66
    if-eqz p4, :cond_5

    .line 67
    .line 68
    check-cast p3, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 71
    .line 72
    .line 73
    move-result p4

    .line 74
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    if-eqz p4, :cond_4

    .line 86
    .line 87
    iget-object p4, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 88
    .line 89
    if-eqz p4, :cond_3

    .line 90
    .line 91
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-virtual {p3, p2}, Lcom/qq/e/ads/LiteAbstractAD;->sendWinNotification(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :catchall_1
    :cond_5
    :try_start_2
    iget-object p3, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 103
    .line 104
    instance-of p4, p3, Lcom/qq/e/ads/splash/SplashAD;

    .line 105
    .line 106
    if-eqz p4, :cond_8

    .line 107
    .line 108
    check-cast p3, Lcom/qq/e/ads/splash/SplashAD;

    .line 109
    .line 110
    invoke-virtual {p3}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    .line 111
    .line 112
    .line 113
    move-result p4

    .line 114
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p4

    .line 118
    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    if-eqz p4, :cond_7

    .line 126
    .line 127
    iget-object p4, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 128
    .line 129
    if-eqz p4, :cond_6

    .line 130
    .line 131
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    :cond_7
    invoke-virtual {p3, p2}, Lcom/qq/e/ads/LiteAbstractAD;->sendWinNotification(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 138
    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :catchall_2
    :cond_8
    :try_start_3
    iget-object p3, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 143
    .line 144
    instance-of p4, p3, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 145
    .line 146
    if-eqz p4, :cond_b

    .line 147
    .line 148
    check-cast p3, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 149
    .line 150
    invoke-virtual {p3}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->getECPM()I

    .line 151
    .line 152
    .line 153
    move-result p4

    .line 154
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object p4

    .line 158
    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 162
    .line 163
    .line 164
    move-result p4

    .line 165
    if-eqz p4, :cond_a

    .line 166
    .line 167
    iget-object p4, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 168
    .line 169
    if-eqz p4, :cond_9

    .line 170
    .line 171
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    :cond_a
    invoke-virtual {p3, p2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->sendWinNotification(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :catchall_3
    :cond_b
    :try_start_4
    iget-object p3, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 183
    .line 184
    instance-of p4, p3, Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    .line 185
    .line 186
    if-eqz p4, :cond_e

    .line 187
    .line 188
    check-cast p3, Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    .line 189
    .line 190
    iget-object p4, p3, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->b:Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 191
    .line 192
    invoke-interface {p4}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    .line 193
    .line 194
    .line 195
    move-result p4

    .line 196
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object p4

    .line 200
    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_d

    .line 208
    .line 209
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 210
    .line 211
    if-eqz p1, :cond_c

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    :cond_d
    iget-object p1, p3, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->b:Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 220
    .line 221
    invoke-interface {p1, p2}, Lcom/qq/e/comm/pi/IBidding;->sendWinNotification(Ljava/util/Map;)V

    .line 222
    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_e
    instance-of p4, p3, Lcom/anythink/network/gdt/GDTATNativePatchAd;

    .line 226
    .line 227
    if-eqz p4, :cond_11

    .line 228
    .line 229
    check-cast p3, Lcom/anythink/network/gdt/GDTATNativePatchAd;

    .line 230
    .line 231
    iget-object p4, p3, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 232
    .line 233
    invoke-interface {p4}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    .line 234
    .line 235
    .line 236
    move-result p4

    .line 237
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object p4

    .line 241
    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-eqz p1, :cond_10

    .line 249
    .line 250
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 251
    .line 252
    if-eqz p1, :cond_f

    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    :cond_f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    :cond_10
    iget-object p1, p3, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 261
    .line 262
    invoke-interface {p1, p2}, Lcom/qq/e/comm/pi/IBidding;->sendWinNotification(Ljava/util/Map;)V

    .line 263
    .line 264
    .line 265
    goto :goto_0

    .line 266
    :cond_11
    instance-of p4, p3, Lcom/anythink/network/gdt/GDTATNativeAd;

    .line 267
    .line 268
    if-eqz p4, :cond_14

    .line 269
    .line 270
    check-cast p3, Lcom/anythink/network/gdt/GDTATNativeAd;

    .line 271
    .line 272
    iget-object p4, p3, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 273
    .line 274
    invoke-interface {p4}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    .line 275
    .line 276
    .line 277
    move-result p4

    .line 278
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object p4

    .line 282
    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    if-eqz p1, :cond_13

    .line 290
    .line 291
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 292
    .line 293
    if-eqz p1, :cond_12

    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    :cond_12
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    :cond_13
    iget-object p1, p3, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 302
    .line 303
    invoke-interface {p1, p2}, Lcom/qq/e/comm/pi/IBidding;->sendWinNotification(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 304
    .line 305
    .line 306
    :goto_0
    return-void

    .line 307
    :catchall_4
    :cond_14
    const/4 p1, 0x0

    .line 308
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATBiddingNotice;->a:Ljava/lang/Object;

    .line 309
    .line 310
    return-void
.end method

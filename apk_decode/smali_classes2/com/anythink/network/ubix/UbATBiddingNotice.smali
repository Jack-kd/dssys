.class public Lcom/anythink/network/ubix/UbATBiddingNotice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/ATBiddingNotice;


# static fields
.field private static final b:Ljava/lang/String; = "UbATBiddingNotice"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATBiddingNotice;->a:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eq p1, v0, :cond_7

    .line 4
    .line 5
    const/16 v0, 0xf

    .line 6
    .line 7
    if-eq p1, v0, :cond_6

    .line 8
    .line 9
    const/16 v0, 0x16

    .line 10
    .line 11
    if-eq p1, v0, :cond_5

    .line 12
    .line 13
    const/16 v0, 0x1c

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
    const/16 v0, 0x6a

    .line 30
    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    const-string p1, "other"

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    const-string p1, "UBiX"

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    const-string p1, "qumeng"

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_2
    const-string p1, "jingdong"

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_3
    const-string p1, "gromore"

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_4
    const-string p1, "kuaishou"

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_5
    const-string p1, "baiqingteng"

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_6
    const-string p1, "chuanshanjia"

    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_7
    const-string p1, "youlianghui"

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
    .locals 8
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
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    .line 3
    .line 4
    .line 5
    move-result-wide p2

    .line 6
    const-string v0, "106"

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x32

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x2

    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    const/16 v2, 0x35

    .line 22
    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_0
    const-string v1, "104"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    move p1, v7

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :pswitch_1
    const-string v1, "103"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    move p1, v6

    .line 51
    goto :goto_1

    .line 52
    :pswitch_2
    const-string v1, "102"

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    move p1, v5

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const-string v1, "5"

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    move p1, v4

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const-string v1, "2"

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    move p1, v3

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 83
    :goto_1
    if-eqz p1, :cond_5

    .line 84
    .line 85
    if-eq p1, v3, :cond_5

    .line 86
    .line 87
    if-eq p1, v7, :cond_4

    .line 88
    .line 89
    if-eq p1, v5, :cond_3

    .line 90
    .line 91
    if-eq p1, v6, :cond_3

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    const-string p1, "104"

    .line 95
    .line 96
    :goto_2
    move-object v0, p1

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    const-string p1, "103"

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    const-string p1, "101"

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :goto_3
    const-string p1, "adn_id"

    .line 105
    .line 106
    invoke-static {p4, p1}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    const-string v1, "other"

    .line 111
    .line 112
    const-string v2, "adn_extra_nw_firm_id"

    .line 113
    .line 114
    invoke-static {p4, v2, v4}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 115
    .line 116
    .line 117
    move-result p4

    .line 118
    if-lez p4, :cond_6

    .line 119
    .line 120
    invoke-direct {p0, p4}, Lcom/anythink/network/ubix/UbATBiddingNotice;->a(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :goto_4
    move-object v1, p1

    .line 125
    goto :goto_5

    .line 126
    :cond_6
    const/4 p4, 0x5

    .line 127
    if-ne p1, p4, :cond_7

    .line 128
    .line 129
    const-string p1, "UBiX"

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    :goto_5
    new-instance p1, Lcom/ubix/ssp/open/UBiXAdLossInfo;

    .line 133
    .line 134
    invoke-direct {p1}, Lcom/ubix/ssp/open/UBiXAdLossInfo;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-wide p2, p1, Lcom/ubix/ssp/open/UBiXAdLossInfo;->winPrice:J

    .line 138
    .line 139
    iput-object v0, p1, Lcom/ubix/ssp/open/UBiXAdLossInfo;->lossReason:Ljava/lang/String;

    .line 140
    .line 141
    iput-object v1, p1, Lcom/ubix/ssp/open/UBiXAdLossInfo;->winPlatform:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/anythink/network/ubix/UbATBiddingNotice;->a:Ljava/lang/Object;

    .line 147
    .line 148
    instance-of p3, p2, Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 149
    .line 150
    if-eqz p3, :cond_8

    .line 151
    .line 152
    check-cast p2, Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 153
    .line 154
    invoke-interface {p2, p1}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V

    .line 155
    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_8
    instance-of p3, p2, Lcom/ubix/ssp/open/video/UBiXRewardVideoManager;

    .line 159
    .line 160
    if-eqz p3, :cond_9

    .line 161
    .line 162
    check-cast p2, Lcom/ubix/ssp/open/video/UBiXRewardVideoManager;

    .line 163
    .line 164
    invoke-interface {p2, p1}, Lcom/ubix/ssp/open/video/UBiXRewardVideoManager;->lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V

    .line 165
    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_9
    instance-of p3, p2, Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;

    .line 169
    .line 170
    if-eqz p3, :cond_a

    .line 171
    .line 172
    check-cast p2, Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;

    .line 173
    .line 174
    invoke-interface {p2, p1}, Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;->lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V

    .line 175
    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_a
    instance-of p3, p2, Lcom/ubix/ssp/open/banner/UBiXBannerManager;

    .line 179
    .line 180
    if-eqz p3, :cond_b

    .line 181
    .line 182
    check-cast p2, Lcom/ubix/ssp/open/banner/UBiXBannerManager;

    .line 183
    .line 184
    invoke-interface {p2, p1}, Lcom/ubix/ssp/open/banner/UBiXBannerManager;->lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V

    .line 185
    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_b
    instance-of p3, p2, Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 189
    .line 190
    if-eqz p3, :cond_c

    .line 191
    .line 192
    check-cast p2, Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 193
    .line 194
    invoke-interface {p2, p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V

    .line 195
    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_c
    instance-of p3, p2, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 199
    .line 200
    if-eqz p3, :cond_d

    .line 201
    .line 202
    check-cast p2, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 203
    .line 204
    invoke-interface {p2, p1}, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;->lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .line 206
    .line 207
    goto :goto_7

    .line 208
    :goto_6
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    .line 210
    .line 211
    :cond_d
    :goto_7
    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATBiddingNotice;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    .line 214
    monitor-exit p0

    .line 215
    return-void

    .line 216
    :catchall_1
    move-exception p1

    .line 217
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 218
    throw p1

    .line 219
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
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 7
    .line 8
    .line 9
    move-result p5

    .line 10
    if-eqz p5, :cond_0

    .line 11
    .line 12
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/anythink/network/ubix/UbATBiddingNotice;->a:Ljava/lang/Object;

    .line 19
    .line 20
    instance-of p4, p3, Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 21
    .line 22
    if-eqz p4, :cond_1

    .line 23
    .line 24
    check-cast p3, Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 25
    .line 26
    invoke-interface {p3, p1, p2}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->winNotice(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    instance-of p4, p3, Lcom/ubix/ssp/open/video/UBiXRewardVideoManager;

    .line 31
    .line 32
    if-eqz p4, :cond_2

    .line 33
    .line 34
    check-cast p3, Lcom/ubix/ssp/open/video/UBiXRewardVideoManager;

    .line 35
    .line 36
    invoke-interface {p3, p1, p2}, Lcom/ubix/ssp/open/video/UBiXRewardVideoManager;->winNotice(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    instance-of p4, p3, Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;

    .line 41
    .line 42
    if-eqz p4, :cond_3

    .line 43
    .line 44
    check-cast p3, Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;

    .line 45
    .line 46
    invoke-interface {p3, p1, p2}, Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;->winNotice(J)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    instance-of p4, p3, Lcom/ubix/ssp/open/banner/UBiXBannerManager;

    .line 51
    .line 52
    if-eqz p4, :cond_4

    .line 53
    .line 54
    check-cast p3, Lcom/ubix/ssp/open/banner/UBiXBannerManager;

    .line 55
    .line 56
    invoke-interface {p3, p1, p2}, Lcom/ubix/ssp/open/banner/UBiXBannerManager;->winNotice(J)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    instance-of p4, p3, Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 61
    .line 62
    if-eqz p4, :cond_5

    .line 63
    .line 64
    check-cast p3, Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 65
    .line 66
    invoke-interface {p3, p1, p2}, Lcom/ubix/ssp/open/nativee/NativeAd;->winNotice(J)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    instance-of p4, p3, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 71
    .line 72
    if-eqz p4, :cond_6

    .line 73
    .line 74
    check-cast p3, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 75
    .line 76
    invoke-interface {p3, p1, p2}, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;->winNotice(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_6
    :goto_2
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATBiddingNotice;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    throw p1
.end method

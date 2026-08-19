.class public Lj/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/ATBiddingNotice;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/a;->a:Ljava/lang/Object;

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

    .line 1
    return-void
.end method

.method public notifyBidLoss(Ljava/lang/String;DLjava/util/Map;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/sigmob/windad/WindAdBiddingLossReason;->LOSS_REASON_LOW_PRICE:Lcom/sigmob/windad/WindAdBiddingLossReason;

    .line 2
    .line 3
    const-string v1, "2"

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/sigmob/windad/WindAdBiddingLossReason;->LOSS_REASON_RETURN_TIMEOUT:Lcom/sigmob/windad/WindAdBiddingLossReason;

    .line 12
    .line 13
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    long-to-int p1, p1

    .line 18
    new-instance p2, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    int-to-float p1, p1

    .line 24
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p3, "AUCTION_PRICE"

    .line 33
    .line 34
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string p1, "CURRENCY"

    .line 38
    .line 39
    const-string p3, "CNY"

    .line 40
    .line 41
    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdBiddingLossReason;->getCode()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p3, "LOSS_REASON"

    .line 53
    .line 54
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const-string p1, "adn_id"

    .line 58
    .line 59
    const/16 p3, 0x2711

    .line 60
    .line 61
    invoke-static {p4, p1, p3}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    const/4 p3, 0x1

    .line 69
    if-eq p1, p3, :cond_1

    .line 70
    .line 71
    const/4 p3, 0x2

    .line 72
    if-eq p1, p3, :cond_1

    .line 73
    .line 74
    const-string p1, "10001"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const-string p1, "1"

    .line 78
    .line 79
    :goto_0
    const-string p3, "ADN_ID"

    .line 80
    .line 81
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdBiddingLossReason;->getCode()I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    :cond_2
    :try_start_0
    iget-object p1, p0, Lj/a;->a:Ljava/lang/Object;

    .line 97
    .line 98
    instance-of p3, p1, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 99
    .line 100
    if-eqz p3, :cond_3

    .line 101
    .line 102
    check-cast p1, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    instance-of p3, p1, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 109
    .line 110
    if-eqz p3, :cond_4

    .line 111
    .line 112
    check-cast p1, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    instance-of p3, p1, Lcom/sigmob/windad/interstitial/WindInterstitialAd;

    .line 119
    .line 120
    if-eqz p3, :cond_5

    .line 121
    .line 122
    check-cast p1, Lcom/sigmob/windad/interstitial/WindInterstitialAd;

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Lcom/sigmob/windad/interstitial/WindInterstitialAd;->sendLossNotificationWithInfo(Ljava/util/Map;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    instance-of p3, p1, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 129
    .line 130
    if-eqz p3, :cond_6

    .line 131
    .line 132
    check-cast p1, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    instance-of p3, p1, Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 139
    .line 140
    if-eqz p3, :cond_7

    .line 141
    .line 142
    check-cast p1, Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    :catch_0
    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lj/a;->a:Ljava/lang/Object;

    .line 149
    .line 150
    return-void
.end method

.method public notifyBidWin(DDLjava/util/Map;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lj/a;->a:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getEcpmInt(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string p5, "AUCTION_PRICE"

    .line 17
    .line 18
    invoke-virtual {p1, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    long-to-int p2, p2

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string p3, "HIGHEST_LOSS_PRICE"

    .line 31
    .line 32
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-string p2, "CURRENCY"

    .line 36
    .line 37
    const-string p3, "CNY"

    .line 38
    .line 39
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    const-string p2, "notifyBidWin() >>> "

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    :cond_0
    :try_start_0
    iget-object p2, p0, Lj/a;->a:Ljava/lang/Object;

    .line 58
    .line 59
    instance-of p3, p2, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 60
    .line 61
    if-eqz p3, :cond_1

    .line 62
    .line 63
    check-cast p2, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    instance-of p3, p2, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 70
    .line 71
    if-eqz p3, :cond_2

    .line 72
    .line 73
    check-cast p2, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    instance-of p3, p2, Lcom/sigmob/windad/interstitial/WindInterstitialAd;

    .line 80
    .line 81
    if-eqz p3, :cond_3

    .line 82
    .line 83
    check-cast p2, Lcom/sigmob/windad/interstitial/WindInterstitialAd;

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Lcom/sigmob/windad/interstitial/WindInterstitialAd;->sendWinNotificationWithInfo(Ljava/util/Map;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    instance-of p3, p2, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 90
    .line 91
    if-eqz p3, :cond_4

    .line 92
    .line 93
    check-cast p2, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    instance-of p3, p2, Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 100
    .line 101
    if-eqz p3, :cond_5

    .line 102
    .line 103
    check-cast p2, Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 104
    .line 105
    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    :catch_0
    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lj/a;->a:Ljava/lang/Object;

    .line 110
    .line 111
    return-void
.end method

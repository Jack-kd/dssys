.class public Lcom/anythink/network/sigmob/SigmobATBiddingNotice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/ATBiddingNotice;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATBiddingNotice;->a:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getNoticePriceCurrency()Lcom/anythink/core/api/ATAdConst$CURRENCY;
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 2
    .line 3
    return-object v0
.end method

.method public notifyBidDisplay(ZD)V
    .locals 0

    return-void
.end method

.method public notifyBidLoss(Ljava/lang/String;DLjava/util/Map;)V
    .locals 3
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
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 14
    .line 15
    mul-double/2addr p2, v1

    .line 16
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    long-to-int p1, p1

    .line 21
    new-instance p2, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p3, "AUCTION_PRICE"

    .line 31
    .line 32
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATBiddingNotice;->a:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getEcpmCurrency(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p3, "CURRENCY"

    .line 42
    .line 43
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdBiddingLossReason;->getCode()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p3, "LOSS_REASON"

    .line 55
    .line 56
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string p1, "adn_id"

    .line 60
    .line 61
    const/16 p3, 0x2711

    .line 62
    .line 63
    invoke-static {p4, p1, p3}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    const/4 p3, 0x1

    .line 71
    if-eq p1, p3, :cond_1

    .line 72
    .line 73
    const/4 p3, 0x2

    .line 74
    if-eq p1, p3, :cond_1

    .line 75
    .line 76
    const-string p1, "10001"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const-string p1, "1"

    .line 80
    .line 81
    :goto_0
    const-string p3, "ADN_ID"

    .line 82
    .line 83
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdBiddingLossReason;->getCode()I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATBiddingNotice;->a:Ljava/lang/Object;

    .line 99
    .line 100
    instance-of p3, p1, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 101
    .line 102
    if-eqz p3, :cond_3

    .line 103
    .line 104
    check-cast p1, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    instance-of p3, p1, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 111
    .line 112
    if-eqz p3, :cond_4

    .line 113
    .line 114
    check-cast p1, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    instance-of p3, p1, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 121
    .line 122
    if-eqz p3, :cond_5

    .line 123
    .line 124
    check-cast p1, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    instance-of p3, p1, Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 131
    .line 132
    if-eqz p3, :cond_6

    .line 133
    .line 134
    check-cast p1, Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    :catch_0
    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATBiddingNotice;->a:Ljava/lang/Object;

    .line 141
    .line 142
    return-void
.end method

.method public notifyBidWin(DDLjava/util/Map;)V
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
    new-instance p1, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATBiddingNotice;->a:Ljava/lang/Object;

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
    invoke-interface {p1, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 22
    .line 23
    mul-double/2addr p3, v0

    .line 24
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string p3, "HIGHEST_LOSS_PRICE"

    .line 29
    .line 30
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATBiddingNotice;->a:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getEcpmCurrency(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string p3, "CURRENCY"

    .line 40
    .line 41
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATBiddingNotice;->a:Ljava/lang/Object;

    .line 54
    .line 55
    instance-of p3, p2, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 56
    .line 57
    if-eqz p3, :cond_1

    .line 58
    .line 59
    check-cast p2, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    instance-of p3, p2, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 66
    .line 67
    if-eqz p3, :cond_2

    .line 68
    .line 69
    check-cast p2, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    instance-of p3, p2, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 76
    .line 77
    if-eqz p3, :cond_3

    .line 78
    .line 79
    check-cast p2, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    instance-of p3, p2, Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 86
    .line 87
    if-eqz p3, :cond_4

    .line 88
    .line 89
    check-cast p2, Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    :catch_0
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATBiddingNotice;->a:Ljava/lang/Object;

    .line 96
    .line 97
    return-void
.end method

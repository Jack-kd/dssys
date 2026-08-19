.class Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubix/ssp/open/interstitial/UBiXInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ubix/UbATInterstitialAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->k(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->l(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->a(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->a(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;->isVideoAd()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->d(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->e(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->f(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->g(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const-string p1, "unknown"

    .line 17
    .line 18
    :goto_1
    sget-object v1, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->b(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->c(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v1, v0, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public onAdExposed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->m(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->n(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->a(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->a(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;->isVideoAd()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->o(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const-string p1, "unknown"

    .line 17
    .line 18
    :goto_1
    sget-object v1, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onAdLoadSucceed()V
    .locals 8

    .line 1
    sget-object v0, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->a(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 14
    .line 15
    const-string v2, "mInterstitialAd is null"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->h(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->a(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;->getPrice()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    cmp-long v0, v2, v4

    .line 46
    .line 47
    if-gtz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "error price: "

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    new-instance v0, Lcom/anythink/network/ubix/UbATBiddingNotice;

    .line 79
    .line 80
    iget-object v4, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 81
    .line 82
    invoke-static {v4}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->a(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-direct {v0, v4}, Lcom/anythink/network/ubix/UbATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 90
    .line 91
    iget-object v4, v4, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 92
    .line 93
    long-to-double v2, v2

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    sget-object v5, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 114
    .line 115
    invoke-static {v2, v3, v1, v0, v5}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-interface {v4, v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->i(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInterstitialAdapter$b;->a:Lcom/anythink/network/ubix/UbATInterstitialAdapter;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATInterstitialAdapter;->j(Lcom/anythink/network/ubix/UbATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const/4 v1, 0x0

    .line 139
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    .line 140
    .line 141
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    return-void
.end method

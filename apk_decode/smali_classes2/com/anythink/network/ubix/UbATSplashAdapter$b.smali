.class Lcom/anythink/network/ubix/UbATSplashAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ubix/UbATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/ubix/UbATSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

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
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Lcom/anythink/network/ubix/UbATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->g(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->h(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Lcom/anythink/network/ubix/UbATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->b(Lcom/anythink/network/ubix/UbATSplashAdapter;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const-string p1, "unknown"

    .line 14
    .line 15
    :goto_0
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Lcom/anythink/network/ubix/UbATSplashAdapter;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Lcom/anythink/network/ubix/UbATSplashAdapter;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onAdExposed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Lcom/anythink/network/ubix/UbATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->i(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->j(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    .line 21
    .line 22
    .line 23
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
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Lcom/anythink/network/ubix/UbATSplashAdapter;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onAdLoadSucceed()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Lcom/anythink/network/ubix/UbATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->c(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, ""

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 17
    .line 18
    const-string v2, "mSplashAd is null"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->d(Lcom/anythink/network/ubix/UbATSplashAdapter;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 33
    .line 34
    iget-object v2, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->c(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/ubix/ssp/open/splash/UBiXSplashManager;->getPrice()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Lcom/anythink/network/ubix/UbATSplashAdapter;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    cmp-long v0, v2, v4

    .line 54
    .line 55
    if-gtz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v4, "error price: "

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    new-instance v0, Lcom/anythink/network/ubix/UbATBiddingNotice;

    .line 87
    .line 88
    iget-object v4, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 89
    .line 90
    invoke-static {v4}, Lcom/anythink/network/ubix/UbATSplashAdapter;->c(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/ubix/ssp/open/splash/UBiXSplashManager;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-direct {v0, v4}, Lcom/anythink/network/ubix/UbATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v4, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 98
    .line 99
    iget-object v4, v4, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 100
    .line 101
    long-to-double v2, v2

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    sget-object v5, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 122
    .line 123
    invoke-static {v2, v3, v1, v0, v5}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const/4 v1, 0x0

    .line 128
    invoke-interface {v4, v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->e(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->f(Lcom/anythink/network/ubix/UbATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const/4 v1, 0x0

    .line 147
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    .line 148
    .line 149
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    return-void
.end method

.method public onAdResponseSucceed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Lcom/anythink/network/ubix/UbATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdSkipped()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Lcom/anythink/network/ubix/UbATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v0, v1}, Lcom/anythink/network/ubix/UbATSplashAdapter;->a(Lcom/anythink/network/ubix/UbATSplashAdapter;I)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATSplashAdapter$b;->a:Lcom/anythink/network/ubix/UbATSplashAdapter;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATSplashAdapter;->b(Lcom/anythink/network/ubix/UbATSplashAdapter;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

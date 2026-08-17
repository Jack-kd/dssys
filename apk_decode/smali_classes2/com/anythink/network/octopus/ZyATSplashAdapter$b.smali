.class Lcom/anythink/network/octopus/ZyATSplashAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/octopus/ZyATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/octopus/ZyATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/octopus/ZyATSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdCacheLoaded(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->a(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->a(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->j(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->b(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

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
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->a(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->h(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->i(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->a(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "i:"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onAdLoaded()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->a(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->c(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/octopus/ad/SplashAd;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->c(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/octopus/ad/SplashAd;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, ""

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 26
    .line 27
    iget-boolean v2, v0, Lcom/anythink/network/octopus/ZyATSplashAdapter;->c:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v2, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->a(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->c(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/octopus/ad/SplashAd;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/octopus/ad/SplashAd;->getPrice()I

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->c(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/octopus/ad/SplashAd;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/octopus/ad/SplashAd;->isLoaded()Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->c(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/octopus/ad/SplashAd;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/octopus/ad/SplashAd;->getPrice()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-gtz v0, :cond_0

    .line 67
    .line 68
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v3, "error price: "

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v1, v0}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_0
    new-instance v2, Lcom/anythink/network/octopus/ZyATBiddingNotice;

    .line 98
    .line 99
    iget-object v3, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 100
    .line 101
    invoke-static {v3}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->c(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/octopus/ad/SplashAd;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-direct {v2, v3}, Lcom/anythink/network/octopus/ZyATBiddingNotice;-><init>(Lcom/octopus/ad/IBidding;)V

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 109
    .line 110
    iget-object v3, v3, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 111
    .line 112
    int-to-double v4, v0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 119
    .line 120
    .line 121
    move-result-wide v6

    .line 122
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget-object v1, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 133
    .line 134
    invoke-static {v4, v5, v0, v2, v1}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-interface {v3, v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_1
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->d(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_2

    .line 148
    .line 149
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->e(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const/4 v1, 0x0

    .line 156
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    .line 157
    .line 158
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    return-void

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 163
    .line 164
    const-string v2, "mSplashAd is null"

    .line 165
    .line 166
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public onAdShown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->a(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->f(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATSplashAdapter$b;->a:Lcom/anythink/network/octopus/ZyATSplashAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATSplashAdapter;->g(Lcom/anythink/network/octopus/ZyATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

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

.method public onAdTick(J)V
    .locals 0

    return-void
.end method

.class Lcom/anythink/network/ubix/UbATBannerAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ubix/UbATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ubix/UbATBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/ubix/UbATBannerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

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
    sget-object v0, Lcom/anythink/network/ubix/UbATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/ubix/UbATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClose()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/anythink/network/ubix/UbATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public onAdExposed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/ubix/UbATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    .line 10
    .line 11
    .line 12
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
    sget-object v1, Lcom/anythink/network/ubix/UbATBannerAdapter;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

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
    sget-object v0, Lcom/anythink/network/ubix/UbATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATBannerAdapter;->a(Lcom/anythink/network/ubix/UbATBannerAdapter;)Lcom/ubix/ssp/open/banner/UBiXBannerManager;

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
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 14
    .line 15
    const-string v2, "mBannerAd is null"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATBannerAdapter;->a(Lcom/anythink/network/ubix/UbATBannerAdapter;)Lcom/ubix/ssp/open/banner/UBiXBannerManager;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Lcom/ubix/ssp/open/banner/UBiXBannerManager;->getBannerView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v0, v2}, Lcom/anythink/network/ubix/UbATBannerAdapter;->a(Lcom/anythink/network/ubix/UbATBannerAdapter;Landroid/view/View;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATBannerAdapter;->b(Lcom/anythink/network/ubix/UbATBannerAdapter;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 43
    .line 44
    const-string v2, "mBannerView is null"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATBannerAdapter;->c(Lcom/anythink/network/ubix/UbATBannerAdapter;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 59
    .line 60
    iget-object v2, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 61
    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATBannerAdapter;->a(Lcom/anythink/network/ubix/UbATBannerAdapter;)Lcom/ubix/ssp/open/banner/UBiXBannerManager;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Lcom/ubix/ssp/open/banner/UBiXBannerManager;->getPrice()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    const-wide/16 v4, 0x0

    .line 73
    .line 74
    cmp-long v0, v2, v4

    .line 75
    .line 76
    if-gtz v0, :cond_2

    .line 77
    .line 78
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v4, "error price: "

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    new-instance v0, Lcom/anythink/network/ubix/UbATBiddingNotice;

    .line 108
    .line 109
    iget-object v4, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 110
    .line 111
    invoke-static {v4}, Lcom/anythink/network/ubix/UbATBannerAdapter;->a(Lcom/anythink/network/ubix/UbATBannerAdapter;)Lcom/ubix/ssp/open/banner/UBiXBannerManager;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-direct {v0, v4}, Lcom/anythink/network/ubix/UbATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 119
    .line 120
    iget-object v4, v4, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 121
    .line 122
    long-to-double v2, v2

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v6

    .line 132
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    sget-object v5, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 143
    .line 144
    invoke-static {v2, v3, v1, v0, v5}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const/4 v1, 0x0

    .line 149
    invoke-interface {v4, v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATBannerAdapter;->d(Lcom/anythink/network/ubix/UbATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_4

    .line 160
    .line 161
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATBannerAdapter$b;->a:Lcom/anythink/network/ubix/UbATBannerAdapter;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATBannerAdapter;->e(Lcom/anythink/network/ubix/UbATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const/4 v1, 0x0

    .line 168
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    .line 169
    .line 170
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    return-void
.end method

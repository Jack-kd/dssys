.class Lcom/anythink/network/octopus/ZyATRewardAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/octopus/ZyATRewardAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/octopus/ZyATRewardAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/octopus/ZyATRewardAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRewardVideoAdClicked()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATRewardAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->c(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->d(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onRewardVideoAdClosed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATRewardAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->h(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->i(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onRewardVideoAdComplete()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATRewardAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->e(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->f(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onRewardVideoAdFailedToLoad(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATRewardAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "i:"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onRewardVideoAdLoaded()V
    .locals 8

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATRewardAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->l(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/octopus/ad/RewardVideoAd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->m(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->l(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/octopus/ad/RewardVideoAd;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/octopus/ad/RewardVideoAd;->getPrice()I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->l(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/octopus/ad/RewardVideoAd;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/octopus/ad/RewardVideoAd;->getPrice()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-gtz v0, :cond_0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "error price: "

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v1, v0}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    new-instance v2, Lcom/anythink/network/octopus/ZyATBiddingNotice;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 80
    .line 81
    invoke-static {v3}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->l(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/octopus/ad/RewardVideoAd;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-direct {v2, v3}, Lcom/anythink/network/octopus/ZyATBiddingNotice;-><init>(Lcom/octopus/ad/IBidding;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 89
    .line 90
    iget-object v3, v3, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 91
    .line 92
    int-to-double v4, v0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sget-object v1, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 113
    .line 114
    invoke-static {v4, v5, v0, v2, v1}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-interface {v3, v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->n(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->b(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const/4 v1, 0x0

    .line 138
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    .line 139
    .line 140
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    return-void

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 145
    .line 146
    const-string v2, "mRewardVideoAd is null"

    .line 147
    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public onRewardVideoAdShown()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATRewardAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->j(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->k(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onRewardVideoCached(Z)V
    .locals 0

    .line 1
    sget-object p1, Lcom/anythink/network/octopus/ZyATRewardAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public onRewarded(Lcom/octopus/ad/RewardItem;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATRewardAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->a(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATRewardAdapter$b;->a:Lcom/anythink/network/octopus/ZyATRewardAdapter;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATRewardAdapter;->g(Lcom/anythink/network/octopus/ZyATRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

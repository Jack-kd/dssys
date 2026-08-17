.class Lcom/anythink/network/ubix/UbATAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/network/ubix/UbATNativeAd$AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ubix/UbATAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ubix/UbATAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/ubix/UbATAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNativeAdDataLoaded(Ljava/util/List;Ljava/lang/Object;D)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
            ">;",
            "Ljava/lang/Object;",
            "D)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/anythink/network/ubix/UbATAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    :goto_0
    if-eqz p1, :cond_4

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATAdapter;->a(Lcom/anythink/network/ubix/UbATAdapter;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 41
    .line 42
    instance-of v0, v0, Lcom/anythink/core/api/ATBiddingListenerExt;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    const-wide/16 v0, 0x0

    .line 47
    .line 48
    cmpg-double v0, p3, v0

    .line 49
    .line 50
    if-gtz v0, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance v0, Lcom/anythink/network/ubix/UbATBiddingNotice;

    .line 54
    .line 55
    invoke-direct {v0, p2}, Lcom/anythink/network/ubix/UbATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 61
    .line 62
    check-cast p2, Lcom/anythink/core/api/ATBiddingListenerExt;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, ""

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 86
    .line 87
    invoke-static {p3, p4, v1, v0, v2}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    const/4 p4, 0x0

    .line 92
    aget-object p1, p1, p4

    .line 93
    .line 94
    invoke-interface {p2, p3, p1}, Lcom/anythink/core/api/ATBiddingListenerExt;->onC2SBiddingResultWithData(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    iget-object p2, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 99
    .line 100
    invoke-static {p2}, Lcom/anythink/network/ubix/UbATAdapter;->b(Lcom/anythink/network/ubix/UbATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    instance-of p2, p2, Lcom/anythink/core/api/ATCustomLoadListenerExt;

    .line 105
    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    iget-object p2, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 109
    .line 110
    invoke-static {p2}, Lcom/anythink/network/ubix/UbATAdapter;->c(Lcom/anythink/network/ubix/UbATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Lcom/anythink/core/api/ATCustomLoadListenerExt;

    .line 115
    .line 116
    invoke-interface {p2, p1}, Lcom/anythink/core/api/ATCustomLoadListenerExt;->onAdDataLoadedWithAds([Lcom/anythink/core/api/BaseAd;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_1
    return-void
.end method

.method public onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/ubix/UbATAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/Object;D)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
            ">;",
            "Ljava/lang/Object;",
            "D)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/anythink/network/ubix/UbATAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-array v1, v1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATAdapter;->a(Lcom/anythink/network/ubix/UbATAdapter;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    cmpg-double v2, p3, v2

    .line 46
    .line 47
    if-gtz v2, :cond_1

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string p2, "error price: "

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {v1, p1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    new-instance v1, Lcom/anythink/network/ubix/UbATBiddingNotice;

    .line 75
    .line 76
    invoke-direct {v1, p2}, Lcom/anythink/network/ubix/UbATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 80
    .line 81
    iget-object p2, p2, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 103
    .line 104
    invoke-static {p3, p4, v0, v1, v2}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    const/4 p4, 0x0

    .line 109
    aget-object p1, p1, p4

    .line 110
    .line 111
    invoke-interface {p2, p3, p1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    iget-object p2, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 116
    .line 117
    invoke-static {p2}, Lcom/anythink/network/ubix/UbATAdapter;->d(Lcom/anythink/network/ubix/UbATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    if-eqz p2, :cond_3

    .line 122
    .line 123
    iget-object p2, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 124
    .line 125
    invoke-static {p2}, Lcom/anythink/network/ubix/UbATAdapter;->e(Lcom/anythink/network/ubix/UbATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-interface {p2, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    return-void

    .line 133
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATAdapter$b;->a:Lcom/anythink/network/ubix/UbATAdapter;

    .line 134
    .line 135
    const-string p2, "nativeAdDataList is null"

    .line 136
    .line 137
    invoke-virtual {p1, v0, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

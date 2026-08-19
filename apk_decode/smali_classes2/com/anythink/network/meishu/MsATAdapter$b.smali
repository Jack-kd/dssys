.class Lcom/anythink/network/meishu/MsATAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/network/meishu/MsNativeAd$AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsATAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/meishu/MsATAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsATAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATAdapter$b;->a:Lcom/anythink/network/meishu/MsATAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/meishu/MsATAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATAdapter$b;->a:Lcom/anythink/network/meishu/MsATAdapter;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/Object;D)V
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
    sget-object v0, Lcom/anythink/network/meishu/MsATAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-array v0, v0, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATAdapter$b;->a:Lcom/anythink/network/meishu/MsATAdapter;

    .line 19
    .line 20
    iget-boolean v1, v0, Lcom/anythink/network/meishu/MsATAdapter;->d:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    cmpg-double v1, p3, v1

    .line 31
    .line 32
    if-gtz v1, :cond_0

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string p2, "error price: "

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/anythink/network/meishu/MsATBiddingNotice;

    .line 60
    .line 61
    invoke-direct {v0, p2}, Lcom/anythink/network/meishu/MsATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/anythink/network/meishu/MsATAdapter$b;->a:Lcom/anythink/network/meishu/MsATAdapter;

    .line 65
    .line 66
    iget-object p2, p2, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, ""

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 90
    .line 91
    invoke-static {p3, p4, v1, v0, v2}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    const/4 p4, 0x0

    .line 96
    aget-object p1, p1, p4

    .line 97
    .line 98
    invoke-interface {p2, p3, p1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_1
    invoke-static {v0}, Lcom/anythink/network/meishu/MsATAdapter;->a(Lcom/anythink/network/meishu/MsATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-eqz p2, :cond_2

    .line 107
    .line 108
    iget-object p2, p0, Lcom/anythink/network/meishu/MsATAdapter$b;->a:Lcom/anythink/network/meishu/MsATAdapter;

    .line 109
    .line 110
    invoke-static {p2}, Lcom/anythink/network/meishu/MsATAdapter;->b(Lcom/anythink/network/meishu/MsATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-interface {p2, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    return-void
.end method

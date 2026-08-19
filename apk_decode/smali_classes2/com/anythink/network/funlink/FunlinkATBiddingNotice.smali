.class public Lcom/anythink/network/funlink/FunlinkATBiddingNotice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/ATBiddingNotice;


# instance fields
.field a:Ljava/lang/Object;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/network/funlink/FunlinkATBiddingNotice;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATBiddingNotice;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATBiddingNotice;->a:Ljava/lang/Object;

    .line 13
    .line 14
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

    return-void
.end method

.method public declared-synchronized notifyBidLoss(Ljava/lang/String;DLjava/util/Map;)V
    .locals 2
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
    move-result-wide p1

    .line 6
    long-to-int p1, p1

    .line 7
    const-string p2, "adn_bid_second_price"

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-static {p4, p2, v0, v1}, Lcom/anythink/core/api/ATInitMediation;->getDoubleFromMap(Ljava/util/Map;Ljava/lang/String;D)D

    .line 12
    .line 13
    .line 14
    move-result-wide p2

    .line 15
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    .line 16
    .line 17
    .line 18
    move-result-wide p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    long-to-int p2, p2

    .line 20
    :try_start_1
    iget-object p3, p0, Lcom/anythink/network/funlink/FunlinkATBiddingNotice;->a:Ljava/lang/Object;

    .line 21
    .line 22
    instance-of p4, p3, Lcom/fl/saas/adx/api/FLInterstitial;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p4, :cond_0

    .line 26
    .line 27
    check-cast p3, Lcom/fl/saas/adx/api/FLInterstitial;

    .line 28
    .line 29
    invoke-virtual {p3}, Lcom/fl/saas/adx/base/base/BaseAPI;->getECPM()I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v0, p1, p2}, Lcom/fl/saas/adx/base/base/BaseAPI;->biddingResultUpload(ZII)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    instance-of p4, p3, Lcom/fl/saas/adx/api/FLVideo;

    .line 39
    .line 40
    if-eqz p4, :cond_1

    .line 41
    .line 42
    check-cast p3, Lcom/fl/saas/adx/api/FLVideo;

    .line 43
    .line 44
    invoke-virtual {p3}, Lcom/fl/saas/adx/base/base/BaseAPI;->getECPM()I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0, p1, p2}, Lcom/fl/saas/adx/base/base/BaseAPI;->biddingResultUpload(ZII)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    instance-of p4, p3, Lcom/fl/saas/adx/api/FLBanner;

    .line 52
    .line 53
    if-eqz p4, :cond_2

    .line 54
    .line 55
    check-cast p3, Lcom/fl/saas/adx/api/FLBanner;

    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/fl/saas/adx/base/base/BaseAPI;->getECPM()I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v0, p1, p2}, Lcom/fl/saas/adx/base/base/BaseAPI;->biddingResultUpload(ZII)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    instance-of p4, p3, Lcom/fl/saas/adx/api/FLSpread;

    .line 65
    .line 66
    if-eqz p4, :cond_3

    .line 67
    .line 68
    check-cast p3, Lcom/fl/saas/adx/api/FLSpread;

    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/fl/saas/adx/base/base/BaseAPI;->getECPM()I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, v0, p1, p2}, Lcom/fl/saas/adx/base/base/BaseAPI;->biddingResultUpload(ZII)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    instance-of p4, p3, Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 78
    .line 79
    if-eqz p4, :cond_4

    .line 80
    .line 81
    check-cast p3, Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 82
    .line 83
    invoke-interface {p3}, Lcom/fl/saas/adx/api/MediaExtraInfo;->getECPM()I

    .line 84
    .line 85
    .line 86
    invoke-interface {p3, v0, p1, p2}, Lcom/fl/saas/adx/api/MediaExtraInfo;->biddingResultUpload(ZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATBiddingNotice;->a:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    .line 96
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :catchall_1
    move-exception p1

    .line 99
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    throw p1
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
    long-to-int p1, p1

    .line 7
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    .line 8
    .line 9
    .line 10
    move-result-wide p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    long-to-int p2, p2

    .line 12
    :try_start_1
    iget-object p3, p0, Lcom/anythink/network/funlink/FunlinkATBiddingNotice;->a:Ljava/lang/Object;

    .line 13
    .line 14
    instance-of p4, p3, Lcom/fl/saas/adx/api/FLInterstitial;

    .line 15
    .line 16
    const/4 p5, 0x1

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    check-cast p3, Lcom/fl/saas/adx/api/FLInterstitial;

    .line 20
    .line 21
    invoke-virtual {p3, p5, p1, p2}, Lcom/fl/saas/adx/base/base/BaseAPI;->biddingResultUpload(ZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_2
    instance-of p4, p3, Lcom/fl/saas/adx/api/FLVideo;

    .line 29
    .line 30
    if-eqz p4, :cond_1

    .line 31
    .line 32
    check-cast p3, Lcom/fl/saas/adx/api/FLVideo;

    .line 33
    .line 34
    invoke-virtual {p3, p5, p1, p2}, Lcom/fl/saas/adx/base/base/BaseAPI;->biddingResultUpload(ZII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :cond_1
    :try_start_3
    instance-of p4, p3, Lcom/fl/saas/adx/api/FLBanner;

    .line 40
    .line 41
    if-eqz p4, :cond_2

    .line 42
    .line 43
    check-cast p3, Lcom/fl/saas/adx/api/FLBanner;

    .line 44
    .line 45
    invoke-virtual {p3, p5, p1, p2}, Lcom/fl/saas/adx/base/base/BaseAPI;->biddingResultUpload(ZII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :cond_2
    :try_start_4
    instance-of p4, p3, Lcom/fl/saas/adx/api/FLSpread;

    .line 51
    .line 52
    if-eqz p4, :cond_3

    .line 53
    .line 54
    check-cast p3, Lcom/fl/saas/adx/api/FLSpread;

    .line 55
    .line 56
    invoke-virtual {p3, p5, p1, p2}, Lcom/fl/saas/adx/base/base/BaseAPI;->biddingResultUpload(ZII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :cond_3
    :try_start_5
    instance-of p4, p3, Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 62
    .line 63
    if-eqz p4, :cond_4

    .line 64
    .line 65
    check-cast p3, Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 66
    .line 67
    invoke-interface {p3, p5, p1, p2}, Lcom/fl/saas/adx/api/MediaExtraInfo;->biddingResultUpload(ZII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 68
    .line 69
    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :goto_0
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    :cond_4
    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATBiddingNotice;->a:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 82
    throw p1
.end method

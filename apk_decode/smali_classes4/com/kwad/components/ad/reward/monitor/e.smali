.class public final Lcom/kwad/components/ad/reward/monitor/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setLoadDataTime(J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setLoadFromCache(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;->getAdVideoPreCacheSize()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    int-to-long p1, p1

    .line 16
    const-wide/16 v0, 0x400

    .line 17
    .line 18
    mul-long/2addr p1, v0

    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    cmp-long v2, p1, v0

    .line 22
    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadType(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadSize(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    if-gez v2, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadType(I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadType(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadSize(J)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

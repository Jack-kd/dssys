.class public final Lcom/kwad/components/ad/adbit/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JZZ)V
    .locals 3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 6
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/kwad/components/ad/adbit/d;->S()Lcom/kwad/components/ad/adbit/d;

    move-result-object v0

    .line 7
    iput p3, v0, Lcom/kwad/components/ad/adbit/d;->bG:I

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p0

    iput-wide v1, v0, Lcom/kwad/components/ad/adbit/d;->bH:J

    if-eqz p2, :cond_1

    .line 9
    const-string p0, "v1"

    goto :goto_1

    :cond_1
    const-string p0, "v2"

    :goto_1
    iput-object p0, v0, Lcom/kwad/components/ad/adbit/d;->bI:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lcom/kwad/components/ad/adbit/c;->a(Lcom/kwad/components/ad/adbit/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 11
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Lcom/kwad/components/ad/adbit/d;)V
    .locals 2

    .line 12
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->Oi()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/kwad/components/ad/adbit/c$1;

    invoke-direct {v1, p0}, Lcom/kwad/components/ad/adbit/c$1;-><init>(Lcom/kwad/components/ad/adbit/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/kwad/components/ad/adbit/d;->R()Lcom/kwad/components/ad/adbit/d;

    move-result-object v0

    .line 2
    iput p1, v0, Lcom/kwad/components/ad/adbit/d;->bG:I

    if-eqz p0, :cond_1

    .line 3
    const-string p0, "v1"

    goto :goto_1

    :cond_1
    const-string p0, "v2"

    :goto_1
    iput-object p0, v0, Lcom/kwad/components/ad/adbit/d;->bI:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/kwad/components/ad/adbit/c;->a(Lcom/kwad/components/ad/adbit/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

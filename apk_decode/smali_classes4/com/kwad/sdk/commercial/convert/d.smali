.class public final Lcom/kwad/sdk/commercial/convert/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static B(Lcom/kwad/sdk/commercial/c/a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->Oi()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/kwad/sdk/commercial/convert/d$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/kwad/sdk/commercial/convert/d$1;-><init>(Lcom/kwad/sdk/commercial/c/a;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static a(IJI)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->obtain()Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setAdStyle(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setDurationTime(J)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setStatus(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p3}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setMaterialLoadType(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/kwad/sdk/commercial/convert/d;->B(Lcom/kwad/sdk/commercial/c/a;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static b(IIJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->obtain()Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setAdStyle(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setDurationTime(J)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p2, 0x4

    .line 14
    invoke-virtual {p0, p2}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setStatus(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setRenderType(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/kwad/sdk/commercial/convert/d;->B(Lcom/kwad/sdk/commercial/c/a;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static e(IJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->obtain()Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setAdStyle(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setDurationTime(J)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setStatus(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/kwad/sdk/commercial/convert/d;->B(Lcom/kwad/sdk/commercial/c/a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static f(IJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->obtain()Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setAdStyle(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setDurationTime(J)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x3

    .line 14
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->setStatus(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/kwad/sdk/commercial/convert/d;->B(Lcom/kwad/sdk/commercial/c/a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

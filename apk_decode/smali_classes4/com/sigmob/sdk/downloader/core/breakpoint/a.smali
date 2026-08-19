.class public Lcom/sigmob/sdk/downloader/core/breakpoint/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(JJ)V
    .locals 7

    .line 1
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;-><init>(JJJ)V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_1

    :cond_0
    cmp-long v0, p5, v0

    if-ltz v0, :cond_1

    iput-wide p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a:J

    iput-wide p3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->b:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a:J

    return-wide v0
.end method

.method public c()J
    .locals 4

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a:J

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->b:J

    return-wide v0
.end method

.method public e()J
    .locals 5

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a:J

    add-long/2addr v2, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public g()Lcom/sigmob/sdk/downloader/core/breakpoint/a;
    .locals 7

    new-instance v0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    iget-wide v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a:J

    iget-wide v3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->b:J

    iget-object v5, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;-><init>(JJJ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")-current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

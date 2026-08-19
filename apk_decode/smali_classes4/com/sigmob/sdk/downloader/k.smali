.class public Lcom/sigmob/sdk/downloader/k;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:J

.field f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(JZ)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/downloader/core/c;->a(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .line 2
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->a:J

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->b:J

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->c:J

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->d:J

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->e:J

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .locals 4

    .line 3
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->a:J

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->d:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->b:J

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized c()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/sdk/downloader/k;->b:J

    iget-wide v4, p0, Lcom/sigmob/sdk/downloader/k;->a:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/sigmob/sdk/downloader/k;->b:J

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->a:J

    long-to-float v0, v2

    long-to-float v1, v4

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()J
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->c()V

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->c:J

    return-wide v0
.end method

.method public declared-synchronized e()J
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/sdk/downloader/k;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-gez v2, :cond_0

    iget-wide v5, p0, Lcom/sigmob/sdk/downloader/k;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_0

    monitor-exit p0

    return-wide v5

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-wide v5, p0, Lcom/sigmob/sdk/downloader/k;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v5, v3

    if-nez v2, :cond_1

    const-wide/16 v5, 0x1f4

    cmp-long v0, v0, v5

    if-gez v0, :cond_1

    monitor-exit p0

    return-wide v3

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->d()J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized f()J
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->b()J

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/sigmob/sdk/downloader/k;->f:J

    iget-wide v4, p0, Lcom/sigmob/sdk/downloader/k;->d:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v0

    float-to-long v0, v2

    monitor-exit p0

    return-wide v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->e()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/downloader/k;->a(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/k;->c:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/downloader/k;->a(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized k()J
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/sdk/downloader/k;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public l()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->d()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/downloader/k;->a(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->d()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/downloader/k;->a(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/k;->f()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/downloader/k;->a(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

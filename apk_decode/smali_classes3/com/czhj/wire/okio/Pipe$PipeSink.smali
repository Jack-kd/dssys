.class final Lcom/czhj/wire/okio/Pipe$PipeSink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/wire/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/wire/okio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PipeSink"
.end annotation


# instance fields
.field final a:Lcom/czhj/wire/okio/PushableTimeout;

.field final synthetic b:Lcom/czhj/wire/okio/Pipe;


# direct methods
.method public constructor <init>(Lcom/czhj/wire/okio/Pipe;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/czhj/wire/okio/PushableTimeout;

    invoke-direct {p1}, Lcom/czhj/wire/okio/PushableTimeout;-><init>()V

    iput-object p1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->a:Lcom/czhj/wire/okio/PushableTimeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    iget-object v0, v0, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    iget-boolean v2, v1, Lcom/czhj/wire/okio/Pipe;->c:Z

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    invoke-static {v1}, Lcom/czhj/wire/okio/Pipe;->a(Lcom/czhj/wire/okio/Pipe;)Lcom/czhj/wire/okio/Sink;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    invoke-static {v1}, Lcom/czhj/wire/okio/Pipe;->a(Lcom/czhj/wire/okio/Pipe;)Lcom/czhj/wire/okio/Sink;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    iget-boolean v2, v1, Lcom/czhj/wire/okio/Pipe;->d:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v1}, Lcom/czhj/wire/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/czhj/wire/okio/Pipe;->c:Z

    iget-object v1, v1, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->a:Lcom/czhj/wire/okio/PushableTimeout;

    invoke-interface {v1}, Lcom/czhj/wire/okio/Sink;->timeout()Lcom/czhj/wire/okio/Timeout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/czhj/wire/okio/PushableTimeout;->a(Lcom/czhj/wire/okio/Timeout;)V

    :try_start_1
    invoke-interface {v1}, Lcom/czhj/wire/okio/Sink;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->a:Lcom/czhj/wire/okio/PushableTimeout;

    invoke-virtual {v0}, Lcom/czhj/wire/okio/PushableTimeout;->a()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->a:Lcom/czhj/wire/okio/PushableTimeout;

    invoke-virtual {v1}, Lcom/czhj/wire/okio/PushableTimeout;->a()V

    throw v0

    :cond_4
    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    iget-object v0, v0, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    iget-boolean v2, v1, Lcom/czhj/wire/okio/Pipe;->c:Z

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/czhj/wire/okio/Pipe;->a(Lcom/czhj/wire/okio/Pipe;)Lcom/czhj/wire/okio/Sink;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    invoke-static {v1}, Lcom/czhj/wire/okio/Pipe;->a(Lcom/czhj/wire/okio/Pipe;)Lcom/czhj/wire/okio/Sink;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    iget-boolean v2, v1, Lcom/czhj/wire/okio/Pipe;->d:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v1}, Lcom/czhj/wire/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->a:Lcom/czhj/wire/okio/PushableTimeout;

    invoke-interface {v1}, Lcom/czhj/wire/okio/Sink;->timeout()Lcom/czhj/wire/okio/Timeout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/czhj/wire/okio/PushableTimeout;->a(Lcom/czhj/wire/okio/Timeout;)V

    :try_start_1
    invoke-interface {v1}, Lcom/czhj/wire/okio/Sink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->a:Lcom/czhj/wire/okio/PushableTimeout;

    invoke-virtual {v0}, Lcom/czhj/wire/okio/PushableTimeout;->a()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->a:Lcom/czhj/wire/okio/PushableTimeout;

    invoke-virtual {v1}, Lcom/czhj/wire/okio/PushableTimeout;->a()V

    throw v0

    :cond_3
    return-void

    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public timeout()Lcom/czhj/wire/okio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->a:Lcom/czhj/wire/okio/PushableTimeout;

    return-object v0
.end method

.method public write(Lcom/czhj/wire/okio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    iget-object v0, v0, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    iget-boolean v1, v1, Lcom/czhj/wire/okio/Pipe;->c:Z

    if-nez v1, :cond_5

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    invoke-static {v3}, Lcom/czhj/wire/okio/Pipe;->a(Lcom/czhj/wire/okio/Pipe;)Lcom/czhj/wire/okio/Sink;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    invoke-static {v1}, Lcom/czhj/wire/okio/Pipe;->a(Lcom/czhj/wire/okio/Pipe;)Lcom/czhj/wire/okio/Sink;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    iget-boolean v4, v3, Lcom/czhj/wire/okio/Pipe;->d:Z

    if-nez v4, :cond_2

    iget-wide v4, v3, Lcom/czhj/wire/okio/Pipe;->a:J

    iget-object v3, v3, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v3}, Lcom/czhj/wire/okio/Buffer;->size()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v1, v4, v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->a:Lcom/czhj/wire/okio/PushableTimeout;

    iget-object v2, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    iget-object v2, v2, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v1, v2}, Lcom/czhj/wire/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object v3, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    iget-object v3, v3, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v3, p1, v1, v2}, Lcom/czhj/wire/okio/Buffer;->write(Lcom/czhj/wire/okio/Buffer;J)V

    sub-long/2addr p2, v1

    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->b:Lcom/czhj/wire/okio/Pipe;

    iget-object v1, v1, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "source is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->a:Lcom/czhj/wire/okio/PushableTimeout;

    invoke-interface {v1}, Lcom/czhj/wire/okio/Sink;->timeout()Lcom/czhj/wire/okio/Timeout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/czhj/wire/okio/PushableTimeout;->a(Lcom/czhj/wire/okio/Timeout;)V

    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Lcom/czhj/wire/okio/Sink;->write(Lcom/czhj/wire/okio/Buffer;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->a:Lcom/czhj/wire/okio/PushableTimeout;

    invoke-virtual {p1}, Lcom/czhj/wire/okio/PushableTimeout;->a()V

    return-void

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lcom/czhj/wire/okio/Pipe$PipeSink;->a:Lcom/czhj/wire/okio/PushableTimeout;

    invoke-virtual {p2}, Lcom/czhj/wire/okio/PushableTimeout;->a()V

    throw p1

    :cond_4
    return-void

    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

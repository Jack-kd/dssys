.class final Lcom/czhj/wire/okio/Pipe$PipeSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/wire/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/wire/okio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PipeSource"
.end annotation


# instance fields
.field final a:Lcom/czhj/wire/okio/Timeout;

.field final synthetic b:Lcom/czhj/wire/okio/Pipe;


# direct methods
.method public constructor <init>(Lcom/czhj/wire/okio/Pipe;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/wire/okio/Pipe$PipeSource;->b:Lcom/czhj/wire/okio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/czhj/wire/okio/Timeout;

    invoke-direct {p1}, Lcom/czhj/wire/okio/Timeout;-><init>()V

    iput-object p1, p0, Lcom/czhj/wire/okio/Pipe$PipeSource;->a:Lcom/czhj/wire/okio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe$PipeSource;->b:Lcom/czhj/wire/okio/Pipe;

    iget-object v0, v0, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSource;->b:Lcom/czhj/wire/okio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/czhj/wire/okio/Pipe;->d:Z

    iget-object v1, v1, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read(Lcom/czhj/wire/okio/Buffer;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe$PipeSource;->b:Lcom/czhj/wire/okio/Pipe;

    iget-object v0, v0, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSource;->b:Lcom/czhj/wire/okio/Pipe;

    iget-boolean v1, v1, Lcom/czhj/wire/okio/Pipe;->d:Z

    if-nez v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSource;->b:Lcom/czhj/wire/okio/Pipe;

    iget-object v1, v1, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v1}, Lcom/czhj/wire/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSource;->b:Lcom/czhj/wire/okio/Pipe;

    iget-boolean v2, v1, Lcom/czhj/wire/okio/Pipe;->c:Z

    if-eqz v2, :cond_0

    const-wide/16 p1, -0x1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/czhj/wire/okio/Pipe$PipeSource;->a:Lcom/czhj/wire/okio/Timeout;

    iget-object v1, v1, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v2, v1}, Lcom/czhj/wire/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe$PipeSource;->b:Lcom/czhj/wire/okio/Pipe;

    iget-object v1, v1, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/czhj/wire/okio/Buffer;->read(Lcom/czhj/wire/okio/Buffer;J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/czhj/wire/okio/Pipe$PipeSource;->b:Lcom/czhj/wire/okio/Pipe;

    iget-object p3, p3, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public timeout()Lcom/czhj/wire/okio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe$PipeSource;->a:Lcom/czhj/wire/okio/Timeout;

    return-object v0
.end method

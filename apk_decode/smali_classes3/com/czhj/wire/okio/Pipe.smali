.class public final Lcom/czhj/wire/okio/Pipe;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/wire/okio/Pipe$PipeSource;,
        Lcom/czhj/wire/okio/Pipe$PipeSink;
    }
.end annotation


# instance fields
.field final a:J

.field final b:Lcom/czhj/wire/okio/Buffer;

.field c:Z

.field d:Z

.field private final e:Lcom/czhj/wire/okio/Sink;

.field private final f:Lcom/czhj/wire/okio/Source;

.field private g:Lcom/czhj/wire/okio/Sink;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/czhj/wire/okio/Buffer;

    invoke-direct {v0}, Lcom/czhj/wire/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    new-instance v0, Lcom/czhj/wire/okio/Pipe$PipeSink;

    invoke-direct {v0, p0}, Lcom/czhj/wire/okio/Pipe$PipeSink;-><init>(Lcom/czhj/wire/okio/Pipe;)V

    iput-object v0, p0, Lcom/czhj/wire/okio/Pipe;->e:Lcom/czhj/wire/okio/Sink;

    new-instance v0, Lcom/czhj/wire/okio/Pipe$PipeSource;

    invoke-direct {v0, p0}, Lcom/czhj/wire/okio/Pipe$PipeSource;-><init>(Lcom/czhj/wire/okio/Pipe;)V

    iput-object v0, p0, Lcom/czhj/wire/okio/Pipe;->f:Lcom/czhj/wire/okio/Source;

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/czhj/wire/okio/Pipe;->a:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic a(Lcom/czhj/wire/okio/Pipe;)Lcom/czhj/wire/okio/Sink;
    .locals 0

    iget-object p0, p0, Lcom/czhj/wire/okio/Pipe;->g:Lcom/czhj/wire/okio/Sink;

    return-object p0
.end method


# virtual methods
.method public fold(Lcom/czhj/wire/okio/Sink;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe;->g:Lcom/czhj/wire/okio/Sink;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v1}, Lcom/czhj/wire/okio/Buffer;->exhausted()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/czhj/wire/okio/Pipe;->d:Z

    iput-object p1, p0, Lcom/czhj/wire/okio/Pipe;->g:Lcom/czhj/wire/okio/Sink;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/czhj/wire/okio/Pipe;->c:Z

    new-instance v3, Lcom/czhj/wire/okio/Buffer;

    invoke-direct {v3}, Lcom/czhj/wire/okio/Buffer;-><init>()V

    iget-object v4, p0, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    iget-wide v5, v4, Lcom/czhj/wire/okio/Buffer;->c:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/czhj/wire/okio/Buffer;->write(Lcom/czhj/wire/okio/Buffer;J)V

    iget-object v4, p0, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v4, v3, Lcom/czhj/wire/okio/Buffer;->c:J

    invoke-interface {p1, v3, v4, v5}, Lcom/czhj/wire/okio/Sink;->write(Lcom/czhj/wire/okio/Buffer;J)V

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/czhj/wire/okio/Sink;->close()V

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/czhj/wire/okio/Sink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    monitor-enter v1

    :try_start_2
    iput-boolean v2, p0, Lcom/czhj/wire/okio/Pipe;->d:Z

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe;->b:Lcom/czhj/wire/okio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_2
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "sink already folded"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final sink()Lcom/czhj/wire/okio/Sink;
    .locals 1

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe;->e:Lcom/czhj/wire/okio/Sink;

    return-object v0
.end method

.method public final source()Lcom/czhj/wire/okio/Source;
    .locals 1

    iget-object v0, p0, Lcom/czhj/wire/okio/Pipe;->f:Lcom/czhj/wire/okio/Source;

    return-object v0
.end method

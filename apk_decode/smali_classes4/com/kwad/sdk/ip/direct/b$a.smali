.class final Lcom/kwad/sdk/ip/direct/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/ip/direct/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field bhh:Ljava/nio/channels/Selector;

.field bhi:Ljava/util/LinkedList;

.field volatile bhj:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhi:Ljava/util/LinkedList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhj:Z

    .line 13
    .line 14
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhh:Ljava/nio/channels/Selector;

    .line 19
    .line 20
    const-string v0, "Connector"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private Rw()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhi:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhi:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhi:Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/kwad/sdk/ip/direct/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    :try_start_1
    iget-object v2, v1, Lcom/kwad/sdk/ip/direct/b$b;->bhn:Ljava/nio/channels/SocketChannel;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhh:Ljava/nio/channels/Selector;

    .line 23
    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    invoke-virtual {v2, v3, v4, v1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v2

    .line 31
    :try_start_2
    iget-object v3, v1, Lcom/kwad/sdk/ip/direct/b$b;->bhn:Ljava/nio/channels/SocketChannel;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 34
    .line 35
    .line 36
    iput-object v2, v1, Lcom/kwad/sdk/ip/direct/b$b;->bho:Ljava/lang/Throwable;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    throw v1
.end method

.method private Rx()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhh:Ljava/nio/channels/Selector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/kwad/sdk/ip/direct/b$b;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/nio/channels/SocketChannel;

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    iput-wide v4, v2, Lcom/kwad/sdk/ip/direct/b$b;->bhs:J

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    invoke-static {v3}, Lcom/kwad/sdk/utils/by;->c(Ljava/io/Closeable;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, v2, Lcom/kwad/sdk/ip/direct/b$b;->bho:Ljava/lang/Throwable;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/ip/direct/b$b;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 7
    .line 8
    .line 9
    iget-object v1, p1, Lcom/kwad/sdk/ip/direct/b$b;->bhm:Ljava/net/InetSocketAddress;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput-object v0, p1, Lcom/kwad/sdk/ip/direct/b$b;->bhn:Ljava/nio/channels/SocketChannel;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iput-wide v2, p1, Lcom/kwad/sdk/ip/direct/b$b;->bhr:J

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iput-wide v2, p1, Lcom/kwad/sdk/ip/direct/b$b;->bhs:J

    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->c(Ljava/io/Closeable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhi:Ljava/util/LinkedList;

    .line 34
    .line 35
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    iget-object v2, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhi:Ljava/util/LinkedList;

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 42
    :try_start_3
    iget-object v1, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhh:Ljava/nio/channels/Selector;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 47
    .line 48
    .line 49
    :catchall_1
    :cond_1
    :goto_0
    :try_start_5
    invoke-static {}, Lcom/kwad/sdk/ip/direct/b;->Ak()Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Lcom/kwad/sdk/ip/direct/b$a$1;

    .line 54
    .line 55
    invoke-direct {v2, p0, v0}, Lcom/kwad/sdk/ip/direct/b$a$1;-><init>(Lcom/kwad/sdk/ip/direct/b$a;Ljava/nio/channels/SocketChannel;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    iget-wide v3, p1, Lcom/kwad/sdk/ip/direct/b$b;->bhq:J

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :catchall_2
    move-exception v2

    .line 65
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 66
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 67
    :catchall_3
    move-exception v1

    .line 68
    const/4 v0, 0x0

    .line 69
    :goto_2
    :try_start_8
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->c(Ljava/io/Closeable;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p1, Lcom/kwad/sdk/ip/direct/b$b;->bho:Ljava/lang/Throwable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 73
    .line 74
    :try_start_9
    invoke-static {}, Lcom/kwad/sdk/ip/direct/b;->Ak()Landroid/os/Handler;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v2, Lcom/kwad/sdk/ip/direct/b$a$1;

    .line 79
    .line 80
    invoke-direct {v2, p0, v0}, Lcom/kwad/sdk/ip/direct/b$a$1;-><init>(Lcom/kwad/sdk/ip/direct/b$a;Ljava/nio/channels/SocketChannel;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_4
    :goto_3
    return-void

    .line 85
    :catchall_5
    move-exception v1

    .line 86
    :try_start_a
    invoke-static {}, Lcom/kwad/sdk/ip/direct/b;->Ak()Landroid/os/Handler;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    new-instance v3, Lcom/kwad/sdk/ip/direct/b$a$1;

    .line 91
    .line 92
    invoke-direct {v3, p0, v0}, Lcom/kwad/sdk/ip/direct/b$a$1;-><init>(Lcom/kwad/sdk/ip/direct/b$a;Ljava/nio/channels/SocketChannel;)V

    .line 93
    .line 94
    .line 95
    iget-wide v4, p1, Lcom/kwad/sdk/ip/direct/b$b;->bhq:J

    .line 96
    .line 97
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 98
    .line 99
    .line 100
    :catchall_6
    throw v1
.end method

.method public final run()V
    .locals 1

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhh:Ljava/nio/channels/Selector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kwad/sdk/ip/direct/b$a;->Rx()V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_2

    .line 15
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/kwad/sdk/ip/direct/b$a;->Rw()V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhj:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhh:Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    :catch_0
    :cond_2
    return-void

    .line 30
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    goto :goto_0
.end method

.method public final shutdown()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhj:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/sdk/ip/direct/b$a;->bhh:Ljava/nio/channels/Selector;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :catchall_0
    :cond_0
    return-void
.end method

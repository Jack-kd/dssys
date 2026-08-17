.class Lcom/octopus/ad/internal/d/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/d/o$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/octopus/ad/internal/d/r;

.field private final b:Lcom/octopus/ad/internal/d/a;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile f:Ljava/lang/Thread;

.field private volatile g:Z

.field private volatile h:I


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/d/r;Lcom/octopus/ad/internal/d/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/octopus/ad/internal/d/o;->c:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/octopus/ad/internal/d/o;->d:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/octopus/ad/internal/d/o;->h:I

    .line 20
    .line 21
    invoke-static {p1}, Lcom/octopus/ad/internal/d/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/octopus/ad/internal/d/r;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/octopus/ad/internal/d/o;->a:Lcom/octopus/ad/internal/d/r;

    .line 28
    .line 29
    invoke-static {p2}, Lcom/octopus/ad/internal/d/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/octopus/ad/internal/d/a;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/octopus/ad/internal/d/o;->b:Lcom/octopus/ad/internal/d/a;

    .line 36
    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/octopus/ad/internal/d/o;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/d/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/o;->e()V

    return-void
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/d/o;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/d/o;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    new-instance v1, Lcom/octopus/ad/internal/d/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " times"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/octopus/ad/internal/d/p;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b(JJ)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/octopus/ad/internal/d/o;->a(JJ)V

    .line 5
    iget-object p1, p0, Lcom/octopus/ad/internal/d/o;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/octopus/ad/internal/d/o;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private declared-synchronized c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/o;->f:Ljava/lang/Thread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/d/o;->f:Ljava/lang/Thread;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-boolean v1, p0, Lcom/octopus/ad/internal/d/o;->g:Z

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/octopus/ad/internal/d/o;->b:Lcom/octopus/ad/internal/d/a;

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/octopus/ad/internal/d/a;->d()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Ljava/lang/Thread;

    .line 36
    .line 37
    new-instance v1, Lcom/octopus/ad/internal/d/o$a;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, p0, v2}, Lcom/octopus/ad/internal/d/o$a;-><init>(Lcom/octopus/ad/internal/d/o;Lcom/octopus/ad/internal/d/o$1;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v3, "Source reader for "

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/octopus/ad/internal/d/o;->a:Lcom/octopus/ad/internal/d/r;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/octopus/ad/internal/d/o;->f:Ljava/lang/Thread;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/octopus/ad/internal/d/o;->f:Ljava/lang/Thread;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :cond_1
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw v0
.end method

.method private d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/d/o;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/internal/d/o;->c:Ljava/lang/Object;

    .line 5
    .line 6
    const-wide/16 v2, 0x3e8

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    new-instance v2, Lcom/octopus/ad/internal/d/p;

    .line 17
    .line 18
    const-string v3, "Waiting source data is interrupted!"

    .line 19
    .line 20
    invoke-direct {v2, v3, v1}, Lcom/octopus/ad/internal/d/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v2

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v1
.end method

.method private e()V
    .locals 8

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/octopus/ad/internal/d/o;->b:Lcom/octopus/ad/internal/d/a;

    .line 6
    .line 7
    invoke-interface {v4}, Lcom/octopus/ad/internal/d/a;->a()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-object v4, p0, Lcom/octopus/ad/internal/d/o;->a:Lcom/octopus/ad/internal/d/r;

    .line 12
    .line 13
    invoke-interface {v4, v2, v3}, Lcom/octopus/ad/internal/d/r;->a(J)V

    .line 14
    .line 15
    .line 16
    iget-object v4, p0, Lcom/octopus/ad/internal/d/o;->a:Lcom/octopus/ad/internal/d/r;

    .line 17
    .line 18
    invoke-interface {v4}, Lcom/octopus/ad/internal/d/r;->a()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    const/16 v4, 0x2000

    .line 23
    .line 24
    new-array v4, v4, [B

    .line 25
    .line 26
    :goto_0
    iget-object v5, p0, Lcom/octopus/ad/internal/d/o;->a:Lcom/octopus/ad/internal/d/r;

    .line 27
    .line 28
    invoke-interface {v5, v4}, Lcom/octopus/ad/internal/d/r;->a([B)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, -0x1

    .line 33
    if-eq v5, v6, :cond_1

    .line 34
    .line 35
    iget-object v6, p0, Lcom/octopus/ad/internal/d/o;->d:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/o;->h()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :goto_1
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/o;->i()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/octopus/ad/internal/d/o;->b(JJ)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v4

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/octopus/ad/internal/d/o;->b:Lcom/octopus/ad/internal/d/a;

    .line 55
    .line 56
    invoke-interface {v7, v4, v5}, Lcom/octopus/ad/internal/d/a;->a([BI)V

    .line 57
    .line 58
    .line 59
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    int-to-long v5, v5

    .line 61
    add-long/2addr v2, v5

    .line 62
    :try_start_3
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/octopus/ad/internal/d/o;->b(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_1
    move-exception v4

    .line 67
    goto :goto_3

    .line 68
    :goto_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    :try_start_5
    throw v4

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/o;->g()V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/o;->f()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :goto_3
    :try_start_6
    iget-object v5, p0, Lcom/octopus/ad/internal/d/o;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v4}, Lcom/octopus/ad/internal/d/o;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_2
    move-exception v4

    .line 87
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/o;->i()V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/octopus/ad/internal/d/o;->b(JJ)V

    .line 91
    .line 92
    .line 93
    throw v4
.end method

.method private f()V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    iput v0, p0, Lcom/octopus/ad/internal/d/o;->h:I

    .line 4
    .line 5
    iget v0, p0, Lcom/octopus/ad/internal/d/o;->h:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/d/o;->a(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/d/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/o;->h()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/octopus/ad/internal/d/o;->b:Lcom/octopus/ad/internal/d/a;

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/octopus/ad/internal/d/a;->a()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-object v3, p0, Lcom/octopus/ad/internal/d/o;->a:Lcom/octopus/ad/internal/d/r;

    .line 17
    .line 18
    invoke-interface {v3}, Lcom/octopus/ad/internal/d/r;->a()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    cmp-long v1, v1, v3

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/octopus/ad/internal/d/o;->b:Lcom/octopus/ad/internal/d/a;

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/octopus/ad/internal/d/a;->c()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v1
.end method

.method private h()Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/octopus/ad/internal/d/o;->g:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method private i()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/o;->a:Lcom/octopus/ad/internal/d/r;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/octopus/ad/internal/d/r;->b()V
    :try_end_0
    .catch Lcom/octopus/ad/internal/d/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Lcom/octopus/ad/internal/d/p;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "Error closing source "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/octopus/ad/internal/d/o;->a:Lcom/octopus/ad/internal/d/r;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2, v0}, Lcom/octopus/ad/internal/d/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/octopus/ad/internal/d/o;->a(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public a([BJI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/octopus/ad/internal/d/q;->a([BJI)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/o;->b:Lcom/octopus/ad/internal/d/a;

    invoke-interface {v0}, Lcom/octopus/ad/internal/d/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/d/o;->b:Lcom/octopus/ad/internal/d/a;

    invoke-interface {v0}, Lcom/octopus/ad/internal/d/a;->a()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/octopus/ad/internal/d/o;->g:Z

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/o;->c()V

    .line 6
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/o;->d()V

    .line 7
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/o;->b()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/o;->b:Lcom/octopus/ad/internal/d/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/octopus/ad/internal/d/a;->a([BJI)I

    move-result p1

    .line 9
    iget p2, p0, Lcom/octopus/ad/internal/d/o;->h:I

    invoke-virtual {p0, p2}, Lcom/octopus/ad/internal/d/o;->a(I)V

    .line 10
    iget-object p2, p0, Lcom/octopus/ad/internal/d/o;->b:Lcom/octopus/ad/internal/d/a;

    invoke-interface {p2}, Lcom/octopus/ad/internal/d/a;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/octopus/ad/internal/d/o;->h:I

    const/16 p3, 0x64

    if-eq p2, p3, :cond_1

    .line 11
    iput p3, p0, Lcom/octopus/ad/internal/d/o;->h:I

    .line 12
    invoke-virtual {p0, p3}, Lcom/octopus/ad/internal/d/o;->a(I)V

    :cond_1
    return p1
.end method

.method public a()V
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/octopus/ad/internal/d/o;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/octopus/ad/internal/c/f;->s:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutdown proxy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/octopus/ad/internal/d/o;->a:Lcom/octopus/ad/internal/d/r;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 15
    :try_start_1
    iput-boolean v1, p0, Lcom/octopus/ad/internal/d/o;->g:Z

    .line 16
    iget-object v1, p0, Lcom/octopus/ad/internal/d/o;->f:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/octopus/ad/internal/d/o;->f:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/octopus/ad/internal/d/o;->b:Lcom/octopus/ad/internal/d/a;

    invoke-interface {v1}, Lcom/octopus/ad/internal/d/a;->b()V
    :try_end_1
    .catch Lcom/octopus/ad/internal/d/p; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 19
    :goto_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/octopus/ad/internal/d/o;->a(Ljava/lang/Throwable;)V

    .line 20
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 21
    :goto_0
    iget p2, p0, Lcom/octopus/ad/internal/d/o;->h:I

    if-eq p1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-ltz v0, :cond_2

    if-eqz p2, :cond_2

    .line 22
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/d/o;->a(I)V

    .line 23
    :cond_2
    iput p1, p0, Lcom/octopus/ad/internal/d/o;->h:I

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 24
    instance-of v0, p1, Lcom/octopus/ad/internal/d/l;

    if-eqz v0, :cond_0

    .line 25
    sget-object p1, Lcom/octopus/ad/internal/c/f;->s:Ljava/lang/String;

    const-string v0, "ProxyCache is interrupted"

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/c/f;->s:Ljava/lang/String;

    const-string v1, "ProxyCache error"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

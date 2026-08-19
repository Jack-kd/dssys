.class abstract Lcom/fl/saas/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/y0$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/fl/saas/V0;

.field private final b:Lcom/fl/saas/p;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile f:Ljava/lang/Thread;

.field private volatile g:Z

.field private volatile h:I


# direct methods
.method public constructor <init>(Lcom/fl/saas/V0;Lcom/fl/saas/p;)V
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
    iput-object v0, p0, Lcom/fl/saas/y0;->c:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/fl/saas/y0;->d:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/fl/saas/y0;->h:I

    .line 20
    .line 21
    invoke-static {p1}, Lcom/fl/saas/w0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/fl/saas/V0;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/fl/saas/y0;->a:Lcom/fl/saas/V0;

    .line 28
    .line 29
    invoke-static {p2}, Lcom/fl/saas/w0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/fl/saas/p;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/fl/saas/y0;->b:Lcom/fl/saas/p;

    .line 36
    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/fl/saas/y0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    return-void
.end method

.method private a()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/fl/saas/y0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/fl/saas/y0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v1, Lcom/fl/saas/z0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " times"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/fl/saas/z0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(JJ)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fl/saas/y0;->b(JJ)V

    iget-object p1, p0, Lcom/fl/saas/y0;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/fl/saas/y0;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public static synthetic a(Lcom/fl/saas/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/y0;->e()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/y0;->a:Lcom/fl/saas/V0;

    invoke-interface {v0}, Lcom/fl/saas/V0;->close()V
    :try_end_0
    .catch Lcom/fl/saas/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/fl/saas/z0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fl/saas/y0;->a:Lcom/fl/saas/V0;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/fl/saas/z0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/fl/saas/y0;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c()Z
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
    iget-boolean v0, p0, Lcom/fl/saas/y0;->g:Z

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

.method private d()V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    iput v0, p0, Lcom/fl/saas/y0;->h:I

    .line 4
    .line 5
    iget v0, p0, Lcom/fl/saas/y0;->h:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/fl/saas/y0;->a(I)V

    .line 8
    .line 9
    .line 10
    return-void
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
    iget-object v4, p0, Lcom/fl/saas/y0;->b:Lcom/fl/saas/p;

    .line 6
    .line 7
    invoke-interface {v4}, Lcom/fl/saas/p;->b()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-object v4, p0, Lcom/fl/saas/y0;->a:Lcom/fl/saas/V0;

    .line 12
    .line 13
    invoke-interface {v4, v2, v3}, Lcom/fl/saas/V0;->a(J)V

    .line 14
    .line 15
    .line 16
    iget-object v4, p0, Lcom/fl/saas/y0;->a:Lcom/fl/saas/V0;

    .line 17
    .line 18
    invoke-interface {v4}, Lcom/fl/saas/V0;->a()J

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
    iget-object v5, p0, Lcom/fl/saas/y0;->a:Lcom/fl/saas/V0;

    .line 27
    .line 28
    invoke-interface {v5, v4}, Lcom/fl/saas/V0;->a([B)I

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
    iget-object v6, p0, Lcom/fl/saas/y0;->d:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-direct {p0}, Lcom/fl/saas/y0;->c()Z

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
    invoke-direct {p0}, Lcom/fl/saas/y0;->b()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/fl/saas/y0;->a(JJ)V

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
    iget-object v7, p0, Lcom/fl/saas/y0;->b:Lcom/fl/saas/p;

    .line 55
    .line 56
    invoke-interface {v7, v4, v5}, Lcom/fl/saas/p;->a([BI)V

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
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/fl/saas/y0;->a(JJ)V
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
    invoke-direct {p0}, Lcom/fl/saas/y0;->h()V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/fl/saas/y0;->d()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :goto_3
    :try_start_6
    iget-object v5, p0, Lcom/fl/saas/y0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v4}, Lcom/fl/saas/y0;->a(Ljava/lang/Throwable;)V
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
    invoke-direct {p0}, Lcom/fl/saas/y0;->b()V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/fl/saas/y0;->a(JJ)V

    .line 91
    .line 92
    .line 93
    throw v4
.end method

.method private declared-synchronized f()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/y0;->f:Ljava/lang/Thread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fl/saas/y0;->f:Ljava/lang/Thread;

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
    iget-boolean v1, p0, Lcom/fl/saas/y0;->g:Z

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/fl/saas/y0;->b:Lcom/fl/saas/p;

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/fl/saas/p;->c()Z

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
    new-instance v1, Lcom/fl/saas/y0$b;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, p0, v2}, Lcom/fl/saas/y0$b;-><init>(Lcom/fl/saas/y0;Lcom/fl/saas/y0$a;)V

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
    iget-object v3, p0, Lcom/fl/saas/y0;->a:Lcom/fl/saas/V0;

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
    iput-object v0, p0, Lcom/fl/saas/y0;->f:Ljava/lang/Thread;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/fl/saas/y0;->f:Ljava/lang/Thread;

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

.method private h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fl/saas/y0;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/fl/saas/y0;->c()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/fl/saas/y0;->b:Lcom/fl/saas/p;

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/fl/saas/p;->b()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-object v3, p0, Lcom/fl/saas/y0;->a:Lcom/fl/saas/V0;

    .line 17
    .line 18
    invoke-interface {v3}, Lcom/fl/saas/V0;->a()J

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
    iget-object v1, p0, Lcom/fl/saas/y0;->b:Lcom/fl/saas/p;

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/fl/saas/p;->a()V

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

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fl/saas/y0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/y0;->c:Ljava/lang/Object;

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
    new-instance v2, Lcom/fl/saas/z0;

    .line 17
    .line 18
    const-string v3, "Waiting source data is interrupted!"

    .line 19
    .line 20
    invoke-direct {v2, v3, v1}, Lcom/fl/saas/z0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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


# virtual methods
.method public a([BJI)I
    .locals 4

    .line 5
    invoke-static {p1, p2, p3, p4}, Lcom/fl/saas/A0;->a([BJI)V

    :goto_0
    iget-object v0, p0, Lcom/fl/saas/y0;->b:Lcom/fl/saas/p;

    invoke-interface {v0}, Lcom/fl/saas/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/y0;->b:Lcom/fl/saas/p;

    invoke-interface {v0}, Lcom/fl/saas/p;->b()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/fl/saas/y0;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fl/saas/y0;->f()V

    invoke-direct {p0}, Lcom/fl/saas/y0;->i()V

    invoke-direct {p0}, Lcom/fl/saas/y0;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/y0;->b:Lcom/fl/saas/p;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fl/saas/p;->a([BJI)I

    move-result p1

    iget-object p2, p0, Lcom/fl/saas/y0;->b:Lcom/fl/saas/p;

    invoke-interface {p2}, Lcom/fl/saas/p;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/fl/saas/y0;->h:I

    const/16 p3, 0x64

    if-eq p2, p3, :cond_1

    iput p3, p0, Lcom/fl/saas/y0;->h:I

    invoke-virtual {p0, p3}, Lcom/fl/saas/y0;->a(I)V

    :cond_1
    return p1
.end method

.method public abstract a(I)V
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    instance-of v0, p1, Lcom/fl/saas/b0;

    if-eqz v0, :cond_0

    const-string p1, "ProxyCache is interrupted"

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProxyCache error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b(JJ)V
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

    .line 2
    :goto_0
    iget p2, p0, Lcom/fl/saas/y0;->h:I

    if-eq p1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-ltz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/fl/saas/y0;->a(I)V

    :cond_2
    iput p1, p0, Lcom/fl/saas/y0;->h:I

    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/y0;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "Shutdown proxy for "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/fl/saas/y0;->a:Lcom/fl/saas/V0;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :try_start_1
    iput-boolean v1, p0, Lcom/fl/saas/y0;->g:Z

    .line 28
    .line 29
    iget-object v1, p0, Lcom/fl/saas/y0;->f:Ljava/lang/Thread;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/fl/saas/y0;->f:Ljava/lang/Thread;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_3

    .line 41
    :catch_0
    move-exception v1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fl/saas/y0;->b:Lcom/fl/saas/p;

    .line 44
    .line 45
    invoke-interface {v1}, Lcom/fl/saas/p;->close()V
    :try_end_1
    .catch Lcom/fl/saas/z0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/fl/saas/y0;->a(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw v1
.end method

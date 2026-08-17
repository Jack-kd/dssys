.class final Lcom/fl/saas/W;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/W$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/fl/saas/U;

.field private final d:Ljava/util/List;

.field private final e:Lcom/fl/saas/q;

.field private final f:Lcom/fl/saas/y;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fl/saas/y;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/fl/saas/W;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/fl/saas/W;->d:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/fl/saas/w0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/fl/saas/W;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/fl/saas/w0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/fl/saas/y;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/fl/saas/W;->f:Lcom/fl/saas/y;

    .line 34
    .line 35
    new-instance p2, Lcom/fl/saas/W$a;

    .line 36
    .line 37
    invoke-direct {p2, p1, v0}, Lcom/fl/saas/W$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lcom/fl/saas/W;->e:Lcom/fl/saas/q;

    .line 41
    .line 42
    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/W;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/W;->c:Lcom/fl/saas/U;

    invoke-virtual {v0}, Lcom/fl/saas/y0;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/W;->c:Lcom/fl/saas/U;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()Lcom/fl/saas/U;
    .locals 4

    .line 1
    new-instance v0, Lcom/fl/saas/X;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fl/saas/W;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fl/saas/W;->f:Lcom/fl/saas/y;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/fl/saas/y;->d:Lcom/fl/saas/X0;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/fl/saas/y;->e:Lcom/fl/saas/Q;

    .line 10
    .line 11
    invoke-direct {v0, v1, v3, v2}, Lcom/fl/saas/X;-><init>(Ljava/lang/String;Lcom/fl/saas/X0;Lcom/fl/saas/Q;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/fl/saas/L;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/fl/saas/W;->f:Lcom/fl/saas/y;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/fl/saas/W;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Lcom/fl/saas/y;->a(Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/fl/saas/W;->f:Lcom/fl/saas/y;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/fl/saas/y;->c:Lcom/fl/saas/D;

    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Lcom/fl/saas/L;-><init>(Ljava/io/File;Lcom/fl/saas/D;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/fl/saas/U;

    .line 32
    .line 33
    invoke-direct {v2, v0, v1}, Lcom/fl/saas/U;-><init>(Lcom/fl/saas/X;Lcom/fl/saas/L;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/fl/saas/W;->e:Lcom/fl/saas/q;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lcom/fl/saas/U;->a(Lcom/fl/saas/q;)V

    .line 39
    .line 40
    .line 41
    return-object v2
.end method

.method private declared-synchronized d()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/W;->c:Lcom/fl/saas/U;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/fl/saas/W;->c()Lcom/fl/saas/U;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/W;->c:Lcom/fl/saas/U;

    .line 14
    .line 15
    :goto_0
    iput-object v0, p0, Lcom/fl/saas/W;->c:Lcom/fl/saas/U;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method


# virtual methods
.method public a(Lcom/fl/saas/P;Ljava/net/Socket;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/fl/saas/W;->d()V

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/W;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/fl/saas/W;->c:Lcom/fl/saas/U;

    invoke-virtual {v0, p1, p2}, Lcom/fl/saas/U;->a(Lcom/fl/saas/P;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/fl/saas/W;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/fl/saas/W;->a()V

    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/W;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

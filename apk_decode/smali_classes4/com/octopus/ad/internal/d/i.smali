.class final Lcom/octopus/ad/internal/d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/d/i$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/octopus/ad/internal/d/g;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/octopus/ad/internal/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/octopus/ad/internal/d/b;

.field private final f:Lcom/octopus/ad/internal/d/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/octopus/ad/internal/d/c;)V
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
    iput-object v0, p0, Lcom/octopus/ad/internal/d/i;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/octopus/ad/internal/d/i;->d:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/octopus/ad/internal/d/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/octopus/ad/internal/d/i;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/octopus/ad/internal/d/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/octopus/ad/internal/d/c;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/octopus/ad/internal/d/i;->f:Lcom/octopus/ad/internal/d/c;

    .line 34
    .line 35
    new-instance p2, Lcom/octopus/ad/internal/d/i$a;

    .line 36
    .line 37
    invoke-direct {p2, p1, v0}, Lcom/octopus/ad/internal/d/i$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lcom/octopus/ad/internal/d/i;->e:Lcom/octopus/ad/internal/d/b;

    .line 41
    .line 42
    return-void
.end method

.method private declared-synchronized b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/i;->c:Lcom/octopus/ad/internal/d/g;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/octopus/ad/internal/d/i;->d()Lcom/octopus/ad/internal/d/g;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/i;->c:Lcom/octopus/ad/internal/d/g;

    :goto_0
    iput-object v0, p0, Lcom/octopus/ad/internal/d/i;->c:Lcom/octopus/ad/internal/d/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/i;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/octopus/ad/internal/d/i;->c:Lcom/octopus/ad/internal/d/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d/o;->a()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/octopus/ad/internal/d/i;->c:Lcom/octopus/ad/internal/d/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method private d()Lcom/octopus/ad/internal/d/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/octopus/ad/internal/d/j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/octopus/ad/internal/d/i;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/octopus/ad/internal/d/i;->f:Lcom/octopus/ad/internal/d/c;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/octopus/ad/internal/d/c;->d:Lcom/octopus/ad/internal/d/b/c;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/octopus/ad/internal/d/c;->e:Lcom/octopus/ad/internal/d/f;

    .line 10
    .line 11
    invoke-direct {v0, v1, v3, v2}, Lcom/octopus/ad/internal/d/j;-><init>(Ljava/lang/String;Lcom/octopus/ad/internal/d/b/c;Lcom/octopus/ad/internal/d/f;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/octopus/ad/internal/d/a/b;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/octopus/ad/internal/d/i;->f:Lcom/octopus/ad/internal/d/c;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/octopus/ad/internal/d/i;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Lcom/octopus/ad/internal/d/c;->a(Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/octopus/ad/internal/d/i;->f:Lcom/octopus/ad/internal/d/c;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/octopus/ad/internal/d/c;->c:Lcom/octopus/ad/internal/d/a/a;

    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Lcom/octopus/ad/internal/d/a/b;-><init>(Ljava/io/File;Lcom/octopus/ad/internal/d/a/a;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/octopus/ad/internal/d/g;

    .line 32
    .line 33
    invoke-direct {v2, v0, v1}, Lcom/octopus/ad/internal/d/g;-><init>(Lcom/octopus/ad/internal/d/j;Lcom/octopus/ad/internal/d/a/b;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/octopus/ad/internal/d/i;->e:Lcom/octopus/ad/internal/d/b;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lcom/octopus/ad/internal/d/g;->a(Lcom/octopus/ad/internal/d/b;)V

    .line 39
    .line 40
    .line 41
    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/d/i;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public a(Lcom/octopus/ad/internal/d/b;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/d/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/d/e;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/i;->b()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/i;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/d/i;->c:Lcom/octopus/ad/internal/d/g;

    invoke-virtual {v0, p1, p2}, Lcom/octopus/ad/internal/d/g;->a(Lcom/octopus/ad/internal/d/e;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/i;->c()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/octopus/ad/internal/d/i;->c()V

    .line 5
    throw p1
.end method

.method public b(Lcom/octopus/ad/internal/d/b;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/d/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.class final Lcom/sigmob/sdk/videocache/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/videocache/h$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/lang/String;

.field private volatile e:Lcom/sigmob/sdk/videocache/g;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/videocache/d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/sigmob/sdk/videocache/d;

.field private final h:Lcom/sigmob/sdk/videocache/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/videocache/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/h;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/sigmob/sdk/videocache/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sigmob/sdk/videocache/h;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/sigmob/sdk/videocache/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sigmob/sdk/videocache/e;

    iput-object p2, p0, Lcom/sigmob/sdk/videocache/h;->h:Lcom/sigmob/sdk/videocache/e;

    new-instance p2, Lcom/sigmob/sdk/videocache/h$a;

    invoke-direct {p2, p1, v0}, Lcom/sigmob/sdk/videocache/h$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lcom/sigmob/sdk/videocache/h;->g:Lcom/sigmob/sdk/videocache/d;

    return-void
.end method

.method private declared-synchronized c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->e:Lcom/sigmob/sdk/videocache/g;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/h;->e()Lcom/sigmob/sdk/videocache/g;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->e:Lcom/sigmob/sdk/videocache/g;

    :goto_0
    iput-object v0, p0, Lcom/sigmob/sdk/videocache/h;->e:Lcom/sigmob/sdk/videocache/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->e:Lcom/sigmob/sdk/videocache/g;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videocache/o;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/h;->e:Lcom/sigmob/sdk/videocache/g;
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

.method private e()Lcom/sigmob/sdk/videocache/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/h;->h:Lcom/sigmob/sdk/videocache/e;

    iget-object v2, v1, Lcom/sigmob/sdk/videocache/e;->d:Lcom/sigmob/sdk/videocache/sourcestorage/c;

    iget-object v1, v1, Lcom/sigmob/sdk/videocache/e;->e:Lcom/sigmob/sdk/videocache/headers/b;

    invoke-static {v0, v2, v1}, Lcom/sigmob/sdk/videocache/s;->a(Ljava/lang/String;Lcom/sigmob/sdk/videocache/sourcestorage/c;Lcom/sigmob/sdk/videocache/headers/b;)Lcom/sigmob/sdk/videocache/t;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/videocache/file/b;

    iget-object v2, p0, Lcom/sigmob/sdk/videocache/h;->h:Lcom/sigmob/sdk/videocache/e;

    iget-object v3, p0, Lcom/sigmob/sdk/videocache/h;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/videocache/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/videocache/h;->h:Lcom/sigmob/sdk/videocache/e;

    iget-object v3, v3, Lcom/sigmob/sdk/videocache/e;->c:Lcom/sigmob/sdk/videocache/file/a;

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/videocache/file/b;-><init>(Ljava/io/File;Lcom/sigmob/sdk/videocache/file/a;)V

    new-instance v2, Lcom/sigmob/sdk/videocache/g;

    invoke-direct {v2, v0, v1}, Lcom/sigmob/sdk/videocache/g;-><init>(Lcom/sigmob/sdk/videocache/t;Lcom/sigmob/sdk/videocache/file/b;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->g:Lcom/sigmob/sdk/videocache/d;

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/videocache/g;->a(Lcom/sigmob/sdk/videocache/d;)V

    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->e:Lcom/sigmob/sdk/videocache/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->e:Lcom/sigmob/sdk/videocache/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videocache/g;->a(Lcom/sigmob/sdk/videocache/d;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->e:Lcom/sigmob/sdk/videocache/g;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videocache/o;->a()V

    iput-object v1, p0, Lcom/sigmob/sdk/videocache/h;->e:Lcom/sigmob/sdk/videocache/g;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videocache/d;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videocache/f;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/h;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->e:Lcom/sigmob/sdk/videocache/g;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/videocache/g;->a(Lcom/sigmob/sdk/videocache/f;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/h;->d()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    const-string p2, "processRequest error:"

    invoke-static {p2, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/h;->d()V

    return-void

    :catchall_1
    move-exception p1

    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/h;->d()V

    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public b(Lcom/sigmob/sdk/videocache/d;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/h;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

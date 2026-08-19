.class final Lcom/ubix/ssp/ad/e/b0/h/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/b0/h/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/ubix/ssp/ad/e/b0/h/e;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ubix/ssp/ad/e/b0/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/ubix/ssp/ad/e/b0/h/b;

.field private final f:Lcom/ubix/ssp/ad/e/b0/h/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ubix/ssp/ad/e/b0/h/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/ad/e/b0/h/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->f:Lcom/ubix/ssp/ad/e/b0/h/c;

    new-instance p2, Lcom/ubix/ssp/ad/e/b0/h/g$a;

    invoke-direct {p2, p1, v0}, Lcom/ubix/ssp/ad/e/b0/h/g$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->e:Lcom/ubix/ssp/ad/e/b0/h/b;

    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->c:Lcom/ubix/ssp/ad/e/b0/h/e;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/h/m;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->c:Lcom/ubix/ssp/ad/e/b0/h/e;
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

.method private b()Lcom/ubix/ssp/ad/e/b0/h/e;
    .locals 4

    .line 1
    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/h;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->f:Lcom/ubix/ssp/ad/e/b0/h/c;

    iget-object v3, v2, Lcom/ubix/ssp/ad/e/b0/h/c;->d:Lcom/ubix/ssp/ad/e/b0/h/u/c;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/b0/h/c;->e:Lcom/ubix/ssp/ad/e/b0/h/t/b;

    invoke-direct {v0, v1, v3, v2}, Lcom/ubix/ssp/ad/e/b0/h/h;-><init>(Ljava/lang/String;Lcom/ubix/ssp/ad/e/b0/h/u/c;Lcom/ubix/ssp/ad/e/b0/h/t/b;)V

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/h/s/b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->f:Lcom/ubix/ssp/ad/e/b0/h/c;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ubix/ssp/ad/e/b0/h/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->f:Lcom/ubix/ssp/ad/e/b0/h/c;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/b0/h/c;->c:Lcom/ubix/ssp/ad/e/b0/h/s/a;

    invoke-direct {v1, v2, v3}, Lcom/ubix/ssp/ad/e/b0/h/s/b;-><init>(Ljava/io/File;Lcom/ubix/ssp/ad/e/b0/h/s/a;)V

    new-instance v2, Lcom/ubix/ssp/ad/e/b0/h/e;

    invoke-direct {v2, v0, v1}, Lcom/ubix/ssp/ad/e/b0/h/e;-><init>(Lcom/ubix/ssp/ad/e/b0/h/h;Lcom/ubix/ssp/ad/e/b0/h/s/b;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->e:Lcom/ubix/ssp/ad/e/b0/h/b;

    invoke-virtual {v2, v0}, Lcom/ubix/ssp/ad/e/b0/h/e;->a(Lcom/ubix/ssp/ad/e/b0/h/b;)V

    return-object v2
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->c:Lcom/ubix/ssp/ad/e/b0/h/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/g;->b()Lcom/ubix/ssp/ad/e/b0/h/e;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->c:Lcom/ubix/ssp/ad/e/b0/h/e;

    :goto_0
    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->c:Lcom/ubix/ssp/ad/e/b0/h/e;
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


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/b0/h/b;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add onCacheAvailable"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/b0/h/d;Ljava/net/Socket;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/g;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->c:Lcom/ubix/ssp/ad/e/b0/h/e;

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/e/b0/h/e;->a(Lcom/ubix/ssp/ad/e/b0/h/d;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/g;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/g;->a()V

    throw p1
.end method

.method public b(Lcom/ubix/ssp/ad/e/b0/h/b;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

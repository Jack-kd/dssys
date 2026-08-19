.class public Lcom/sigmob/sdk/downloader/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/a$a;,
        Lcom/sigmob/sdk/downloader/a$c;,
        Lcom/sigmob/sdk/downloader/a$d;,
        Lcom/sigmob/sdk/downloader/a$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "DownloadContext"

.field private static final d:Ljava/util/concurrent/Executor;


# instance fields
.field volatile a:Z

.field final b:Lcom/sigmob/sdk/downloader/b;

.field private final e:[Lcom/sigmob/sdk/downloader/f;

.field private final f:Lcom/sigmob/sdk/downloader/a$d;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "FileDownload Serial"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x1e

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/sigmob/sdk/downloader/a;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>([Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/b;Lcom/sigmob/sdk/downloader/a$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/a;->a:Z

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a;->e:[Lcom/sigmob/sdk/downloader/f;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/a;->b:Lcom/sigmob/sdk/downloader/b;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/a;->f:Lcom/sigmob/sdk/downloader/a$d;

    return-void
.end method

.method public constructor <init>([Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/b;Lcom/sigmob/sdk/downloader/a$d;Landroid/os/Handler;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/downloader/a;-><init>([Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/b;Lcom/sigmob/sdk/downloader/a$d;)V

    iput-object p4, p0, Lcom/sigmob/sdk/downloader/a;->g:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/downloader/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/downloader/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a;->b:Lcom/sigmob/sdk/downloader/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/a;->g:Landroid/os/Handler;

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a;->g:Landroid/os/Handler;

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/downloader/a;->g:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/downloader/a$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/downloader/a$2;-><init>(Lcom/sigmob/sdk/downloader/a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-interface {v0, p0}, Lcom/sigmob/sdk/downloader/b;->a(Lcom/sigmob/sdk/downloader/a;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/downloader/a;)[Lcom/sigmob/sdk/downloader/f;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/a;->e:[Lcom/sigmob/sdk/downloader/f;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/c;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/downloader/a;->a(Lcom/sigmob/sdk/downloader/c;Z)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/c;Z)V
    .locals 6

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadContext"

    invoke-static {v3, v2}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sigmob/sdk/downloader/a;->a:Z

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/a;->b:Lcom/sigmob/sdk/downloader/b;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sigmob/sdk/downloader/core/listener/f$a;

    invoke-direct {v2}, Lcom/sigmob/sdk/downloader/core/listener/f$a;-><init>()V

    invoke-virtual {v2, p1}, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a(Lcom/sigmob/sdk/downloader/c;)Lcom/sigmob/sdk/downloader/core/listener/f$a;

    move-result-object p1

    new-instance v2, Lcom/sigmob/sdk/downloader/a$c;

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/a;->b:Lcom/sigmob/sdk/downloader/b;

    iget-object v5, p0, Lcom/sigmob/sdk/downloader/a;->e:[Lcom/sigmob/sdk/downloader/f;

    array-length v5, v5

    invoke-direct {v2, p0, v4, v5}, Lcom/sigmob/sdk/downloader/a$c;-><init>(Lcom/sigmob/sdk/downloader/a;Lcom/sigmob/sdk/downloader/b;I)V

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a(Lcom/sigmob/sdk/downloader/c;)Lcom/sigmob/sdk/downloader/core/listener/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/listener/f$a;->a()Lcom/sigmob/sdk/downloader/core/listener/f;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/a;->e:[Lcom/sigmob/sdk/downloader/f;

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Lcom/sigmob/sdk/downloader/a$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/sigmob/sdk/downloader/a$1;-><init>(Lcom/sigmob/sdk/downloader/a;Ljava/util/List;Lcom/sigmob/sdk/downloader/c;)V

    invoke-virtual {p0, v4}, Lcom/sigmob/sdk/downloader/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/a;->e:[Lcom/sigmob/sdk/downloader/f;

    invoke-static {v2, p1}, Lcom/sigmob/sdk/downloader/f;->a([Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/c;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start finish "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/sigmob/sdk/downloader/a;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/a;->a:Z

    return v0
.end method

.method public b(Lcom/sigmob/sdk/downloader/c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/downloader/a;->a(Lcom/sigmob/sdk/downloader/c;Z)V

    return-void
.end method

.method public b()[Lcom/sigmob/sdk/downloader/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a;->e:[Lcom/sigmob/sdk/downloader/f;

    return-object v0
.end method

.method public c()Lcom/sigmob/sdk/downloader/a$a;
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/downloader/a$a;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/downloader/a$a;-><init>(Lcom/sigmob/sdk/downloader/a;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/a;->e:[Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a([Lcom/sigmob/sdk/downloader/core/a;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/a;->a:Z

    return-void
.end method

.method public e()Lcom/sigmob/sdk/downloader/a$b;
    .locals 4

    new-instance v0, Lcom/sigmob/sdk/downloader/a$b;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/a;->f:Lcom/sigmob/sdk/downloader/a$d;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/a;->e:[Lcom/sigmob/sdk/downloader/f;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/downloader/a$b;-><init>(Lcom/sigmob/sdk/downloader/a$d;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/a;->b:Lcom/sigmob/sdk/downloader/b;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/a$b;->a(Lcom/sigmob/sdk/downloader/b;)Lcom/sigmob/sdk/downloader/a$b;

    move-result-object v0

    return-object v0
.end method

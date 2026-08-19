.class public Lcom/sigmob/sdk/downloader/core/download/e;
.super Lcom/sigmob/sdk/downloader/core/b;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/downloader/core/b;",
        "Ljava/lang/Comparable<",
        "Lcom/sigmob/sdk/downloader/core/download/e;",
        ">;"
    }
.end annotation


# static fields
.field static final b:I = 0x3

.field private static final j:Ljava/util/concurrent/ExecutorService;

.field private static final k:Ljava/lang/String; = "DownloadCall"


# instance fields
.field public final c:Lcom/sigmob/sdk/downloader/f;

.field public final d:Z

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sigmob/sdk/downloader/core/download/f;",
            ">;"
        }
    .end annotation
.end field

.field volatile f:Lcom/sigmob/sdk/downloader/core/download/d;

.field volatile g:Z

.field volatile h:Z

.field volatile i:Ljava/lang/Thread;

.field private final l:Lcom/sigmob/sdk/downloader/core/breakpoint/j;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "FileDownload Block"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/sigmob/sdk/downloader/core/download/e;->j:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Lcom/sigmob/sdk/downloader/f;ZLcom/sigmob/sdk/downloader/core/breakpoint/j;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sigmob/sdk/downloader/core/download/e;-><init>(Lcom/sigmob/sdk/downloader/f;ZLjava/util/ArrayList;Lcom/sigmob/sdk/downloader/core/breakpoint/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/f;ZLjava/util/ArrayList;Lcom/sigmob/sdk/downloader/core/breakpoint/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/f;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/sigmob/sdk/downloader/core/download/f;",
            ">;",
            "Lcom/sigmob/sdk/downloader/core/breakpoint/j;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/downloader/core/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    iput-boolean p2, p0, Lcom/sigmob/sdk/downloader/core/download/e;->d:Z

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/download/e;->e:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sigmob/sdk/downloader/core/download/e;->l:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/downloader/f;ZLcom/sigmob/sdk/downloader/core/breakpoint/j;)Lcom/sigmob/sdk/downloader/core/download/e;
    .locals 1

    .line 4
    new-instance v0, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/sigmob/sdk/downloader/core/download/e;-><init>(Lcom/sigmob/sdk/downloader/f;ZLcom/sigmob/sdk/downloader/core/breakpoint/j;)V

    return-object v0
.end method

.method private a(Lcom/sigmob/sdk/downloader/core/download/d;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    .locals 2

    .line 9
    sget-object v0, Lcom/sigmob/sdk/downloader/core/cause/a;->c:Lcom/sigmob/sdk/downloader/core/cause/a;

    if-eq p2, v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->g:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->h:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->l:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/sigmob/sdk/downloader/core/breakpoint/j;->a(ILcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    sget-object v0, Lcom/sigmob/sdk/downloader/core/cause/a;->a:Lcom/sigmob/sdk/downloader/core/cause/a;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->l:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/j;->g(I)Z

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->f()Lcom/sigmob/sdk/downloader/core/file/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/d;->a()Lcom/sigmob/sdk/downloader/core/file/d;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/downloader/core/file/e;->a(Lcom/sigmob/sdk/downloader/core/file/d;Lcom/sigmob/sdk/downloader/f;)V

    :cond_1
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {p1, v0, p2, p3}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "can\'t recognize cancelled on here"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->l:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/j;->d(I)V

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/downloader/c;->a_(Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/core/download/e;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/e;->f()I

    move-result p1

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/e;->f()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;J)Lcom/sigmob/sdk/downloader/core/download/a;
    .locals 2

    .line 2
    new-instance v0, Lcom/sigmob/sdk/downloader/core/download/a;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sigmob/sdk/downloader/core/download/a;-><init>(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;J)V

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/download/d;
    .locals 3

    .line 3
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->f()Lcom/sigmob/sdk/downloader/core/file/e;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/e;->l:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    invoke-virtual {v0, v1, p1, v2}, Lcom/sigmob/sdk/downloader/core/file/e;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/breakpoint/j;)Lcom/sigmob/sdk/downloader/core/file/d;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/downloader/core/download/d;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/downloader/core/download/d;-><init>(Lcom/sigmob/sdk/downloader/core/file/d;)V

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/download/f;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/core/download/f;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/sigmob/sdk/downloader/core/download/e;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->i:Ljava/lang/Thread;

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->f()Lcom/sigmob/sdk/downloader/core/file/e;

    move-result-object v1

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/download/e;->h()V

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/f;->i()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/f;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-boolean v4, p0, Lcom/sigmob/sdk/downloader/core/download/e;->g:Z

    if-eqz v4, :cond_2

    goto/16 :goto_7

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/download/e;->l:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object v6, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v6}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/download/e;->l:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object v6, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {v4, v6}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/sigmob/sdk/downloader/core/download/e;->c(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v6, p0, Lcom/sigmob/sdk/downloader/core/download/e;->g:Z

    if-eqz v6, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p0, v4}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/download/d;

    move-result-object v6

    iput-object v6, p0, Lcom/sigmob/sdk/downloader/core/download/e;->f:Lcom/sigmob/sdk/downloader/core/download/d;

    invoke-virtual {p0, v4}, Lcom/sigmob/sdk/downloader/core/download/e;->b(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/download/b;

    move-result-object v7

    :try_start_1
    invoke-virtual {v7}, Lcom/sigmob/sdk/downloader/core/download/b;->f()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v8, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v8}, Lcom/sigmob/sdk/downloader/f;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sigmob/sdk/downloader/core/download/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/file/e;->a()Lcom/sigmob/sdk/downloader/core/file/c;

    move-result-object v8

    iget-object v9, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v9}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sigmob/sdk/downloader/core/file/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v8

    iget-object v9, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v7}, Lcom/sigmob/sdk/downloader/core/download/b;->e()J

    move-result-wide v10

    invoke-virtual {v8, v9, v4, v10, v11}, Lcom/sigmob/sdk/downloader/core/download/g;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;J)Z

    :try_start_2
    invoke-virtual {v7}, Lcom/sigmob/sdk/downloader/core/download/b;->c()Z

    move-result v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v9, " "

    const-string v10, "DownloadCall"

    if-eqz v8, :cond_6

    :try_start_3
    invoke-virtual {v7}, Lcom/sigmob/sdk/downloader/core/download/b;->e()J

    move-result-wide v11

    invoke-virtual {p0, v4, v11, v12}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;J)Lcom/sigmob/sdk/downloader/core/download/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sigmob/sdk/downloader/core/download/a;->f()V

    invoke-virtual {v8}, Lcom/sigmob/sdk/downloader/core/download/a;->a()Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "breakpoint invalid: download from beginning because of local check is dirty "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v12}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1, v9}, Lcom/sigmob/sdk/downloader/core/file/e;->a(Lcom/sigmob/sdk/downloader/f;)V

    invoke-virtual {v8}, Lcom/sigmob/sdk/downloader/core/download/a;->b()Lcom/sigmob/sdk/downloader/core/cause/b;

    move-result-object v8

    :goto_1
    invoke-virtual {p0, v4, v7, v8}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/download/b;Lcom/sigmob/sdk/downloader/core/cause/b;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object v7

    iget-object v8, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {v7, v8, v4}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    goto :goto_2

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "breakpoint invalid: download from beginning because of remote check not resumable "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v11}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1, v8}, Lcom/sigmob/sdk/downloader/core/file/e;->a(Lcom/sigmob/sdk/downloader/f;)V

    invoke-virtual {v7}, Lcom/sigmob/sdk/downloader/core/download/b;->b()Lcom/sigmob/sdk/downloader/core/cause/b;

    move-result-object v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v6, v4}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/core/download/d;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    iget-boolean v4, p0, Lcom/sigmob/sdk/downloader/core/download/e;->g:Z

    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v6}, Lcom/sigmob/sdk/downloader/core/download/d;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, v3, 0x1

    const/4 v6, 0x3

    if-ge v3, v6, :cond_8

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/e;->l:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object v6, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v6}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->b(I)V

    move v3, v4

    move v4, v5

    goto :goto_3

    :cond_8
    move v3, v4

    :cond_9
    move v4, v2

    :goto_3
    if-nez v4, :cond_0

    goto :goto_7

    :goto_4
    invoke-virtual {v6, v0}, Lcom/sigmob/sdk/downloader/core/download/d;->c(Ljava/io/IOException;)V

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v6, v0}, Lcom/sigmob/sdk/downloader/core/download/d;->e(Ljava/io/IOException;)V

    goto :goto_7

    :goto_5
    new-instance v1, Lcom/sigmob/sdk/downloader/core/download/d$a;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/downloader/core/download/d$a;-><init>(Ljava/io/IOException;)V

    iput-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->f:Lcom/sigmob/sdk/downloader/core/download/d;

    goto :goto_7

    :cond_a
    :goto_6
    new-instance v0, Lcom/sigmob/sdk/downloader/core/download/d$a;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/downloader/core/download/d$a;-><init>(Ljava/io/IOException;)V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->f:Lcom/sigmob/sdk/downloader/core/download/d;

    :goto_7
    iput-boolean v5, p0, Lcom/sigmob/sdk/downloader/core/download/e;->h:Z

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->f:Lcom/sigmob/sdk/downloader/core/download/d;

    iget-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->g:Z

    if-nez v1, :cond_10

    if-nez v0, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->e()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->f()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->c()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    sget-object v1, Lcom/sigmob/sdk/downloader/core/cause/a;->d:Lcom/sigmob/sdk/downloader/core/cause/a;

    goto :goto_a

    :cond_d
    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->h()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/sigmob/sdk/downloader/core/cause/a;->f:Lcom/sigmob/sdk/downloader/core/cause/a;

    :goto_8
    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->i()Ljava/io/IOException;

    move-result-object v2

    goto :goto_a

    :cond_e
    sget-object v1, Lcom/sigmob/sdk/downloader/core/cause/a;->a:Lcom/sigmob/sdk/downloader/core/cause/a;

    goto :goto_a

    :cond_f
    :goto_9
    sget-object v1, Lcom/sigmob/sdk/downloader/core/cause/a;->b:Lcom/sigmob/sdk/downloader/core/cause/a;

    goto :goto_8

    :goto_a
    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/core/download/d;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    :cond_10
    :goto_b
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/download/b;Lcom/sigmob/sdk/downloader/core/cause/b;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/download/b;->e()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/download/b;->d()Z

    move-result p2

    invoke-static {v0, p1, v1, v2, p2}, Lcom/sigmob/sdk/downloader/core/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;JZ)V

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {p2, v0, p1, p3}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/cause/b;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/download/d;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p2, v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->d()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/sigmob/sdk/downloader/core/c;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lcom/sigmob/sdk/downloader/core/c;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/a;)V

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    iget-object v5, p0, Lcom/sigmob/sdk/downloader/core/download/e;->l:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    invoke-static {v3, v4, p2, p1, v5}, Lcom/sigmob/sdk/downloader/core/download/f;->a(ILcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/download/d;Lcom/sigmob/sdk/downloader/core/breakpoint/j;)Lcom/sigmob/sdk/downloader/core/download/f;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/download/f;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/sigmob/sdk/downloader/core/download/e;->g:Z

    if-eqz p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/d;->a()Lcom/sigmob/sdk/downloader/core/file/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/downloader/core/file/d;->a(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/InterruptedException;)V
    .locals 0

    .line 10
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/download/f;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/downloader/core/download/f;

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/core/download/f;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :catch_0
    :cond_1
    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :try_start_1
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_3
    if-ge v1, v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Ljava/util/concurrent/Future;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_3
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/download/b;
    .locals 2

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/core/download/b;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-direct {v0, v1, p1}, Lcom/sigmob/sdk/downloader/core/download/b;-><init>(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c(Lcom/sigmob/sdk/downloader/core/download/e;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call is finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadCall"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/downloader/f$c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    return-void
.end method

.method public c()Z
    .locals 9

    .line 2
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->h:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    iput-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/download/e;->g:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->b(Lcom/sigmob/sdk/downloader/core/download/e;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->f:Lcom/sigmob/sdk/downloader/core/download/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->l()V

    :cond_2
    iget-object v5, p0, Lcom/sigmob/sdk/downloader/core/download/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v6, v5

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    array-length v6, v5

    :goto_0
    if-ge v2, v6, :cond_6

    aget-object v7, v5, v2

    instance-of v8, v7, Lcom/sigmob/sdk/downloader/core/download/f;

    if-eqz v8, :cond_4

    check-cast v7, Lcom/sigmob/sdk/downloader/core/download/f;

    invoke-virtual {v7}, Lcom/sigmob/sdk/downloader/core/download/f;->b()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/e;->i:Ljava/lang/Thread;

    if-eqz v2, :cond_6

    const-string v2, "DownloadCall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interrupt thread with cancel operation because of chains are not running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v6}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/e;->i:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->a()Lcom/sigmob/sdk/downloader/core/file/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/file/d;->a()V

    :cond_7
    const-string v0, "DownloadCall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel task "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v5}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " consume: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sigmob/sdk/downloader/core/download/e;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/download/e;->a(Lcom/sigmob/sdk/downloader/core/download/e;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->g:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->h:Z

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->G()I

    move-result v0

    return v0
.end method

.method public g()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/e;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/ubix/ssp/ad/e/b0/h/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/b0/h/f$b;,
        Lcom/ubix/ssp/ad/e/b0/h/f$c;,
        Lcom/ubix/ssp/ad/e/b0/h/f$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ubix/ssp/ad/e/b0/h/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/net/ServerSocket;

.field private final e:I

.field private final f:Ljava/lang/Thread;

.field private final g:Lcom/ubix/ssp/ad/e/b0/h/c;

.field private final h:Lcom/ubix/ssp/ad/e/b0/h/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/f$b;

    invoke-direct {v0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f$b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/h/f$b;->a(Lcom/ubix/ssp/ad/e/b0/h/f$b;)Lcom/ubix/ssp/ad/e/b0/h/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;-><init>(Lcom/ubix/ssp/ad/e/b0/h/c;)V

    return-void
.end method

.method private constructor <init>(Lcom/ubix/ssp/ad/e/b0/h/c;)V
    .locals 5

    .line 2
    const-string v0, "127.0.0.1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->a:Ljava/lang/Object;

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/h/f$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/b0/h/f$a;-><init>(Lcom/ubix/ssp/ad/e/b0/h/f;)V

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/b0/h/c;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->g:Lcom/ubix/ssp/ad/e/b0/h/c;

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result p1

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    new-instance v1, Ljava/net/ServerSocket;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->e:I

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/b0/h/i;->a(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ubix/ssp/ad/e/b0/h/f$d;

    invoke-direct {v3, p0, v1}, Lcom/ubix/ssp/ad/e/b0/h/f$d;-><init>(Lcom/ubix/ssp/ad/e/b0/h/f;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->f:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/h/k;

    invoke-direct {v1, v0, p1}, Lcom/ubix/ssp/ad/e/b0/h/k;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->h:Lcom/ubix/ssp/ad/e/b0/h/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error starting local proxy server"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/ubix/ssp/ad/e/b0/h/c;Lcom/ubix/ssp/ad/e/b0/h/f$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;-><init>(Lcom/ubix/ssp/ad/e/b0/h/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v2

    const-string v3, "aHR0cDovLyVzOiVkLyVz"

    invoke-virtual {v2, v3}, Lcom/ubix/ssp/ad/e/a0/n$b;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iget v2, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "127.0.0.1"

    filled-new-array {v3, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/b0/h/f;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/f;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/b0/h/f;Ljava/net/Socket;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->d(Ljava/net/Socket;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->g:Lcom/ubix/ssp/ad/e/b0/h/c;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/h/c;->c:Lcom/ubix/ssp/ad/e/b0/h/s/a;

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/b0/h/s/a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 0

    .line 9
    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 2

    .line 10
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/n;

    const-string v1, "Error closing socket"

    invoke-direct {v0, v1, p1}, Lcom/ubix/ssp/ad/e/b0/h/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/e/b0/h/f;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->g:Lcom/ubix/ssp/ad/e/b0/h/c;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/b0/h/c;->a:Ljava/io/File;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/h/c;->b:Lcom/ubix/ssp/ad/e/b0/h/s/c;

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/b0/h/s/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Ljava/net/Socket;)V
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/n;

    const-string v1, "Error closing socket input stream"

    invoke-direct {v0, v1, p1}, Lcom/ubix/ssp/ad/e/b0/h/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/e/b0/h/f;->a(Ljava/lang/Throwable;)V

    :catch_1
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->h:Lcom/ubix/ssp/ad/e/b0/h/k;

    const/4 v1, 0x3

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/e/b0/h/k;->a(II)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Lcom/ubix/ssp/ad/e/b0/h/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/b0/h/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/h/g;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->g:Lcom/ubix/ssp/ad/e/b0/h/c;

    invoke-direct {v1, p1, v2}, Lcom/ubix/ssp/ad/e/b0/h/g;-><init>(Ljava/lang/String;Lcom/ubix/ssp/ad/e/b0/h/c;)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c()V
    .locals 3

    .line 2
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitForRequest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/ubix/ssp/ad/e/b0/h/f$c;

    invoke-direct {v2, p0, v0}, Lcom/ubix/ssp/ad/e/b0/h/f$c;-><init>(Lcom/ubix/ssp/ad/e/b0/h/f;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    new-instance v1, Lcom/ubix/ssp/ad/e/b0/h/n;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/ubix/ssp/ad/e/b0/h/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/ubix/ssp/ad/e/b0/h/f;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Ljava/net/Socket;)V
    .locals 1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private d(Ljava/net/Socket;)V
    .locals 3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/h/d;->a(Ljava/io/InputStream;)Lcom/ubix/ssp/ad/e/b0/h/d;

    move-result-object v0

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/b0/h/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/b0/h/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->h:Lcom/ubix/ssp/ad/e/b0/h/k;

    invoke-virtual {v2, v1}, Lcom/ubix/ssp/ad/e/b0/h/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->h:Lcom/ubix/ssp/ad/e/b0/h/k;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/b0/h/k;->a(Ljava/net/Socket;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-direct {p0, v1}, Lcom/ubix/ssp/ad/e/b0/h/f;->c(Ljava/lang/String;)Lcom/ubix/ssp/ad/e/b0/h/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/ubix/ssp/ad/e/b0/h/g;->a(Lcom/ubix/ssp/ad/e/b0/h/d;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/ubix/ssp/ad/e/b0/h/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_1
    new-instance v1, Lcom/ubix/ssp/ad/e/b0/h/n;

    const-string v2, "Error processing request"

    invoke-direct {v1, v2, v0}, Lcom/ubix/ssp/ad/e/b0/h/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/ubix/ssp/ad/e/b0/h/f;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->e(Ljava/net/Socket;)V

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->e(Ljava/net/Socket;)V

    throw v0
.end method

.method private e(Ljava/net/Socket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->b(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->c(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->a(Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 2
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->a(Ljava/io/File;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/f;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public a(Lcom/ubix/ssp/ad/e/b0/h/b;)V
    .locals 3

    .line 4
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/ad/e/b0/h/g;

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/e/b0/h/g;->b(Lcom/ubix/ssp/ad/e/b0/h/b;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/ubix/ssp/ad/e/b0/h/b;Ljava/lang/String;)V
    .locals 1

    .line 5
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/h/l;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/ubix/ssp/ad/e/b0/h/f;->c(Ljava/lang/String;)Lcom/ubix/ssp/ad/e/b0/h/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/b0/h/g;->a(Lcom/ubix/ssp/ad/e/b0/h/b;)V
    :try_end_0
    .catch Lcom/ubix/ssp/ad/e/b0/h/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/e/b0/h/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    .line 2
    const-string v0, "Url can\'t be null!"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

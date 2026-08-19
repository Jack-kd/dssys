.class public Lcom/fl/saas/V;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/V$b;,
        Lcom/fl/saas/V$d;,
        Lcom/fl/saas/V$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/net/ServerSocket;

.field private final e:I

.field private final f:Ljava/lang/Thread;

.field private final g:Lcom/fl/saas/y;

.field private final h:Lcom/fl/saas/t0;


# direct methods
.method private constructor <init>(Lcom/fl/saas/y;)V
    .locals 4

    .line 1
    const-string v0, "127.0.0.1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/fl/saas/V;->a:Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/fl/saas/V;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/fl/saas/V;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/fl/saas/w0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/y;

    iput-object p1, p0, Lcom/fl/saas/V;->g:Lcom/fl/saas/y;

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    new-instance v2, Ljava/net/ServerSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v2, p0, Lcom/fl/saas/V;->d:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/fl/saas/V;->e:I

    invoke-static {v0, p1}, Lcom/fl/saas/Z;->a(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/fl/saas/V$d;

    invoke-direct {v3, p0, v1}, Lcom/fl/saas/V$d;-><init>(Lcom/fl/saas/V;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/fl/saas/V;->f:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    new-instance v1, Lcom/fl/saas/t0;

    invoke-direct {v1, v0, p1}, Lcom/fl/saas/t0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/fl/saas/V;->h:Lcom/fl/saas/t0;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Proxy cache server started. Is it alive? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/fl/saas/V;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Lcom/fl/saas/V;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error starting local proxy server"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/fl/saas/y;Lcom/fl/saas/V$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fl/saas/V;-><init>(Lcom/fl/saas/y;)V

    return-void
.end method

.method private a()I
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/fl/saas/V;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/V;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fl/saas/W;

    invoke-virtual {v3}, Lcom/fl/saas/W;->b()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/fl/saas/V;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/fl/saas/A0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "127.0.0.1"

    filled-new-array {v2, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "http://%s:%d/%s"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/fl/saas/V;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/V;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/V;Ljava/net/Socket;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fl/saas/V;->d(Ljava/net/Socket;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/V;->g:Lcom/fl/saas/y;

    iget-object v0, v0, Lcom/fl/saas/y;->c:Lcom/fl/saas/D;

    invoke-interface {v0, p1}, Lcom/fl/saas/D;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 2

    .line 4
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
    new-instance v0, Lcom/fl/saas/z0;

    const-string v1, "Error closing socket"

    invoke-direct {v0, v1, p1}, Lcom/fl/saas/z0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/fl/saas/V;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fl/saas/V;->g:Lcom/fl/saas/y;

    iget-object v1, v0, Lcom/fl/saas/y;->a:Ljava/io/File;

    iget-object v0, v0, Lcom/fl/saas/y;->b:Lcom/fl/saas/N;

    invoke-interface {v0, p1}, Lcom/fl/saas/N;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Ljava/net/Socket;)V
    .locals 2

    .line 1
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

    new-instance v0, Lcom/fl/saas/z0;

    const-string v1, "Error closing socket input stream"

    invoke-direct {v0, v1, p1}, Lcom/fl/saas/z0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/fl/saas/V;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    const-string p1, "Releasing input stream\u2026 Socket is closed by client."

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private b()Z
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/fl/saas/V;->h:Lcom/fl/saas/t0;

    const/4 v1, 0x3

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/t0;->a(II)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Lcom/fl/saas/W;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/fl/saas/V;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/V;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/W;

    if-nez v1, :cond_0

    new-instance v1, Lcom/fl/saas/W;

    iget-object v2, p0, Lcom/fl/saas/V;->g:Lcom/fl/saas/y;

    invoke-direct {v1, p1, v2}, Lcom/fl/saas/W;-><init>(Ljava/lang/String;Lcom/fl/saas/y;)V

    iget-object v2, p0, Lcom/fl/saas/V;->c:Ljava/util/Map;

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

    .line 3
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/V;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept new socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fl/saas/V;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/fl/saas/V$c;

    invoke-direct {v2, p0, v0}, Lcom/fl/saas/V$c;-><init>(Lcom/fl/saas/V;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance v1, Lcom/fl/saas/z0;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/fl/saas/z0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/fl/saas/V;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Ljava/net/Socket;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private d(Ljava/net/Socket;)V
    .locals 4

    const-string v0, "Opened connections: "

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/fl/saas/P;->a(Ljava/io/InputStream;)Lcom/fl/saas/P;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request to cache proxy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/fl/saas/P;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/fl/saas/A0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fl/saas/V;->h:Lcom/fl/saas/t0;

    invoke-virtual {v3, v2}, Lcom/fl/saas/t0;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/fl/saas/V;->h:Lcom/fl/saas/t0;

    invoke-virtual {v1, p1}, Lcom/fl/saas/t0;->a(Ljava/net/Socket;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/fl/saas/V;->c(Ljava/lang/String;)Lcom/fl/saas/W;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/fl/saas/W;->a(Lcom/fl/saas/P;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/fl/saas/z0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/fl/saas/V;->e(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/fl/saas/V;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    new-instance v2, Lcom/fl/saas/z0;

    const-string v3, "Error processing request"

    invoke-direct {v2, v3, v1}, Lcom/fl/saas/z0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/fl/saas/V;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/fl/saas/V;->e(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/fl/saas/V;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    :try_start_2
    const-string v1, "Closing socket\u2026 Socket is closed by client."

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, p1}, Lcom/fl/saas/V;->e(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    invoke-direct {p0, p1}, Lcom/fl/saas/V;->e(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/fl/saas/V;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    throw v1
.end method

.method private e(Ljava/net/Socket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/V;->b(Ljava/net/Socket;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/fl/saas/V;->c(Ljava/net/Socket;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/fl/saas/V;->a(Ljava/net/Socket;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/fl/saas/V;->d(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/fl/saas/V;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fl/saas/V;->a(Ljava/io/File;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/V;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/fl/saas/V;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "Url can\'t be null!"

    invoke-static {p1, v0}, Lcom/fl/saas/w0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/fl/saas/V;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

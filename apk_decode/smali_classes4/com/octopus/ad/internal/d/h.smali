.class public Lcom/octopus/ad/internal/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/d/h$a;,
        Lcom/octopus/ad/internal/d/h$b;,
        Lcom/octopus/ad/internal/d/h$c;
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
            "Lcom/octopus/ad/internal/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/net/ServerSocket;

.field private final e:I

.field private final f:Ljava/lang/Thread;

.field private final g:Lcom/octopus/ad/internal/d/c;

.field private final h:Lcom/octopus/ad/internal/d/m;

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/octopus/ad/internal/d/c;)V
    .locals 4

    .line 2
    const-string v0, "127.0.0.1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/d/h;->a:Ljava/lang/Object;

    const/16 v1, 0x8

    .line 4
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/octopus/ad/internal/d/h;->b:Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/octopus/ad/internal/d/h;->c:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Lcom/octopus/ad/internal/d/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/internal/d/c;

    iput-object p1, p0, Lcom/octopus/ad/internal/d/h;->g:Lcom/octopus/ad/internal/d/c;

    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 8
    new-instance v2, Ljava/net/ServerSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v2, p0, Lcom/octopus/ad/internal/d/h;->d:Ljava/net/ServerSocket;

    .line 9
    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/octopus/ad/internal/d/h;->e:I

    .line 10
    invoke-static {v0, p1}, Lcom/octopus/ad/internal/d/k;->a(Ljava/lang/String;I)V

    .line 11
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 12
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/octopus/ad/internal/d/h$c;

    invoke-direct {v3, p0, v1}, Lcom/octopus/ad/internal/d/h$c;-><init>(Lcom/octopus/ad/internal/d/h;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/octopus/ad/internal/d/h;->f:Ljava/lang/Thread;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 15
    new-instance v1, Lcom/octopus/ad/internal/d/m;

    invoke-direct {v1, v0, p1}, Lcom/octopus/ad/internal/d/m;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/octopus/ad/internal/d/h;->h:Lcom/octopus/ad/internal/d/m;

    .line 16
    sget-object p1, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy cache server started. Is it alive? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/octopus/ad/internal/d/h;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    iget-object v0, p0, Lcom/octopus/ad/internal/d/h;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error starting local proxy server"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/internal/d/c;Lcom/octopus/ad/internal/d/h$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;-><init>(Lcom/octopus/ad/internal/d/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/d/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/h;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/d/h;Ljava/net/Socket;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;->a(Ljava/net/Socket;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/h;->g:Lcom/octopus/ad/internal/d/c;

    iget-object v0, v0, Lcom/octopus/ad/internal/d/c;->c:Lcom/octopus/ad/internal/d/a/a;

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/d/a/a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error touching file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .line 36
    sget-object v0, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    const-string v1, "HttpProxyCacheServer error"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 5

    .line 17
    const-string v0, "Opened connections: "

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/octopus/ad/internal/d/e;->a(Ljava/io/InputStream;)Lcom/octopus/ad/internal/d/e;

    move-result-object v1

    .line 18
    sget-object v2, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request to cache proxy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v2, v1, Lcom/octopus/ad/internal/d/e;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/octopus/ad/internal/d/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/octopus/ad/internal/d/h;->h:Lcom/octopus/ad/internal/d/m;

    invoke-virtual {v3, v2}, Lcom/octopus/ad/internal/d/m;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    iget-object v1, p0, Lcom/octopus/ad/internal/d/h;->h:Lcom/octopus/ad/internal/d/m;

    invoke-virtual {v1, p1}, Lcom/octopus/ad/internal/d/m;->a(Ljava/net/Socket;)V

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

    .line 22
    :cond_0
    iget-object v3, p0, Lcom/octopus/ad/internal/d/h;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    invoke-direct {p0, v2}, Lcom/octopus/ad/internal/d/h;->e(Ljava/lang/String;)Lcom/octopus/ad/internal/d/i;

    move-result-object v2

    .line 24
    invoke-virtual {v2, v1, p1}, Lcom/octopus/ad/internal/d/i;->a(Lcom/octopus/ad/internal/d/e;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/octopus/ad/internal/d/p; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;->b(Ljava/net/Socket;)V

    .line 26
    sget-object p1, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/octopus/ad/internal/d/h;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 27
    :goto_1
    :try_start_1
    new-instance v2, Lcom/octopus/ad/internal/d/p;

    const-string v3, "Error processing request"

    invoke-direct {v2, v3, v1}, Lcom/octopus/ad/internal/d/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/octopus/ad/internal/d/h;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;->b(Ljava/net/Socket;)V

    .line 29
    sget-object p1, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/octopus/ad/internal/d/h;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 30
    :catch_2
    :try_start_2
    sget-object v1, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    const-string v2, "Closing socket\u2026 Socket is closed by client."

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;->b(Ljava/net/Socket;)V

    .line 32
    sget-object p1, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :goto_3
    return-void

    .line 33
    :goto_4
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;->b(Ljava/net/Socket;)V

    .line 34
    sget-object p1, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/octopus/ad/internal/d/h;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    throw v1
.end method

.method private a()Z
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/octopus/ad/internal/d/h;->h:Lcom/octopus/ad/internal/d/m;

    const/4 v1, 0x3

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/d/m;->a(II)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    .line 8
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/d/h;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accept new socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/octopus/ad/internal/d/h;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/octopus/ad/internal/d/h$b;

    invoke-direct {v2, p0, v0}, Lcom/octopus/ad/internal/d/h$b;-><init>(Lcom/octopus/ad/internal/d/h;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    return-void

    .line 12
    :goto_1
    new-instance v1, Lcom/octopus/ad/internal/d/p;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/octopus/ad/internal/d/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/d/h;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/net/Socket;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;->c(Ljava/net/Socket;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;->d(Ljava/net/Socket;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;->e(Ljava/net/Socket;)V

    return-void
.end method

.method private c()I
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/d/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/internal/d/h;->c:Ljava/util/Map;

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

    check-cast v3, Lcom/octopus/ad/internal/d/i;

    .line 5
    invoke-virtual {v3}, Lcom/octopus/ad/internal/d/i;->a()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    monitor-exit v0

    return v2

    .line 7
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/d/h;->i:Ljava/lang/String;

    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/octopus/ad/internal/d/h;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/octopus/ad/internal/d/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "127.0.0.1"

    filled-new-array {v2, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "http://%s:%d/%s"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/net/Socket;)V
    .locals 2

    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lcom/octopus/ad/internal/d/p;

    const-string v1, "Error closing socket input stream"

    invoke-direct {v0, v1, p1}, Lcom/octopus/ad/internal/d/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/d/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :catch_1
    sget-object p1, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    const-string v0, "Releasing input stream\u2026 Socket is closed by client."

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/d/h;->g:Lcom/octopus/ad/internal/d/c;

    iget-object v1, v0, Lcom/octopus/ad/internal/d/c;->a:Ljava/io/File;

    .line 2
    iget-object v0, v0, Lcom/octopus/ad/internal/d/c;->b:Lcom/octopus/ad/internal/d/a/c;

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/d/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private d(Ljava/net/Socket;)V
    .locals 2

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :goto_0
    sget-object v0, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    const-string v1, "Failed to close socket on proxy side: {}. It seems client have already closed connection."

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/internal/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Lcom/octopus/ad/internal/d/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/d/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/internal/d/h;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/octopus/ad/internal/d/i;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/octopus/ad/internal/d/i;

    iget-object v2, p0, Lcom/octopus/ad/internal/d/h;->g:Lcom/octopus/ad/internal/d/c;

    invoke-direct {v1, p1, v2}, Lcom/octopus/ad/internal/d/i;-><init>(Ljava/lang/String;Lcom/octopus/ad/internal/d/c;)V

    .line 4
    iget-object v2, p0, Lcom/octopus/ad/internal/d/h;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    .line 6
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private e(Ljava/net/Socket;)V
    .locals 2

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :goto_0
    new-instance v0, Lcom/octopus/ad/internal/d/p;

    const-string v1, "Error closing socket"

    invoke-direct {v0, v1, p1}, Lcom/octopus/ad/internal/d/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/d/h;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/octopus/ad/internal/d/h;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/d/h;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;->a(Ljava/io/File;)V

    .line 7
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/h;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a(Lcom/octopus/ad/internal/d/b;Ljava/lang/String;)V
    .locals 2

    .line 9
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/d/n;->a([Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/octopus/ad/internal/d/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-direct {p0, p2}, Lcom/octopus/ad/internal/d/h;->e(Ljava/lang/String;)Lcom/octopus/ad/internal/d/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/octopus/ad/internal/d/i;->a(Lcom/octopus/ad/internal/d/b;)V
    :try_end_0
    .catch Lcom/octopus/ad/internal/d/p; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    sget-object p2, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    const-string v1, "Error registering cache listener"

    invoke-static {p2, v1, p1}, Lcom/octopus/ad/internal/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Lcom/octopus/ad/internal/d/b;Ljava/lang/String;)V
    .locals 2

    .line 1
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/d/n;->a([Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/d/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0, p2}, Lcom/octopus/ad/internal/d/h;->e(Ljava/lang/String;)Lcom/octopus/ad/internal/d/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/octopus/ad/internal/d/i;->b(Lcom/octopus/ad/internal/d/b;)V
    :try_end_0
    .catch Lcom/octopus/ad/internal/d/p; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    :try_start_1
    sget-object p2, Lcom/octopus/ad/internal/c/f;->q:Ljava/lang/String;

    const-string v1, "Error registering cache listener"

    invoke-static {p2, v1, p1}, Lcom/octopus/ad/internal/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 6
    const-string v0, "Url can\'t be null!"

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/d/n;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

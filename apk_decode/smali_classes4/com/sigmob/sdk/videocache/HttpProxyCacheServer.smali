.class public Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$a;,
        Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$b;,
        Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$Builder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "127.0.0.1"


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/videocache/h;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/net/ServerSocket;

.field private final f:I

.field private final g:Ljava/lang/Thread;

.field private final h:Lcom/sigmob/sdk/videocache/e;

.field private final i:Lcom/sigmob/sdk/videocache/m;

.field private j:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$Builder;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$Builder;->a(Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$Builder;)Lcom/sigmob/sdk/videocache/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;-><init>(Lcom/sigmob/sdk/videocache/e;)V

    return-void
.end method

.method private constructor <init>(Lcom/sigmob/sdk/videocache/e;)V
    .locals 4

    .line 2
    const-string v0, "127.0.0.1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->getFixIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/sigmob/sdk/videocache/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/videocache/e;

    iput-object p1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->h:Lcom/sigmob/sdk/videocache/e;

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->j:Ljava/net/InetAddress;

    new-instance p1, Ljava/net/ServerSocket;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->j:Ljava/net/InetAddress;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {p1, v2, v3, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object p1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->e:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->f:I

    invoke-static {v0, p1}, Lcom/sigmob/sdk/videocache/j;->a(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread create ,current thread num :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$b;

    invoke-direct {v3, p0, v1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$b;-><init>(Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->g:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    new-instance v1, Lcom/sigmob/sdk/videocache/m;

    invoke-direct {v1, v0, p1}, Lcom/sigmob/sdk/videocache/m;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->i:Lcom/sigmob/sdk/videocache/m;
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
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error starting local proxy server"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/sigmob/sdk/videocache/e;Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;-><init>(Lcom/sigmob/sdk/videocache/e;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/sigmob/sdk/videocache/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "127.0.0.1"

    filled-new-array {v2, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "http://%s:%d/%s"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;Ljava/net/Socket;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->a(Ljava/net/Socket;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 3

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->h:Lcom/sigmob/sdk/videocache/e;

    iget-object v0, v0, Lcom/sigmob/sdk/videocache/e;->c:Lcom/sigmob/sdk/videocache/file/a;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/videocache/file/a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error touching file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    const-string v0, "HttpProxyCacheServer error"

    invoke-static {v0, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 4

    .line 6
    const-string v0, "Opened connections: "

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/videocache/f;->a(Ljava/io/InputStream;)Lcom/sigmob/sdk/videocache/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request to cache proxy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/sigmob/sdk/videocache/f;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/videocache/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->i:Lcom/sigmob/sdk/videocache/m;

    invoke-virtual {v3, v2}, Lcom/sigmob/sdk/videocache/m;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->i:Lcom/sigmob/sdk/videocache/m;

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/videocache/m;->a(Ljava/net/Socket;)V

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
    invoke-direct {p0, v2}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b(Ljava/lang/String;)Lcom/sigmob/sdk/videocache/h;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/sigmob/sdk/videocache/h;->a(Lcom/sigmob/sdk/videocache/f;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sigmob/sdk/videocache/p; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    new-instance v2, Lcom/sigmob/sdk/videocache/p;

    const-string v3, "Error processing request"

    invoke-direct {v2, v3, v1}, Lcom/sigmob/sdk/videocache/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    :try_start_2
    const-string v1, "Closing socket\u2026 Socket is closed by client."

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    throw v1
.end method

.method private a()Z
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->i:Lcom/sigmob/sdk/videocache/m;

    const/4 v1, 0x1

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/videocache/m;->a(II)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Lcom/sigmob/sdk/videocache/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/videocache/h;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sigmob/sdk/videocache/h;

    iget-object v2, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->h:Lcom/sigmob/sdk/videocache/e;

    invoke-direct {v1, p1, v2}, Lcom/sigmob/sdk/videocache/h;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/videocache/e;)V

    iget-object v2, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->d:Ljava/util/Map;

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

.method private b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->d:Ljava/util/Map;

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

    check-cast v2, Lcom/sigmob/sdk/videocache/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videocache/h;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private b(Ljava/net/Socket;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->c(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->d(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->e(Ljava/net/Socket;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$a;

    invoke-direct {v2, p0, v0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$a;-><init>(Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;Ljava/net/Socket;)V

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
    new-instance v1, Lcom/sigmob/sdk/videocache/p;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/sigmob/sdk/videocache/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Ljava/net/Socket;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    const-string p1, "Releasing input stream\u2026 Socket is closed by client."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    :catch_1
    :cond_0
    return-void
.end method

.method private d()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->d:Ljava/util/Map;

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

    check-cast v3, Lcom/sigmob/sdk/videocache/h;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videocache/h;->b()I

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

.method private d(Ljava/net/Socket;)V
    .locals 1

    .line 2
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

.method private e(Ljava/net/Socket;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->h:Lcom/sigmob/sdk/videocache/e;

    iget-object v1, v0, Lcom/sigmob/sdk/videocache/e;->a:Ljava/io/File;

    iget-object v0, v0, Lcom/sigmob/sdk/videocache/e;->b:Lcom/sigmob/sdk/videocache/file/c;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/videocache/file/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getProxyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/czhj/volley/toolbox/StringUtil;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProxyUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 2
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->isCached(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->a(Ljava/io/File;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public isCached(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Url can\'t be null!"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/videocache/n;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public registerCacheListener(Lcom/sigmob/sdk/videocache/d;Ljava/lang/String;)V
    .locals 1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/videocache/n;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b(Ljava/lang/String;)Lcom/sigmob/sdk/videocache/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/videocache/h;->a(Lcom/sigmob/sdk/videocache/d;)V
    :try_end_0
    .catch Lcom/sigmob/sdk/videocache/p; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "Error registering cache listener"

    invoke-static {p2, p1}, Lcom/czhj/sdk/logger/SigmobLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public shutdown()V
    .locals 3

    const-string v0, "Shutdown proxy server"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->h:Lcom/sigmob/sdk/videocache/e;

    iget-object v0, v0, Lcom/sigmob/sdk/videocache/e;->d:Lcom/sigmob/sdk/videocache/sourcestorage/c;

    invoke-interface {v0}, Lcom/sigmob/sdk/videocache/sourcestorage/c;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    new-instance v1, Lcom/sigmob/sdk/videocache/p;

    const-string v2, "Error shutting down proxy server"

    invoke-direct {v1, v2, v0}, Lcom/sigmob/sdk/videocache/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public stopCacheAndShutdown(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/videocache/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sigmob/sdk/videocache/h;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterCacheListener(Lcom/sigmob/sdk/videocache/d;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/sigmob/sdk/videocache/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->d:Ljava/util/Map;

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

    check-cast v2, Lcom/sigmob/sdk/videocache/h;

    invoke-virtual {v2, p1}, Lcom/sigmob/sdk/videocache/h;->b(Lcom/sigmob/sdk/videocache/d;)V

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

.method public unregisterCacheListener(Lcom/sigmob/sdk/videocache/d;Ljava/lang/String;)V
    .locals 1

    .line 2
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/videocache/n;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->b(Ljava/lang/String;)Lcom/sigmob/sdk/videocache/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/videocache/h;->b(Lcom/sigmob/sdk/videocache/d;)V
    :try_end_0
    .catch Lcom/sigmob/sdk/videocache/p; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "Error registering cache listener"

    invoke-static {p2, p1}, Lcom/czhj/sdk/logger/SigmobLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

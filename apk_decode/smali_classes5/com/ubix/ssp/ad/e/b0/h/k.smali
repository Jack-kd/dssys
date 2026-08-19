.class Lcom/ubix/ssp/ad/e/b0/h/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/b0/h/k$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/k$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/b0/h/k$a;-><init>(Lcom/ubix/ssp/ad/e/b0/h/k;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/k$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/b0/h/k$a;-><init>(Lcom/ubix/ssp/ad/e/b0/h/k;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->b:Ljava/lang/String;

    iput p2, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->d:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    new-instance v1, Ljava/net/URI;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/b0/h/k;)Z
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/k;->c()Z

    move-result p0

    return p0
.end method

.method private b()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v2

    const-string v3, "aHR0cDovLyVzOiVkLyVz"

    invoke-virtual {v2, v3}, Lcom/ubix/ssp/ad/e/a0/n$b;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->b:Ljava/lang/String;

    iget v3, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ping"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .locals 9

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/k;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/h/h;

    invoke-direct {v1, v0}, Lcom/ubix/ssp/ad/e/b0/h/h;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "ping ok"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/ubix/ssp/ad/e/b0/h/h;->a(J)V

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->c:I

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    array-length v3, v2

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/ubix/ssp/ad/e/b0/h/h;->a([B)I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ping response: `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "`, pinged? "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/ubix/ssp/ad/e/b0/h/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/b0/h/h;->close()V

    return v2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/b0/h/h;->a()J

    move-result-wide v5

    const-wide/32 v7, -0x80000000

    cmp-long v2, v5, v7

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/b0/h/h;->a()J

    move-result-wide v5
    :try_end_1
    .catch Lcom/ubix/ssp/ad/e/b0/h/n; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v5, v3

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/b0/h/h;->close()V

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/b0/h/h;->close()V

    return v0

    :goto_2
    const-string v3, "Error reading ping response"

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/b0/h/h;->close()V

    return v0

    :goto_3
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/b0/h/h;->close()V

    throw v0
.end method


# virtual methods
.method public a(Ljava/net/Socket;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const-string v0, "HTTP/1.1 200 OK\n\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "ping ok"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public a(II)Z
    .locals 7

    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Z)V

    if-lez p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Z)V

    move v2, v0

    :goto_2
    if-ge v2, p1, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/b0/h/k;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/ubix/ssp/ad/e/b0/h/k$b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/ubix/ssp/ad/e/b0/h/k$b;-><init>(Lcom/ubix/ssp/ad/e/b0/h/k;Lcom/ubix/ssp/ad/e/b0/h/k$a;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return v1

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error pinging server due to unexpected error"

    invoke-static {v4, v3}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error pinging server (attempt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;)V

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 p2, p2, 0x2

    goto :goto_2

    :cond_3
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    div-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/k;->a()Ljava/util/List;

    move-result-object v2

    filled-new-array {v1, p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Error pinging server (attempts: %d, max timeout: %d). "

    invoke-static {p1, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/ubix/ssp/ad/e/b0/h/n;

    invoke-direct {p2, p1}, Lcom/ubix/ssp/ad/e/b0/h/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 5
    const-string v0, "ping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

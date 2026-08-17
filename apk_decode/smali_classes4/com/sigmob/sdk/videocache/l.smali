.class public Lcom/sigmob/sdk/videocache/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/videocache/t;


# static fields
.field private static final c:I = 0x5

.field private static d:Lokhttp3/OkHttpClient;


# instance fields
.field protected volatile a:J

.field protected volatile b:Ljava/lang/String;

.field private e:Ljava/io/InputStream;

.field private f:Lcom/sigmob/sdk/videocache/u;

.field private final g:Lcom/sigmob/sdk/videocache/sourcestorage/c;

.field private final h:Lcom/sigmob/sdk/videocache/headers/b;

.field private i:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videocache/t;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/sigmob/sdk/videocache/l;->a:J

    const-string v0, "video/mp4"

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/l;->b:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sigmob/sdk/videocache/t;->d()Lcom/sigmob/sdk/videocache/u;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    invoke-interface {p1}, Lcom/sigmob/sdk/videocache/t;->e()Lcom/sigmob/sdk/videocache/sourcestorage/c;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/l;->g:Lcom/sigmob/sdk/videocache/sourcestorage/c;

    invoke-interface {p1}, Lcom/sigmob/sdk/videocache/t;->f()Lcom/sigmob/sdk/videocache/headers/b;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videocache/l;->h:Lcom/sigmob/sdk/videocache/headers/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/videocache/sourcestorage/d;->a()Lcom/sigmob/sdk/videocache/sourcestorage/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/videocache/l;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/videocache/sourcestorage/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/videocache/sourcestorage/c;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/sigmob/sdk/videocache/headers/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/videocache/headers/a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/videocache/l;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/videocache/sourcestorage/c;Lcom/sigmob/sdk/videocache/headers/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/videocache/sourcestorage/c;Lcom/sigmob/sdk/videocache/headers/b;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/sigmob/sdk/videocache/l;->a:J

    const-string v2, "video/mp4"

    iput-object v2, p0, Lcom/sigmob/sdk/videocache/l;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/sigmob/sdk/videocache/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/videocache/sourcestorage/c;

    iput-object v2, p0, Lcom/sigmob/sdk/videocache/l;->g:Lcom/sigmob/sdk/videocache/sourcestorage/c;

    invoke-static {p3}, Lcom/sigmob/sdk/videocache/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sigmob/sdk/videocache/headers/b;

    iput-object p3, p0, Lcom/sigmob/sdk/videocache/l;->h:Lcom/sigmob/sdk/videocache/headers/b;

    invoke-interface {p2, p1}, Lcom/sigmob/sdk/videocache/sourcestorage/c;->a(Ljava/lang/String;)Lcom/sigmob/sdk/videocache/u;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/sigmob/sdk/videocache/u;

    invoke-static {p1}, Lcom/sigmob/sdk/videocache/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/sigmob/sdk/videocache/u;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    iput-object p2, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    return-void
.end method

.method private a(Lokhttp3/Response;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    long-to-int p1, v1

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    int-to-long p1, p1

    return-wide p1

    :cond_0
    const/16 v1, 0xce

    if-ne v0, v1, :cond_1

    int-to-long v0, p1

    add-long/2addr v0, p2

    return-wide v0

    :cond_1
    iget-wide p1, p0, Lcom/sigmob/sdk/videocache/l;->a:J

    return-wide p1
.end method

.method private a(JI)Lokhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    .line 4
    sget-object p3, Lcom/sigmob/sdk/videocache/l;->d:Lokhttp3/OkHttpClient;

    if-nez p3, :cond_0

    new-instance p3, Lokhttp3/OkHttpClient;

    invoke-direct {p3}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {p3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    new-instance v0, Lokhttp3/ConnectionPool;

    invoke-direct {v0}, Lokhttp3/ConnectionPool;-><init>()V

    invoke-virtual {p3, v0}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {p3, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    invoke-virtual {p3, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    invoke-virtual {p3, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p3

    sput-object p3, Lcom/sigmob/sdk/videocache/l;->d:Lokhttp3/OkHttpClient;

    :cond_0
    iget-object p3, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object p3, p3, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/l;->i:Lokhttp3/Response;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/l;->i:Lokhttp3/Response;

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/l;->e:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sigmob/sdk/videocache/q;->a(Ljava/io/Closeable;)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/l;->i:Lokhttp3/Response;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    move v3, v0

    :cond_2
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    invoke-virtual {v4, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-direct {p0, v4, p3}, Lcom/sigmob/sdk/videocache/l;->a(Lokhttp3/Request$Builder;Ljava/lang/String;)V

    cmp-long v5, p1, v1

    if-lez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Range"

    invoke-virtual {v4, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_3
    sget-object v5, Lcom/sigmob/sdk/videocache/l;->d:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    iput-object v4, p0, Lcom/sigmob/sdk/videocache/l;->i:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->isRedirect()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object p3, p0, Lcom/sigmob/sdk/videocache/l;->i:Lokhttp3/Response;

    const-string v3, "Location"

    invoke-virtual {p3, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v3, p0, Lcom/sigmob/sdk/videocache/l;->i:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response;->isRedirect()Z

    move-result v3

    add-int/lit8 v0, v0, 0x1

    :cond_4
    const/4 v4, 0x5

    if-gt v0, v4, :cond_5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/sigmob/sdk/videocache/p;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many redirects: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/videocache/p;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/videocache/l;->i:Lokhttp3/Response;

    return-object p1
.end method

.method private a(Lokhttp3/Request$Builder;Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/l;->h:Lcom/sigmob/sdk/videocache/headers/b;

    invoke-interface {v0, p2}, Lcom/sigmob/sdk/videocache/headers/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read content info from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v1, v1, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/16 v2, 0x2710

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/videocache/l;->a(JI)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/sigmob/sdk/videocache/l;->a:J

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/l;->b:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v0, Lcom/sigmob/sdk/videocache/u;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v1, v1, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sigmob/sdk/videocache/l;->a:J

    iget-object v4, p0, Lcom/sigmob/sdk/videocache/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/videocache/u;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/l;->g:Lcom/sigmob/sdk/videocache/sourcestorage/c;

    iget-object v2, v0, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/sigmob/sdk/videocache/sourcestorage/c;->a(Ljava/lang/String;Lcom/sigmob/sdk/videocache/u;)V

    return-void

    :cond_1
    new-instance v0, Lcom/sigmob/sdk/videocache/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to fetchContentInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v2, v2, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/videocache/p;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    throw v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error fetching info from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v2, v2, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/l;->e:Ljava/io/InputStream;

    const-string v1, "Error reading data from "

    if-eqz v0, :cond_0

    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lcom/sigmob/sdk/videocache/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v1, v1, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sigmob/sdk/videocache/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lcom/sigmob/sdk/videocache/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v2, v2, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sigmob/sdk/videocache/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lcom/sigmob/sdk/videocache/p;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v1, v1, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": connection is absent!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sigmob/sdk/videocache/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    .line 2
    iget-wide v0, p0, Lcom/sigmob/sdk/videocache/l;->a:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/l;->h()V

    :cond_0
    iget-wide v0, p0, Lcom/sigmob/sdk/videocache/l;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    .line 5
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/videocache/l;->a(JI)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/l;->i:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/videocache/l;->b:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/videocache/l;->i:Lokhttp3/Response;

    invoke-direct {p0, v1, p1, p2}, Lcom/sigmob/sdk/videocache/l;->a(Lokhttp3/Response;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sigmob/sdk/videocache/l;->a:J

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/sigmob/sdk/videocache/l;->e:Ljava/io/InputStream;

    new-instance v0, Lcom/sigmob/sdk/videocache/u;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v1, v1, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sigmob/sdk/videocache/l;->a:J

    iget-object v4, p0, Lcom/sigmob/sdk/videocache/l;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/videocache/u;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/l;->g:Lcom/sigmob/sdk/videocache/sourcestorage/c;

    iget-object v2, v0, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/sigmob/sdk/videocache/sourcestorage/c;->a(Ljava/lang/String;Lcom/sigmob/sdk/videocache/u;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v1, Lcom/sigmob/sdk/videocache/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v3, v3, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/sigmob/sdk/videocache/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/l;->e:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sigmob/sdk/videocache/q;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :goto_0
    const-string v1, "Error closing connection correctly. Should happen only on SigmobAndroid L. Until good solution is not know, just ignore this issue :("

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wait... but why? WTF!? If you read it on your device log, please"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v0, v0, Lcom/sigmob/sdk/videocache/u;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/l;->h()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v0, v0, Lcom/sigmob/sdk/videocache/u;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Lcom/sigmob/sdk/videocache/u;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    return-object v0
.end method

.method public e()Lcom/sigmob/sdk/videocache/sourcestorage/c;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/l;->g:Lcom/sigmob/sdk/videocache/sourcestorage/c;

    return-object v0
.end method

.method public f()Lcom/sigmob/sdk/videocache/headers/b;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/l;->h:Lcom/sigmob/sdk/videocache/headers/b;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    iget-object v0, v0, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpUrlSource{sourceInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/l;->f:Lcom/sigmob/sdk/videocache/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/czhj/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static final a:I = 0xbb8

.field private static final b:I = 0x1000


# instance fields
.field private final c:Lcom/czhj/volley/toolbox/BaseHttpStack;

.field protected final mPool:Lcom/czhj/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/czhj/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/czhj/volley/toolbox/BasicNetwork;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/czhj/volley/toolbox/BaseHttpStack;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/czhj/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/czhj/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/czhj/volley/toolbox/BasicNetwork;-><init>(Lcom/czhj/volley/toolbox/BaseHttpStack;Lcom/czhj/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/czhj/volley/toolbox/BaseHttpStack;Lcom/czhj/volley/toolbox/ByteArrayPool;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/czhj/volley/toolbox/BasicNetwork;->c:Lcom/czhj/volley/toolbox/BaseHttpStack;

    iput-object p2, p0, Lcom/czhj/volley/toolbox/BasicNetwork;->mPool:Lcom/czhj/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/czhj/volley/Cache$Entry;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/czhj/volley/Header;",
            ">;",
            "Lcom/czhj/volley/Cache$Entry;",
            ")",
            "Ljava/util/List<",
            "Lcom/czhj/volley/Header;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/czhj/volley/Header;

    invoke-virtual {v2}, Lcom/czhj/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p1, Lcom/czhj/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lcom/czhj/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/czhj/volley/Header;

    invoke-virtual {p1}, Lcom/czhj/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lcom/czhj/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lcom/czhj/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/czhj/volley/Header;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lcom/czhj/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method private a(Lcom/czhj/volley/Cache$Entry;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/czhj/volley/Cache$Entry;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/czhj/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "If-None-Match"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v1, p1, Lcom/czhj/volley/Cache$Entry;->lastModified:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    const-string p1, "If-Modified-Since"

    invoke-static {v1, v2}, Lcom/czhj/volley/toolbox/HttpHeaderParser;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private a(JLcom/czhj/volley/Request;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/czhj/volley/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 3
    sget-boolean v0, Lcom/czhj/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0xbb8

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    if-eqz p4, :cond_2

    array-length p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, "null"

    :goto_1
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3}, Lcom/czhj/volley/Request;->getRetryPolicy()Lcom/czhj/volley/RetryPolicy;

    move-result-object p5

    invoke-interface {p5}, Lcom/czhj/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p3, p1, p2, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {p2, p1}, Lcom/czhj/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/czhj/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/czhj/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lcom/czhj/volley/Request;->getTimeoutMs()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s-Redirect [timeout=%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/czhj/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/czhj/volley/Request;Lcom/czhj/volley/VolleyError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/czhj/volley/Request<",
            "*>;",
            "Lcom/czhj/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/czhj/volley/VolleyError;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/czhj/volley/Request;->getRetryPolicy()Lcom/czhj/volley/RetryPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/czhj/volley/Request;->getTimeoutMs()I

    move-result v1

    :try_start_0
    invoke-interface {v0, p2}, Lcom/czhj/volley/RetryPolicy;->retry(Lcom/czhj/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/czhj/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%s-retry [timeout=%s]"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/czhj/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/czhj/volley/Request;->addMarker(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Ljava/io/InputStream;I)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    const-string v0, "Error occurred when closing InputStream"

    new-instance v1, Lcom/czhj/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v2, p0, Lcom/czhj/volley/toolbox/BasicNetwork;->mPool:Lcom/czhj/volley/toolbox/ByteArrayPool;

    invoke-direct {v1, v2, p2}, Lcom/czhj/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/czhj/volley/toolbox/ByteArrayPool;I)V

    const/16 v2, 0x400

    if-lez p2, :cond_0

    if-ge p2, v2, :cond_0

    move v2, p2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/czhj/volley/toolbox/BasicNetwork;->mPool:Lcom/czhj/volley/toolbox/ByteArrayPool;

    invoke-virtual {v5, v2}, Lcom/czhj/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v4

    const-wide/16 v5, 0x0

    :goto_0
    invoke-virtual {p1, v4, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x1

    if-lt p2, v8, :cond_1

    int-to-long v8, p2

    cmp-long v8, v5, v8

    if-gez v8, :cond_2

    :cond_1
    invoke-virtual {v1, v4, v3, v7}, Lcom/czhj/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    int-to-long v7, v7

    add-long/2addr v5, v7

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/czhj/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/czhj/volley/toolbox/BasicNetwork;->mPool:Lcom/czhj/volley/toolbox/ByteArrayPool;

    invoke-virtual {p1, v4}, Lcom/czhj/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    :goto_2
    invoke-virtual {v1}, Lcom/czhj/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object p2

    :goto_3
    :try_start_2
    const-string v2, "readError"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/czhj/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/czhj/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_4
    iget-object p1, p0, Lcom/czhj/volley/toolbox/BasicNetwork;->mPool:Lcom/czhj/volley/toolbox/ByteArrayPool;

    invoke-virtual {p1, v4}, Lcom/czhj/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    goto :goto_2

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/czhj/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_5
    iget-object p1, p0, Lcom/czhj/volley/toolbox/BasicNetwork;->mPool:Lcom/czhj/volley/toolbox/ByteArrayPool;

    invoke-virtual {p1, v4}, Lcom/czhj/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v1}, Lcom/czhj/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw p2
.end method

.method public static convertHeaders(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/czhj/volley/Header;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/czhj/volley/Header;

    invoke-virtual {v2}, Lcom/czhj/volley/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/czhj/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public logError(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "HTTP ERROR(%s) %d ms to fetch %s"

    invoke-static {p2, p1}, Lcom/czhj/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public performRequest(Lcom/czhj/volley/Request;)Lcom/czhj/volley/NetworkResponse;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/czhj/volley/Request<",
            "*>;)",
            "Lcom/czhj/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/czhj/volley/VolleyError;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    :goto_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v9, 0x12e

    const/16 v10, 0x12d

    const/4 v3, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getCacheEntry()Lcom/czhj/volley/Cache$Entry;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/czhj/volley/toolbox/BasicNetwork;->a(Lcom/czhj/volley/Cache$Entry;)Ljava/util/Map;

    move-result-object v0

    iget-object v5, v1, Lcom/czhj/volley/toolbox/BasicNetwork;->c:Lcom/czhj/volley/toolbox/BaseHttpStack;

    invoke-virtual {v5, v4, v0}, Lcom/czhj/volley/toolbox/BaseHttpStack;->executeRequest(Lcom/czhj/volley/Request;Ljava/util/Map;)Lcom/czhj/volley/toolbox/HttpResponse;

    move-result-object v12
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v12}, Lcom/czhj/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v14

    invoke-virtual {v12}, Lcom/czhj/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v19
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x130

    if-ne v14, v0, :cond_3

    :try_start_2
    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getCacheEntry()Lcom/czhj/volley/Cache$Entry;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v15, Lcom/czhj/volley/NetworkResponse;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long/2addr v5, v7

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v21, v19

    move-wide/from16 v19, v5

    :try_start_3
    invoke-direct/range {v15 .. v21}, Lcom/czhj/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v12}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v12}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/czhj/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-object v15

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v12

    goto/16 :goto_13

    :catch_1
    move-exception v0

    move-object/from16 v13, v21

    :goto_2
    move-object v14, v3

    move-object v3, v12

    move-object/from16 v18, v13

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v3, v12

    goto/16 :goto_10

    :catch_3
    move-object v3, v12

    goto/16 :goto_11

    :catch_4
    move-exception v0

    move-object/from16 v13, v19

    goto :goto_2

    :cond_1
    move-object/from16 v13, v19

    :try_start_5
    invoke-static {v13, v0}, Lcom/czhj/volley/toolbox/BasicNetwork;->a(Ljava/util/List;Lcom/czhj/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v20

    new-instance v14, Lcom/czhj/volley/NetworkResponse;

    iget-object v0, v0, Lcom/czhj/volley/Cache$Entry;->data:[B

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v18, v5, v7

    const/16 v15, 0x130

    const/16 v17, 0x1

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v20}, Lcom/czhj/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v12}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v12}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/czhj/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_3
    return-object v14

    :catch_6
    move-exception v0

    goto :goto_2

    :cond_3
    move-object/from16 v13, v19

    if-eq v14, v10, :cond_4

    if-ne v14, v9, :cond_6

    :cond_4
    :try_start_7
    invoke-static {v13}, Lcom/czhj/volley/toolbox/BasicNetwork;->convertHeaders(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "Location"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v5
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v5, :cond_5

    :try_start_9
    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    :cond_5
    :try_start_a
    invoke-virtual {v4, v0}, Lcom/czhj/volley/Request;->setRedirectURL(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "redirectURL: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/czhj/volley/Request;->addMarker(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v12}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v0, :cond_8

    :try_start_b
    invoke-virtual {v12}, Lcom/czhj/volley/toolbox/HttpResponse;->getContentLength()I

    move-result v2

    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getMaxLength()I

    move-result v5

    if-gez v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getMaxLength()I

    move-result v2

    :goto_4
    invoke-direct {v1, v0, v2}, Lcom/czhj/volley/toolbox/BasicNetwork;->a(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_5
    move-object v15, v0

    goto :goto_6

    :cond_8
    :try_start_c
    new-array v0, v11, [B
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    :goto_6
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    sub-long/2addr v2, v7

    move v6, v14

    move-object v5, v15

    :try_start_e
    invoke-direct/range {v1 .. v6}, Lcom/czhj/volley/toolbox/BasicNetwork;->a(JLcom/czhj/volley/Request;[BI)V
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/16 v0, 0xc8

    if-lt v14, v0, :cond_a

    const/16 v0, 0x12b

    if-gt v14, v0, :cond_a

    move-object/from16 v19, v13

    :try_start_f
    new-instance v13, Lcom/czhj/volley/NetworkResponse;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v17, v0, v7

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v19}, Lcom/czhj/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    invoke-virtual {v12}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_10
    invoke-virtual {v12}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/czhj/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_7
    return-object v13

    :catch_8
    move-exception v0

    :goto_8
    move-object v3, v12

    move-object v14, v15

    :goto_9
    move-object/from16 v18, v19

    goto :goto_b

    :cond_a
    move-object/from16 v19, v13

    :try_start_11
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :catch_9
    move-exception v0

    move-object v15, v5

    :goto_a
    move-object/from16 v19, v13

    goto :goto_8

    :catch_a
    move-exception v0

    goto :goto_a

    :catch_b
    move-exception v0

    move-object/from16 v19, v13

    move-object v14, v3

    move-object v3, v12

    goto :goto_9

    :catch_c
    move-exception v0

    move-object/from16 v18, v2

    move-object v14, v3

    move-object v3, v12

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_13

    :catch_d
    move-exception v0

    move-object/from16 v18, v2

    move-object v14, v3

    goto :goto_b

    :catch_e
    move-exception v0

    goto/16 :goto_10

    :goto_b
    if-eqz v3, :cond_16

    :try_start_12
    invoke-virtual {v3}, Lcom/czhj/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v13

    const-string v1, "Unexpected response code %d for %s"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/czhj/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v14, :cond_15

    new-instance v12, Lcom/czhj/volley/NetworkResponse;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v16, v0, v7

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v18}, Lcom/czhj/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eq v13, v10, :cond_14

    if-ne v13, v9, :cond_b

    goto :goto_e

    :cond_b
    const/16 v0, 0x191

    if-eq v13, v0, :cond_13

    const/16 v0, 0x193

    if-ne v13, v0, :cond_c

    goto :goto_d

    :cond_c
    const/16 v0, 0x190

    const-string v1, "server"

    if-lt v13, v0, :cond_e

    const/16 v0, 0x1f3

    if-gt v13, v0, :cond_e

    :try_start_13
    invoke-virtual {v4}, Lcom/czhj/volley/Request;->shouldRetryServerErrors()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/czhj/volley/ServerError;

    invoke-direct {v0, v12}, Lcom/czhj/volley/ServerError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    :goto_c
    invoke-static {v1, v4, v0}, Lcom/czhj/volley/toolbox/BasicNetwork;->a(Ljava/lang/String;Lcom/czhj/volley/Request;Lcom/czhj/volley/VolleyError;)V

    goto :goto_f

    :cond_d
    new-instance v0, Lcom/czhj/volley/ServerError;

    invoke-direct {v0, v12}, Lcom/czhj/volley/ServerError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    throw v0

    :cond_e
    const/16 v0, 0x1f4

    const/16 v2, 0x257

    if-lt v13, v0, :cond_10

    if-gt v13, v2, :cond_10

    invoke-virtual {v4}, Lcom/czhj/volley/Request;->shouldRetryServerErrors()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/czhj/volley/ServerError;

    invoke-direct {v0, v12}, Lcom/czhj/volley/ServerError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    goto :goto_c

    :cond_f
    new-instance v0, Lcom/czhj/volley/ServerError;

    invoke-direct {v0, v12}, Lcom/czhj/volley/ServerError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    throw v0

    :cond_10
    if-le v13, v2, :cond_12

    invoke-virtual {v4}, Lcom/czhj/volley/Request;->shouldRetryServerErrors()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/czhj/volley/ServerError;

    invoke-direct {v0, v12}, Lcom/czhj/volley/ServerError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    goto :goto_c

    :cond_11
    new-instance v0, Lcom/czhj/volley/ServerError;

    invoke-direct {v0, v12}, Lcom/czhj/volley/ServerError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/czhj/volley/ServerError;

    invoke-direct {v0, v12}, Lcom/czhj/volley/ServerError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    throw v0

    :cond_13
    :goto_d
    const-string v0, "auth"

    new-instance v1, Lcom/czhj/volley/AuthFailureError;

    invoke-direct {v1, v12}, Lcom/czhj/volley/AuthFailureError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    invoke-static {v0, v4, v1}, Lcom/czhj/volley/toolbox/BasicNetwork;->a(Ljava/lang/String;Lcom/czhj/volley/Request;Lcom/czhj/volley/VolleyError;)V

    goto :goto_f

    :cond_14
    :goto_e
    const-string v0, "redirect"

    invoke-static {v0, v4}, Lcom/czhj/volley/toolbox/BasicNetwork;->a(Ljava/lang/String;Lcom/czhj/volley/Request;)V

    goto :goto_f

    :cond_15
    const-string v1, "network"

    new-instance v2, Lcom/czhj/volley/NetworkError;

    invoke-direct {v2, v0}, Lcom/czhj/volley/NetworkError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v4, v2}, Lcom/czhj/volley/toolbox/BasicNetwork;->a(Ljava/lang/String;Lcom/czhj/volley/Request;Lcom/czhj/volley/VolleyError;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :goto_f
    invoke-virtual {v3}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_14
    invoke-virtual {v3}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    goto :goto_12

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/czhj/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_16
    :try_start_15
    new-instance v1, Lcom/czhj/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcom/czhj/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_10
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad URL "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_10
    :goto_11
    const-string v0, "socket"

    new-instance v1, Lcom/czhj/volley/TimeoutError;

    invoke-direct {v1}, Lcom/czhj/volley/TimeoutError;-><init>()V

    invoke-static {v0, v4, v1}, Lcom/czhj/volley/toolbox/BasicNetwork;->a(Ljava/lang/String;Lcom/czhj/volley/Request;Lcom/czhj/volley/VolleyError;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_16
    invoke-virtual {v3}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    goto :goto_12

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/czhj/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    :goto_12
    move-object/from16 v1, p0

    goto/16 :goto_0

    :goto_13
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_17
    invoke-virtual {v3}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_12

    goto :goto_14

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/czhj/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    :goto_14
    throw v1
.end method

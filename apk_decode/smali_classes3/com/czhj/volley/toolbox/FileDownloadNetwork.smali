.class public Lcom/czhj/volley/toolbox/FileDownloadNetwork;
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

    sput-boolean v0, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/czhj/volley/toolbox/BaseHttpStack;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/czhj/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/czhj/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/czhj/volley/toolbox/FileDownloadNetwork;-><init>(Lcom/czhj/volley/toolbox/BaseHttpStack;Lcom/czhj/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/czhj/volley/toolbox/BaseHttpStack;Lcom/czhj/volley/toolbox/ByteArrayPool;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->c:Lcom/czhj/volley/toolbox/BaseHttpStack;

    iput-object p2, p0, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->mPool:Lcom/czhj/volley/toolbox/ByteArrayPool;

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
    sget-boolean v0, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->DEBUG:Z

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

.method private a(Ljava/io/InputStream;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/czhj/volley/ServerError;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/czhj/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v1, p0, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->mPool:Lcom/czhj/volley/toolbox/ByteArrayPool;

    invoke-direct {v0, v1, p2}, Lcom/czhj/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/czhj/volley/toolbox/ByteArrayPool;I)V

    const-string p2, "Error occurred when closing InputStream"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->mPool:Lcom/czhj/volley/toolbox/ByteArrayPool;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/czhj/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v2, v1, v3}, Lcom/czhj/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/czhj/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->mPool:Lcom/czhj/volley/toolbox/ByteArrayPool;

    invoke-virtual {p1, v2}, Lcom/czhj/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v0}, Lcom/czhj/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v3

    :cond_1
    :try_start_2
    new-instance v3, Lcom/czhj/volley/ServerError;

    invoke-direct {v3}, Lcom/czhj/volley/ServerError;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/czhj/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->mPool:Lcom/czhj/volley/toolbox/ByteArrayPool;

    invoke-virtual {p1, v2}, Lcom/czhj/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v0}, Lcom/czhj/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v3
.end method

.method public static attemptRetryOnException(Ljava/lang/String;Lcom/czhj/volley/Request;Lcom/czhj/volley/VolleyError;)V
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

    invoke-virtual {p1}, Lcom/czhj/volley/Request;->getRetryPolicy()Lcom/czhj/volley/RetryPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/czhj/volley/Request;->getTimeoutMs()I

    move-result v1

    :try_start_0
    invoke-interface {v0, p2}, Lcom/czhj/volley/RetryPolicy;->retry(Lcom/czhj/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/czhj/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Lcom/czhj/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, p2, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%s-retry [RetryCount %s]  [timeout=%s]"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/czhj/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    invoke-interface {v0}, Lcom/czhj/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s-timeout-giveup [RetryCount %s] [timeout=%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/czhj/volley/Request;->addMarker(Ljava/lang/String;)V

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
    .locals 18
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
    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "download start %s"

    invoke-static {v2, v0}, Lcom/czhj/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getCacheEntry()Lcom/czhj/volley/Cache$Entry;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->a(Lcom/czhj/volley/Cache$Entry;)Ljava/util/Map;

    move-result-object v0

    iget-object v5, v1, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->c:Lcom/czhj/volley/toolbox/BaseHttpStack;

    invoke-virtual {v5, v4, v0}, Lcom/czhj/volley/toolbox/BaseHttpStack;->executeRequest(Lcom/czhj/volley/Request;Ljava/util/Map;)Lcom/czhj/volley/toolbox/HttpResponse;

    move-result-object v9
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    invoke-virtual {v9}, Lcom/czhj/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v6

    const-string v0, "download getStatus %s StatusCode: %s"

    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v5, v10}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/czhj/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/czhj/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v16
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    const/16 v0, 0x130

    if-ne v6, v0, :cond_1

    :try_start_2
    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getCacheEntry()Lcom/czhj/volley/Cache$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v10, Lcom/czhj/volley/NetworkResponse;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v14, v5, v7

    const/16 v11, 0x130

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct/range {v10 .. v16}, Lcom/czhj/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v10

    :catch_0
    move-exception v0

    move-object/from16 v10, v16

    :goto_1
    move-object v11, v3

    move-object v3, v9

    move-object v15, v10

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :cond_0
    move-object/from16 v10, v16

    :try_start_3
    invoke-static {v10, v0}, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->a(Ljava/util/List;Lcom/czhj/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v17

    new-instance v11, Lcom/czhj/volley/NetworkResponse;

    iget-object v13, v0, Lcom/czhj/volley/Cache$Entry;->data:[B

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v15, v5, v7

    const/16 v12, 0x130

    const/4 v14, 0x1

    invoke-direct/range {v11 .. v17}, Lcom/czhj/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v11

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, v16

    :try_start_4
    invoke-virtual {v9}, Lcom/czhj/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v0, :cond_3

    :try_start_5
    instance-of v0, v4, Lcom/czhj/volley/toolbox/FileDownloadRequest;

    if-eqz v0, :cond_2

    move-object v0, v4

    check-cast v0, Lcom/czhj/volley/toolbox/FileDownloadRequest;

    invoke-virtual {v0, v9}, Lcom/czhj/volley/toolbox/FileDownloadRequest;->handleRawResponse(Lcom/czhj/volley/toolbox/HttpResponse;)[B

    move-result-object v3
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_2
    move-object v5, v3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :try_start_6
    new-array v3, v0, [B
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    :goto_3
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->a(JLcom/czhj/volley/Request;[BI)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    const/16 v0, 0xc8

    if-lt v6, v0, :cond_4

    const/16 v0, 0x12b

    if-gt v6, v0, :cond_4

    move-object/from16 v16, v10

    :try_start_8
    new-instance v10, Lcom/czhj/volley/NetworkResponse;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    sub-long v14, v0, v7

    const/4 v13, 0x0

    move-object v12, v5

    move v11, v6

    :try_start_9
    invoke-direct/range {v10 .. v16}, Lcom/czhj/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    return-object v10

    :catch_3
    move-exception v0

    move-object v5, v12

    :goto_4
    move-object v11, v5

    :goto_5
    move-object v3, v9

    move-object/from16 v15, v16

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_4

    :cond_4
    move-object/from16 v16, v10

    :try_start_a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :catch_5
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_4

    :catch_6
    move-exception v0

    move-object/from16 v16, v10

    move-object v11, v3

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v15, v2

    move-object v11, v3

    move-object v3, v9

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v15, v2

    move-object v11, v3

    :goto_6
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/czhj/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s Unexpected response code %d for %s"

    invoke-static {v2, v1}, Lcom/czhj/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v11, :cond_d

    new-instance v9, Lcom/czhj/volley/NetworkResponse;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v13, v0, v7

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/czhj/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    const/16 v0, 0x191

    const-string v1, "auth"

    if-eq v10, v0, :cond_c

    const/16 v0, 0x193

    if-ne v10, v0, :cond_5

    goto :goto_a

    :cond_5
    const/16 v0, 0x12d

    if-eq v10, v0, :cond_b

    const/16 v0, 0x12e

    if-ne v10, v0, :cond_6

    goto :goto_9

    :cond_6
    const/16 v0, 0x190

    if-lt v10, v0, :cond_8

    const/16 v0, 0x1f3

    if-le v10, v0, :cond_7

    goto :goto_7

    :cond_7
    new-instance v0, Lcom/czhj/volley/ServerError;

    invoke-direct {v0, v9}, Lcom/czhj/volley/ServerError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    throw v0

    :cond_8
    :goto_7
    const/16 v0, 0x1f4

    if-lt v10, v0, :cond_a

    const/16 v0, 0x257

    if-gt v10, v0, :cond_a

    invoke-virtual {v4}, Lcom/czhj/volley/Request;->shouldRetryServerErrors()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/czhj/volley/ServerError;

    invoke-direct {v0, v9}, Lcom/czhj/volley/ServerError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    const-string v1, "server"

    :goto_8
    invoke-static {v1, v4, v0}, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/czhj/volley/Request;Lcom/czhj/volley/VolleyError;)V

    goto :goto_c

    :cond_9
    new-instance v0, Lcom/czhj/volley/ServerError;

    invoke-direct {v0, v9}, Lcom/czhj/volley/ServerError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/czhj/volley/ServerError;

    invoke-direct {v0, v9}, Lcom/czhj/volley/ServerError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    throw v0

    :cond_b
    :goto_9
    new-instance v0, Lcom/czhj/volley/AuthFailureError;

    invoke-direct {v0, v9}, Lcom/czhj/volley/AuthFailureError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    goto :goto_8

    :cond_c
    :goto_a
    new-instance v0, Lcom/czhj/volley/AuthFailureError;

    invoke-direct {v0, v9}, Lcom/czhj/volley/AuthFailureError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    goto :goto_8

    :cond_d
    new-instance v1, Lcom/czhj/volley/NetworkError;

    invoke-direct {v1, v0}, Lcom/czhj/volley/NetworkError;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "network"

    invoke-static {v0, v4, v1}, Lcom/czhj/volley/toolbox/FileDownloadNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/czhj/volley/Request;Lcom/czhj/volley/VolleyError;)V

    goto :goto_c

    :cond_e
    new-instance v1, Lcom/czhj/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcom/czhj/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/czhj/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_9
    new-instance v0, Lcom/czhj/volley/TimeoutError;

    invoke-direct {v0}, Lcom/czhj/volley/TimeoutError;-><init>()V

    const-string v1, "socket"

    goto :goto_8

    :goto_c
    move-object/from16 v1, p0

    goto/16 :goto_0
.end method

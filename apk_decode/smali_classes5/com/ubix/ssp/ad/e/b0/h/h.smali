.class public Lcom/ubix/ssp/ad/e/b0/h/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/b0/h/p;


# instance fields
.field private final a:Lcom/ubix/ssp/ad/e/b0/h/u/c;

.field private final b:Lcom/ubix/ssp/ad/e/b0/h/t/b;

.field private c:Lcom/ubix/ssp/ad/e/b0/h/q;

.field private d:Ljava/net/HttpURLConnection;

.field private e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/h/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/b0/h/h;->a:Lcom/ubix/ssp/ad/e/b0/h/u/c;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->a:Lcom/ubix/ssp/ad/e/b0/h/u/c;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/b0/h/h;->b:Lcom/ubix/ssp/ad/e/b0/h/t/b;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->b:Lcom/ubix/ssp/ad/e/b0/h/t/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ubix/ssp/ad/e/b0/h/u/d;->a()Lcom/ubix/ssp/ad/e/b0/h/u/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ubix/ssp/ad/e/b0/h/h;-><init>(Ljava/lang/String;Lcom/ubix/ssp/ad/e/b0/h/u/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ubix/ssp/ad/e/b0/h/u/c;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/t/a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/b0/h/t/a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/e/b0/h/h;-><init>(Ljava/lang/String;Lcom/ubix/ssp/ad/e/b0/h/u/c;Lcom/ubix/ssp/ad/e/b0/h/t/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ubix/ssp/ad/e/b0/h/u/c;Lcom/ubix/ssp/ad/e/b0/h/t/b;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/b0/h/u/c;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->a:Lcom/ubix/ssp/ad/e/b0/h/u/c;

    invoke-static {p3}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ubix/ssp/ad/e/b0/h/t/b;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->b:Lcom/ubix/ssp/ad/e/b0/h/t/b;

    invoke-interface {p2, p1}, Lcom/ubix/ssp/ad/e/b0/h/u/c;->a(Ljava/lang/String;)Lcom/ubix/ssp/ad/e/b0/h/q;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/ubix/ssp/ad/e/b0/h/q;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-wide/32 v0, -0x80000000

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/ubix/ssp/ad/e/b0/h/q;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    iput-object p2, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)J
    .locals 2

    .line 3
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/net/HttpURLConnection;JI)J
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/h;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    const/16 p1, 0xc8

    if-ne p4, p1, :cond_0

    return-wide v0

    :cond_0
    const/16 p1, 0xce

    if-ne p4, p1, :cond_1

    add-long/2addr v0, p2

    return-wide v0

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-wide p1, p1, Lcom/ubix/ssp/ad/e/b0/h/q;->b:J

    return-wide p1
.end method

.method private a(JI)Ljava/net/HttpURLConnection;
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/h/q;->a:Ljava/lang/String;

    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :cond_1
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-direct {p0, v4, v0}, Lcom/ubix/ssp/ad/e/b0/h/h;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-lez v5, :cond_2

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

    invoke-virtual {v4, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-lez p3, :cond_3

    invoke-virtual {v4, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_5

    const/16 v6, 0x12e

    if-eq v5, v6, :cond_5

    const/16 v6, 0x12f

    if-ne v5, v6, :cond_4

    goto :goto_0

    :cond_4
    move v5, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v3

    :goto_1
    if-eqz v5, :cond_6

    const-string v0, "Location"

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    const/4 v6, 0x5

    if-gt v2, v6, :cond_7

    if-nez v5, :cond_1

    return-object v4

    :cond_7
    new-instance p1, Lcom/ubix/ssp/ad/e/b0/h/n;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many redirects: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ubix/ssp/ad/e/b0/h/n;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->b:Lcom/ubix/ssp/ad/e/b0/h/t/b;

    invoke-interface {v0, p2}, Lcom/ubix/ssp/ad/e/b0/h/t/b;->a(Ljava/lang/String;)Ljava/util/Map;

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

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 8

    const-wide/16 v0, 0x0

    const/16 v2, 0x2710

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lcom/ubix/ssp/ad/e/b0/h/h;->a(JI)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/e/b0/h/h;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v5, Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v6, v6, Lcom/ubix/ssp/ad/e/b0/h/q;->a:Ljava/lang/String;

    invoke-direct {v5, v6, v1, v2, v4}, Lcom/ubix/ssp/ad/e/b0/h/q;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v5, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->a:Lcom/ubix/ssp/ad/e/b0/h/u/c;

    iget-object v2, v5, Lcom/ubix/ssp/ad/e/b0/h/q;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Lcom/ubix/ssp/ad/e/b0/h/u/c;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/b0/h/q;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/b0/h/o;->a(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception v1

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_0

    :catch_0
    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v0, v3

    :goto_0
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/h/o;->a(Ljava/io/Closeable;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    throw v1

    :catch_1
    move-object v0, v3

    :goto_1
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/h/o;->a(Ljava/io/Closeable;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->e:Ljava/io/InputStream;

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
    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/b0/h/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ubix/ssp/ad/e/b0/h/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/b0/h/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ubix/ssp/ad/e/b0/h/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lcom/ubix/ssp/ad/e/b0/h/n;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/b0/h/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": connection is absent!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ubix/ssp/ad/e/b0/h/n;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized a()J
    .locals 4

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-wide v0, v0, Lcom/ubix/ssp/ad/e/b0/h/q;->b:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/h;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-wide v0, v0, Lcom/ubix/ssp/ad/e/b0/h/q;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(J)V
    .locals 5

    .line 6
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/e/b0/h/h;->a(JI)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->e:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/ubix/ssp/ad/e/b0/h/h;->a(Ljava/net/HttpURLConnection;JI)J

    move-result-wide v1

    new-instance v3, Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/b0/h/q;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/ubix/ssp/ad/e/b0/h/q;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->a:Lcom/ubix/ssp/ad/e/b0/h/u/c;

    iget-object v1, v3, Lcom/ubix/ssp/ad/e/b0/h/q;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/ubix/ssp/ad/e/b0/h/u/c;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/b0/h/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/h/n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/b0/h/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/ubix/ssp/ad/e/b0/h/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/h/q;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/h;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/h/q;->c:Ljava/lang/String;
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

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wait... "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/h/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpUrlSource{sourceInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/h;->c:Lcom/ubix/ssp/ad/e/b0/h/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

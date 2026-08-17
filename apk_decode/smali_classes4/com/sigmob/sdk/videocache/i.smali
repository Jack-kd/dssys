.class public Lcom/sigmob/sdk/videocache/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/videocache/t;


# static fields
.field private static final a:I = 0x5


# instance fields
.field private final b:Lcom/sigmob/sdk/videocache/sourcestorage/c;

.field private final c:Lcom/sigmob/sdk/videocache/headers/b;

.field private d:Lcom/sigmob/sdk/videocache/u;

.field private e:Ljava/net/HttpURLConnection;

.field private f:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videocache/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/sigmob/sdk/videocache/t;->d()Lcom/sigmob/sdk/videocache/u;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    invoke-interface {p1}, Lcom/sigmob/sdk/videocache/t;->e()Lcom/sigmob/sdk/videocache/sourcestorage/c;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/i;->b:Lcom/sigmob/sdk/videocache/sourcestorage/c;

    invoke-interface {p1}, Lcom/sigmob/sdk/videocache/t;->f()Lcom/sigmob/sdk/videocache/headers/b;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videocache/i;->c:Lcom/sigmob/sdk/videocache/headers/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/videocache/sourcestorage/d;->a()Lcom/sigmob/sdk/videocache/sourcestorage/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/videocache/i;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/videocache/sourcestorage/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/videocache/sourcestorage/c;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/sigmob/sdk/videocache/headers/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/videocache/headers/a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/videocache/i;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/videocache/sourcestorage/c;Lcom/sigmob/sdk/videocache/headers/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/videocache/sourcestorage/c;Lcom/sigmob/sdk/videocache/headers/b;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/sigmob/sdk/videocache/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/videocache/sourcestorage/c;

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/i;->b:Lcom/sigmob/sdk/videocache/sourcestorage/c;

    invoke-static {p3}, Lcom/sigmob/sdk/videocache/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sigmob/sdk/videocache/headers/b;

    iput-object p3, p0, Lcom/sigmob/sdk/videocache/i;->c:Lcom/sigmob/sdk/videocache/headers/b;

    invoke-interface {p2, p1}, Lcom/sigmob/sdk/videocache/sourcestorage/c;->a(Ljava/lang/String;)Lcom/sigmob/sdk/videocache/u;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/sigmob/sdk/videocache/u;

    const-wide/32 v0, -0x80000000

    invoke-static {p1}, Lcom/sigmob/sdk/videocache/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/sigmob/sdk/videocache/u;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    iput-object p2, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/i;->a(Ljava/net/HttpURLConnection;)J

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
    iget-object p1, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    iget-wide p1, p1, Lcom/sigmob/sdk/videocache/u;->b:J

    return-wide p1
.end method

.method private a(JI)Ljava/net/HttpURLConnection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    iget-object v0, v0, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/i;->f:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/sigmob/sdk/videocache/q;->a(Ljava/io/Closeable;)V

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    move v4, v1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Open connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v6, p1, v2

    if-lez v6, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " with offset "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    const-string v7, ""

    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    iput-object v5, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v5, v0}, Lcom/sigmob/sdk/videocache/i;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    if-lez v6, :cond_3

    iget-object v5, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Range"

    invoke-virtual {v5, v7, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-lez p3, :cond_4

    iget-object v5, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object v5, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_4
    iget-object v5, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_6

    const/16 v6, 0x12e

    if-eq v5, v6, :cond_6

    const/16 v6, 0x12f

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    move v5, v1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_8

    iget-object v6, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    const-string v7, "Location"

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/net/URI;->isAbsolute()Z

    move-result v8

    if-nez v8, :cond_7

    :try_start_1
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v7}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_7
    add-int/lit8 v4, v4, 0x1

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v6

    :cond_8
    const/4 v6, 0x5

    if-gt v4, v6, :cond_9

    if-nez v5, :cond_1

    goto :goto_3

    :cond_9
    new-instance p1, Lcom/sigmob/sdk/videocache/p;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many redirects: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/videocache/p;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->c:Lcom/sigmob/sdk/videocache/headers/b;

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

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read content info from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    iget-object v1, v1, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/16 v2, 0xbb8

    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/videocache/i;->a(JI)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/videocache/i;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/sigmob/sdk/videocache/u;

    iget-object v4, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    iget-object v4, v4, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/sigmob/sdk/videocache/u;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->b:Lcom/sigmob/sdk/videocache/sourcestorage/c;

    iget-object v1, v3, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/sigmob/sdk/videocache/sourcestorage/c;->a(Ljava/lang/String;Lcom/sigmob/sdk/videocache/u;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source info fetched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error fetching info from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

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
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->f:Ljava/io/InputStream;

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

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

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

    iget-object v2, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

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

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    iget-object v1, v1, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": connection is absent!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sigmob/sdk/videocache/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized a()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    iget-wide v0, v0, Lcom/sigmob/sdk/videocache/u;->b:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/i;->h()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    iget-wide v0, v0, Lcom/sigmob/sdk/videocache/u;->b:J
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    .line 6
    const/16 v0, 0xbb8

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/videocache/i;->a(JI)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/sigmob/sdk/videocache/i;->f:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/sigmob/sdk/videocache/i;->a(Ljava/net/HttpURLConnection;JI)J

    move-result-wide v1

    new-instance v3, Lcom/sigmob/sdk/videocache/u;

    iget-object v4, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    iget-object v4, v4, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/sigmob/sdk/videocache/u;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->b:Lcom/sigmob/sdk/videocache/sourcestorage/c;

    iget-object v1, v3, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/sigmob/sdk/videocache/sourcestorage/c;->a(Ljava/lang/String;Lcom/sigmob/sdk/videocache/u;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sigmob/sdk/videocache/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

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

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error closing connection correctly. Should happen only on SigmobAndroid L. Until good solution is not know, just ignore this issue :("

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wait... but why? WTF!? "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
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
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    iget-object v0, v0, Lcom/sigmob/sdk/videocache/u;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/videocache/i;->h()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

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

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    return-object v0
.end method

.method public e()Lcom/sigmob/sdk/videocache/sourcestorage/c;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->b:Lcom/sigmob/sdk/videocache/sourcestorage/c;

    return-object v0
.end method

.method public f()Lcom/sigmob/sdk/videocache/headers/b;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->c:Lcom/sigmob/sdk/videocache/headers/b;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    iget-object v0, v0, Lcom/sigmob/sdk/videocache/u;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpUrlSource{sourceInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/i;->d:Lcom/sigmob/sdk/videocache/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

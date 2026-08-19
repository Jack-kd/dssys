.class Lcom/sigmob/sdk/videocache/g;
.super Lcom/sigmob/sdk/videocache/o;


# static fields
.field private static final a:F = 0.2f


# instance fields
.field private final b:Lcom/sigmob/sdk/videocache/t;

.field private final c:Lcom/sigmob/sdk/videocache/file/b;

.field private d:Lcom/sigmob/sdk/videocache/d;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videocache/t;Lcom/sigmob/sdk/videocache/file/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videocache/o;-><init>(Lcom/sigmob/sdk/videocache/t;Lcom/sigmob/sdk/videocache/c;)V

    iput-object p2, p0, Lcom/sigmob/sdk/videocache/g;->c:Lcom/sigmob/sdk/videocache/file/b;

    iput-object p1, p0, Lcom/sigmob/sdk/videocache/g;->b:Lcom/sigmob/sdk/videocache/t;

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/io/OutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    const/16 v0, 0x2000

    new-array v1, v0, [B

    :goto_0
    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/sigmob/sdk/videocache/o;->a([BJI)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr p2, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/videocache/f;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/g;->b:Lcom/sigmob/sdk/videocache/t;

    invoke-interface {v0}, Lcom/sigmob/sdk/videocache/t;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/sigmob/sdk/videocache/g;->c:Lcom/sigmob/sdk/videocache/file/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/videocache/file/b;->a()J

    move-result-wide v5

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/sigmob/sdk/videocache/f;->c:Z

    if-eqz v2, :cond_2

    iget-wide v7, p1, Lcom/sigmob/sdk/videocache/f;->b:J

    long-to-float p1, v7

    long-to-float v2, v5

    long-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    return v4
.end method

.method private b(Lcom/sigmob/sdk/videocache/f;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/g;->b:Lcom/sigmob/sdk/videocache/t;

    invoke-interface {v0}, Lcom/sigmob/sdk/videocache/t;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/videocache/g;->c:Lcom/sigmob/sdk/videocache/file/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videocache/file/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/videocache/g;->c:Lcom/sigmob/sdk/videocache/file/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videocache/file/b;->a()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sigmob/sdk/videocache/g;->b:Lcom/sigmob/sdk/videocache/t;

    invoke-interface {v2}, Lcom/sigmob/sdk/videocache/t;->a()J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iget-boolean v7, p1, Lcom/sigmob/sdk/videocache/f;->c:Z

    if-eqz v7, :cond_2

    iget-wide v8, p1, Lcom/sigmob/sdk/videocache/f;->b:J

    sub-long v8, v2, v8

    goto :goto_2

    :cond_2
    move-wide v8, v2

    :goto_2
    if-eqz v4, :cond_3

    if-eqz v7, :cond_3

    move v5, v6

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p1, Lcom/sigmob/sdk/videocache/f;->c:Z

    if-eqz v7, :cond_4

    const-string v7, "HTTP/1.1 206 PARTIAL CONTENT\n"

    goto :goto_3

    :cond_4
    const-string v7, "HTTP/1.1 200 OK\n"

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Accept-Ranges: bytes\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ""

    if-eqz v4, :cond_5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v8, "Content-Length: %d\n"

    invoke-direct {p0, v8, v4}, Lcom/sigmob/sdk/videocache/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v7

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_6

    iget-wide v4, p1, Lcom/sigmob/sdk/videocache/f;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p1, v4, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Content-Range: bytes %d-%d/%d\n"

    invoke-direct {p0, v2, p1}, Lcom/sigmob/sdk/videocache/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_6
    move-object p1, v7

    :goto_5
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_7

    const-string p1, "Content-Type: %s\n"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/videocache/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/videocache/p;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/g;->b:Lcom/sigmob/sdk/videocache/t;

    invoke-static {v0}, Lcom/sigmob/sdk/videocache/s;->a(Lcom/sigmob/sdk/videocache/t;)Lcom/sigmob/sdk/videocache/t;

    move-result-object v0

    long-to-int p2, p2

    int-to-long p2, p2

    :try_start_0
    invoke-interface {v0, p2, p3}, Lcom/sigmob/sdk/videocache/t;->a(J)V

    const/16 p2, 0x2000

    new-array p2, p2, [B

    :goto_0
    invoke-interface {v0, p2}, Lcom/sigmob/sdk/videocache/t;->a([B)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcom/sigmob/sdk/videocache/t;->b()V

    return-void

    :goto_1
    invoke-interface {v0}, Lcom/sigmob/sdk/videocache/t;->b()V

    throw p1
.end method

.method private c(Lcom/sigmob/sdk/videocache/f;)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HTTP/1.1 404 Not Found\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videocache/g;->d:Lcom/sigmob/sdk/videocache/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/g;->c:Lcom/sigmob/sdk/videocache/file/b;

    iget-object v1, v1, Lcom/sigmob/sdk/videocache/file/b;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/sigmob/sdk/videocache/g;->b:Lcom/sigmob/sdk/videocache/t;

    invoke-interface {v2}, Lcom/sigmob/sdk/videocache/t;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/sigmob/sdk/videocache/d;->a(Ljava/io/File;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/videocache/d;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/videocache/g;->d:Lcom/sigmob/sdk/videocache/d;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videocache/f;Ljava/net/Socket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sigmob/sdk/videocache/p;
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/g;->b(Lcom/sigmob/sdk/videocache/f;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    iget-wide v1, p1, Lcom/sigmob/sdk/videocache/f;->b:J

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videocache/g;->a(Lcom/sigmob/sdk/videocache/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/videocache/g;->a(Ljava/io/OutputStream;J)V

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/videocache/g;->b(Ljava/io/OutputStream;J)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 6
    invoke-super {p0, p1}, Lcom/sigmob/sdk/videocache/o;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/g;->d:Lcom/sigmob/sdk/videocache/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/g;->b:Lcom/sigmob/sdk/videocache/t;

    invoke-interface {v1}, Lcom/sigmob/sdk/videocache/t;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sigmob/sdk/videocache/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

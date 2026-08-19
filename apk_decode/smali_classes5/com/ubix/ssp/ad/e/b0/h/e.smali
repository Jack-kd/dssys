.class Lcom/ubix/ssp/ad/e/b0/h/e;
.super Lcom/ubix/ssp/ad/e/b0/h/m;


# instance fields
.field private final i:Lcom/ubix/ssp/ad/e/b0/h/h;

.field private final j:Lcom/ubix/ssp/ad/e/b0/h/s/b;

.field private k:Lcom/ubix/ssp/ad/e/b0/h/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/h/h;Lcom/ubix/ssp/ad/e/b0/h/s/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/e/b0/h/m;-><init>(Lcom/ubix/ssp/ad/e/b0/h/p;Lcom/ubix/ssp/ad/e/b0/h/a;)V

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->j:Lcom/ubix/ssp/ad/e/b0/h/s/b;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->i:Lcom/ubix/ssp/ad/e/b0/h/h;

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

    .line 5
    const/16 v0, 0x2000

    new-array v1, v0, [B

    :goto_0
    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/ubix/ssp/ad/e/b0/h/m;->a([BJI)I

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

.method private a(Lcom/ubix/ssp/ad/e/b0/h/d;)Z
    .locals 9

    .line 6
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->i:Lcom/ubix/ssp/ad/e/b0/h/h;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/h/h;->a()J

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
    iget-object v5, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->j:Lcom/ubix/ssp/ad/e/b0/h/s/b;

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/e/b0/h/s/b;->b()J

    move-result-wide v5

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/ubix/ssp/ad/e/b0/h/d;->e:Z

    if-eqz v2, :cond_2

    iget-wide v7, p1, Lcom/ubix/ssp/ad/e/b0/h/d;->d:J

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

.method private b(Lcom/ubix/ssp/ad/e/b0/h/d;)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->i:Lcom/ubix/ssp/ad/e/b0/h/h;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/h/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->j:Lcom/ubix/ssp/ad/e/b0/h/s/b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/b0/h/s/b;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->j:Lcom/ubix/ssp/ad/e/b0/h/s/b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/b0/h/s/b;->b()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->i:Lcom/ubix/ssp/ad/e/b0/h/h;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/b0/h/h;->a()J

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
    iget-boolean v7, p1, Lcom/ubix/ssp/ad/e/b0/h/d;->e:Z

    if-eqz v7, :cond_2

    iget-wide v8, p1, Lcom/ubix/ssp/ad/e/b0/h/d;->d:J

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

    iget-boolean v7, p1, Lcom/ubix/ssp/ad/e/b0/h/d;->e:Z

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

    invoke-direct {p0, v8, v4}, Lcom/ubix/ssp/ad/e/b0/h/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v7

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_6

    iget-wide v4, p1, Lcom/ubix/ssp/ad/e/b0/h/d;->d:J

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

    invoke-direct {p0, v2, p1}, Lcom/ubix/ssp/ad/e/b0/h/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_6
    move-object p1, v7

    :goto_5
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_7

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Content-Type: %s\n"

    invoke-direct {p0, v0, p1}, Lcom/ubix/ssp/ad/e/b0/h/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 2
    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/h;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->i:Lcom/ubix/ssp/ad/e/b0/h/h;

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/e/b0/h/h;-><init>(Lcom/ubix/ssp/ad/e/b0/h/h;)V

    long-to-int p2, p2

    int-to-long p2, p2

    :try_start_0
    invoke-virtual {v0, p2, p3}, Lcom/ubix/ssp/ad/e/b0/h/h;->a(J)V

    const/16 p2, 0x2000

    new-array p2, p2, [B

    :goto_0
    invoke-virtual {v0, p2}, Lcom/ubix/ssp/ad/e/b0/h/h;->a([B)I

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

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/h/h;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/h/h;->close()V

    throw p1
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->k:Lcom/ubix/ssp/ad/e/b0/h/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->j:Lcom/ubix/ssp/ad/e/b0/h/s/b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/b0/h/s/b;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->i:Lcom/ubix/ssp/ad/e/b0/h/h;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/b0/h/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/ubix/ssp/ad/e/b0/h/b;->a(Ljava/io/File;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/b0/h/b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/e;->k:Lcom/ubix/ssp/ad/e/b0/h/b;

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/b0/h/d;Ljava/net/Socket;)V
    .locals 3

    .line 4
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/e;->b(Lcom/ubix/ssp/ad/e/b0/h/d;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    iget-wide v1, p1, Lcom/ubix/ssp/ad/e/b0/h/d;->d:J

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/e;->a(Lcom/ubix/ssp/ad/e/b0/h/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, v1, v2}, Lcom/ubix/ssp/ad/e/b0/h/e;->a(Ljava/io/OutputStream;J)V

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/ubix/ssp/ad/e/b0/h/e;->b(Ljava/io/OutputStream;J)V

    return-void
.end method

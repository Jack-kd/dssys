.class Lcom/ubix/ssp/ad/e/v/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/File;

.field private c:I

.field private d:Z

.field private e:Lcom/ubix/ssp/ad/e/v/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/ubix/ssp/ad/e/v/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/v/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/v/d;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/v/d;->e:Lcom/ubix/ssp/ad/e/v/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/v/d;->c:I

    return v0
.end method

.method public run()V
    .locals 14

    const-string v0, "\u8d44\u6e90\u4e0b\u8f7d\u9519\u8bef"

    const-string v1, "\u5173\u95ed\u6587\u4ef6\u8fc7\u7a0b\u4e2d \u53d1\u751f\u5f02\u5e38"

    const-string v2, "ResourceDownloadManager"

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_0
    iput v3, p0, Lcom/ubix/ssp/ad/e/v/d;->c:I

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/v/d;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/x/c;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lcom/ubix/ssp/ad/e/v/d;->b:Ljava/io/File;

    const-string v9, "rwd"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v9, 0x2000

    :try_start_3
    new-array v9, v9, [B

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-eq v10, v11, :cond_1

    iget-boolean v11, p0, Lcom/ubix/ssp/ad/e/v/d;->d:Z

    if-eqz v11, :cond_0

    const-string v9, "\u4e0b\u8f7d\u8fc7\u7a0b \u8bbe\u7f6e\u4e86 \u6682\u505c"

    invoke-static {v2, v9}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_0
    move-exception v0

    :goto_1
    move-object v6, v7

    goto/16 :goto_8

    :catch_1
    move-exception v9

    goto/16 :goto_5

    :cond_0
    :try_start_5
    invoke-virtual {v7, v9, v12, v10}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/ubix/ssp/ad/e/v/d;->b:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/ubix/ssp/ad/e/v/d;->b:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const-string v13, "."

    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/ubix/ssp/ad/e/v/d;->b:Ljava/io/File;

    invoke-virtual {v10, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x2

    iput v10, p0, Lcom/ubix/ssp/ad/e/v/d;->c:I

    iget-object v10, p0, Lcom/ubix/ssp/ad/e/v/d;->e:Lcom/ubix/ssp/ad/e/v/b;

    if-eqz v10, :cond_4

    iget-object v11, p0, Lcom/ubix/ssp/ad/e/v/d;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v11, v9}, Lcom/ubix/ssp/ad/e/v/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lcom/ubix/ssp/ad/e/v/d;->b:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/ubix/ssp/ad/e/v/d;->b:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_3
    iput v5, p0, Lcom/ubix/ssp/ad/e/v/d;->c:I

    iget-object v9, p0, Lcom/ubix/ssp/ad/e/v/d;->e:Lcom/ubix/ssp/ad/e/v/b;

    if-eqz v9, :cond_4

    iget-object v10, p0, Lcom/ubix/ssp/ad/e/v/d;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v11

    invoke-interface {v9, v10, v11, v6}, Lcom/ubix/ssp/ad/e/v/b;->a(Ljava/lang/String;Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :goto_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    :catch_2
    move-exception v0

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v8, v6

    goto :goto_1

    :catch_3
    move-exception v9

    move-object v8, v6

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v7

    move-object v9, v7

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v6

    goto :goto_3

    :catch_5
    move-exception v3

    move-object v9, v3

    move-object v3, v6

    goto :goto_4

    :goto_3
    move-object v8, v6

    goto :goto_8

    :goto_4
    move-object v7, v6

    move-object v8, v7

    :goto_5
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v9, p0, Lcom/ubix/ssp/ad/e/v/d;->b:Ljava/io/File;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/ubix/ssp/ad/e/v/d;->b:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v9

    :try_start_9
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_6
    iput v5, p0, Lcom/ubix/ssp/ad/e/v/d;->c:I

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/v/d;->e:Lcom/ubix/ssp/ad/e/v/b;

    if-eqz v5, :cond_6

    iget-object v9, p0, Lcom/ubix/ssp/ad/e/v/d;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-interface {v5, v9, v0, v6}, Lcom/ubix/ssp/ad/e/v/b;->a(Ljava/lang/String;Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_6
    if-eqz v7, :cond_7

    :try_start_a
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_9
    :goto_7
    return-void

    :goto_8
    if-eqz v6, :cond_a

    :try_start_b
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_9

    :catch_6
    move-exception v3

    goto :goto_a

    :cond_a
    :goto_9
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_b

    :goto_a
    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_b
    throw v0
.end method

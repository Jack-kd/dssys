.class public Lcom/ubix/ssp/ad/e/s/i/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ubix/ssp/ad/e/s/g/a;

.field private c:Lcom/ubix/ssp/ad/e/s/g/b;

.field private d:Lcom/ubix/ssp/ad/e/s/h/a;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/a;Lcom/ubix/ssp/ad/e/s/h/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ubix/ssp/ad/e/s/i/b;-><init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/a;Lcom/ubix/ssp/ad/e/s/h/a;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/a;Lcom/ubix/ssp/ad/e/s/h/a;Z)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/s/i/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/s/i/b;->b:Lcom/ubix/ssp/ad/e/s/g/a;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/s/i/b;->d:Lcom/ubix/ssp/ad/e/s/h/a;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    iput-boolean p4, p0, Lcom/ubix/ssp/ad/e/s/i/b;->f:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u6784\u9020\u51fd\u6570 -> \u521d\u59cb\u5316 mFileInfo="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "DownloadTask"

    invoke-static {p4, p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ubix/ssp/ad/e/s/h/a;->b(Ljava/lang/String;)Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/b;->a()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/b;->g()J

    move-result-wide v5

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    move-wide v1, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ubix/ssp/ad/e/s/h/a;->a(Ljava/lang/String;)V

    :cond_1
    move-wide v3, v1

    goto :goto_2

    :cond_2
    :goto_0
    move-wide v1, v5

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    move-wide v5, v1

    :goto_1
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-wide v3, v1

    goto :goto_0

    :goto_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {p1, v1, v2}, Lcom/ubix/ssp/ad/e/s/g/b;->b(J)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {p1, v3, v4}, Lcom/ubix/ssp/ad/e/s/g/b;->a(J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6784\u9020\u51fd\u6570() -> \u521d\u59cb\u5316\u5b8c\u6bd5  mFileInfo="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    :try_start_0
    const-string v1, "filename=\"(.*?)\""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private a()V
    .locals 20

    .line 2
    move-object/from16 v1, p0

    const-string v2, ""

    const-string v3, "ACTION_FAIL"

    const-string v4, "\u8d44\u6e90\u4e0b\u8f7d\u9519\u8bef"

    const-string v5, "error"

    const-string v6, "\u5173\u95ed\u6587\u4ef6\u8fc7\u7a0b\u4e2d \u53d1\u751f\u5f02\u5e38"

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    const/16 v7, 0x2b

    invoke-virtual {v0, v7}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u51c6\u5907\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ; "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "DownloadTask"

    invoke-static {v7, v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v0, "ACTION_PREPARE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v0

    const-string v9, "service_intent_unique_id"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v0

    const-string v9, "service_intent_notify_id"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v8}, Lcom/ubix/ssp/ad/e/s/i/b;->a(Landroid/content/Intent;)V

    const/4 v9, 0x5

    const/16 v10, 0x2f

    :try_start_0
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/s/i/b;->b:Lcom/ubix/ssp/ad/e/s/g/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/x/c;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    invoke-virtual {v12}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v12}, Ljava/net/URLConnection;->getContentLength()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    const-string v11, "\u6587\u4ef6\u5927\u5c0f = "

    if-gtz v15, :cond_1

    :try_start_2
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/s/i/b;->b:Lcom/ubix/ssp/ad/e/s/g/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/s/i/b;->b:Lcom/ubix/ssp/ad/e/s/g/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "\t, \u7ec8\u6b62\u4e0b\u8f7d\u8fc7\u7a0b"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {v0, v10}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    invoke-static {v9, v4}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/s/i/b;->d:Lcom/ubix/ssp/ad/e/s/h/a;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/ubix/ssp/ad/e/s/i/b;->b:Lcom/ubix/ssp/ad/e/s/g/a;

    invoke-virtual {v13}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/ubix/ssp/ad/e/s/h/a;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/ubix/ssp/ad/e/s/i/b;->a(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-static {v7, v6}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_1
    :try_start_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {v11, v13, v14}, Lcom/ubix/ssp/ad/e/s/g/b;->b(J)V

    new-instance v11, Ljava/io/RandomAccessFile;

    iget-object v13, v1, Lcom/ubix/ssp/ad/e/s/i/b;->b:Lcom/ubix/ssp/ad/e/s/g/a;

    invoke-virtual {v13}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object v13

    const-string v14, "rwd"

    invoke-direct {v11, v13, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const-string v0, "Range"

    :try_start_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bytes="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {v14}, Lcom/ubix/ssp/ad/e/s/g/b;->a()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v0, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/16 v0, 0x2000

    :try_start_7
    new-array v0, v0, [B

    iget-object v14, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {v14}, Lcom/ubix/ssp/ad/e/s/g/b;->a()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v14, "content-disposition"

    invoke-virtual {v13, v14}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string v15, "filename"

    const-string v9, "ACTION_NEW_NAME"

    if-eqz v14, :cond_2

    :try_start_8
    invoke-direct {v1, v14}, Lcom/ubix/ssp/ad/e/s/i/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {v8, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    move-object/from16 v16, v12

    move-object v12, v13

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v19, v11

    move-object v11, v12

    move-object v12, v13

    goto/16 :goto_7

    :cond_2
    :try_start_9
    iget-object v14, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {v14}, Lcom/ubix/ssp/ad/e/s/g/b;->d()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-nez v16, :cond_3

    :try_start_a
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :goto_3
    invoke-virtual {v1, v8}, Lcom/ubix/ssp/ad/e/s/i/b;->a(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_3
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    :goto_4
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    iget-boolean v10, v1, Lcom/ubix/ssp/ad/e/s/i/b;->e:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move/from16 v16, v10

    const/4 v10, 0x0

    if-eqz v16, :cond_4

    :try_start_c
    const-string v0, "\u4e0b\u8f7d\u8fc7\u7a0b \u8bbe\u7f6e\u4e86 \u6682\u505c"

    invoke-static {v7, v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    const/16 v9, 0x2d

    invoke-virtual {v0, v9}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    iput-boolean v10, v1, Lcom/ubix/ssp/ad/e/s/i/b;->e:Z

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/s/i/b;->d:Lcom/ubix/ssp/ad/e/s/h/a;

    iget-object v9, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {v0, v9}, Lcom/ubix/ssp/ad/e/s/h/a;->a(Lcom/ubix/ssp/ad/e/s/g/b;)V

    const-string v0, "ACTION_PAUSE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v8}, Lcom/ubix/ssp/ad/e/s/i/b;->a(Landroid/content/Intent;)V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    return-void

    :cond_4
    :try_start_e
    invoke-virtual {v11, v0, v10, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v10, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/s/g/b;->a()J

    move-result-wide v17
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v19, v11

    move-object/from16 v16, v12

    int-to-long v11, v9

    add-long v11, v17, v11

    :try_start_f
    invoke-virtual {v10, v11, v12}, Lcom/ubix/ssp/ad/e/s/g/b;->a(J)V

    iget-object v9, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    const-string v9, "ACTION_LOADING"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v14

    const-wide/16 v11, 0x3e8

    cmp-long v9, v9, v11

    if-ltz v9, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iget-object v9, v1, Lcom/ubix/ssp/ad/e/s/i/b;->d:Lcom/ubix/ssp/ad/e/s/h/a;

    iget-object v10, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {v9, v10}, Lcom/ubix/ssp/ad/e/s/h/a;->a(Lcom/ubix/ssp/ad/e/s/g/b;)V

    invoke-virtual {v1, v8}, Lcom/ubix/ssp/ad/e/s/i/b;->a(Landroid/content/Intent;)V

    :cond_5
    move-object/from16 v12, v16

    move-object/from16 v11, v19

    const/16 v10, 0x2f

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v12, v13

    move-object/from16 v11, v19

    goto/16 :goto_a

    :catch_3
    move-exception v0

    :goto_5
    move-object v12, v13

    move-object/from16 v11, v16

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v19, v11

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v19, v11

    move-object/from16 v16, v12

    goto :goto_5

    :cond_6
    move-object/from16 v19, v11

    move-object/from16 v16, v12

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    const/16 v9, 0x2e

    invoke-virtual {v0, v9}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    const-string v0, "ACTION_COMPLETE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/s/i/b;->d:Lcom/ubix/ssp/ad/e/s/h/a;

    iget-object v9, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {v0, v9}, Lcom/ubix/ssp/ad/e/s/h/a;->a(Lcom/ubix/ssp/ad/e/s/g/b;)V

    invoke-virtual {v1, v8}, Lcom/ubix/ssp/ad/e/s/i/b;->a(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    return-void

    :catch_5
    move-exception v0

    invoke-static {v7, v6}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_d

    :catchall_4
    move-exception v0

    move-object/from16 v19, v11

    move-object v12, v13

    goto :goto_9

    :catch_6
    move-exception v0

    move-object/from16 v19, v11

    move-object v12, v13

    :goto_6
    const/4 v11, 0x0

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v19, v11

    goto :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v19, v11

    goto :goto_6

    :goto_7
    move-object/from16 v16, v11

    move-object/from16 v11, v19

    goto :goto_c

    :catchall_6
    move-exception v0

    const/4 v12, 0x0

    goto :goto_8

    :catch_8
    move-exception v0

    const/4 v12, 0x0

    goto :goto_b

    :goto_8
    const/4 v11, 0x0

    :goto_9
    const/16 v16, 0x0

    :goto_a
    move-object v2, v0

    goto :goto_e

    :goto_b
    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_c
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    const/16 v9, 0x2f

    invoke-virtual {v0, v9}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    const/4 v9, 0x5

    invoke-static {v9, v4}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/s/i/b;->d:Lcom/ubix/ssp/ad/e/s/h/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/ubix/ssp/ad/e/s/i/b;->b:Lcom/ubix/ssp/ad/e/s/g/a;

    invoke-virtual {v4}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ubix/ssp/ad/e/s/h/a;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/ubix/ssp/ad/e/s/i/b;->a(Landroid/content/Intent;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    if-eqz v11, :cond_7

    :try_start_12
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    :cond_9
    :goto_d
    return-void

    :catchall_7
    move-exception v0

    goto :goto_a

    :goto_e
    if-eqz v11, :cond_a

    :try_start_13
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_f

    :catch_9
    move-exception v0

    goto :goto_10

    :cond_a
    :goto_f
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    goto :goto_11

    :goto_10
    invoke-static {v7, v6}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_11
    throw v2
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/i/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/m;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public b()Lcom/ubix/ssp/ad/e/s/g/a;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/i/b;->b:Lcom/ubix/ssp/ad/e/s/g/a;

    return-object v0
.end method

.method public c()Lcom/ubix/ssp/ad/e/s/g/b;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/i/b;->c:Lcom/ubix/ssp/ad/e/s/g/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/b;->b()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x2f

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/s/i/b;->f:Z

    return v0
.end method

.method public declared-synchronized f()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/s/i/b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/s/i/b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/s/i/b;->a()V

    return-void
.end method

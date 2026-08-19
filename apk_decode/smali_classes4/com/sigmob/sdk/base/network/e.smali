.class public Lcom/sigmob/sdk/base/network/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/network/e$a;,
        Lcom/sigmob/sdk/base/network/e$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "e"

.field private static final g:I = 0x1000


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private volatile e:Z

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/network/e;->b:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/network/e;->c:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/network/e;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a(JJ)I
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr p3, v0

    div-long/2addr p3, p1

    long-to-int p1, p3

    return p1
.end method

.method private a(Ljava/net/HttpURLConnection;)J
    .locals 4

    .line 2
    :try_start_0
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/base/network/e;->b(Ljava/net/HttpURLConnection;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-static {p1}, Lcom/sigmob/sdk/base/network/e;->b(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic a(Lcom/sigmob/sdk/base/network/e$a;Ljava/lang/Exception;Ljava/io/File;)V
    .locals 0

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/sigmob/sdk/base/network/e$a;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/Exception;)V
    .locals 0

    .line 6
    invoke-interface {p0, p1}, Lcom/sigmob/sdk/base/network/e$b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic a(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-interface {p0, p1}, Lcom/sigmob/sdk/base/network/e$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/net/HttpURLConnection;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static synthetic b(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/Exception;)V
    .locals 0

    .line 3
    invoke-interface {p0, p1}, Lcom/sigmob/sdk/base/network/e$b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic b(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-interface {p0, p1}, Lcom/sigmob/sdk/base/network/e$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$b;)V
    .locals 9

    .line 5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x2710

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 v1, 0x3a98

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/network/e;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GET response code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", response message = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v3}, Lcom/sigmob/sdk/base/network/e;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/sigmob/sdk/base/network/e;->c:Landroid/os/Handler;

    new-instance v5, Lcom/sigmob/sdk/base/network/m;

    invoke-direct {v5, p2, v4}, Lcom/sigmob/sdk/base/network/m;-><init>(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to connect after retries."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_2
    :try_start_3
    sget-object v2, Lcom/sigmob/sdk/base/network/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during GET request error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/e;->c:Landroid/os/Handler;

    new-instance v2, Lcom/sigmob/sdk/base/network/n;

    invoke-direct {v2, p2, v1}, Lcom/sigmob/sdk/base/network/n;-><init>(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/Exception;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-void

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw p2
.end method

.method private synthetic b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$a;)V
    .locals 16

    .line 6
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v9, v3

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x0

    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    move-object/from16 v11, p2

    invoke-direct {v0, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    const-string v0, "GET"

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x1388

    invoke-virtual {v11, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v0, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URLConnection;->connect()V

    iget-boolean v0, v1, Lcom/sigmob/sdk/base/network/e;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    :goto_1
    const/4 v13, 0x0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    const/4 v7, 0x0

    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_e

    :cond_1
    :try_start_2
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xc8

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-ne v0, v13, :cond_2

    move v13, v14

    goto :goto_3

    :cond_2
    move v13, v15

    :goto_3
    const/16 v5, 0xce

    if-ne v0, v5, :cond_3

    goto :goto_4

    :cond_3
    move v14, v15

    :goto_4
    sget-object v5, Lcom/sigmob/sdk/base/network/e;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloadFile: responseCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isOK = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isResumeSupported = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v14, :cond_5

    if-nez v13, :cond_5

    if-eqz v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP request failed with status code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", response message = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sigmob/sdk/base/network/e;->c:Landroid/os/Handler;

    new-instance v4, Lcom/sigmob/sdk/base/network/l;

    invoke-direct {v4, v2, v3, v8}, Lcom/sigmob/sdk/base/network/l;-><init>(Lcom/sigmob/sdk/base/network/e$a;Ljava/lang/Exception;Ljava/io/File;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_5
    if-nez v14, :cond_6

    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    const-wide/16 v9, 0x0

    :cond_6
    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v13, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v13, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-direct {v1, v11}, Lcom/sigmob/sdk/base/network/e;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-long/2addr v3, v6

    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-wide v5, v9

    invoke-interface/range {v2 .. v7}, Lcom/sigmob/sdk/base/network/e$a;->a(JJLjava/lang/String;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_5
    move-object v7, v12

    goto/16 :goto_f

    :catch_1
    move-exception v0

    move-object/from16 v2, p3

    :goto_6
    move-object v7, v13

    goto/16 :goto_e

    :cond_7
    move-object v0, v5

    move-wide v5, v9

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloadFile onStart: downloadedBytes = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", totalBytes = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", file = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v15, [Ljava/lang/Object;

    invoke-static {v0, v2, v7}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_8
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_c

    iget-boolean v7, v1, Lcom/sigmob/sdk/base/network/e;->f:Z

    if-eqz v7, :cond_8

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_8
    :try_start_8
    iget-boolean v7, v1, Lcom/sigmob/sdk/base/network/e;->e:Z

    if-eqz v7, :cond_a

    if-eqz p3, :cond_9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p3

    invoke-interface/range {v2 .. v7}, Lcom/sigmob/sdk/base/network/e$a;->b(JJLjava/lang/String;)V

    :cond_9
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_a
    :try_start_a
    iget-object v7, v1, Lcom/sigmob/sdk/base/network/e;->b:Ljava/lang/Object;

    monitor-enter v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {v13, v0, v15, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    int-to-long v9, v2

    add-long/2addr v5, v9

    if-eqz p3, :cond_b

    :try_start_c
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p3

    invoke-interface/range {v2 .. v7}, Lcom/sigmob/sdk/base/network/e$a;->c(JJLjava/lang/String;)V

    :cond_b
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sigmob/sdk/base/network/e;->a(JJ)I

    move-result v2

    sget-object v7, Lcom/sigmob/sdk/base/network/e;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "downloadFile onProgress: downloadedBytes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", totalBytes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", progress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", file = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v9, v15, [Ljava/lang/Object;

    invoke-static {v7, v2, v9}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    :try_start_d
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0

    :cond_c
    iget-boolean v0, v1, Lcom/sigmob/sdk/base/network/e;->f:Z

    if-eqz v0, :cond_d

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_d
    :try_start_10
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-boolean v0, v1, Lcom/sigmob/sdk/base/network/e;->e:Z

    if-eqz v0, :cond_e

    if-eqz p3, :cond_10

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object/from16 v2, p3

    :try_start_11
    invoke-interface/range {v2 .. v7}, Lcom/sigmob/sdk/base/network/e$a;->b(JJLjava/lang/String;)V

    goto :goto_c

    :catch_5
    move-exception v0

    goto/16 :goto_6

    :cond_e
    move-object/from16 v2, p3

    if-eqz v2, :cond_f

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Lcom/sigmob/sdk/base/network/e$a;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_f
    sget-object v0, Lcom/sigmob/sdk/base/network/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFile onCompleted: filename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fileSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v15, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_10
    :goto_c
    :try_start_12
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_17

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v7, v12

    goto/16 :goto_1

    :catch_7
    move-exception v0

    const/4 v7, 0x0

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto/16 :goto_1

    :catch_8
    move-exception v0

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto/16 :goto_2

    :goto_e
    if-eqz v2, :cond_14

    :try_start_13
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/sigmob/sdk/base/network/e$a;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v13, v7

    goto/16 :goto_5

    :goto_f
    if-eqz v7, :cond_11

    :try_start_14
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_10

    :catch_9
    move-exception v0

    goto :goto_11

    :cond_11
    :goto_10
    if-eqz v13, :cond_12

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_12

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    :goto_12
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13
    throw v2

    :cond_14
    :goto_13
    if-eqz v12, :cond_15

    :try_start_15
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_14

    :catch_a
    move-exception v0

    goto :goto_15

    :cond_15
    :goto_14
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_16

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    :goto_16
    if-eqz v11, :cond_17

    goto :goto_d

    :cond_17
    :goto_17
    return-void
.end method

.method private synthetic b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$b;)V
    .locals 6

    .line 7
    const-string v0, ", response message = "

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "POST"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x2710

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 v2, 0x3a98

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v2, "Content-Type"

    const-string v3, "application/json; charset=UTF-8"

    invoke-virtual {p1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto/16 :goto_2

    :catch_0
    move-exception p2

    move-object v2, p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sigmob/sdk/base/network/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POST response code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0xc8

    if-ne p2, v3, :cond_2

    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/network/e;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sigmob/sdk/base/network/e;->c:Landroid/os/Handler;

    new-instance v2, Lcom/sigmob/sdk/base/network/r;

    invoke-direct {v2, p3, v0}, Lcom/sigmob/sdk/base/network/r;-><init>(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected HTTP response code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_1
    :try_start_3
    sget-object p1, Lcom/sigmob/sdk/base/network/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during POST request error = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/sigmob/sdk/base/network/e;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/base/network/s;

    invoke-direct {v0, p3, p2}, Lcom/sigmob/sdk/base/network/s;-><init>(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/Exception;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-void

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw p2
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/network/e;->b(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/network/e;->a(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/base/network/e;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/network/e;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$b;)V

    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/base/network/e;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/network/e;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$b;)V

    return-void
.end method

.method public static synthetic g(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/network/e;->b(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lcom/sigmob/sdk/base/network/e;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/network/e;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$a;)V

    return-void
.end method

.method public static synthetic i(Lcom/sigmob/sdk/base/network/e$a;Ljava/lang/Exception;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/network/e;->a(Lcom/sigmob/sdk/base/network/e$a;Ljava/lang/Exception;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic j(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/network/e;->a(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/network/e;->e:Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$b;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sigmob/sdk/base/network/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/sdk/base/network/q;-><init>(Lcom/sigmob/sdk/base/network/e;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$a;)V
    .locals 2

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/network/e;->e:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/network/e;->f:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sigmob/sdk/base/network/o;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/sigmob/sdk/base/network/o;-><init>(Lcom/sigmob/sdk/base/network/e;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$b;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sigmob/sdk/base/network/p;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sigmob/sdk/base/network/p;-><init>(Lcom/sigmob/sdk/base/network/e;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/network/e;->f:Z

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/e;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/e;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

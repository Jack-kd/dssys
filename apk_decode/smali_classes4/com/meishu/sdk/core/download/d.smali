.class public Lcom/meishu/sdk/core/download/d;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# static fields
.field public static final g:Landroid/os/Handler;


# instance fields
.field public a:Lcom/meishu/sdk/core/download/b;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final d:Lokhttp3/OkHttpClient;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/meishu/sdk/core/download/h;",
            ">;"
        }
    .end annotation
.end field

.field public transient f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/meishu/sdk/core/download/d;->g:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/download/d;->b:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p2, Lokhttp3/OkHttpClient$Builder;

    .line 7
    .line 8
    invoke-direct {p2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/meishu/sdk/core/download/d;->d:Lokhttp3/OkHttpClient;

    .line 16
    .line 17
    new-instance p2, Lcom/meishu/sdk/core/download/b;

    .line 18
    .line 19
    invoke-direct {p2}, Lcom/meishu/sdk/core/download/b;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 23
    .line 24
    iput-object p1, p2, Lcom/meishu/sdk/core/download/b;->a:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 32
    .line 33
    invoke-static {}, Lcom/meishu/sdk/core/download/a;->b()Lcom/meishu/sdk/core/download/a;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p3}, Lcom/meishu/sdk/core/download/a;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    iput-object p3, p2, Lcom/meishu/sdk/core/download/b;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_0

    .line 48
    .line 49
    iget-object p2, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 50
    .line 51
    const-string p3, "/"

    .line 52
    .line 53
    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p4

    .line 57
    invoke-virtual {p1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p4, ""

    .line 62
    .line 63
    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p2, Lcom/meishu/sdk/core/download/b;->d:Ljava/lang/String;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object p4, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 77
    .line 78
    iget-object p4, p4, Lcom/meishu/sdk/core/download/b;->b:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide p3

    .line 90
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p3, ".apk"

    .line 94
    .line 95
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iput-object p2, p1, Lcom/meishu/sdk/core/download/b;->c:Ljava/lang/String;

    .line 103
    .line 104
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 105
    .line 106
    const/4 p2, 0x0

    .line 107
    iput p2, p1, Lcom/meishu/sdk/core/download/b;->g:I

    .line 108
    .line 109
    const-wide/16 p2, -0x1

    .line 110
    .line 111
    iput-wide p2, p1, Lcom/meishu/sdk/core/download/b;->e:J

    .line 112
    .line 113
    invoke-static {}, Lcom/meishu/sdk/core/download/a;->b()Lcom/meishu/sdk/core/download/a;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/meishu/sdk/core/download/a;->c()Lcom/meishu/sdk/core/download/g;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/meishu/sdk/core/download/g;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iput-object p1, p0, Lcom/meishu/sdk/core/download/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 126
    .line 127
    new-instance p1, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object p1, p0, Lcom/meishu/sdk/core/download/d;->e:Ljava/util/Map;

    .line 133
    .line 134
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    iget v1, v0, Lcom/meishu/sdk/core/download/b;->g:I

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 2
    iget-object v1, v0, Lcom/meishu/sdk/core/download/b;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    const-string v1, "filePath is null"

    invoke-virtual {p0, v0, v1}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    iget-object v2, v1, Lcom/meishu/sdk/core/download/b;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/meishu/sdk/core/download/b;->d:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    iget-wide v4, v3, Lcom/meishu/sdk/core/download/b;->e:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p0, v3, v0}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/io/File;)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    const-string v1, "filepath may be invalid or damaged"

    invoke-virtual {p0, v0, v1}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lcom/meishu/sdk/core/download/b;->g:I

    .line 9
    sget-object v1, Lcom/meishu/sdk/core/download/d;->g:Landroid/os/Handler;

    new-instance v2, Lcom/meishu/sdk/core/download/e;

    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/core/download/e;-><init>(Lcom/meishu/sdk/core/download/d;Lcom/meishu/sdk/core/download/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/core/download/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/meishu/sdk/core/download/b;Ljava/io/File;)V
    .locals 3

    .line 11
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p1, Lcom/meishu/sdk/core/download/b;->d:Ljava/lang/String;

    .line 13
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v2, p1, Lcom/meishu/sdk/core/download/b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/meishu/sdk/core/utils/m1;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/meishu/sdk/core/download/b;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 p2, 0x5

    .line 18
    iput p2, p1, Lcom/meishu/sdk/core/download/b;->g:I

    .line 19
    sget-object p2, Lcom/meishu/sdk/core/download/d;->g:Landroid/os/Handler;

    new-instance v0, Lcom/meishu/sdk/core/download/d$a;

    invoke-direct {v0, p0, p1, v1}, Lcom/meishu/sdk/core/download/d$a;-><init>(Lcom/meishu/sdk/core/download/d;Lcom/meishu/sdk/core/download/b;Ljava/io/File;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postOnError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadTask"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 21
    iput v0, p1, Lcom/meishu/sdk/core/download/b;->g:I

    .line 22
    sget-object v0, Lcom/meishu/sdk/core/download/d;->g:Landroid/os/Handler;

    new-instance v1, Lcom/meishu/sdk/core/download/d$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/meishu/sdk/core/download/d$b;-><init>(Lcom/meishu/sdk/core/download/d;Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/meishu/sdk/core/download/b;)V
    .locals 8

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    .line 23
    :try_start_0
    iput v0, p3, Lcom/meishu/sdk/core/download/b;->g:I

    const/16 v1, 0x2000

    .line 24
    new-array v1, v1, [B

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v3, p3, Lcom/meishu/sdk/core/download/b;->g:I

    if-ne v3, v0, :cond_1

    const/4 v3, 0x0

    .line 26
    invoke-virtual {p2, v1, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 27
    iget-wide v3, p3, Lcom/meishu/sdk/core/download/b;->f:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p3, Lcom/meishu/sdk/core/download/b;->f:J

    .line 28
    iget-wide v2, p3, Lcom/meishu/sdk/core/download/b;->h:J

    add-long/2addr v2, v5

    iput-wide v2, p3, Lcom/meishu/sdk/core/download/b;->h:J

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 30
    iget-wide v4, p0, Lcom/meishu/sdk/core/download/d;->f:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x12c

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 31
    iput-wide v2, p0, Lcom/meishu/sdk/core/download/d;->f:J

    .line 32
    sget-object v2, Lcom/meishu/sdk/core/download/d;->g:Landroid/os/Handler;

    new-instance v3, Lcom/meishu/sdk/core/download/c;

    invoke-direct {v3, p0, p3}, Lcom/meishu/sdk/core/download/c;-><init>(Lcom/meishu/sdk/core/download/d;Lcom/meishu/sdk/core/download/b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 33
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 34
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    :catch_0
    throw p3

    .line 36
    :catch_1
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 37
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 38
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 39
    :cond_3
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_1
    return-void
.end method

.method public notifyRunnableCatch(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 2
    .line 3
    const-string v0, "download runnable error"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public safeRun()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/meishu/sdk/core/download/b;->f:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v3, v1, v3

    .line 8
    .line 9
    if-gez v3, :cond_0

    .line 10
    .line 11
    const-string v1, "startPosition<0"

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/meishu/sdk/core/download/b;->d:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    .line 27
    .line 28
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "Range"

    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v6, "bytes="

    .line 39
    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v6, "-"

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v0, v4, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v4, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 60
    .line 61
    iget-object v4, v4, Lcom/meishu/sdk/core/download/b;->a:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v4, p0, Lcom/meishu/sdk/core/download/d;->d:Lokhttp3/OkHttpClient;

    .line 76
    .line 77
    invoke-virtual {v4, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 82
    .line 83
    .line 84
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    const/16 v5, 0x194

    .line 90
    .line 91
    if-eq v4, v5, :cond_d

    .line 92
    .line 93
    const/16 v5, 0x1f4

    .line 94
    .line 95
    if-lt v4, v5, :cond_2

    .line 96
    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    iget-object v0, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 106
    .line 107
    const-string v1, "response body is null"

    .line 108
    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_3
    iget-object v4, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 114
    .line 115
    iget-wide v5, v4, Lcom/meishu/sdk/core/download/b;->e:J

    .line 116
    .line 117
    const-wide/16 v7, -0x1

    .line 118
    .line 119
    cmp-long v5, v5, v7

    .line 120
    .line 121
    if-nez v5, :cond_4

    .line 122
    .line 123
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 124
    .line 125
    .line 126
    move-result-wide v5

    .line 127
    iput-wide v5, v4, Lcom/meishu/sdk/core/download/b;->e:J

    .line 128
    .line 129
    :cond_4
    new-instance v4, Ljava/io/File;

    .line 130
    .line 131
    iget-object v5, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 132
    .line 133
    iget-object v5, v5, Lcom/meishu/sdk/core/download/b;->b:Ljava/lang/String;

    .line 134
    .line 135
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-nez v5, :cond_5

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 145
    .line 146
    .line 147
    :cond_5
    iget-object v5, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 148
    .line 149
    iget-object v5, v5, Lcom/meishu/sdk/core/download/b;->c:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-nez v5, :cond_6

    .line 156
    .line 157
    new-instance v4, Ljava/io/File;

    .line 158
    .line 159
    iget-object v5, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 160
    .line 161
    iget-object v5, v5, Lcom/meishu/sdk/core/download/b;->c:Ljava/lang/String;

    .line 162
    .line 163
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_6
    new-instance v5, Ljava/io/File;

    .line 168
    .line 169
    iget-object v6, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 170
    .line 171
    iget-object v6, v6, Lcom/meishu/sdk/core/download/b;->d:Ljava/lang/String;

    .line 172
    .line 173
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    move-object v4, v5

    .line 177
    :goto_0
    iget-object v5, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 178
    .line 179
    iget-wide v6, v5, Lcom/meishu/sdk/core/download/b;->e:J

    .line 180
    .line 181
    cmp-long v6, v1, v6

    .line 182
    .line 183
    const-string v7, "file has expired"

    .line 184
    .line 185
    if-lez v6, :cond_7

    .line 186
    .line 187
    invoke-virtual {p0, v5, v7}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_7
    if-nez v6, :cond_9

    .line 192
    .line 193
    if-lez v3, :cond_9

    .line 194
    .line 195
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_8

    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 202
    .line 203
    .line 204
    move-result-wide v5

    .line 205
    cmp-long v3, v1, v5

    .line 206
    .line 207
    if-nez v3, :cond_8

    .line 208
    .line 209
    iget-object v3, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 210
    .line 211
    invoke-virtual {p0, v3, v4}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/io/File;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_8
    iget-object v0, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 216
    .line 217
    invoke-virtual {p0, v0, v7}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_9
    :goto_1
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 222
    .line 223
    const-string v5, "rw"

    .line 224
    .line 225
    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 229
    .line 230
    .line 231
    iget-object v5, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 232
    .line 233
    iput-wide v1, v5, Lcom/meishu/sdk/core/download/b;->f:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    .line 235
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 240
    .line 241
    invoke-virtual {p0, v0, v3, v1}, Lcom/meishu/sdk/core/download/d;->a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/meishu/sdk/core/download/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 245
    .line 246
    iget v1, v0, Lcom/meishu/sdk/core/download/b;->g:I

    .line 247
    .line 248
    const/4 v2, 0x3

    .line 249
    if-ne v1, v2, :cond_a

    .line 250
    .line 251
    iput v2, v0, Lcom/meishu/sdk/core/download/b;->g:I

    .line 252
    .line 253
    sget-object v1, Lcom/meishu/sdk/core/download/d;->g:Landroid/os/Handler;

    .line 254
    .line 255
    new-instance v2, Lcom/meishu/sdk/core/download/f;

    .line 256
    .line 257
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/core/download/f;-><init>(Lcom/meishu/sdk/core/download/d;Lcom/meishu/sdk/core/download/b;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :cond_a
    const/4 v2, 0x2

    .line 265
    if-ne v1, v2, :cond_c

    .line 266
    .line 267
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 268
    .line 269
    .line 270
    move-result-wide v0

    .line 271
    iget-object v2, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 272
    .line 273
    iget-wide v5, v2, Lcom/meishu/sdk/core/download/b;->e:J

    .line 274
    .line 275
    cmp-long v0, v0, v5

    .line 276
    .line 277
    if-nez v0, :cond_b

    .line 278
    .line 279
    invoke-virtual {p0, v2, v4}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/io/File;)V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :cond_b
    invoke-virtual {p0, v2, v7}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :cond_c
    invoke-virtual {p0, v0, v7}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    iget-object v1, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {p0, v1, v0}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-void

    .line 302
    :catch_1
    move-exception v0

    .line 303
    iget-object v1, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {p0, v1, v0}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 314
    .line 315
    const-string v1, "network error! http response code is 404 or 5xx!"

    .line 316
    .line 317
    invoke-virtual {p0, v0, v1}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :catchall_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 323
    .line 324
    .line 325
    iget-object v1, p0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-virtual {p0, v1, v0}, Lcom/meishu/sdk/core/download/d;->a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    return-void
.end method

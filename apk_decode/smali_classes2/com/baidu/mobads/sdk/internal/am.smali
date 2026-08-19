.class public Lcom/baidu/mobads/sdk/internal/am;
.super Ljava/util/Observable;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/internal/x;
.implements Ljava/lang/Runnable;


# static fields
.field protected static final i:I = 0x2800

.field protected static final j:I = 0x2800

.field public static final k:Ljava/lang/String; = ".tmp"

.field private static final m:Ljava/lang/String; = "FileDownloader"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/net/URL;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected f:Lcom/baidu/mobads/sdk/internal/x$a;

.field protected g:I

.field protected h:I

.field protected l:[B

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/am;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/baidu/mobads/sdk/internal/am;->b:Ljava/net/URL;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/baidu/mobads/sdk/internal/am;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p5, p0, Lcom/baidu/mobads/sdk/internal/am;->n:Z

    .line 11
    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-lez p1, :cond_0

    .line 23
    .line 24
    iput-object p4, p0, Lcom/baidu/mobads/sdk/internal/am;->d:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/16 p2, 0x2f

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    add-int/lit8 p2, p2, 0x1

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/am;->d:Ljava/lang/String;

    .line 44
    .line 45
    :goto_0
    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/baidu/mobads/sdk/internal/am;->e:I

    .line 47
    .line 48
    sget-object p1, Lcom/baidu/mobads/sdk/internal/x$a;->c:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/am;->f:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/baidu/mobads/sdk/internal/am;->g:I

    .line 54
    .line 55
    iput p1, p0, Lcom/baidu/mobads/sdk/internal/am;->h:I

    .line 56
    .line 57
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    return-object p1

    .line 9
    :cond_1
    :goto_1
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/mobads/sdk/internal/am;->b:Ljava/net/URL;

    .line 11
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p1, 0x2710

    .line 12
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 14
    const-string p1, "Range"

    const-string v1, "bytes=0-"

    invoke-virtual {v0, p1, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :catch_1
    return-object p1
.end method

.method private s()V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/mobads/sdk/internal/x$a;->f:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/baidu/mobads/sdk/internal/am;->a(Lcom/baidu/mobads/sdk/internal/x$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/mobads/sdk/internal/x$a;->c:Lcom/baidu/mobads/sdk/internal/x$a;

    invoke-virtual {p0, v0}, Lcom/baidu/mobads/sdk/internal/am;->a(Lcom/baidu/mobads/sdk/internal/x$a;)V

    .line 3
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/am;->p()V

    return-void
.end method

.method public a(IF)V
    .locals 0

    .line 6
    iget p2, p0, Lcom/baidu/mobads/sdk/internal/am;->g:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/baidu/mobads/sdk/internal/am;->g:I

    .line 7
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/am;->q()V

    return-void
.end method

.method public a(Lcom/baidu/mobads/sdk/internal/x$a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/am;->f:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 5
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/am;->q()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public c()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public d()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/am;->b:Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/am;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/am;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/am;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public k()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/am;->g:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/baidu/mobads/sdk/internal/am;->e:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    const/high16 v1, 0x42c80000    # 100.0f

    .line 9
    .line 10
    mul-float/2addr v0, v1

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public l()Lcom/baidu/mobads/sdk/internal/x$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/am;->f:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/am;->l:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/be;->a()Lcom/baidu/mobads/sdk/internal/be;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/baidu/mobads/sdk/internal/be;->a(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/am;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/am;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ".tmp"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/am;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/am;->d:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/baidu/mobads/sdk/internal/bt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public run()V
    .locals 13

    .line 1
    const-string v0, "FileDownloader"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/am;->b:Ljava/net/URL;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/baidu/mobads/sdk/internal/am;->b:Ljava/net/URL;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Lcom/baidu/mobads/sdk/internal/cs;->f(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/internal/cs;->a(Ljava/net/HttpURLConnection;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v2

    .line 33
    move-object v3, v1

    .line 34
    move-object v4, v3

    .line 35
    move-object v5, v2

    .line 36
    move-object v2, v4

    .line 37
    goto/16 :goto_b

    .line 38
    .line 39
    :catch_0
    move-exception v2

    .line 40
    move-object v3, v1

    .line 41
    move-object v4, v3

    .line 42
    move-object v5, v2

    .line 43
    move-object v2, v4

    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/baidu/mobads/sdk/internal/am;->b:Ljava/net/URL;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/baidu/mobads/sdk/internal/cs;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 53
    .line 54
    .line 55
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    const/16 v3, 0x2710

    .line 57
    .line 58
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 59
    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/16 v4, 0x12e

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    if-eq v3, v4, :cond_1

    .line 76
    .line 77
    const/16 v4, 0x12d

    .line 78
    .line 79
    if-ne v3, v4, :cond_2

    .line 80
    .line 81
    :cond_1
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v2}, Lcom/baidu/mobads/sdk/internal/am;->a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    :cond_2
    div-int/lit8 v3, v3, 0x64

    .line 93
    .line 94
    const/4 v4, 0x2

    .line 95
    if-eq v3, v4, :cond_3

    .line 96
    .line 97
    invoke-direct {p0}, Lcom/baidu/mobads/sdk/internal/am;->s()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_1
    move-exception v3

    .line 102
    move-object v4, v2

    .line 103
    move-object v5, v3

    .line 104
    move-object v2, v1

    .line 105
    move-object v3, v2

    .line 106
    goto/16 :goto_b

    .line 107
    .line 108
    :catch_1
    move-exception v3

    .line 109
    move-object v4, v2

    .line 110
    move-object v5, v3

    .line 111
    move-object v2, v1

    .line 112
    move-object v3, v2

    .line 113
    goto/16 :goto_6

    .line 114
    .line 115
    :cond_3
    :goto_0
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-lez v3, :cond_4

    .line 120
    .line 121
    iput v3, p0, Lcom/baidu/mobads/sdk/internal/am;->e:I

    .line 122
    .line 123
    :cond_4
    new-instance v3, Ljava/io/File;

    .line 124
    .line 125
    iget-object v4, p0, Lcom/baidu/mobads/sdk/internal/am;->c:Ljava/lang/String;

    .line 126
    .line 127
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_5

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 137
    .line 138
    .line 139
    :cond_5
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    .line 147
    .line 148
    :try_start_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 149
    .line 150
    new-instance v6, Ljava/io/FileOutputStream;

    .line 151
    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/am;->g()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v8, ".tmp"

    .line 165
    .line 166
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 177
    .line 178
    .line 179
    const/16 v6, 0x2800

    .line 180
    .line 181
    :try_start_4
    new-array v7, v6, [B

    .line 182
    .line 183
    iget-boolean v8, p0, Lcom/baidu/mobads/sdk/internal/am;->n:Z

    .line 184
    .line 185
    if-eqz v8, :cond_6

    .line 186
    .line 187
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 188
    .line 189
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .line 191
    .line 192
    move-object v1, v8

    .line 193
    goto :goto_1

    .line 194
    :catchall_2
    move-exception v5

    .line 195
    move-object v12, v2

    .line 196
    move-object v2, v1

    .line 197
    move-object v1, v4

    .line 198
    move-object v4, v12

    .line 199
    goto/16 :goto_b

    .line 200
    .line 201
    :catch_2
    move-exception v5

    .line 202
    move-object v12, v2

    .line 203
    move-object v2, v1

    .line 204
    move-object v1, v4

    .line 205
    move-object v4, v12

    .line 206
    goto/16 :goto_6

    .line 207
    .line 208
    :cond_6
    :goto_1
    move v8, v5

    .line 209
    :goto_2
    iget-object v9, p0, Lcom/baidu/mobads/sdk/internal/am;->f:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 210
    .line 211
    sget-object v10, Lcom/baidu/mobads/sdk/internal/x$a;->c:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 212
    .line 213
    if-ne v9, v10, :cond_8

    .line 214
    .line 215
    invoke-virtual {v3, v7, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    const/4 v11, -0x1

    .line 220
    if-eq v9, v11, :cond_8

    .line 221
    .line 222
    invoke-virtual {v4, v7, v5, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 223
    .line 224
    .line 225
    if-eqz v1, :cond_7

    .line 226
    .line 227
    invoke-virtual {v1, v7, v5, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 228
    .line 229
    .line 230
    :cond_7
    add-int/2addr v8, v9

    .line 231
    int-to-float v10, v8

    .line 232
    iget v11, p0, Lcom/baidu/mobads/sdk/internal/am;->e:I

    .line 233
    .line 234
    int-to-float v11, v11

    .line 235
    div-float/2addr v10, v11

    .line 236
    invoke-virtual {p0, v9, v10}, Lcom/baidu/mobads/sdk/internal/am;->a(IF)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_8
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 241
    .line 242
    .line 243
    if-eqz v1, :cond_9

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 246
    .line 247
    .line 248
    :cond_9
    iget-object v5, p0, Lcom/baidu/mobads/sdk/internal/am;->f:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 249
    .line 250
    if-ne v5, v10, :cond_a

    .line 251
    .line 252
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/am;->r()V

    .line 253
    .line 254
    .line 255
    sget-object v5, Lcom/baidu/mobads/sdk/internal/x$a;->e:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 256
    .line 257
    invoke-virtual {p0, v5}, Lcom/baidu/mobads/sdk/internal/am;->a(Lcom/baidu/mobads/sdk/internal/x$a;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 258
    .line 259
    .line 260
    :cond_a
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :catch_3
    move-exception v4

    .line 265
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-virtual {v5, v4}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    :goto_3
    if-eqz v1, :cond_b

    .line 281
    .line 282
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 283
    .line 284
    .line 285
    goto :goto_4

    .line 286
    :catch_4
    move-exception v1

    .line 287
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v4, v1}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :cond_b
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 303
    .line 304
    .line 305
    goto :goto_5

    .line 306
    :catch_5
    move-exception v1

    .line 307
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v3, v0}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :goto_5
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0, v2}, Lcom/baidu/mobads/sdk/internal/cs;->a(Ljava/net/HttpURLConnection;)V

    .line 327
    .line 328
    .line 329
    goto :goto_a

    .line 330
    :catchall_3
    move-exception v4

    .line 331
    move-object v5, v4

    .line 332
    move-object v4, v2

    .line 333
    move-object v2, v1

    .line 334
    goto :goto_b

    .line 335
    :catch_6
    move-exception v4

    .line 336
    move-object v5, v4

    .line 337
    move-object v4, v2

    .line 338
    move-object v2, v1

    .line 339
    :goto_6
    :try_start_8
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    filled-new-array {v0, v5}, [Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-virtual {v6, v5}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    invoke-direct {p0}, Lcom/baidu/mobads/sdk/internal/am;->s()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 355
    .line 356
    .line 357
    if-eqz v1, :cond_c

    .line 358
    .line 359
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 360
    .line 361
    .line 362
    goto :goto_7

    .line 363
    :catch_7
    move-exception v1

    .line 364
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v5, v1}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 380
    .line 381
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 382
    .line 383
    .line 384
    goto :goto_8

    .line 385
    :catch_8
    move-exception v1

    .line 386
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v2, v1}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    :cond_d
    :goto_8
    if-eqz v3, :cond_e

    .line 402
    .line 403
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 404
    .line 405
    .line 406
    goto :goto_9

    .line 407
    :catch_9
    move-exception v1

    .line 408
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual {v2, v0}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    :cond_e
    :goto_9
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v0, v4}, Lcom/baidu/mobads/sdk/internal/cs;->a(Ljava/net/HttpURLConnection;)V

    .line 428
    .line 429
    .line 430
    :goto_a
    return-void

    .line 431
    :catchall_4
    move-exception v5

    .line 432
    :goto_b
    if-eqz v1, :cond_f

    .line 433
    .line 434
    :try_start_c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 435
    .line 436
    .line 437
    goto :goto_c

    .line 438
    :catch_a
    move-exception v1

    .line 439
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-virtual {v6, v1}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    :cond_f
    :goto_c
    if-eqz v2, :cond_10

    .line 455
    .line 456
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 457
    .line 458
    .line 459
    goto :goto_d

    .line 460
    :catch_b
    move-exception v1

    .line 461
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v2, v1}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    :cond_10
    :goto_d
    if-eqz v3, :cond_11

    .line 477
    .line 478
    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 479
    .line 480
    .line 481
    goto :goto_e

    .line 482
    :catch_c
    move-exception v1

    .line 483
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v2, v0}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    :cond_11
    :goto_e
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v0, v4}, Lcom/baidu/mobads/sdk/internal/cs;->a(Ljava/net/HttpURLConnection;)V

    .line 503
    .line 504
    .line 505
    throw v5
.end method

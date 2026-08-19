.class public Lcom/octopus/ad/internal/d/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/d/r;


# instance fields
.field private final a:Lcom/octopus/ad/internal/d/b/c;

.field private final b:Lcom/octopus/ad/internal/d/f;

.field private c:Lcom/octopus/ad/internal/d/s;

.field private d:Ljava/net/HttpURLConnection;

.field private e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/d/j;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-object v0, p1, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    iput-object v0, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    .line 10
    iget-object v0, p1, Lcom/octopus/ad/internal/d/j;->a:Lcom/octopus/ad/internal/d/b/c;

    iput-object v0, p0, Lcom/octopus/ad/internal/d/j;->a:Lcom/octopus/ad/internal/d/b/c;

    .line 11
    iget-object p1, p1, Lcom/octopus/ad/internal/d/j;->b:Lcom/octopus/ad/internal/d/f;

    iput-object p1, p0, Lcom/octopus/ad/internal/d/j;->b:Lcom/octopus/ad/internal/d/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/d/b/d;->a()Lcom/octopus/ad/internal/d/b/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/octopus/ad/internal/d/j;-><init>(Ljava/lang/String;Lcom/octopus/ad/internal/d/b/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/octopus/ad/internal/d/b/c;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/octopus/ad/internal/d/d;

    invoke-direct {v0}, Lcom/octopus/ad/internal/d/d;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/octopus/ad/internal/d/j;-><init>(Ljava/lang/String;Lcom/octopus/ad/internal/d/b/c;Lcom/octopus/ad/internal/d/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/octopus/ad/internal/d/b/c;Lcom/octopus/ad/internal/d/f;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p2}, Lcom/octopus/ad/internal/d/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/d/b/c;

    iput-object v0, p0, Lcom/octopus/ad/internal/d/j;->a:Lcom/octopus/ad/internal/d/b/c;

    .line 5
    invoke-static {p3}, Lcom/octopus/ad/internal/d/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/octopus/ad/internal/d/f;

    iput-object p3, p0, Lcom/octopus/ad/internal/d/j;->b:Lcom/octopus/ad/internal/d/f;

    .line 6
    invoke-interface {p2, p1}, Lcom/octopus/ad/internal/d/b/c;->a(Ljava/lang/String;)Lcom/octopus/ad/internal/d/s;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Lcom/octopus/ad/internal/d/s;

    const-wide/32 v0, -0x80000000

    invoke-static {p1}, Lcom/octopus/ad/internal/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/octopus/ad/internal/d/s;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    iput-object p2, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)J
    .locals 2

    .line 13
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 14
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

    .line 11
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/j;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    const/16 p1, 0xc8

    if-ne p4, p1, :cond_0

    return-wide v0

    :cond_0
    const/16 p1, 0xce

    if-ne p4, p1, :cond_1

    add-long/2addr v0, p2

    return-wide v0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    iget-wide p1, p1, Lcom/octopus/ad/internal/d/s;->b:J

    return-wide p1
.end method

.method private a(JI)Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    iget-object v0, v0, Lcom/octopus/ad/internal/d/s;->a:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 21
    :cond_0
    sget-object v3, Lcom/octopus/ad/internal/c/f;->r:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-lez v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " with offset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v6, ""

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 23
    invoke-direct {p0, v3, v0}, Lcom/octopus/ad/internal/d/j;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    if-lez v5, :cond_2

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Range"

    invoke-virtual {v3, v5, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-lez p3, :cond_3

    .line 25
    invoke-virtual {v3, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 26
    invoke-virtual {v3, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 27
    :cond_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_5

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_5

    const/16 v5, 0x12f

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_6

    .line 28
    const-string v0, "Location"

    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    .line 29
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    const/4 v5, 0x5

    if-gt v2, v5, :cond_7

    if-nez v4, :cond_0

    return-object v3

    .line 30
    :cond_7
    new-instance p1, Lcom/octopus/ad/internal/d/p;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many redirects: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/octopus/ad/internal/d/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/octopus/ad/internal/d/j;->b:Lcom/octopus/ad/internal/d/f;

    invoke-interface {v0, p2}, Lcom/octopus/ad/internal/d/f;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 32
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

    .line 33
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

.method private e()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/c/f;->r:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Read content info from "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/octopus/ad/internal/d/s;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    const/16 v2, 0x2710

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lcom/octopus/ad/internal/d/j;->a(JI)Ljava/net/HttpURLConnection;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/d/j;->a(Ljava/net/HttpURLConnection;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v5, Lcom/octopus/ad/internal/d/s;

    .line 49
    .line 50
    iget-object v6, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    .line 51
    .line 52
    iget-object v6, v6, Lcom/octopus/ad/internal/d/s;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v5, v6, v1, v2, v4}, Lcom/octopus/ad/internal/d/s;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v5, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/octopus/ad/internal/d/j;->a:Lcom/octopus/ad/internal/d/b/c;

    .line 60
    .line 61
    iget-object v2, v5, Lcom/octopus/ad/internal/d/s;->a:Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {v1, v2, v5}, Lcom/octopus/ad/internal/d/b/c;->a(Ljava/lang/String;Lcom/octopus/ad/internal/d/s;)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Lcom/octopus/ad/internal/c/f;->r:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v4, "Source info fetched: "

    .line 74
    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v4, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    .line 79
    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v1, v2}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Lcom/octopus/ad/internal/d/q;->a(Ljava/io/Closeable;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception v1

    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception v1

    .line 100
    goto :goto_0

    .line 101
    :catchall_1
    move-exception v1

    .line 102
    move-object v0, v3

    .line 103
    goto :goto_1

    .line 104
    :catch_1
    move-exception v1

    .line 105
    move-object v0, v3

    .line 106
    :goto_0
    :try_start_2
    sget-object v2, Lcom/octopus/ad/internal/c/f;->r:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v5, "Error fetching info from "

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v5, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    .line 119
    .line 120
    iget-object v5, v5, Lcom/octopus/ad/internal/d/s;->a:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v2, v1}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .line 138
    .line 139
    invoke-static {v3}, Lcom/octopus/ad/internal/d/q;->a(Ljava/io/Closeable;)V

    .line 140
    .line 141
    .line 142
    if-eqz v0, :cond_0

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 145
    .line 146
    .line 147
    :cond_0
    return-void

    .line 148
    :goto_1
    invoke-static {v3}, Lcom/octopus/ad/internal/d/q;->a(Ljava/io/Closeable;)V

    .line 149
    .line 150
    .line 151
    if-eqz v0, :cond_1

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    .line 155
    .line 156
    :cond_1
    throw v1
.end method


# virtual methods
.method public a([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/octopus/ad/internal/d/j;->e:Ljava/io/InputStream;

    const-string v1, "Error reading data from "

    if-eqz v0, :cond_0

    .line 16
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 17
    :goto_0
    new-instance v0, Lcom/octopus/ad/internal/d/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    iget-object v1, v1, Lcom/octopus/ad/internal/d/s;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/octopus/ad/internal/d/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 18
    :goto_1
    new-instance v0, Lcom/octopus/ad/internal/d/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    iget-object v2, v2, Lcom/octopus/ad/internal/d/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/octopus/ad/internal/d/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 19
    :cond_0
    new-instance p1, Lcom/octopus/ad/internal/d/p;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    iget-object v1, v1, Lcom/octopus/ad/internal/d/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": connection is absent!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/octopus/ad/internal/d/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized a()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    iget-wide v0, v0, Lcom/octopus/ad/internal/d/s;->b:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/j;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    iget-wide v0, v0, Lcom/octopus/ad/internal/d/s;->b:J
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
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    const/4 v0, -0x1

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/octopus/ad/internal/d/j;->a(JI)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/d/j;->d:Ljava/net/HttpURLConnection;

    .line 5
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/octopus/ad/internal/d/j;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/octopus/ad/internal/d/j;->e:Ljava/io/InputStream;

    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/d/j;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/octopus/ad/internal/d/j;->a(Ljava/net/HttpURLConnection;JI)J

    move-result-wide v1

    .line 8
    new-instance v3, Lcom/octopus/ad/internal/d/s;

    iget-object v4, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    iget-object v4, v4, Lcom/octopus/ad/internal/d/s;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/octopus/ad/internal/d/s;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/d/j;->a:Lcom/octopus/ad/internal/d/b/c;

    iget-object v1, v3, Lcom/octopus/ad/internal/d/s;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/octopus/ad/internal/d/b/c;->a(Ljava/lang/String;Lcom/octopus/ad/internal/d/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/octopus/ad/internal/d/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    iget-object v3, v3, Lcom/octopus/ad/internal/d/s;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/octopus/ad/internal/d/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/d/j;->d:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Lcom/octopus/ad/internal/c/f;->r:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :("

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :catch_1
    :cond_0
    return-void
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/octopus/ad/internal/d/p;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/octopus/ad/internal/d/s;->c:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/octopus/ad/internal/d/j;->e()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/octopus/ad/internal/d/s;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/internal/d/s;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "HttpUrlSource{sourceInfo=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/octopus/ad/internal/d/j;->c:Lcom/octopus/ad/internal/d/s;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "}"

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
    return-object v0
.end method

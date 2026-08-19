.class public abstract Lorg/eclipse/jetty/util/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/i$d;,
        Lorg/eclipse/jetty/util/i$b;,
        Lorg/eclipse/jetty/util/i$c;
    }
.end annotation


# static fields
.field public static final a:LR1/c;

.field public static final b:[B

.field public static c:I

.field public static d:Lorg/eclipse/jetty/util/i$c;

.field public static e:Lorg/eclipse/jetty/util/i$b;

.field public static f:Lorg/eclipse/jetty/util/i$d;

.field public static g:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lorg/eclipse/jetty/util/i;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/util/i;->a:LR1/c;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/eclipse/jetty/util/i;->b:[B

    .line 16
    .line 17
    const/high16 v0, 0x10000

    .line 18
    .line 19
    sput v0, Lorg/eclipse/jetty/util/i;->c:I

    .line 20
    .line 21
    new-instance v0, Lorg/eclipse/jetty/util/i$c;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/i$c;-><init>(Lorg/eclipse/jetty/util/i$a;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lorg/eclipse/jetty/util/i;->d:Lorg/eclipse/jetty/util/i$c;

    .line 28
    .line 29
    new-instance v0, Lorg/eclipse/jetty/util/i$b;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/i$b;-><init>(Lorg/eclipse/jetty/util/i$a;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lorg/eclipse/jetty/util/i;->e:Lorg/eclipse/jetty/util/i$b;

    .line 35
    .line 36
    new-instance v0, Lorg/eclipse/jetty/util/i$d;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/i$d;-><init>(Lorg/eclipse/jetty/util/i$a;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lorg/eclipse/jetty/util/i;->f:Lorg/eclipse/jetty/util/i$d;

    .line 42
    .line 43
    new-instance v0, Ljava/io/PrintWriter;

    .line 44
    .line 45
    sget-object v1, Lorg/eclipse/jetty/util/i;->f:Lorg/eclipse/jetty/util/i$d;

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lorg/eclipse/jetty/util/i;->g:Ljava/io/PrintWriter;

    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    sget-object v0, Lorg/eclipse/jetty/util/i;->a:LR1/c;

    .line 9
    .line 10
    invoke-interface {v0, p0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static b(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    sget-object v0, Lorg/eclipse/jetty/util/i;->a:LR1/c;

    .line 9
    .line 10
    invoke-interface {v0, p0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static c(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-static {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/i;->d(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static d(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 7

    .line 1
    sget v0, Lorg/eclipse/jetty/util/i;->c:I

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    cmp-long v3, p2, v1

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-ltz v3, :cond_2

    .line 11
    .line 12
    :goto_0
    cmp-long v3, p2, v1

    .line 13
    .line 14
    if-lez v3, :cond_3

    .line 15
    .line 16
    sget v3, Lorg/eclipse/jetty/util/i;->c:I

    .line 17
    .line 18
    int-to-long v5, v3

    .line 19
    cmp-long v5, p2, v5

    .line 20
    .line 21
    if-gez v5, :cond_0

    .line 22
    .line 23
    long-to-int v3, p2

    .line 24
    :cond_0
    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v5, -0x1

    .line 29
    if-ne v3, v5, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    int-to-long v5, v3

    .line 33
    sub-long/2addr p2, v5

    .line 34
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    sget p2, Lorg/eclipse/jetty/util/i;->c:I

    .line 39
    .line 40
    invoke-virtual {p0, v0, v4, p2}, Ljava/io/InputStream;->read([BII)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-gez p2, :cond_4

    .line 45
    .line 46
    :cond_3
    :goto_2
    return-void

    .line 47
    :cond_4
    invoke-virtual {p1, v0, v4, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 48
    .line 49
    .line 50
    goto :goto_1
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    aget-object v2, v0, v1

    .line 25
    .line 26
    invoke-static {v2}, Lorg/eclipse/jetty/util/i;->delete(Ljava/io/File;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public static e(Ljava/io/Reader;Ljava/io/Writer;J)V
    .locals 8

    .line 1
    sget v0, Lorg/eclipse/jetty/util/i;->c:I

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    cmp-long v3, p2, v1

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-ltz v3, :cond_2

    .line 12
    .line 13
    :goto_0
    cmp-long v3, p2, v1

    .line 14
    .line 15
    if-lez v3, :cond_5

    .line 16
    .line 17
    sget v3, Lorg/eclipse/jetty/util/i;->c:I

    .line 18
    .line 19
    int-to-long v6, v3

    .line 20
    cmp-long v6, p2, v6

    .line 21
    .line 22
    if-gez v6, :cond_0

    .line 23
    .line 24
    long-to-int v3, p2

    .line 25
    invoke-virtual {p0, v0, v5, v3}, Ljava/io/Reader;->read([CII)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p0, v0, v5, v3}, Ljava/io/Reader;->read([CII)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    :goto_1
    if-ne v3, v4, :cond_1

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_1
    int-to-long v6, v3

    .line 38
    sub-long/2addr p2, v6

    .line 39
    invoke-virtual {p1, v0, v5, v3}, Ljava/io/Writer;->write([CII)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    instance-of p2, p1, Ljava/io/PrintWriter;

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    move-object p2, p1

    .line 48
    check-cast p2, Ljava/io/PrintWriter;

    .line 49
    .line 50
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->checkError()Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-nez p3, :cond_5

    .line 55
    .line 56
    sget p3, Lorg/eclipse/jetty/util/i;->c:I

    .line 57
    .line 58
    invoke-virtual {p0, v0, v5, p3}, Ljava/io/Reader;->read([CII)I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-ne p3, v4, :cond_3

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_3
    invoke-virtual {p1, v0, v5, p3}, Ljava/io/Writer;->write([CII)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    :goto_3
    sget p2, Lorg/eclipse/jetty/util/i;->c:I

    .line 70
    .line 71
    invoke-virtual {p0, v0, v5, p2}, Ljava/io/Reader;->read([CII)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-ne p2, v4, :cond_6

    .line 76
    .line 77
    :cond_5
    :goto_4
    return-void

    .line 78
    :cond_6
    invoke-virtual {p1, v0, v5, p2}, Ljava/io/Writer;->write([CII)V

    .line 79
    .line 80
    .line 81
    goto :goto_3
.end method

.method public static f()Ljava/io/InputStream;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/util/i;->e:Lorg/eclipse/jetty/util/i$b;

    .line 2
    .line 3
    return-object v0
.end method

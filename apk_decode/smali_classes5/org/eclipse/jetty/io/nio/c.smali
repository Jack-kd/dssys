.class public Lorg/eclipse/jetty/io/nio/c;
.super LL1/a;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/e;


# static fields
.field public static final s:LR1/c;


# instance fields
.field public final n:Ljava/nio/ByteBuffer;

.field public o:Ljava/nio/channels/ReadableByteChannel;

.field public p:Ljava/io/InputStream;

.field public q:Ljava/nio/channels/WritableByteChannel;

.field public r:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/io/nio/c;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/io/nio/c;->s:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LL1/a;-><init>(IZ)V

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 5
    :goto_0
    invoke-direct {p0, p2, v0}, LL1/a;-><init>(IZ)V

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    invoke-virtual {p0, p2}, LL1/a;->z0(I)V

    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {p0, p1}, LL1/a;->q0(I)V

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public b0(ILL1/d;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, LL1/a;->isReadOnly()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-interface {p2}, LL1/d;->p0()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p2}, LL1/d;->getIndex()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {p2}, LL1/d;->length()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/eclipse/jetty/io/nio/c;->g0(I[BII)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    invoke-interface {p2}, LL1/d;->buffer()LL1/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v1, v0, Lorg/eclipse/jetty/io/nio/c;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    check-cast v0, Lorg/eclipse/jetty/io/nio/c;

    .line 35
    .line 36
    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    if-ne v0, v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-interface {p2}, LL1/d;->length()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-le v2, p1, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move p1, v2

    .line 66
    :goto_0
    invoke-interface {p2}, LL1/d;->getIndex()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    .line 72
    .line 73
    invoke-interface {p2}, LL1/d;->getIndex()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    add-int/2addr p2, p1

    .line 78
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    .line 100
    .line 101
    return p1

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_3
    invoke-super {p0, p1, p2}, LL1/a;->b0(ILL1/d;)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    return p1

    .line 124
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 125
    .line 126
    const-string p2, "READONLY"

    .line 127
    .line 128
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1
.end method

.method public c0(IB)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LL1/a;->isReadOnly()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    if-ltz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/c;->w0()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gt p1, v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "index>capacity(): "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ">"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/c;->w0()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p2

    .line 56
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v1, "index<0: "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, "<0"

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p2

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string p2, "READONLY"

    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public d0(I[BII)I
    .locals 3

    .line 1
    add-int v0, p1, p4

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/c;->w0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/c;->w0()I

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    sub-int/2addr p4, p1

    .line 15
    if-nez p4, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    if-gez p4, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    return p4

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public e0(Ljava/io/InputStream;I)I
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->o:Ljava/nio/channels/ReadableByteChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->p:Ljava/io/InputStream;

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->o:Ljava/nio/channels/ReadableByteChannel;

    .line 20
    .line 21
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->p:Ljava/io/InputStream;

    .line 22
    .line 23
    :cond_1
    if-ltz p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, LL1/a;->f0()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-le p2, v0, :cond_3

    .line 30
    .line 31
    :cond_2
    invoke-virtual {p0}, LL1/a;->f0()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    :cond_3
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    move v3, p2

    .line 41
    move v2, v1

    .line 42
    move v4, v2

    .line 43
    move v5, v4

    .line 44
    :cond_4
    const/4 v6, 0x0

    .line 45
    if-ge v2, p2, :cond_9

    .line 46
    .line 47
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    add-int v7, v0, v3

    .line 55
    .line 56
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 57
    .line 58
    .line 59
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/c;->o:Ljava/nio/channels/ReadableByteChannel;

    .line 60
    .line 61
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    invoke-interface {v5, v7}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-gez v5, :cond_5

    .line 68
    .line 69
    iput-object v6, p0, Lorg/eclipse/jetty/io/nio/c;->o:Ljava/nio/channels/ReadableByteChannel;

    .line 70
    .line 71
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->p:Ljava/io/InputStream;

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :catchall_0
    move-exception p2

    .line 75
    goto :goto_2

    .line 76
    :catch_0
    move-exception p2

    .line 77
    goto :goto_1

    .line 78
    :cond_5
    if-lez v5, :cond_6

    .line 79
    .line 80
    add-int/2addr v0, v5

    .line 81
    add-int/2addr v2, v5

    .line 82
    sub-int/2addr v3, v5

    .line 83
    invoke-virtual {p0, v0}, LL1/a;->q0(I)V

    .line 84
    .line 85
    .line 86
    move v4, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_6
    add-int/lit8 v7, v4, 0x1

    .line 89
    .line 90
    const/4 v8, 0x1

    .line 91
    if-le v4, v8, :cond_7

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_7
    move v4, v7

    .line 95
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 96
    .line 97
    .line 98
    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-gtz v7, :cond_4

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :goto_1
    :try_start_1
    iput-object v6, p0, Lorg/eclipse/jetty/io/nio/c;->o:Ljava/nio/channels/ReadableByteChannel;

    .line 103
    .line 104
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->p:Ljava/io/InputStream;

    .line 105
    .line 106
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->o:Ljava/nio/channels/ReadableByteChannel;

    .line 108
    .line 109
    if-eqz v0, :cond_8

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_8

    .line 116
    .line 117
    iput-object v6, p0, Lorg/eclipse/jetty/io/nio/c;->o:Ljava/nio/channels/ReadableByteChannel;

    .line 118
    .line 119
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->p:Ljava/io/InputStream;

    .line 120
    .line 121
    :cond_8
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 122
    .line 123
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 133
    .line 134
    .line 135
    throw p2

    .line 136
    :cond_9
    :goto_3
    if-gez v5, :cond_b

    .line 137
    .line 138
    if-nez v2, :cond_b

    .line 139
    .line 140
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/c;->o:Ljava/nio/channels/ReadableByteChannel;

    .line 141
    .line 142
    if-eqz p2, :cond_a

    .line 143
    .line 144
    invoke-interface {p2}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-nez p2, :cond_a

    .line 149
    .line 150
    iput-object v6, p0, Lorg/eclipse/jetty/io/nio/c;->o:Ljava/nio/channels/ReadableByteChannel;

    .line 151
    .line 152
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->p:Ljava/io/InputStream;

    .line 153
    .line 154
    :cond_a
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 166
    .line 167
    .line 168
    const/4 p1, -0x1

    .line 169
    return p1

    .line 170
    :cond_b
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/c;->o:Ljava/nio/channels/ReadableByteChannel;

    .line 171
    .line 172
    if-eqz p2, :cond_c

    .line 173
    .line 174
    invoke-interface {p2}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-nez p2, :cond_c

    .line 179
    .line 180
    iput-object v6, p0, Lorg/eclipse/jetty/io/nio/c;->o:Ljava/nio/channels/ReadableByteChannel;

    .line 181
    .line 182
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->p:Ljava/io/InputStream;

    .line 183
    .line 184
    :cond_c
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 185
    .line 186
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 196
    .line 197
    .line 198
    return v2
.end method

.method public g0(I[BII)I
    .locals 2

    .line 1
    invoke-virtual {p0}, LL1/a;->isReadOnly()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    if-ltz p1, :cond_4

    .line 8
    .line 9
    add-int v0, p1, p4

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/c;->w0()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-le v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/c;->w0()I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    sub-int/2addr p4, p1

    .line 22
    if-ltz p4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string p4, "index>capacity(): "

    .line 33
    .line 34
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ">"

    .line 41
    .line 42
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/c;->w0()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p2

    .line 60
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 61
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-le p4, p1, :cond_2

    .line 73
    .line 74
    move p4, p1

    .line 75
    :cond_2
    if-lez p4, :cond_3

    .line 76
    .line 77
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    .line 89
    .line 90
    return p4

    .line 91
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    new-instance p3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string p4, "index<0: "

    .line 105
    .line 106
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p1, "<0"

    .line 113
    .line 114
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p2

    .line 125
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string p2, "READONLY"

    .line 128
    .line 129
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method public k0(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public p0()[B
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public t0()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public w0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->q:Ljava/nio/channels/WritableByteChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->r:Ljava/io/OutputStream;

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->q:Ljava/nio/channels/WritableByteChannel;

    .line 20
    .line 21
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->r:Ljava/io/OutputStream;

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    move v1, v0

    .line 28
    :goto_1
    const/4 v2, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p0}, LL1/a;->B0()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_5

    .line 34
    .line 35
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/c;->q:Ljava/nio/channels/WritableByteChannel;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_5

    .line 42
    .line 43
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/c;->q:Ljava/nio/channels/WritableByteChannel;

    .line 62
    .line 63
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    invoke-interface {v3, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-gez v3, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    if-lez v3, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0, v3}, LL1/a;->skip(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    goto :goto_5

    .line 80
    :catch_0
    move-exception v1

    .line 81
    goto :goto_4

    .line 82
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 83
    .line 84
    const/4 v4, 0x1

    .line 85
    if-le v1, v4, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    move v1, v3

    .line 89
    goto :goto_1

    .line 90
    :cond_5
    :goto_2
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/c;->q:Ljava/nio/channels/WritableByteChannel;

    .line 91
    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_6

    .line 99
    .line 100
    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/c;->q:Ljava/nio/channels/WritableByteChannel;

    .line 101
    .line 102
    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/c;->r:Ljava/io/OutputStream;

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    goto :goto_6

    .line 107
    :cond_6
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 119
    .line 120
    .line 121
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    return-void

    .line 123
    :goto_4
    :try_start_2
    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/c;->q:Ljava/nio/channels/WritableByteChannel;

    .line 124
    .line 125
    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/c;->r:Ljava/io/OutputStream;

    .line 126
    .line 127
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :goto_5
    :try_start_3
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/c;->q:Ljava/nio/channels/WritableByteChannel;

    .line 129
    .line 130
    if-eqz v3, :cond_7

    .line 131
    .line 132
    invoke-interface {v3}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_7

    .line 137
    .line 138
    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/c;->q:Ljava/nio/channels/WritableByteChannel;

    .line 139
    .line 140
    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/c;->r:Ljava/io/OutputStream;

    .line 141
    .line 142
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/c;->n:Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 154
    .line 155
    .line 156
    throw v1

    .line 157
    :goto_6
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    throw v0
.end method

.class public abstract Lorg/eclipse/jetty/io/nio/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/k;


# static fields
.field public static final j:LR1/c;


# instance fields
.field public final b:Ljava/nio/channels/ByteChannel;

.field public final c:[Ljava/nio/ByteBuffer;

.field public final d:Ljava/net/Socket;

.field public final e:Ljava/net/InetSocketAddress;

.field public final f:Ljava/net/InetSocketAddress;

.field public volatile g:I

.field public volatile h:Z

.field public volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/io/nio/b;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/io/nio/b;->j:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ByteChannel;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->c:[Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 10
    .line 11
    iput p2, p0, Lorg/eclipse/jetty/io/nio/b;->g:I

    .line 12
    .line 13
    instance-of p2, p1, Ljava/nio/channels/SocketChannel;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    check-cast p1, Ljava/nio/channels/SocketChannel;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v0

    .line 26
    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Ljava/net/InetSocketAddress;

    .line 35
    .line 36
    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/b;->e:Ljava/net/InetSocketAddress;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Ljava/net/InetSocketAddress;

    .line 43
    .line 44
    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/b;->f:Ljava/net/InetSocketAddress;

    .line 45
    .line 46
    iget p2, p0, Lorg/eclipse/jetty/io/nio/b;->g:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->f:Ljava/net/InetSocketAddress;

    .line 53
    .line 54
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->e:Ljava/net/InetSocketAddress;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/io/nio/b;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/nio/channels/SelectableChannel;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method public close()V
    .locals 3

    .line 1
    sget-object v0, Lorg/eclipse/jetty/io/nio/b;->j:LR1/c;

    .line 2
    .line 3
    const-string v1, "close {}"

    .line 4
    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->e:Ljava/net/InetSocketAddress;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->e:Ljava/net/InetSocketAddress;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->e:Ljava/net/InetSocketAddress;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :cond_2
    :goto_0
    const-string v0, "0.0.0.0"

    .line 42
    .line 43
    return-object v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g(LL1/d;LL1/d;LL1/d;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, LL1/d;->buffer()LL1/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {p2}, LL1/d;->buffer()LL1/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 18
    .line 19
    instance-of v2, v2, Ljava/nio/channels/GatheringByteChannel;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-interface {p1}, LL1/d;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    instance-of v2, v1, Lorg/eclipse/jetty/io/nio/e;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    invoke-interface {p2}, LL1/d;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    instance-of v2, v0, Lorg/eclipse/jetty/io/nio/e;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    check-cast v1, Lorg/eclipse/jetty/io/nio/e;

    .line 48
    .line 49
    invoke-interface {v1}, Lorg/eclipse/jetty/io/nio/e;->t0()Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast v0, Lorg/eclipse/jetty/io/nio/e;

    .line 54
    .line 55
    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/e;->t0()Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, p1, p3, p2, v0}, Lorg/eclipse/jetty/io/nio/b;->u(LL1/d;Ljava/nio/ByteBuffer;LL1/d;Ljava/nio/ByteBuffer;)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    return p1

    .line 64
    :cond_2
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-interface {p1}, LL1/d;->length()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-lez v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/b;->i(LL1/d;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const/4 v0, 0x0

    .line 78
    :goto_2
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-interface {p1}, LL1/d;->length()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_5

    .line 85
    .line 86
    :cond_4
    if-eqz p2, :cond_5

    .line 87
    .line 88
    invoke-interface {p2}, LL1/d;->length()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-lez v1, :cond_5

    .line 93
    .line 94
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/b;->i(LL1/d;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    add-int/2addr v0, v1

    .line 99
    :cond_5
    if-eqz p1, :cond_6

    .line 100
    .line 101
    invoke-interface {p1}, LL1/d;->length()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_8

    .line 106
    .line 107
    :cond_6
    if-eqz p2, :cond_7

    .line 108
    .line 109
    invoke-interface {p2}, LL1/d;->length()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_8

    .line 114
    .line 115
    :cond_7
    if-eqz p3, :cond_8

    .line 116
    .line 117
    invoke-interface {p3}, LL1/d;->length()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-lez p1, :cond_8

    .line 122
    .line 123
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/nio/b;->i(LL1/d;)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    add-int/2addr v0, p1

    .line 128
    :cond_8
    return v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->e:Ljava/net/InetSocketAddress;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    return v0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->f:Ljava/net/InetSocketAddress;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    return v0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public i(LL1/d;)I
    .locals 3

    .line 1
    invoke-interface {p1}, LL1/d;->buffer()LL1/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lorg/eclipse/jetty/io/nio/e;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast v0, Lorg/eclipse/jetty/io/nio/e;

    .line 10
    .line 11
    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/e;->t0()Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1}, LL1/d;->getIndex()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, LL1/d;->n0()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 34
    .line 35
    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_0

    .line 40
    .line 41
    invoke-interface {p1, v0}, LL1/d;->skip(I)I

    .line 42
    .line 43
    .line 44
    :cond_0
    return v0

    .line 45
    :cond_1
    invoke-interface {p1}, LL1/d;->p0()[B

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-interface {p1}, LL1/d;->p0()[B

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {p1}, LL1/d;->getIndex()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-interface {p1}, LL1/d;->length()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 68
    .line 69
    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-lez v0, :cond_2

    .line 74
    .line 75
    invoke-interface {p1, v0}, LL1/d;->skip(I)I

    .line 76
    .line 77
    .line 78
    :cond_2
    return v0

    .line 79
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 80
    .line 81
    const-string v0, "Not Implemented"

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->e:Ljava/net/InetSocketAddress;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->e:Ljava/net/InetSocketAddress;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->e:Ljava/net/InetSocketAddress;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :cond_2
    :goto_0
    const-string v0, "0.0.0.0"

    .line 42
    .line 43
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/b;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->f:Ljava/net/InetSocketAddress;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/b;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method

.method public t(LL1/d;)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/b;->h:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-interface {p1}, LL1/d;->buffer()LL1/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v2, v0, Lorg/eclipse/jetty/io/nio/e;

    .line 12
    .line 13
    if-eqz v2, :cond_5

    .line 14
    .line 15
    check-cast v0, Lorg/eclipse/jetty/io/nio/e;

    .line 16
    .line 17
    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/e;->t0()Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    :try_start_1
    invoke-interface {p1}, LL1/d;->n0()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 31
    .line 32
    invoke-interface {v3, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 33
    .line 34
    .line 35
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-interface {p1, v4}, LL1/d;->q0(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    .line 45
    .line 46
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    if-gez v3, :cond_2

    .line 48
    .line 49
    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->isOpen()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->s()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->h()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    move v2, v3

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->o()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/nio/channels/Channel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 77
    .line 78
    .line 79
    :cond_2
    return v3

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    move v2, v3

    .line 82
    goto :goto_1

    .line 83
    :catchall_1
    move-exception v3

    .line 84
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-interface {p1, v4}, LL1/d;->q0(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 92
    .line 93
    .line 94
    throw v3

    .line 95
    :catchall_2
    move-exception p1

    .line 96
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 97
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 98
    :catch_1
    move-exception p1

    .line 99
    :goto_2
    sget-object v0, Lorg/eclipse/jetty/io/nio/b;->j:LR1/c;

    .line 100
    .line 101
    const-string v3, "Exception while filling"

    .line 102
    .line 103
    invoke-interface {v0, v3, p1}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :try_start_6
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :catch_2
    move-exception v0

    .line 121
    sget-object v3, Lorg/eclipse/jetty/io/nio/b;->j:LR1/c;

    .line 122
    .line 123
    invoke-interface {v3, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    :goto_3
    if-gtz v2, :cond_4

    .line 127
    .line 128
    return v1

    .line 129
    :cond_4
    throw p1

    .line 130
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 131
    .line 132
    const-string v0, "Not Implemented"

    .line 133
    .line 134
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1
.end method

.method public u(LL1/d;Ljava/nio/ByteBuffer;LL1/d;Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    invoke-interface {p1}, LL1/d;->getIndex()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, LL1/d;->n0()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    invoke-interface {p3}, LL1/d;->getIndex()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    .line 30
    .line 31
    invoke-interface {p3}, LL1/d;->n0()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->c:[Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    aput-object p2, v0, v1

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    aput-object p4, v0, p2

    .line 45
    .line 46
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 47
    .line 48
    check-cast p2, Ljava/nio/channels/GatheringByteChannel;

    .line 49
    .line 50
    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    long-to-int p2, v0

    .line 55
    invoke-interface {p1}, LL1/d;->length()I

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    if-le p2, p4, :cond_0

    .line 60
    .line 61
    invoke-interface {p1}, LL1/d;->clear()V

    .line 62
    .line 63
    .line 64
    sub-int p1, p2, p4

    .line 65
    .line 66
    invoke-interface {p3, p1}, LL1/d;->skip(I)I

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    if-lez p2, :cond_1

    .line 73
    .line 74
    invoke-interface {p1, p2}, LL1/d;->skip(I)I

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    monitor-exit p0

    .line 78
    return p2

    .line 79
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p1
.end method

.method public v()Ljava/nio/channels/ByteChannel;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()V
    .locals 4

    .line 1
    sget-object v0, Lorg/eclipse/jetty/io/nio/b;->j:LR1/c;

    .line 2
    .line 3
    const-string v1, "ishut {}"

    .line 4
    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/b;->h:Z

    .line 14
    .line 15
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/b;->i:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->close()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_1
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/io/nio/b;->j:LR1/c;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x0

    .line 58
    new-array v3, v3, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-interface {v1, v2, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/b;->i:Z

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->close()V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :goto_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/b;->i:Z

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->close()V

    .line 79
    .line 80
    .line 81
    :cond_1
    throw v0

    .line 82
    :cond_2
    :goto_3
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    sget-object v0, Lorg/eclipse/jetty/io/nio/b;->j:LR1/c;

    .line 2
    .line 3
    const-string v1, "oshut {}"

    .line 4
    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/b;->i:Z

    .line 14
    .line 15
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Ljava/nio/channels/ByteChannel;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/b;->h:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->close()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_1
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/io/nio/b;->j:LR1/c;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x0

    .line 58
    new-array v3, v3, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-interface {v1, v2, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/b;->h:Z

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->close()V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :goto_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/b;->h:Z

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->close()V

    .line 79
    .line 80
    .line 81
    :cond_1
    throw v0

    .line 82
    :cond_2
    :goto_3
    return-void
.end method

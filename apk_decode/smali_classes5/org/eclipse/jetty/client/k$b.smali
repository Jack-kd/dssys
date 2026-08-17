.class public Lorg/eclipse/jetty/client/k$b;
.super Lorg/eclipse/jetty/io/nio/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public o:LR1/c;

.field public final synthetic p:Lorg/eclipse/jetty/client/k;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/k$b;->p:Lorg/eclipse/jetty/client/k;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/eclipse/jetty/client/k;->a0()LR1/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lorg/eclipse/jetty/client/k$b;->o:LR1/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public X(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$b;->p:Lorg/eclipse/jetty/client/k;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/client/k;->c0(Lorg/eclipse/jetty/client/k;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, LW1/e$a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, LW1/e$a;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    instance-of v0, p3, Lorg/eclipse/jetty/client/HttpDestination;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p3, Lorg/eclipse/jetty/client/HttpDestination;

    .line 23
    .line 24
    invoke-virtual {p3, p2}, Lorg/eclipse/jetty/client/HttpDestination;->o(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/f;->X(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public Y(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0

    .line 1
    return-void
.end method

.method public Z(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a0(LL1/i;LL1/j;)V
    .locals 0

    .line 1
    return-void
.end method

.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$b;->p:Lorg/eclipse/jetty/client/k;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/client/k;->b0(Lorg/eclipse/jetty/client/k;)Lorg/eclipse/jetty/client/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lorg/eclipse/jetty/client/g;->l:LW1/d;

    .line 8
    .line 9
    invoke-interface {v0, p1}, LW1/d;->dispatch(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public e0(Ljava/nio/channels/SocketChannel;LL1/c;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/a;
    .locals 1

    .line 1
    new-instance p1, Lorg/eclipse/jetty/client/c;

    .line 2
    .line 3
    iget-object p3, p0, Lorg/eclipse/jetty/client/k$b;->p:Lorg/eclipse/jetty/client/k;

    .line 4
    .line 5
    invoke-static {p3}, Lorg/eclipse/jetty/client/k;->b0(Lorg/eclipse/jetty/client/k;)Lorg/eclipse/jetty/client/g;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lorg/eclipse/jetty/client/g;->z()Lorg/eclipse/jetty/io/Buffers;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$b;->p:Lorg/eclipse/jetty/client/k;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/eclipse/jetty/client/k;->b0(Lorg/eclipse/jetty/client/k;)Lorg/eclipse/jetty/client/g;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/g;->H()Lorg/eclipse/jetty/io/Buffers;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, p3, v0, p2}, Lorg/eclipse/jetty/client/c;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;LL1/k;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public f0(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/f$d;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$b;->p:Lorg/eclipse/jetty/client/k;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/client/k;->c0(Lorg/eclipse/jetty/client/k;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, LW1/e$a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, LW1/e$a;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$b;->o:LR1/c;

    .line 19
    .line 20
    invoke-interface {v0}, LR1/c;->f()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$b;->o:LR1/c;

    .line 27
    .line 28
    iget-object v1, p0, Lorg/eclipse/jetty/client/k$b;->p:Lorg/eclipse/jetty/client/k;

    .line 29
    .line 30
    invoke-static {v1}, Lorg/eclipse/jetty/client/k;->c0(Lorg/eclipse/jetty/client/k;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "Channels with connection pending: {}"

    .line 47
    .line 48
    invoke-interface {v0, v2, v1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lorg/eclipse/jetty/client/HttpDestination;

    .line 56
    .line 57
    new-instance v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 58
    .line 59
    iget-object v2, p0, Lorg/eclipse/jetty/client/k$b;->p:Lorg/eclipse/jetty/client/k;

    .line 60
    .line 61
    invoke-static {v2}, Lorg/eclipse/jetty/client/k;->b0(Lorg/eclipse/jetty/client/k;)Lorg/eclipse/jetty/client/g;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/g;->g0()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    long-to-int v2, v2

    .line 70
    invoke-direct {v1, p1, p2, p3, v2}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/f$d;Ljava/nio/channels/SelectionKey;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->n()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    iget-object v2, p0, Lorg/eclipse/jetty/client/k$b;->o:LR1/c;

    .line 80
    .line 81
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->l()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    filled-new-array {p1, v3}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const-string v4, "secure to {}, proxied={}"

    .line 94
    .line 95
    invoke-interface {v2, v4, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Lorg/eclipse/jetty/client/k$c;

    .line 99
    .line 100
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->k()LU1/b;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {p0, v3, p1}, Lorg/eclipse/jetty/client/k$b;->h0(LU1/b;Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-direct {v2, v1, v3}, Lorg/eclipse/jetty/client/k$c;-><init>(LL1/c;Ljavax/net/ssl/SSLEngine;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    move-object v2, v1

    .line 113
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/f$d;->i()Lorg/eclipse/jetty/io/nio/f;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p2, p1, v2, p3}, Lorg/eclipse/jetty/io/nio/f;->e0(Ljava/nio/channels/SocketChannel;LL1/c;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/a;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-interface {v2, p1}, LL1/i;->a(LL1/j;)V

    .line 126
    .line 127
    .line 128
    check-cast p1, Lorg/eclipse/jetty/client/a;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/a;->r(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->n()Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-eqz p2, :cond_3

    .line 138
    .line 139
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->l()Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-nez p2, :cond_3

    .line 144
    .line 145
    check-cast v2, Lorg/eclipse/jetty/client/k$c;

    .line 146
    .line 147
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/k$c;->u()V

    .line 148
    .line 149
    .line 150
    :cond_3
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->q(Lorg/eclipse/jetty/client/a;)V

    .line 151
    .line 152
    .line 153
    return-object v1
.end method

.method public final declared-synchronized h0(LU1/b;Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Ljava/net/Socket;->getPort()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1, v0, p2}, LU1/b;->b0(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p1}, LU1/b;->a0()Ljavax/net/ssl/SSLEngine;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    const/4 p2, 0x1

    .line 36
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-object p1

    .line 44
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method

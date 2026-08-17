.class public Lorg/eclipse/jetty/client/l;
.super Lorg/eclipse/jetty/util/component/a;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/client/g$b;


# static fields
.field public static final c:LR1/c;


# instance fields
.field public final b:Lorg/eclipse/jetty/client/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/client/l;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/client/l;->c:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/client/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/g;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic P()LR1/c;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/client/l;->c:LR1/c;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public t(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->k()LU1/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, LU1/b;->c0()Ljavax/net/ssl/SSLSocket;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->l()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->i()Lorg/eclipse/jetty/client/b;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->e()Lorg/eclipse/jetty/client/b;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/b;->c()Ljava/net/InetSocketAddress;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/g;

    .line 52
    .line 53
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/g;->d0()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lorg/eclipse/jetty/io/bio/a;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/bio/a;-><init>(Ljava/net/Socket;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lorg/eclipse/jetty/client/d;

    .line 66
    .line 67
    iget-object v2, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/g;

    .line 68
    .line 69
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/g;->z()Lorg/eclipse/jetty/io/Buffers;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/g;

    .line 74
    .line 75
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/g;->H()Lorg/eclipse/jetty/io/Buffers;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-direct {v0, v2, v3, v1}, Lorg/eclipse/jetty/client/d;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;LL1/k;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/a;->r(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->q(Lorg/eclipse/jetty/client/a;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/g;

    .line 89
    .line 90
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/g;->m0()LW1/d;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v2, Lorg/eclipse/jetty/client/l$a;

    .line 95
    .line 96
    invoke-direct {v2, p0, v0, p1}, Lorg/eclipse/jetty/client/l$a;-><init>(Lorg/eclipse/jetty/client/l;Lorg/eclipse/jetty/client/a;Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v2}, LW1/d;->dispatch(Ljava/lang/Runnable;)Z

    .line 100
    .line 101
    .line 102
    return-void
.end method

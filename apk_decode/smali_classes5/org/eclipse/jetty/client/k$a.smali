.class public Lorg/eclipse/jetty/client/k$a;
.super LW1/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final g:Ljava/nio/channels/SocketChannel;

.field public final h:Lorg/eclipse/jetty/client/HttpDestination;

.field public final synthetic i:Lorg/eclipse/jetty/client/k;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/k;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/k$a;->i:Lorg/eclipse/jetty/client/k;

    .line 2
    .line 3
    invoke-direct {p0}, LW1/e$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/eclipse/jetty/client/k$a;->g:Ljava/nio/channels/SocketChannel;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/eclipse/jetty/client/k$a;->h:Lorg/eclipse/jetty/client/HttpDestination;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$a;->g:Ljava/nio/channels/SocketChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lorg/eclipse/jetty/client/k;->a0()LR1/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/eclipse/jetty/client/k$a;->g:Ljava/nio/channels/SocketChannel;

    .line 14
    .line 15
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "Channel {} timed out while connecting, closing it"

    .line 20
    .line 21
    invoke-interface {v0, v2, v1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/k$a;->h()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$a;->i:Lorg/eclipse/jetty/client/k;

    .line 28
    .line 29
    invoke-static {v0}, Lorg/eclipse/jetty/client/k;->c0(Lorg/eclipse/jetty/client/k;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lorg/eclipse/jetty/client/k$a;->g:Ljava/nio/channels/SocketChannel;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$a;->h:Lorg/eclipse/jetty/client/HttpDestination;

    .line 39
    .line 40
    new-instance v1, Ljava/net/SocketTimeoutException;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/net/SocketTimeoutException;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->o(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$a;->g:Ljava/nio/channels/SocketChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-static {}, Lorg/eclipse/jetty/client/k;->a0()LR1/c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

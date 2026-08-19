.class public Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;


# static fields
.field public static final INSTANCE:Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected server:LN1/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;

    .line 14
    .line 15
    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->INSTANCE:Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;

    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->resetServer()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static isConnectionOpen(Ljavax/servlet/http/HttpServletRequest;)Z
    .locals 1

    .line 1
    const-string v0, " "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->isConnectionOpen(Ljavax/servlet/http/HttpServletRequest;[B)Z

    move-result p0

    return p0
.end method

.method public static isConnectionOpen(Ljavax/servlet/http/HttpServletRequest;[B)Z
    .locals 3

    .line 2
    check-cast p0, LN1/k;

    .line 3
    invoke-virtual {p0}, LN1/k;->d()LN1/c;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, LL1/b;->e()LL1/k;

    move-result-object p0

    invoke-interface {p0}, LL1/k;->m()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/Socket;

    .line 5
    sget-object v0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking if client connection is still open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 8
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 9
    :catch_0
    sget-object p1, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client connection has been closed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized addConnector(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, LO1/a;

    .line 3
    .line 4
    invoke-direct {v0}, LO1/a;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, LN1/a;->w0(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, LN1/a;->x0(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, LO1/a;->open()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, LN1/m;->f0(LN1/g;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/component/a;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    :try_start_2
    sget-object p2, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->log:Ljava/util/logging/Logger;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "Couldn\'t start connector: "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, " "

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance p2, Ljava/lang/RuntimeException;

    .line 67
    .line 68
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw p2

    .line 72
    :cond_0
    :goto_0
    invoke-virtual {v0}, LO1/a;->getLocalPort()I

    .line 73
    .line 74
    .line 75
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    monitor-exit p0

    .line 77
    return p1

    .line 78
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    throw p1
.end method

.method public declared-synchronized registerServlet(Ljava/lang/String;Ljavax/servlet/Servlet;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/h;->d0()LN1/h;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->log:Ljava/util/logging/Logger;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Registering UPnP servlet under context path: "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lorg/eclipse/jetty/servlet/b;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, v1}, Lorg/eclipse/jetty/servlet/b;-><init>(I)V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-lez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/d;->G0(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    new-instance p1, Lorg/eclipse/jetty/servlet/d;

    .line 55
    .line 56
    invoke-direct {p1, p2}, Lorg/eclipse/jetty/servlet/d;-><init>(Ljavax/servlet/Servlet;)V

    .line 57
    .line 58
    .line 59
    const-string p2, "/*"

    .line 60
    .line 61
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/servlet/b;->K0(Lorg/eclipse/jetty/servlet/d;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/handler/h;->e0(LN1/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p1
.end method

.method public declared-synchronized removeConnector(Ljava/lang/String;I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 3
    .line 4
    invoke-virtual {v0}, LN1/m;->g0()[LN1/g;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_3

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-interface {v3}, LN1/g;->getHost()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    invoke-interface {v3}, LN1/g;->getLocalPort()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ne v4, p2, :cond_2

    .line 29
    .line 30
    invoke-interface {v3}, Lorg/eclipse/jetty/util/component/f;->isStarted()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    invoke-interface {v3}, Lorg/eclipse/jetty/util/component/f;->isStarting()Z

    .line 37
    .line 38
    .line 39
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_3

    .line 45
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v3}, Lorg/eclipse/jetty/util/component/f;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    :cond_1
    :try_start_2
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 49
    .line 50
    invoke-virtual {p1, v3}, LN1/m;->s0(LN1/g;)V

    .line 51
    .line 52
    .line 53
    array-length p1, v0

    .line 54
    const/4 p2, 0x1

    .line 55
    if-ne p1, p2, :cond_3

    .line 56
    .line 57
    sget-object p1, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->log:Ljava/util/logging/Logger;

    .line 58
    .line 59
    const-string p2, "No more connectors, stopping Jetty server"

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->stopIfRunning()V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception p1

    .line 69
    sget-object p2, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->log:Ljava/util/logging/Logger;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v1, "Couldn\'t stop connector: "

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, " "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance p2, Ljava/lang/RuntimeException;

    .line 100
    .line 101
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    :goto_2
    monitor-exit p0

    .line 109
    return-void

    .line 110
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    throw p1
.end method

.method public resetServer()V
    .locals 2

    .line 1
    new-instance v0, LN1/m;

    .line 2
    .line 3
    invoke-direct {v0}, LN1/m;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 7
    .line 8
    const/16 v1, 0x3e8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, LN1/m;->u0(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public declared-synchronized setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->INSTANCE:Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;

    .line 3
    .line 4
    iget-object v1, v0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 5
    .line 6
    invoke-virtual {v1}, LN1/m;->m0()LW1/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 13
    .line 14
    new-instance v1, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer$1;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer$1;-><init>(Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;Ljava/util/concurrent/ExecutorService;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, LN1/m;->w0(LW1/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public declared-synchronized startIfNotRunning()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/component/a;->isStarting()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->log:Ljava/util/logging/Logger;

    .line 19
    .line 20
    const-string v1, "Starting Jetty server... "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/component/a;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    :try_start_2
    sget-object v1, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->log:Ljava/util/logging/Logger;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "Couldn\'t start Jetty server: "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :cond_0
    :goto_0
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    throw v0
.end method

.method public declared-synchronized stopIfRunning()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/component/a;->isStopped()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/component/a;->isStopping()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->log:Ljava/util/logging/Logger;

    .line 19
    .line 20
    const-string v1, "Stopping Jetty server..."

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->server:LN1/m;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/component/a;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    .line 30
    :try_start_2
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->resetServer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_2

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    :try_start_3
    sget-object v1, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->log:Ljava/util/logging/Logger;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "Couldn\'t stop Jetty server: "

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->resetServer()V

    .line 68
    .line 69
    .line 70
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    :cond_0
    :goto_1
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 74
    throw v0
.end method

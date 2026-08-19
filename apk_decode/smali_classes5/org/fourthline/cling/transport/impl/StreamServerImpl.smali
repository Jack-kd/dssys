.class public Lorg/fourthline/cling/transport/impl/StreamServerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;,
        Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/transport/spi/StreamServer<",
        "Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

.field protected server:Lcom/sun/net/httpserver/HttpServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/transport/spi/StreamServer;

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
    sput-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getConfiguration()Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/StreamServerConfiguration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/sun/net/httpserver/HttpServer;->getAddress()Ljava/net/InetSocketAddress;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method

.method public declared-synchronized init(Ljava/net/InetAddress;Lorg/fourthline/cling/transport/Router;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;->getListenPort()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;->getTcpConnectionBacklog()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {v0, p1}, Lcom/sun/net/httpserver/HttpServer;->create(Ljava/net/InetSocketAddress;I)Lcom/sun/net/httpserver/HttpServer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    .line 24
    .line 25
    const-string v0, "/"

    .line 26
    .line 27
    new-instance v1, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;

    .line 28
    .line 29
    invoke-direct {v1, p0, p2}, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;-><init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl;Lorg/fourthline/cling/transport/Router;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/sun/net/httpserver/HttpServer;->createContext(Ljava/lang/String;Lcom/sun/net/httpserver/HttpHandler;)Lcom/sun/net/httpserver/HttpContext;

    .line 33
    .line 34
    .line 35
    sget-object p1, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v0, "Created server (for receiving TCP streams) on: "

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/sun/net/httpserver/HttpServer;->getAddress()Ljava/net/InetSocketAddress;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    :try_start_1
    new-instance p2, Lorg/fourthline/cling/transport/spi/InitializationException;

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v1, "Could not initialize "

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ": "

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw p2

    .line 111
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p1
.end method

.method public isConnectionOpen(Lcom/sun/net/httpserver/HttpExchange;)Z
    .locals 1

    .line 1
    sget-object p1, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    const-string v0, "Can\'t check client connection, socket access impossible on JDK webserver!"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public declared-synchronized run()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    .line 3
    .line 4
    const-string v1, "Starting StreamServer..."

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/sun/net/httpserver/HttpServer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    .line 3
    .line 4
    const-string v1, "Stopping StreamServer..."

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/sun/net/httpserver/HttpServer;->stop(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v0
.end method

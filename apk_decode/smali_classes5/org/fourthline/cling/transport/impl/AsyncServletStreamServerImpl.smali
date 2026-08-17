.class public Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/transport/spi/StreamServer<",
        "Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

.field protected hostAddress:Ljava/lang/String;

.field protected localPort:I

.field private mCounter:I


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
    sput-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->mCounter:I

    .line 6
    .line 7
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic access$008(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->mCounter:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->mCounter:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public createServlet(Lorg/fourthline/cling/transport/Router;)Ljavax/servlet/Servlet;
    .locals 1

    .line 1
    new-instance v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;-><init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;Lorg/fourthline/cling/transport/Router;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/StreamServerConfiguration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->localPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public declared-synchronized init(Ljava/net/InetAddress;Lorg/fourthline/cling/transport/Router;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    .line 3
    .line 4
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const-string v2, "Setting executor service on servlet container adapter"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {p2}, Lorg/fourthline/cling/transport/Router;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getStreamServerExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v2, v3}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->setExecutorService(Ljava/util/concurrent/ExecutorService;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "Adding connector: "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, ":"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getListenPort()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->hostAddress:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->hostAddress:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getListenPort()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-interface {p1, v0, v1}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->addConnector(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iput p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->localPort:I

    .line 114
    .line 115
    invoke-interface {p2}, Lorg/fourthline/cling/transport/Router;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lorg/fourthline/cling/model/Namespace;->getBasePath()Ljava/net/URI;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->createServlet(Lorg/fourthline/cling/transport/Router;)Ljavax/servlet/Servlet;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-interface {v0, p1, p2}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->registerServlet(Ljava/lang/String;Ljavax/servlet/Servlet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    monitor-exit p0

    .line 147
    return-void

    .line 148
    :goto_1
    :try_start_1
    new-instance p2, Lorg/fourthline/cling/transport/spi/InitializationException;

    .line 149
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v1, "Could not initialize "

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v1, ": "

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    throw p2

    .line 191
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    throw p1
.end method

.method public isConnectionOpen(Ljavax/servlet/http/HttpServletRequest;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->startIfNotRunning()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->hostAddress:Ljava/lang/String;

    .line 11
    .line 12
    iget v2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->localPort:I

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->removeConnector(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method

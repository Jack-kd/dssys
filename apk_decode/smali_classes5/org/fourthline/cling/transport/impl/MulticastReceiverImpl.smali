.class public Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/MulticastReceiver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/transport/spi/MulticastReceiver<",
        "Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

.field protected datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

.field protected multicastAddress:Ljava/net/InetSocketAddress;

.field protected multicastInterface:Ljava/net/NetworkInterface;

.field protected networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

.field protected router:Lorg/fourthline/cling/transport/Router;

.field protected socket:Ljava/net/MulticastSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/transport/spi/MulticastReceiver;

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
    sput-object v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/MulticastReceiverConfiguration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Ljava/net/NetworkInterface;Lorg/fourthline/cling/transport/Router;Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;Lorg/fourthline/cling/transport/spi/DatagramProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->router:Lorg/fourthline/cling/transport/Router;

    .line 3
    .line 4
    iput-object p3, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 5
    .line 6
    iput-object p4, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    :try_start_1
    sget-object p1, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    .line 11
    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string p3, "Creating wildcard socket (for receiving multicast datagrams) on port: "

    .line 18
    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p3, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    .line 23
    .line 24
    invoke-virtual {p3}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->getPort()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/net/InetSocketAddress;

    .line 39
    .line 40
    iget-object p2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    .line 41
    .line 42
    invoke-virtual {p2}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->getGroup()Ljava/net/InetAddress;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iget-object p3, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    .line 47
    .line 48
    invoke-virtual {p3}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->getPort()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    invoke-direct {p1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    .line 56
    .line 57
    new-instance p1, Ljava/net/MulticastSocket;

    .line 58
    .line 59
    iget-object p2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    .line 60
    .line 61
    invoke-virtual {p2}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->getPort()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-direct {p1, p2}, Ljava/net/MulticastSocket;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    .line 69
    .line 70
    const/4 p2, 0x1

    .line 71
    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    .line 75
    .line 76
    const p2, 0x8000

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string p3, "Joining multicast group: "

    .line 90
    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object p3, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    .line 95
    .line 96
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p3, " on network interface: "

    .line 100
    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object p3, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    .line 105
    .line 106
    invoke-virtual {p3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    .line 121
    .line 122
    iget-object p2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    .line 123
    .line 124
    iget-object p3, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    .line 125
    .line 126
    invoke-virtual {p1, p2, p3}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 131
    :catchall_0
    move-exception p1

    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception p1

    .line 134
    :try_start_2
    new-instance p2, Lorg/fourthline/cling/transport/spi/InitializationException;

    .line 135
    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string p4, "Could not initialize "

    .line 142
    .line 143
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    move-result-object p4

    .line 150
    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p4

    .line 154
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p4, ": "

    .line 158
    .line 159
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {p2, p1}, Lorg/fourthline/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p2

    .line 173
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    throw p1
.end method

.method public run()V
    .locals 5

    .line 1
    sget-object v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Entering blocking receiving loop, listening for UDP datagrams on: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;->getMaxDatagramBytes()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    new-array v1, v0, [B

    .line 38
    .line 39
    new-instance v2, Ljava/net/DatagramPacket;

    .line 40
    .line 41
    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 50
    .line 51
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    .line 52
    .line 53
    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    instance-of v3, v3, Ljava/net/Inet6Address;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v0, v1, v3, v4}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getLocalAddress(Ljava/net/NetworkInterface;ZLjava/net/InetAddress;)Ljava/net/InetAddress;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v4, "UDP datagram received from: "

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v4, ":"

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v4, " on local interface: "

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v4, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v4, " and address: "

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->router:Lorg/fourthline/cling/transport/Router;

    .line 138
    .line 139
    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    .line 140
    .line 141
    invoke-interface {v3, v0, v2}, Lorg/fourthline/cling/transport/spi/DatagramProcessor;->read(Ljava/net/InetAddress;Ljava/net/DatagramPacket;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v1, v0}, Lorg/fourthline/cling/transport/Router;->received(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    goto :goto_1

    .line 151
    :catch_1
    move-exception v0

    .line 152
    goto :goto_2

    .line 153
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 154
    .line 155
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    throw v1

    .line 159
    :goto_2
    sget-object v1, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    .line 160
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v3, "Could not read datagram: "

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :catch_2
    sget-object v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    .line 188
    .line 189
    const-string v1, "Socket closed"

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_0

    .line 201
    .line 202
    sget-object v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    .line 203
    .line 204
    const-string v1, "Closing multicast socket"

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :catch_3
    move-exception v0

    .line 216
    goto :goto_4

    .line 217
    :cond_0
    :goto_3
    return-void

    .line 218
    :goto_4
    new-instance v1, Ljava/lang/RuntimeException;

    .line 219
    .line 220
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    .line 13
    .line 14
    const-string v1, "Leaving multicast group"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    .line 22
    .line 23
    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    :try_start_2
    sget-object v1, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "Could not leave multicast group: "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    :cond_0
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    throw v0
.end method

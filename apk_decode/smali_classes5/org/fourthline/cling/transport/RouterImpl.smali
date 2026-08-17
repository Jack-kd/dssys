.class public Lorg/fourthline/cling/transport/RouterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/transport/Router;


# annotations
.annotation runtime Ljavax/enterprise/context/ApplicationScoped;
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

.field protected final datagramIOs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Lorg/fourthline/cling/transport/spi/DatagramIO;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile enabled:Z

.field protected final multicastReceivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/NetworkInterface;",
            "Lorg/fourthline/cling/transport/spi/MulticastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field protected networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

.field protected protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

.field protected readLock:Ljava/util/concurrent/locks/Lock;

.field protected routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

.field protected final streamServers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Lorg/fourthline/cling/transport/spi/StreamServer;",
            ">;"
        }
    .end annotation
.end field

.field protected writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/transport/Router;

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
    sput-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 4
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 11
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    .line 15
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Router: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 17
    iput-object p2, p0, Lorg/fourthline/cling/transport/RouterImpl;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    return-void
.end method


# virtual methods
.method public broadcast([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/net/InetAddress;

    .line 39
    .line 40
    invoke-interface {v2, v3}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getBroadcastAddress(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    sget-object v3, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 47
    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v5, "Sending UDP datagram to broadcast address: "

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v3, Ljava/net/DatagramPacket;

    .line 73
    .line 74
    array-length v4, p1

    .line 75
    const/16 v5, 0x9

    .line 76
    .line 77
    invoke-direct {v3, p1, v4, v2, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lorg/fourthline/cling/transport/spi/DatagramIO;

    .line 85
    .line 86
    invoke-interface {v1, v3}, Lorg/fourthline/cling/transport/spi/DatagramIO;->send(Ljava/net/DatagramPacket;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v2, "Router disabled, not broadcasting bytes: "

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    array-length p1, p1

    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    :cond_2
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :goto_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public disable()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 4
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "Disabling network services..."

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    const-string v3, "Stopping stream client connection management/pool"

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

    invoke-interface {v0}, Lorg/fourthline/cling/transport/spi/StreamClient;->stop()V

    .line 8
    iput-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 10
    sget-object v4, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping stream server on address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/transport/spi/StreamServer;

    invoke-interface {v3}, Lorg/fourthline/cling/transport/spi/StreamServer;->stop()V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 13
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 14
    sget-object v4, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping multicast receiver on interface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 15
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/transport/spi/MulticastReceiver;

    invoke-interface {v3}, Lorg/fourthline/cling/transport/spi/MulticastReceiver;->stop()V

    goto :goto_2

    .line 16
    :cond_2
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 17
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 18
    sget-object v4, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping datagram I/O on address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 19
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/transport/spi/DatagramIO;

    invoke-interface {v3}, Lorg/fourthline/cling/transport/spi/DatagramIO;->stop()V

    goto :goto_3

    .line 20
    :cond_3
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 21
    iput-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 22
    iput-boolean v1, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    const/4 v0, 0x1

    return v0

    :cond_4
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return v1

    :goto_4
    iget-object v1, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 24
    throw v0
.end method

.method public disable(Lorg/fourthline/cling/transport/DisableRouter;)Z
    .locals 0
    .param p1    # Lorg/fourthline/cling/transport/DisableRouter;
        .annotation runtime Ljavax/enterprise/event/Observes;
        .end annotation

        .annotation runtime Ljavax/enterprise/inject/Default;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->disable()Z

    move-result p1

    return p1
.end method

.method public enable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 4
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Starting networking services..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->createNetworkAddressFactory()Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 6
    invoke-interface {v0}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getNetworkInterfaces()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->startInterfaceBasedTransports(Ljava/util/Iterator;)V

    .line 7
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v0}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getBindAddresses()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->startAddressBasedTransports(Ljava/util/Iterator;)V

    .line 8
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v0}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->hasUsableNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->createStreamClient()Lorg/fourthline/cling/transport/spi/StreamClient;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z
    :try_end_1
    .catch Lorg/fourthline/cling/transport/spi/InitializationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iget-object v1, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 12
    :cond_0
    :try_start_2
    new-instance v0, Lorg/fourthline/cling/transport/spi/NoNetworkException;

    const-string v1, "No usable network interface and/or addresses available, check the log for errors."

    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/spi/NoNetworkException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/fourthline/cling/transport/spi/InitializationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :goto_0
    :try_start_3
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->handleStartFailure(Lorg/fourthline/cling/transport/spi/InitializationException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :cond_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    const/4 v0, 0x0

    return v0

    :goto_1
    iget-object v1, p0, Lorg/fourthline/cling/transport/RouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 15
    throw v0
.end method

.method public enable(Lorg/fourthline/cling/transport/EnableRouter;)Z
    .locals 0
    .param p1    # Lorg/fourthline/cling/transport/EnableRouter;
        .annotation runtime Ljavax/enterprise/event/Observes;
        .end annotation

        .annotation runtime Ljavax/enterprise/inject/Default;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->enable()Z

    move-result p1

    return p1
.end method

.method public getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/NetworkAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_2

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lorg/fourthline/cling/transport/spi/StreamServer;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    new-instance v2, Lorg/fourthline/cling/model/NetworkAddress;

    .line 36
    .line 37
    invoke-interface {v1}, Lorg/fourthline/cling/transport/spi/StreamServer;->getPort()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v3, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 42
    .line 43
    invoke-interface {v3, p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getHardwareAddress(Ljava/net/InetAddress;)[B

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-direct {v2, p1, v1, v3}, Lorg/fourthline/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I[B)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :try_start_1
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    .line 83
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/net/InetAddress;

    .line 90
    .line 91
    invoke-interface {v2, v3}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getHardwareAddress(Ljava/net/InetAddress;)[B

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    new-instance v3, Lorg/fourthline/cling/model/NetworkAddress;

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Ljava/net/InetAddress;

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lorg/fourthline/cling/transport/spi/StreamServer;

    .line 108
    .line 109
    invoke-interface {v1}, Lorg/fourthline/cling/transport/spi/StreamServer;->getPort()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-direct {v3, v4, v1, v2}, Lorg/fourthline/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I[B)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 125
    .line 126
    .line 127
    return-object p1

    .line 128
    :goto_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLockTimeoutMillis()I
    .locals 1

    const/16 v0, 0x1770

    return v0
.end method

.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleStartFailure(Lorg/fourthline/cling/transport/spi/InitializationException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/fourthline/cling/transport/spi/NoNetworkException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 6
    .line 7
    const-string v0, "Unable to initialize network router, no network found."

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Unable to initialize network router: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "Cause: "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public lock(Ljava/util/concurrent/locks/Lock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getLockTimeoutMillis()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;I)V

    return-void
.end method

.method public lock(Ljava/util/concurrent/locks/Lock;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to obtain lock with timeout milliseconds \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    int-to-long v0, p2

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acquired router lock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lorg/fourthline/cling/transport/RouterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Router wasn\'t available exclusively after waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "ms, lock failed: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/fourthline/cling/transport/RouterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_0
    new-instance v0, Lorg/fourthline/cling/transport/RouterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interruption while waiting for exclusive access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/transport/RouterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public received(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Router disabled, ignoring incoming message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createReceivingAsync(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No protocol, ignoring received message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received asynchronous message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/fourthline/cling/protocol/ProtocolCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :goto_0
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling received datagram failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public received(Lorg/fourthline/cling/transport/spi/UpnpStream;)V
    .locals 3

    .line 10
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    if-nez v0, :cond_0

    .line 11
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Router disabled, ignoring incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received synchronous stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getSyncProtocolExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

    if-nez v0, :cond_0

    .line 11
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No StreamClient available, not sending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 13
    :cond_0
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending via TCP unicast stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamClient:Lorg/fourthline/cling/transport/spi/StreamClient;

    invoke-interface {v0, p1}, Lorg/fourthline/cling/transport/spi/StreamClient;->sendRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 16
    :try_start_3
    new-instance v0, Lorg/fourthline/cling/transport/RouterException;

    const-string v1, "Sending stream request was interrupted"

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/transport/RouterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 17
    :cond_1
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Router disabled, not sending stream request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 18
    :goto_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 19
    throw p1
.end method

.method public send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->enabled:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/transport/spi/DatagramIO;

    .line 4
    invoke-interface {v1, p1}, Lorg/fourthline/cling/transport/spi/DatagramIO;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Router disabled, not sending datagram: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    return-void

    :goto_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/RouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/RouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 7
    throw p1
.end method

.method public shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->disable()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public startAddressBasedTransports(Ljava/util/Iterator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/net/InetAddress;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 18
    .line 19
    invoke-interface {v1, v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->createStreamServer(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/StreamServer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Configuration did not create a StreamServer for: "

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    :try_start_0
    sget-object v3, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 49
    .line 50
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    sget-object v3, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 59
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v5, "Init stream server on address: "

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    goto :goto_3

    .line 83
    :cond_1
    :goto_1
    invoke-interface {v1, v0, p0}, Lorg/fourthline/cling/transport/spi/StreamServer;->init(Ljava/net/InetAddress;Lorg/fourthline/cling/transport/Router;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    .line 87
    .line 88
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/fourthline/cling/transport/spi/InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v3, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 96
    .line 97
    invoke-interface {v1, v3}, Lorg/fourthline/cling/UpnpServiceConfiguration;->createDatagramIO(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/DatagramIO;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-nez v1, :cond_2

    .line 102
    .line 103
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    sget-object v2, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 125
    .line 126
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_3

    .line 133
    .line 134
    sget-object v2, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 135
    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v4, "Init datagram I/O on address: "

    .line 142
    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDatagramProcessor()Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-interface {v1, v0, p0, v2}, Lorg/fourthline/cling/transport/spi/DatagramIO;->init(Ljava/net/InetAddress;Lorg/fourthline/cling/transport/Router;Lorg/fourthline/cling/transport/spi/DatagramProcessor;)V

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    .line 168
    .line 169
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :goto_3
    invoke-static {v1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    instance-of v3, v2, Ljava/net/BindException;

    .line 179
    .line 180
    if-eqz v3, :cond_5

    .line 181
    .line 182
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 183
    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v4, "Failed to init StreamServer: "

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 205
    .line 206
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 207
    .line 208
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_4

    .line 213
    .line 214
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 215
    .line 216
    const-string v4, "Initialization exception root cause"

    .line 217
    .line 218
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    :cond_4
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 222
    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v3, "Removing unusable address: "

    .line 229
    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_5
    throw v1

    .line 249
    :cond_6
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    .line 250
    .line 251
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_8

    .line 264
    .line 265
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Ljava/util/Map$Entry;

    .line 270
    .line 271
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 272
    .line 273
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_7

    .line 280
    .line 281
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 282
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v3, "Starting stream server on address: "

    .line 289
    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    :cond_7
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getStreamServerExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    check-cast v0, Ljava/lang/Runnable;

    .line 320
    .line 321
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 322
    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_8
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    .line 326
    .line 327
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_a

    .line 340
    .line 341
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Ljava/util/Map$Entry;

    .line 346
    .line 347
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 348
    .line 349
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 350
    .line 351
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_9

    .line 356
    .line 357
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 358
    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    const-string v3, "Starting datagram I/O on address: "

    .line 365
    .line 366
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :cond_9
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDatagramIOExecutor()Ljava/util/concurrent/Executor;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    check-cast v0, Ljava/lang/Runnable;

    .line 396
    .line 397
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 398
    .line 399
    .line 400
    goto :goto_5

    .line 401
    :cond_a
    return-void
.end method

.method public startInterfaceBasedTransports(Ljava/util/Iterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/net/NetworkInterface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/net/NetworkInterface;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 18
    .line 19
    invoke-interface {v1, v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->createMulticastReceiver(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/MulticastReceiver;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "Configuration did not create a MulticastReceiver for: "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget-object v2, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 49
    .line 50
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    sget-object v2, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v4, "Init multicast receiver on interface: "

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 85
    .line 86
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-interface {v3}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getDatagramProcessor()Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-interface {v1, v0, p0, v2, v3}, Lorg/fourthline/cling/transport/spi/MulticastReceiver;->init(Ljava/net/NetworkInterface;Lorg/fourthline/cling/transport/Router;Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;Lorg/fourthline/cling/transport/spi/DatagramProcessor;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lorg/fourthline/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    .line 98
    .line 99
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget-object p1, p0, Lorg/fourthline/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/util/Map$Entry;

    .line 124
    .line 125
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 126
    .line 127
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    sget-object v1, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 136
    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v3, "Starting multicast receiver on interface: "

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Ljava/net/NetworkInterface;

    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/RouterImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getMulticastReceiverExecutor()Ljava/util/concurrent/Executor;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Ljava/lang/Runnable;

    .line 180
    .line 181
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_4
    return-void
.end method

.method public unlock(Ljava/util/concurrent/locks/Lock;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/fourthline/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Releasing router lock: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

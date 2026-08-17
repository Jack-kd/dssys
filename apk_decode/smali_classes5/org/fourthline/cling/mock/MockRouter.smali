.class public Lorg/fourthline/cling/mock/MockRouter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/transport/Router;


# annotations
.annotation runtime Ljavax/enterprise/inject/Alternative;
.end annotation


# instance fields
.field public broadcastedBytes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field protected configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

.field public counter:I

.field public incomingDatagramMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage;",
            ">;"
        }
    .end annotation
.end field

.field public outgoingDatagramMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

.field public receivedUpnpStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/transport/spi/UpnpStream;",
            ">;"
        }
    .end annotation
.end field

.field public sentStreamRequestMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/fourthline/cling/mock/MockRouter;->counter:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->incomingDatagramMessages:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->outgoingDatagramMessages:Ljava/util/List;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->receivedUpnpStreams:Ljava/util/List;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->sentStreamRequestMessages:Ljava/util/List;

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->broadcastedBytes:Ljava/util/List;

    .line 41
    .line 42
    iput-object p1, p0, Lorg/fourthline/cling/mock/MockRouter;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 43
    .line 44
    iput-object p2, p0, Lorg/fourthline/cling/mock/MockRouter;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public broadcast([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->broadcastedBytes:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public disable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public enable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;
    .locals 2
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
    :try_start_0
    new-instance p1, Lorg/fourthline/cling/model/NetworkAddress;

    .line 2
    .line 3
    const-string v0, "127.0.0.1"

    .line 4
    .line 5
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, v0, v1}, Lorg/fourthline/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 11
    .line 12
    .line 13
    filled-new-array {p1}, [Lorg/fourthline/cling/model/NetworkAddress;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public getBroadcastedBytes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->broadcastedBytes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIncomingDatagramMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->incomingDatagramMessages:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOutgoingDatagramMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->outgoingDatagramMessages:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReceivedUpnpStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/transport/spi/UpnpStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->receivedUpnpStreams:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSentStreamRequestMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->sentStreamRequestMessages:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStreamResponseMessage(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getStreamResponseMessages()[Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleStartFailure(Lorg/fourthline/cling/transport/spi/InitializationException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    return-void
.end method

.method public isEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public received(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->incomingDatagramMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public received(Lorg/fourthline/cling/transport/spi/UpnpStream;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->receivedUpnpStreams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetStreamRequestMessageCounter()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/fourthline/cling/mock/MockRouter;->counter:I

    .line 3
    .line 4
    return-void
.end method

.method public send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->sentStreamRequestMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget v0, p0, Lorg/fourthline/cling/mock/MockRouter;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/fourthline/cling/mock/MockRouter;->counter:I

    .line 4
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockRouter;->getStreamResponseMessages()[Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockRouter;->getStreamResponseMessages()[Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object p1

    iget v0, p0, Lorg/fourthline/cling/mock/MockRouter;->counter:I

    aget-object p1, p1, v0

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/mock/MockRouter;->getStreamResponseMessage(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object p1

    return-object p1
.end method

.method public send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockRouter;->outgoingDatagramMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    return-void
.end method

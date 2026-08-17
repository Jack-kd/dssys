.class public Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;
.super Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/fourthline/cling/support/model/AVTransport;",
        ">",
        "Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field final initialState:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;",
            ">;"
        }
    .end annotation
.end field

.field final stateMachineDefinition:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final stateMachines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field final transportClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/AVTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;

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
    sput-object v0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/AVTransport;

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachineDefinition:Ljava/lang/Class;

    .line 5
    iput-object p2, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->initialState:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->transportClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public createStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachineDefinition:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->initialState:Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->transportClass:Ljava/lang/Class;

    .line 6
    .line 7
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->getLastChange()Lorg/fourthline/cling/support/lastchange/LastChange;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p0, p1, v3}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->createTransport(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;)Lorg/fourthline/cling/support/model/AVTransport;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v0, v1, v2, p1}, Lorg/seamless/statemachine/StateMachineBuilder;->build(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/seamless/statemachine/StateMachine;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 28
    .line 29
    return-object p1
.end method

.method public createTransport(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;)Lorg/fourthline/cling/support/model/AVTransport;
    .locals 2

    .line 1
    new-instance v0, Lorg/fourthline/cling/support/model/AVTransport;

    .line 2
    .line 3
    sget-object v1, Lorg/fourthline/cling/support/model/StorageMedium;->NETWORK:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1}, Lorg/fourthline/cling/support/model/AVTransport;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;Lorg/fourthline/cling/support/model/StorageMedium;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    return-object p1
.end method

.method public findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4
    iget-object v4, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    if-nez v4, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    .line 5
    sget-object p2, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->log:Ljava/util/logging/Logger;

    const-string v4, "Creating default transport instance with ID \'0\'"

    invoke-virtual {p2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->createStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v4

    .line 7
    iget-object p1, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 8
    :goto_0
    sget-object p1, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->log:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found transport control with ID \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 9
    monitor-exit v0

    return-object v4

    .line 10
    :cond_1
    new-instance p1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object p2, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->INVALID_INSTANCE_ID:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-direct {p1, p2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;)V

    throw p1

    .line 11
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentInstanceIds()[Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-array v1, v1, [Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/Long;

    .line 34
    .line 35
    new-instance v5, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    invoke-direct {v5, v6, v7}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    .line 42
    .line 43
    .line 44
    aput-object v5, v1, v3

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    monitor-exit v0

    .line 52
    return-object v1

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw v1
.end method

.method public getCurrentTransportActions(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)[Lorg/fourthline/cling/support/model/TransportAction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    invoke-interface {p1}, Lorg/seamless/statemachine/StateMachine;->getCurrentState()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getCurrentTransportActions()[Lorg/fourthline/cling/support/model/TransportAction;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :catch_0
    const/4 p1, 0x0

    .line 17
    new-array p1, p1, [Lorg/fourthline/cling/support/model/TransportAction;

    .line 18
    .line 19
    return-object p1
.end method

.method public getDeviceCapabilities(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/DeviceCapabilities;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/seamless/statemachine/StateMachine;->getCurrentState()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getDeviceCapabilities()Lorg/fourthline/cling/support/model/DeviceCapabilities;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public getMediaInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/MediaInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/seamless/statemachine/StateMachine;->getCurrentState()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getMediaInfo()Lorg/fourthline/cling/support/model/MediaInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public getPositionInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/PositionInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/seamless/statemachine/StateMachine;->getCurrentState()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getPositionInfo()Lorg/fourthline/cling/support/model/PositionInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public getTransportInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/TransportInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/seamless/statemachine/StateMachine;->getCurrentState()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportInfo()Lorg/fourthline/cling/support/model/TransportInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public getTransportSettings(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/TransportSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/seamless/statemachine/StateMachine;->getCurrentState()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportSettings()Lorg/fourthline/cling/support/model/TransportSettings;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public next(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->next()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 11
    .line 12
    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public pause(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->pause()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 11
    .line 12
    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public play(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p2}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->play(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 11
    .line 12
    sget-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p2
.end method

.method public previous(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->previous()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 11
    .line 12
    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public record(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->record()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 11
    .line 12
    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public seek(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Lorg/fourthline/cling/support/model/SeekMode;->valueOrExceptionOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/SeekMode;

    .line 2
    .line 3
    .line 4
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1, p2, p3}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->seek(Lorg/fourthline/cling/support/model/SeekMode;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 15
    .line 16
    sget-object p3, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p2

    .line 26
    :catch_1
    new-instance p1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 27
    .line 28
    sget-object p3, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->SEEKMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "Unsupported seek mode: "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p3, p2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public setAVTransportURI(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1, v0, p3}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->setTransportURI(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 17
    .line 18
    sget-object p3, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p2

    .line 28
    :catch_1
    new-instance p1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 29
    .line 30
    sget-object p2, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 31
    .line 32
    const-string p3, "CurrentURI can not be null or malformed"

    .line 33
    .line 34
    invoke-direct {p1, p2, p3}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public setNextAVTransportURI(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1, v0, p3}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->setNextTransportURI(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 17
    .line 18
    sget-object p3, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p2

    .line 28
    :catch_1
    new-instance p1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 29
    .line 30
    sget-object p2, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 31
    .line 32
    const-string p3, "NextURI can not be null or malformed"

    .line 33
    .line 34
    invoke-direct {p1, p2, p3}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public setPlayMode(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/seamless/statemachine/StateMachine;->getCurrentState()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/support/model/TransportSettings;

    .line 16
    .line 17
    invoke-static {p2}, Lorg/fourthline/cling/support/model/PlayMode;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PlayMode;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportSettings()Lorg/fourthline/cling/support/model/TransportSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/TransportSettings;->getRecQualityMode()Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/TransportSettings;-><init>(Lorg/fourthline/cling/support/model/PlayMode;Lorg/fourthline/cling/support/model/RecordQualityMode;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/model/AVTransport;->setTransportSettings(Lorg/fourthline/cling/support/model/TransportSettings;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    new-instance p1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 37
    .line 38
    sget-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->PLAYMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "Unsupported play mode: "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p1, v0, p2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public setRecordQualityMode(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/seamless/statemachine/StateMachine;->getCurrentState()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/support/model/TransportSettings;

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportSettings()Lorg/fourthline/cling/support/model/TransportSettings;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/TransportSettings;->getPlayMode()Lorg/fourthline/cling/support/model/PlayMode;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {p2}, Lorg/fourthline/cling/support/model/RecordQualityMode;->valueOrExceptionOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/TransportSettings;-><init>(Lorg/fourthline/cling/support/model/PlayMode;Lorg/fourthline/cling/support/model/RecordQualityMode;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/model/AVTransport;->setTransportSettings(Lorg/fourthline/cling/support/model/TransportSettings;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    new-instance p1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 37
    .line 38
    sget-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->RECORDQUALITYMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "Unsupported record quality mode: "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p1, v0, p2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public stop(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->stop()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 11
    .line 12
    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

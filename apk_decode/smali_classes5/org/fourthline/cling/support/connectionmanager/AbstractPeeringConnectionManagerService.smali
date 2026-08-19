.class public abstract Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;
.super Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;
.source "SourceFile"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

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
    sput-object v0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public varargs constructor <init>(Ljava/beans/PropertyChangeSupport;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>(Ljava/beans/PropertyChangeSupport;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>(Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>([Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    return-void
.end method


# virtual methods
.method public abstract closeConnection(Lorg/fourthline/cling/support/model/ConnectionInfo;)V
.end method

.method public declared-synchronized closeConnectionWithPeer(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->getCurrentConnectionInfo(I)Lorg/fourthline/cling/support/model/ConnectionInfo;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->closeConnectionWithPeer(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized closeConnectionWithPeer(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing connection ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with peer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 4
    new-instance v2, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;

    .line 5
    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getPeerConnectionID()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p0

    move-object v5, p1

    move-object v4, p2

    move-object v7, p3

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;-><init>(Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;ILorg/fourthline/cling/support/model/ConnectionInfo;)V

    .line 6
    invoke-virtual {v2}, Lorg/fourthline/cling/controlpoint/ActionCallback;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, p0

    goto :goto_0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized connectionComplete(I)V
    .locals 4
    .param p1    # I
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "ConnectionID"
            stateVariable = "A_ARG_TYPE_ConnectionID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->getCurrentConnectionInfo(I)Lorg/fourthline/cling/support/model/ConnectionInfo;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "Closing connection ID "

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->closeConnection(Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->removeConnection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method

.method public abstract createConnection(IILorg/fourthline/cling/model/ServiceReference;Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;Lorg/fourthline/cling/support/model/ProtocolInfo;)Lorg/fourthline/cling/support/model/ConnectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation
.end method

.method public declared-synchronized createConnectionWithPeer(Lorg/fourthline/cling/model/ServiceReference;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;)I
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getNewConnectionId()I

    .line 3
    .line 4
    .line 5
    move-result v6

    .line 6
    sget-object v0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Creating new connection ID "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " with peer: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-object/from16 v2, p3

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    new-array v12, v0, [Z

    .line 40
    .line 41
    new-instance v0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;

    .line 42
    .line 43
    move v8, v6

    .line 44
    move-object/from16 v9, p4

    .line 45
    .line 46
    move-object/from16 v10, p3

    .line 47
    .line 48
    move-object/from16 v11, p5

    .line 49
    .line 50
    move-object v1, p0

    .line 51
    move-object v5, p1

    .line 52
    move-object v3, p2

    .line 53
    move-object/from16 v4, p4

    .line 54
    .line 55
    move-object/from16 v7, p5

    .line 56
    .line 57
    invoke-direct/range {v0 .. v12}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;-><init>(Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILorg/fourthline/cling/support/model/ConnectionInfo$Direction;ILorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;[Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->run()V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    aget-boolean p1, v12, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    const/4 v6, -0x1

    .line 69
    :cond_0
    monitor-exit p0

    .line 70
    return v6

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object p1, v0

    .line 73
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p1
.end method

.method public declared-synchronized getNewConnectionId()I
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-le v3, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return v1

    .line 42
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v0
.end method

.method public abstract peerFailure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
.end method

.method public declared-synchronized prepareForConnection(Lorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILjava/lang/String;)Lorg/fourthline/cling/support/model/ConnectionInfo;
    .locals 7
    .param p1    # Lorg/fourthline/cling/support/model/ProtocolInfo;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "RemoteProtocolInfo"
            stateVariable = "A_ARG_TYPE_ProtocolInfo"
        .end annotation
    .end param
    .param p2    # Lorg/fourthline/cling/model/ServiceReference;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "PeerConnectionManager"
            stateVariable = "A_ARG_TYPE_ConnectionManager"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "PeerConnectionID"
            stateVariable = "A_ARG_TYPE_ConnectionID"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Direction"
            stateVariable = "A_ARG_TYPE_Direction"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getConnectionID"
                name = "ConnectionID"
                stateVariable = "A_ARG_TYPE_ConnectionID"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getAvTransportID"
                name = "AVTransportID"
                stateVariable = "A_ARG_TYPE_AVTransportID"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRcsID"
                name = "RcsID"
                stateVariable = "A_ARG_TYPE_RcsID"
            .end subannotation
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getNewConnectionId()I

    .line 3
    .line 4
    .line 5
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-static {p4}, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    .line 7
    .line 8
    .line 9
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    sget-object p4, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "Preparing for connection with local new ID "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " and peer connection ID: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p4, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    .line 39
    .line 40
    move-object v1, p0

    .line 41
    move-object v6, p1

    .line 42
    move-object v4, p2

    .line 43
    move v3, p3

    .line 44
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->createConnection(IILorg/fourthline/cling/model/ServiceReference;Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;Lorg/fourthline/cling/support/model/ProtocolInfo;)Lorg/fourthline/cling/support/model/ConnectionInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->storeConnection(Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-object p1

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    :goto_0
    move-object p1, v0

    .line 55
    goto :goto_1

    .line 56
    :catchall_1
    move-exception v0

    .line 57
    move-object v1, p0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-object v1, p0

    .line 60
    :try_start_4
    new-instance p1, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerException;

    .line 61
    .line 62
    sget-object p2, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 63
    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v0, "Unsupported direction: "

    .line 70
    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-direct {p1, p2, p3}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    throw p1
.end method

.method public declared-synchronized removeConnection(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->getCurrentConnectionIDs()Lorg/fourthline/cling/model/types/csv/CSV;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "Connection removed, firing event: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->getCurrentConnectionIDs()Lorg/fourthline/cling/model/types/csv/CSV;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "CurrentConnectionIDs"

    .line 46
    .line 47
    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p1
.end method

.method public declared-synchronized storeConnection(Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->getCurrentConnectionIDs()Lorg/fourthline/cling/model/types/csv/CSV;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getConnectionID()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "Connection stored, firing event: "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getConnectionID()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->getCurrentConnectionIDs()Lorg/fourthline/cling/model/types/csv/CSV;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "CurrentConnectionIDs"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p1
.end method

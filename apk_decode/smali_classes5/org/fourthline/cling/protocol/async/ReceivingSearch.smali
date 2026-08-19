.class public Lorg/fourthline/cling/protocol/async/ReceivingSearch;
.super Lorg/fourthline/cling/protocol/ReceivingAsync;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/ReceivingAsync<",
        "Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_ENABLED:Z

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final randomGenerator:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;

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
    sput-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput-boolean v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->LOG_ENABLED:Z

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/UpnpService;",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage<",
            "Lorg/fourthline/cling/model/message/UpnpRequest;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/ReceivingAsync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/UpnpMessage;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/Random;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->randomGenerator:Ljava/util/Random;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public createDeviceMessages(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/NetworkAddress;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            "Lorg/fourthline/cling/model/NetworkAddress;",
            ")",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->isRoot()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseRootDevice;

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 19
    .line 20
    invoke-virtual {p0, p2, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v1, v2, v3, p1}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseRootDevice;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v1, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseUDN;

    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 37
    .line 38
    invoke-virtual {p0, p2, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v1, v2, v3, p1}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseUDN;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance v1, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseDeviceType;

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 55
    .line 56
    invoke-virtual {p0, p2, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-direct {v1, v2, p2, p1}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseDeviceType;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    const/4 p2, 0x0

    .line 71
    :goto_0
    if-ge p2, p1, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    add-int/lit8 p2, p2, 0x1

    .line 78
    .line 79
    check-cast v1, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;

    .line 80
    .line 81
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    return-object v0
.end method

.method public createServiceTypeMessages(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/NetworkAddress;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            "Lorg/fourthline/cling/model/NetworkAddress;",
            ")",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->findServiceTypes()[Lorg/fourthline/cling/model/types/ServiceType;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_0

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    new-instance v5, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseServiceType;

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    check-cast v6, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 23
    .line 24
    invoke-virtual {p0, p2, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-direct {v5, v6, v7, p1, v4}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseServiceType;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/types/ServiceType;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v5}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object v0
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v1, "Router hasn\'t completed initialization, ignoring received search message"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;->isMANSSDPDiscover()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "Invalid search request, no or invalid MAN ssdp:discover header: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;

    .line 63
    .line 64
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;->getSearchTarget()Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v2, "Invalid search request, did not contain ST header: "

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;

    .line 110
    .line 111
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getLocalAddress()Ljava/net/InetAddress;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-interface {v1, v2}, Lorg/fourthline/cling/transport/Router;->getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_3

    .line 124
    .line 125
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 126
    .line 127
    const-string v1, "Aborting search response, no active stream servers found (network disabled?)"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lorg/fourthline/cling/model/NetworkAddress;

    .line 148
    .line 149
    invoke-virtual {p0, v0, v2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->sendResponses(Lorg/fourthline/cling/model/message/header/UpnpHeader;Lorg/fourthline/cling/model/NetworkAddress;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_4
    return-void
.end method

.method public getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;
    .locals 2

    .line 1
    new-instance v0, Lorg/fourthline/cling/model/Location;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p2}, Lorg/fourthline/cling/model/Namespace;->getDescriptorPathString(Lorg/fourthline/cling/model/meta/Device;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/Location;-><init>(Lorg/fourthline/cling/model/NetworkAddress;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public isAdvertisementDisabled(Lorg/fourthline/cling/model/meta/LocalDevice;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1}, Lorg/fourthline/cling/registry/Registry;->getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/fourthline/cling/model/DiscoveryOptions;->isAdvertised()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V
    .locals 0

    return-void
.end method

.method public sendResponses(Lorg/fourthline/cling/model/message/header/UpnpHeader;Lorg/fourthline/cling/model/NetworkAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/fourthline/cling/model/message/header/STAllHeader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->sendSearchResponseAll(Lorg/fourthline/cling/model/NetworkAddress;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    instance-of v0, p1, Lorg/fourthline/cling/model/message/header/RootDeviceHeader;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->sendSearchResponseRootDevices(Lorg/fourthline/cling/model/NetworkAddress;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    instance-of v0, p1, Lorg/fourthline/cling/model/message/header/UDNHeader;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lorg/fourthline/cling/model/types/UDN;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->sendSearchResponseUDN(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/NetworkAddress;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    instance-of v0, p1, Lorg/fourthline/cling/model/message/header/DeviceTypeHeader;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lorg/fourthline/cling/model/types/DeviceType;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->sendSearchResponseDeviceType(Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/NetworkAddress;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    instance-of v0, p1, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lorg/fourthline/cling/model/types/ServiceType;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->sendSearchResponseServiceType(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/NetworkAddress;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    sget-object p2, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "Non-implemented search request target: "

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public sendSearchResponseAll(Lorg/fourthline/cling/model/NetworkAddress;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->LOG_ENABLED:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 6
    .line 7
    const-string v1, "Responding to \'all\' search with advertisement messages for all local devices"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->getLocalDevices()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_9

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->isAdvertisementDisabled(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-boolean v2, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->LOG_ENABLED:Z

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    sget-object v2, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "Sending root device messages: "

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0, v1, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->createDeviceMessages(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/NetworkAddress;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;

    .line 92
    .line 93
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-interface {v4}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-interface {v4, v3}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->hasEmbeddedDevices()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_7

    .line 110
    .line 111
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->findEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, [Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 116
    .line 117
    array-length v3, v2

    .line 118
    const/4 v4, 0x0

    .line 119
    :goto_2
    if-ge v4, v3, :cond_7

    .line 120
    .line 121
    aget-object v5, v2, v4

    .line 122
    .line 123
    sget-boolean v6, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->LOG_ENABLED:Z

    .line 124
    .line 125
    if-eqz v6, :cond_5

    .line 126
    .line 127
    sget-object v6, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 128
    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v8, "Sending embedded device messages: "

    .line 135
    .line 136
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    invoke-virtual {p0, v5, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->createDeviceMessages(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/NetworkAddress;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_6

    .line 162
    .line 163
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;

    .line 168
    .line 169
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-interface {v7}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-interface {v7, v6}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_7
    invoke-virtual {p0, v1, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->createServiceTypeMessages(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/NetworkAddress;)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-lez v2, :cond_1

    .line 193
    .line 194
    sget-boolean v2, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->LOG_ENABLED:Z

    .line 195
    .line 196
    if-eqz v2, :cond_8

    .line 197
    .line 198
    sget-object v2, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 199
    .line 200
    const-string v3, "Sending service type messages"

    .line 201
    .line 202
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_1

    .line 214
    .line 215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;

    .line 220
    .line 221
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-interface {v3}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-interface {v3, v2}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_9
    return-void
.end method

.method public sendSearchResponseDeviceType(Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/NetworkAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Responding to device type search: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1}, Lorg/fourthline/cling/registry/Registry;->getDevices(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lorg/fourthline/cling/model/meta/Device;

    .line 50
    .line 51
    instance-of v1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    move-object v1, v0

    .line 56
    check-cast v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->isAdvertisementDisabled(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-object v2, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v4, "Sending matching device type search result for: "

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseDeviceType;

    .line 88
    .line 89
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 94
    .line 95
    invoke-virtual {p0, p2, v1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-direct {v0, v2, v3, v1}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseDeviceType;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v1, v0}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    return-void
.end method

.method public sendSearchResponseRootDevices(Lorg/fourthline/cling/model/NetworkAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    const-string v1, "Responding to root device search with advertisement messages for all local root devices"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->getLocalDevices()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->isAdvertisementDisabled(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v2, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseRootDevice;

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 50
    .line 51
    invoke-virtual {p0, p1, v1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-direct {v2, v3, v4, v1}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseRootDevice;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1, v2}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method public sendSearchResponseServiceType(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/NetworkAddress;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Responding to service type search: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1}, Lorg/fourthline/cling/registry/Registry;->getDevices(Lorg/fourthline/cling/model/types/ServiceType;)Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lorg/fourthline/cling/model/meta/Device;

    .line 50
    .line 51
    instance-of v2, v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    move-object v2, v1

    .line 56
    check-cast v2, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->isAdvertisementDisabled(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-object v3, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v5, "Sending matching service type search result: "

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseServiceType;

    .line 88
    .line 89
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 94
    .line 95
    invoke-virtual {p0, p2, v2}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-direct {v1, v3, v4, v2, p1}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseServiceType;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/types/ServiceType;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-interface {v2, v1}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    return-void
.end method

.method public sendSearchResponseUDN(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/NetworkAddress;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, p1, v1}, Lorg/fourthline/cling/registry/Registry;->getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    instance-of v1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->isAdvertisementDisabled(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v1, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "Responding to UDN device search: "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseUDN;

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    .line 58
    .line 59
    invoke-virtual {p0, p2, v0}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/fourthline/cling/model/NetworkAddress;Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/model/Location;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p1, v1, p2, v0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseUDN;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->prepareOutgoingSearchResponse(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-interface {p2}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-interface {p2, p1}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public waitBeforeExecution()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;->getMX()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Invalid search request, did not contain MX header: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    return v0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/16 v2, 0x78

    .line 46
    .line 47
    if-gt v1, v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-gtz v1, :cond_2

    .line 54
    .line 55
    :cond_1
    sget-object v0, Lorg/fourthline/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1}, Lorg/fourthline/cling/registry/Registry;->getLocalDevices()Ljava/util/Collection;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-lez v1, :cond_3

    .line 74
    .line 75
    iget-object v1, p0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->randomGenerator:Ljava/util/Random;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    mul-int/lit16 v0, v0, 0x3e8

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sget-object v1, Lorg/fourthline/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v3, "Sleeping "

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v3, " milliseconds to avoid flooding with search responses"

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    int-to-long v0, v0

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 116
    .line 117
    .line 118
    :cond_3
    const/4 v0, 0x1

    .line 119
    return v0
.end method

.class public Lorg/fourthline/cling/protocol/sync/SendingEvent;
.super Lorg/fourthline/cling/protocol/SendingSync;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/SendingSync<",
        "Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field protected final requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

.field protected final subscriptionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/protocol/sync/SendingEvent;

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
    sput-object v0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/SendingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/GENASubscription;->getSubscriptionId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->subscriptionId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getCallbackURLs()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    new-array p1, p1, [Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    .line 20
    .line 21
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    .line 22
    .line 23
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getCallbackURLs()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/net/URL;

    .line 43
    .line 44
    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    .line 45
    .line 46
    new-instance v3, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    .line 47
    .line 48
    invoke-direct {v3, p2, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;-><init>(Lorg/fourthline/cling/model/gena/GENASubscription;Ljava/net/URL;)V

    .line 49
    .line 50
    .line 51
    aput-object v3, v2, v0

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getGenaEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    .line 66
    .line 67
    aget-object v2, v2, v0

    .line 68
    .line 69
    invoke-interface {v1, v2}, Lorg/fourthline/cling/transport/spi/GENAEventProcessor;->writeBody(Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/GENASubscription;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 80
    .line 81
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->incrementSequence()V

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Sending event for subscription: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->subscriptionId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    .line 26
    .line 27
    array-length v1, v0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_0
    if-ge v3, v1, :cond_1

    .line 31
    .line 32
    aget-object v2, v0, v3

    .line 33
    .line 34
    iget-object v4, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 35
    .line 36
    invoke-virtual {v4}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    const-wide/16 v6, 0x0

    .line 45
    .line 46
    cmp-long v4, v4, v6

    .line 47
    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    sget-object v4, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    .line 51
    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v6, "Sending initial event message to callback URL: "

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    sget-object v4, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    .line 78
    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v6, "Sending event message \'"

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v6, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 90
    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v6, "\' to callback URL: "

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-interface {v4}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-interface {v4, v2}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget-object v4, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    .line 126
    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v6, "Received event callback response: "

    .line 133
    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v3, v3, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    return-object v2
.end method

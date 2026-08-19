.class public Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;
.super Lorg/fourthline/cling/protocol/ReceivingSync;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/ReceivingSync<",
        "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
        "Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;

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
    sput-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/protocol/ReceivingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->executeSync()Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public executeSync()Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    .line 4
    const-class v2, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;

    invoke-interface {v0, v2, v1}, Lorg/fourthline/cling/registry/Registry;->getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No local resource found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    sget-object v1, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found local event subscription matching relative request URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 7
    new-instance v2, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;

    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/resource/Resource;->getModel()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-direct {v2, v3, v4}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;-><init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/model/meta/LocalService;)V

    .line 9
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->hasNotificationHeader()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getCallbackURLs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription ID and NT or Callback in subscribe request: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 12
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    return-object v0

    .line 13
    :cond_2
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v0}, Lorg/fourthline/cling/model/resource/Resource;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-virtual {p0, v0, v2}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->processRenewal(Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    move-result-object v0

    return-object v0

    .line 15
    :cond_3
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->hasNotificationHeader()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getCallbackURLs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {v0}, Lorg/fourthline/cling/model/resource/Resource;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-virtual {p0, v0, v2}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->processNewSubscription(Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    move-result-object v0

    return-object v0

    .line 17
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No subscription ID, no NT or Callback, neither subscription or renewal: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 18
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    return-object v0
.end method

.method public processNewSubscription(Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getCallbackURLs()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->hasNotificationHeader()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    sget-object p1, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v0, "Missing or invalid NT header in subscribe request: "

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    .line 48
    .line 49
    sget-object p2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 50
    .line 51
    invoke-direct {p1, p2}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    .line 52
    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->isReceivedSubscriptionTimeoutIgnored()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getRequestedTimeoutSeconds()Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    :goto_0
    :try_start_0
    new-instance v1, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe$1;

    .line 76
    .line 77
    invoke-direct {v1, p0, p1, p2, v0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe$1;-><init>(Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    sget-object p1, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v0, "Adding subscription to registry: "

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-interface {p2}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 115
    .line 116
    invoke-interface {p2, v0}, Lorg/fourthline/cling/registry/Registry;->addLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V

    .line 117
    .line 118
    .line 119
    const-string p2, "Returning subscription response, waiting to send initial event"

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance p1, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    .line 125
    .line 126
    iget-object p2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 127
    .line 128
    invoke-direct {p1, p2}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V

    .line 129
    .line 130
    .line 131
    return-object p1

    .line 132
    :catch_0
    move-exception p1

    .line 133
    sget-object p2, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v1, "Couldn\'t create local subscription to service: "

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance p1, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    .line 160
    .line 161
    sget-object p2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 162
    .line 163
    invoke-direct {p1, p2}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    .line 164
    .line 165
    .line 166
    return-object p1

    .line 167
    :cond_3
    :goto_1
    sget-object p1, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    .line 168
    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v0, "Missing or invalid Callback URLs in subscribe request: "

    .line 175
    .line 176
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    new-instance p1, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    .line 194
    .line 195
    sget-object p2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 196
    .line 197
    invoke-direct {p1, p2}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    .line 198
    .line 199
    .line 200
    return-object p1
.end method

.method public processRenewal(Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Lorg/fourthline/cling/registry/Registry;->getLocalSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    sget-object p1, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v0, "Invalid subscription ID for renewal request: "

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    .line 48
    .line 49
    sget-object p2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 50
    .line 51
    invoke-direct {p1, p2}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    .line 52
    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_0
    sget-object p1, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v1, "Renewing subscription: "

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 80
    .line 81
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getRequestedTimeoutSeconds()Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {v0, p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->setSubscriptionDuration(Ljava/lang/Integer;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-interface {p2}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 97
    .line 98
    invoke-interface {p2, v0}, Lorg/fourthline/cling/registry/Registry;->updateLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_1

    .line 103
    .line 104
    new-instance p1, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    .line 105
    .line 106
    iget-object p2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 107
    .line 108
    invoke-direct {p1, p2}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v0, "Subscription went away before it could be renewed: "

    .line 118
    .line 119
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance p1, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    .line 137
    .line 138
    sget-object p2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 139
    .line 140
    invoke-direct {p1, p2}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    .line 141
    .line 142
    .line 143
    return-object p1
.end method

.method public responseException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object p1, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "Response could not be send to subscriber, removing local GENA subscription: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lorg/fourthline/cling/registry/Registry;->removeLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public responseSent(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lorg/fourthline/cling/model/message/UpnpResponse;

    .line 16
    .line 17
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 24
    .line 25
    invoke-virtual {v2}, Lorg/fourthline/cling/model/gena/GENASubscription;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    cmp-long v2, v2, v0

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    sget-object p1, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    .line 42
    .line 43
    const-string v0, "Establishing subscription"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 49
    .line 50
    invoke-virtual {v0}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->registerOnService()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->establish()V

    .line 56
    .line 57
    .line 58
    const-string v0, "Response to subscription sent successfully, now sending initial event asynchronously"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 84
    .line 85
    invoke-interface {v0, v1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingEvent(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingEvent;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_1
    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 94
    .line 95
    invoke-virtual {v2}, Lorg/fourthline/cling/model/gena/GENASubscription;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getValue()Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    cmp-long v0, v2, v0

    .line 108
    .line 109
    if-nez v0, :cond_3

    .line 110
    .line 111
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    .line 112
    .line 113
    const-string v1, "Subscription request\'s response aborted, not sending initial event"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    if-nez p1, :cond_2

    .line 119
    .line 120
    const-string p1, "Reason: No response at all from subscriber"

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v2, "Reason: "

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v1, "Removing subscription from registry: "

    .line 156
    .line 157
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 181
    .line 182
    invoke-interface {p1, v0}, Lorg/fourthline/cling/registry/Registry;->removeLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z

    .line 183
    .line 184
    .line 185
    :cond_3
    :goto_1
    return-void
.end method

.class public abstract Lorg/fourthline/cling/controlpoint/SubscriptionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static log:Ljava/util/logging/Logger;


# instance fields
.field private controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

.field protected final requestedDurationSeconds:Ljava/lang/Integer;

.field protected final service:Lorg/fourthline/cling/model/meta/Service;

.field private subscription:Lorg/fourthline/cling/model/gena/GENASubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

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
    sput-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->service:Lorg/fourthline/cling/model/meta/Service;

    const/16 p1, 0x708

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->requestedDurationSeconds:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->service:Lorg/fourthline/cling/model/meta/Service;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->requestedDurationSeconds:Ljava/lang/Integer;

    return-void
.end method

.method public static createDefaultFailureMessage(Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Subscription failed: "

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, " HTTP response was: "

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " Exception occured: "

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, " No response received."

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method private endLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Removing local subscription and ending it in callback: "

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
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1}, Lorg/fourthline/cling/registry/Registry;->removeLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private endRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Ending remote subscription: "

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
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getSyncProtocolExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1, p1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingUnsubscribe(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private establishLocalSubscription(Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/registry/Registry;->getLocalDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    sget-object p1, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 30
    .line 31
    const-string v0, "Local device service is currently not registered, failing subscription immediately"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "Local device is not registered"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1, v1, p1}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;

    .line 48
    .line 49
    const v2, 0x7fffffff

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 57
    .line 58
    invoke-direct {v0, p0, p1, v2, v3}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;-><init>(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .line 60
    .line 61
    :try_start_1
    sget-object p1, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 62
    .line 63
    const-string v2, "Local device service is currently registered, also registering subscription"

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1, v0}, Lorg/fourthline/cling/registry/Registry;->addLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V

    .line 77
    .line 78
    .line 79
    sget-object p1, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 80
    .line 81
    const-string v2, "Notifying subscription callback of local subscription availablity"

    .line 82
    .line 83
    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->establish()V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 90
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v3, "Simulating first initial event for local subscription callback, sequence: "

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lorg/fourthline/cling/model/gena/GENASubscription;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->eventReceived(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->incrementSequence()V

    .line 119
    .line 120
    .line 121
    sget-object p1, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 122
    .line 123
    const-string v2, "Starting to monitor state changes of local service"

    .line 124
    .line 125
    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->registerOnService()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catch_0
    move-exception p1

    .line 133
    goto :goto_0

    .line 134
    :catch_1
    move-exception p1

    .line 135
    move-object v0, v1

    .line 136
    :goto_0
    sget-object v2, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 137
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v4, "Local callback creation failed: "

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sget-object v2, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 163
    .line 164
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 165
    .line 166
    const-string v4, "Exception root cause: "

    .line 167
    .line 168
    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    if-eqz v0, :cond_1

    .line 176
    .line 177
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-interface {v2}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-interface {v2, v0}, Lorg/fourthline/cling/registry/Registry;->removeLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z

    .line 186
    .line 187
    .line 188
    :cond_1
    invoke-virtual {p0, v0, v1, p1}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method private establishRemoteSubscription(Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$2;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->requestedDurationSeconds:Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$2;-><init>(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;Lorg/fourthline/cling/model/meta/RemoteService;I)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1, v0}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingSubscribe(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Lorg/fourthline/cling/protocol/ProtocolCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    invoke-virtual {p1}, Lorg/fourthline/cling/protocol/SendingAsync;->run()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p1

    .line 29
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/fourthline/cling/model/gena/GENASubscription;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1, p1}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized end()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/fourthline/cling/model/gena/GENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    instance-of v1, v0, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    check-cast v0, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->endLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V

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
    :cond_1
    instance-of v1, v0, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    check-cast v0, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->endRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw v0
.end method

.method public abstract ended(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V
.end method

.method public abstract established(Lorg/fourthline/cling/model/gena/GENASubscription;)V
.end method

.method public abstract eventReceived(Lorg/fourthline/cling/model/gena/GENASubscription;)V
.end method

.method public abstract eventsMissed(Lorg/fourthline/cling/model/gena/GENASubscription;I)V
.end method

.method public failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-static {p2, p3}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->createDefaultFailureMessage(Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public abstract failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V
.end method

.method public declared-synchronized getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

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

.method public getService()Lorg/fourthline/cling/model/meta/Service;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->service:Lorg/fourthline/cling/model/meta/Service;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized getSubscription()Lorg/fourthline/cling/model/gena/GENASubscription;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/fourthline/cling/model/gena/GENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

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

.method public invalidMessage(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/UnsupportedDataException;)V
    .locals 2

    .line 1
    sget-object p1, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "Invalid event message received, causing: "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 24
    .line 25
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    sget-object p1, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 34
    .line 35
    const-string v0, "------------------------------------------------------------------------------"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 41
    .line 42
    invoke-virtual {p2}, Lorg/fourthline/cling/model/UnsupportedDataException;->getData()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p2}, Lorg/fourthline/cling/model/UnsupportedDataException;->getData()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string p2, "null"

    .line 58
    .line 59
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public declared-synchronized run()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getService()Lorg/fourthline/cling/model/meta/Service;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Lorg/fourthline/cling/model/meta/LocalService;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->service:Lorg/fourthline/cling/model/meta/Service;

    .line 17
    .line 18
    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->establishLocalSubscription(Lorg/fourthline/cling/model/meta/LocalService;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getService()Lorg/fourthline/cling/model/meta/Service;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v0, v0, Lorg/fourthline/cling/model/meta/RemoteService;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->service:Lorg/fourthline/cling/model/meta/Service;

    .line 35
    .line 36
    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteService;

    .line 37
    .line 38
    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->establishRemoteSubscription(Lorg/fourthline/cling/model/meta/RemoteService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "Callback must be executed through ControlPoint"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw v0
.end method

.method public declared-synchronized setControlPoint(Lorg/fourthline/cling/controlpoint/ControlPoint;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/fourthline/cling/model/gena/GENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "(SubscriptionCallback) "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getService()Lorg/fourthline/cling/model/meta/Service;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

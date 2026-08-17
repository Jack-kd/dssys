.class public Lorg/fourthline/cling/protocol/sync/SendingRenewal;
.super Lorg/fourthline/cling/protocol/SendingSync;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/SendingSync<",
        "Lorg/fourthline/cling/model/message/gena/OutgoingRenewalRequestMessage;",
        "Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;

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
    sput-object v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingRenewalRequestMessage;

    .line 2
    .line 3
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/GENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteService;

    .line 12
    .line 13
    invoke-interface {v1, v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getEventSubscriptionHeaders(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, p2, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingRenewalRequestMessage;-><init>(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/SendingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 24
    .line 25
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
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->executeSync()Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public executeSync()Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending subscription renewal request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingSync;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingSync;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v1
    :try_end_0
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->onRenewalFailure()V

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    new-instance v2, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-direct {v2, v1}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 6
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscription renewal failed, response was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->removeRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    .line 9
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lorg/fourthline/cling/protocol/sync/SendingRenewal$1;

    invoke-direct {v1, p0, v2}, Lorg/fourthline/cling/protocol/sync/SendingRenewal$1;-><init>(Lorg/fourthline/cling/protocol/sync/SendingRenewal;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v2

    .line 10
    :cond_1
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->isValidHeaders()Z

    move-result v3

    if-nez v3, :cond_2

    .line 11
    const-string v1, "Subscription renewal failed, invalid or missing (SID, Timeout) response headers"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lorg/fourthline/cling/protocol/sync/SendingRenewal$2;

    invoke-direct {v1, p0, v2}, Lorg/fourthline/cling/protocol/sync/SendingRenewal$2;-><init>(Lorg/fourthline/cling/protocol/sync/SendingRenewal;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v2

    .line 13
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscription renewed, updating in registry, response was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->getSubscriptionDurationSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/gena/GENASubscription;->setActualSubscriptionDurationSeconds(I)V

    .line 15
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->updateRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    return-object v2

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->onRenewalFailure()V

    .line 17
    throw v0
.end method

.method public onRenewalFailure()V
    .locals 2

    .line 1
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    const-string v1, "Subscription renewal failed, removing subscription from registry"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

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
    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->removeRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lorg/fourthline/cling/protocol/sync/SendingRenewal$3;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal$3;-><init>(Lorg/fourthline/cling/protocol/sync/SendingRenewal;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

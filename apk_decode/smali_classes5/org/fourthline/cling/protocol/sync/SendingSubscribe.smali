.class public Lorg/fourthline/cling/protocol/sync/SendingSubscribe;
.super Lorg/fourthline/cling/protocol/SendingSync;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/SendingSync<",
        "Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;",
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
    const-class v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

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
    sput-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/UpnpService;",
            "Lorg/fourthline/cling/model/gena/RemoteGENASubscription;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/NetworkAddress;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;

    .line 2
    .line 3
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p2, p3, v1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getEventCallbackURLs(Ljava/util/List;Lorg/fourthline/cling/model/Namespace;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/GENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteService;

    .line 24
    .line 25
    invoke-interface {v1, v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getEventSubscriptionHeaders(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, p2, p3, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;-><init>(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Ljava/util/List;Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/SendingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 36
    .line 37
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
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->executeSync()Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

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
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingSync;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;->hasCallbackURLs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v2, "Subscription failed, no active local callback URLs available (network disabled?)"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$1;

    invoke-direct {v2, p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$1;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v1

    .line 5
    :cond_0
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending subscription request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingSync;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v2

    iget-object v3, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v2, v3}, Lorg/fourthline/cling/registry/Registry;->registerPendingRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v2

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingSync;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v2
    :try_end_1
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 8
    :try_start_2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->onSubscriptionFailure()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->unregisterPendingRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    return-object v1

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 10
    :cond_1
    :try_start_3
    new-instance v1, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 11
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscription failed, response was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$2;

    invoke-direct {v2, p0, v1}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$2;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->isValidHeaders()Z

    move-result v3

    if-nez v3, :cond_3

    .line 15
    const-string v2, "Subscription failed, invalid or missing (SID, Timeout) response headers"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$3;

    invoke-direct {v2, p0, v1}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$3;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 17
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscription established, adding to registry, response was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/gena/GENASubscription;->setSubscriptionId(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->getSubscriptionDurationSeconds()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/gena/GENASubscription;->setActualSubscriptionDurationSeconds(I)V

    .line 20
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->addRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    .line 21
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$4;

    invoke-direct {v2, p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$4;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :goto_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->unregisterPendingRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    return-object v1

    .line 23
    :catch_0
    :try_start_4
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->onSubscriptionFailure()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->unregisterPendingRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingAsync;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v1, v2}, Lorg/fourthline/cling/registry/Registry;->unregisterPendingRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    .line 25
    throw v0
.end method

.method public onSubscriptionFailure()V
    .locals 2

    .line 1
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    const-string v1, "Subscription failed"

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
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$5;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe$5;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

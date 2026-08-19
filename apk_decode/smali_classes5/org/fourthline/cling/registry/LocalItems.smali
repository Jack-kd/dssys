.class Lorg/fourthline/cling/registry/LocalItems;
.super Lorg/fourthline/cling/registry/RegistryItems;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/registry/RegistryItems<",
        "Lorg/fourthline/cling/model/meta/LocalDevice;",
        "Lorg/fourthline/cling/model/gena/LocalGENASubscription;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected discoveryOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/types/UDN;",
            "Lorg/fourthline/cling/model/DiscoveryOptions;",
            ">;"
        }
    .end annotation
.end field

.field protected lastAliveIntervalTimestamp:J

.field protected randomGenerator:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/registry/Registry;

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
    sput-object v0, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/registry/RegistryImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/fourthline/cling/registry/RegistryItems;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/fourthline/cling/registry/LocalItems;->discoveryOptions:Ljava/util/Map;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lorg/fourthline/cling/registry/LocalItems;->lastAliveIntervalTimestamp:J

    .line 14
    .line 15
    new-instance p1, Ljava/util/Random;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lorg/fourthline/cling/registry/LocalItems;->randomGenerator:Ljava/util/Random;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->add(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-void
.end method

.method public add(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/registry/RegistrationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/LocalItems;->add(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V

    return-void
.end method

.method public add(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/registry/RegistrationException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/registry/LocalItems;->setDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V

    .line 4
    iget-object p2, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/fourthline/cling/registry/RegistryImpl;->getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    sget-object p2, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring addition, device already registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    sget-object p2, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding local device to registry: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->getResources(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object p2

    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 8
    iget-object v3, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/registry/RegistryImpl;->getResource(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v3

    if-nez v3, :cond_1

    .line 9
    iget-object v3, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v3, v2}, Lorg/fourthline/cling/registry/RegistryImpl;->addResource(Lorg/fourthline/cling/model/resource/Resource;)V

    .line 10
    sget-object v3, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registered resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Lorg/fourthline/cling/registry/RegistrationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "URI namespace conflict with already registered resource: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/fourthline/cling/registry/RegistrationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    sget-object p2, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding item to registry with expiration in seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 13
    new-instance p2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 14
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p2, v0, p1, v1}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 16
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryItems;->getDeviceItems()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered local device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/LocalItems;->isByeByeBeforeFirstAlive(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/LocalItems;->advertiseByebye(Lorg/fourthline/cling/model/meta/LocalDevice;Z)V

    .line 20
    :cond_3
    invoke-virtual {p2}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {p0, p2}, Lorg/fourthline/cling/registry/LocalItems;->isAdvertised(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 21
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->advertiseAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 22
    :cond_4
    iget-object p2, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {p2}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/RegistryListener;

    .line 23
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lorg/fourthline/cling/registry/LocalItems$1;

    invoke-direct {v2, p0, v0, p1}, Lorg/fourthline/cling/registry/LocalItems$1;-><init>(Lorg/fourthline/cling/registry/LocalItems;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public advertiseAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    .line 2
    .line 3
    new-instance v1, Lorg/fourthline/cling/registry/LocalItems$4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/fourthline/cling/registry/LocalItems$4;-><init>(Lorg/fourthline/cling/registry/LocalItems;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/registry/RegistryImpl;->executeAsyncProtocol(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public advertiseByebye(Lorg/fourthline/cling/model/meta/LocalDevice;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingNotificationByebye(Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/protocol/async/SendingNotificationByebye;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lorg/fourthline/cling/registry/RegistryImpl;->executeAsyncProtocol(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/protocol/SendingAsync;->run()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public advertiseLocalDevices()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lorg/fourthline/cling/model/types/UDN;

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/registry/LocalItems;->isAdvertised(Lorg/fourthline/cling/model/types/UDN;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/registry/LocalItems;->advertiseAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public get()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryItems;->getDeviceItems()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 25
    .line 26
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/registry/LocalItems;->discoveryOptions:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/fourthline/cling/model/DiscoveryOptions;

    .line 8
    .line 9
    return-object p1
.end method

.method public isAdvertised(Lorg/fourthline/cling/model/types/UDN;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/fourthline/cling/model/DiscoveryOptions;->isAdvertised()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    return p1
.end method

.method public isByeByeBeforeFirstAlive(Lorg/fourthline/cling/model/types/UDN;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/fourthline/cling/model/DiscoveryOptions;->isByeByeBeforeFirstAlive()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public maintain()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryItems;->getDeviceItems()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getAliveIntervalMillis()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-lez v1, :cond_2

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    iget-wide v4, p0, Lorg/fourthline/cling/registry/LocalItems;->lastAliveIntervalTimestamp:J

    .line 35
    .line 36
    sub-long v4, v2, v4

    .line 37
    .line 38
    int-to-long v6, v1

    .line 39
    cmp-long v1, v4, v6

    .line 40
    .line 41
    if-lez v1, :cond_4

    .line 42
    .line 43
    iput-wide v2, p0, Lorg/fourthline/cling/registry/LocalItems;->lastAliveIntervalTimestamp:J

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryItems;->getDeviceItems()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 64
    .line 65
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lorg/fourthline/cling/model/types/UDN;

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Lorg/fourthline/cling/registry/LocalItems;->isAdvertised(Lorg/fourthline/cling/model/types/UDN;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    sget-object v3, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v5, "Flooding advertisement of local item: "

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const-wide/16 v1, 0x0

    .line 104
    .line 105
    iput-wide v1, p0, Lorg/fourthline/cling/registry/LocalItems;->lastAliveIntervalTimestamp:J

    .line 106
    .line 107
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryItems;->getDeviceItems()Ljava/util/Set;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 126
    .line 127
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Lorg/fourthline/cling/model/types/UDN;

    .line 132
    .line 133
    invoke-virtual {p0, v3}, Lorg/fourthline/cling/registry/LocalItems;->isAdvertised(Lorg/fourthline/cling/model/types/UDN;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_3

    .line 138
    .line 139
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    const/4 v4, 0x1

    .line 144
    invoke-virtual {v3, v4}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired(Z)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_3

    .line 149
    .line 150
    sget-object v3, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    .line 151
    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v5, "Local item has expired: "

    .line 158
    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_5

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 191
    .line 192
    sget-object v2, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    .line 193
    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v4, "Refreshing local device advertisement: "

    .line 200
    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 223
    .line 224
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/registry/LocalItems;->advertiseAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lorg/fourthline/cling/model/ExpirationDetails;->stampLastRefresh()V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    .line 236
    .line 237
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryItems;->getSubscriptionItems()Ljava/util/Set;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_7

    .line 253
    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 259
    .line 260
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    const/4 v4, 0x0

    .line 265
    invoke-virtual {v3, v4}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired(Z)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_6

    .line 270
    .line 271
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_8

    .line 284
    .line 285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 290
    .line 291
    sget-object v2, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    .line 292
    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v4, "Removing expired: "

    .line 299
    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    check-cast v2, Lorg/fourthline/cling/model/gena/GENASubscription;

    .line 318
    .line 319
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/registry/RegistryItems;->removeSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    check-cast v1, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 327
    .line 328
    sget-object v2, Lorg/fourthline/cling/model/gena/CancelReason;->EXPIRED:Lorg/fourthline/cling/model/gena/CancelReason;

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;)V

    .line 331
    .line 332
    .line 333
    goto :goto_4

    .line 334
    :cond_8
    :goto_5
    return-void
.end method

.method public bridge synthetic remove(Lorg/fourthline/cling/model/meta/Device;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/LocalItems;->remove(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    move-result p1

    return p1
.end method

.method public remove(Lorg/fourthline/cling/model/meta/LocalDevice;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/registry/RegistrationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/LocalItems;->remove(Lorg/fourthline/cling/model/meta/LocalDevice;Z)Z

    move-result p1

    return p1
.end method

.method public remove(Lorg/fourthline/cling/model/meta/LocalDevice;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/registry/RegistrationException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/registry/RegistryItems;->get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 4
    sget-object v3, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing local device from registry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/fourthline/cling/registry/LocalItems;->setDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V

    .line 6
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryItems;->getDeviceItems()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lorg/fourthline/cling/registry/RegistryItem;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->getResources(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 8
    iget-object v6, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v6, v5}, Lorg/fourthline/cling/registry/RegistryImpl;->removeResource(Lorg/fourthline/cling/model/resource/Resource;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    sget-object v6, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unregistered resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryItems;->getSubscriptionItems()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 11
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/registry/RegistryItem;

    .line 13
    invoke-virtual {v3}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/gena/GENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v4

    .line 14
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/fourthline/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    sget-object v4, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing incoming subscription: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/fourthline/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 16
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    if-nez p2, :cond_2

    .line 17
    iget-object v4, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v4}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lorg/fourthline/cling/registry/LocalItems$2;

    invoke-direct {v5, p0, v3}, Lorg/fourthline/cling/registry/LocalItems$2;-><init>(Lorg/fourthline/cling/registry/LocalItems;Lorg/fourthline/cling/registry/RegistryItem;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/LocalItems;->isAdvertised(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result v0

    if-eqz v0, :cond_4

    xor-int/lit8 v0, p2, 0x1

    .line 19
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/LocalItems;->advertiseByebye(Lorg/fourthline/cling/model/meta/LocalDevice;Z)V

    :cond_4
    if-nez p2, :cond_5

    .line 20
    iget-object p2, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {p2}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/RegistryListener;

    .line 21
    iget-object v2, p0, Lorg/fourthline/cling/registry/RegistryItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lorg/fourthline/cling/registry/LocalItems$3;

    invoke-direct {v3, p0, v0, p1}, Lorg/fourthline/cling/registry/LocalItems$3;-><init>(Lorg/fourthline/cling/registry/LocalItems;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    return v1

    :cond_6
    return v2
.end method

.method public removeAll()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/LocalItems;->removeAll(Z)V

    return-void
.end method

.method public removeAll(Z)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {p0, v3, p1}, Lorg/fourthline/cling/registry/LocalItems;->remove(Lorg/fourthline/cling/model/meta/LocalDevice;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lorg/fourthline/cling/registry/LocalItems;->discoveryOptions:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p2, p0, Lorg/fourthline/cling/registry/LocalItems;->discoveryOptions:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1
    sget-object v0, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    const-string v1, "Clearing all registered subscriptions to local devices during shutdown"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryItems;->getSubscriptionItems()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lorg/fourthline/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    .line 16
    .line 17
    const-string v1, "Removing all local devices from registry during shutdown"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/LocalItems;->removeAll(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

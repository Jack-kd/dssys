.class public Lorg/fourthline/cling/registry/RegistryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/registry/Registry;


# annotations
.annotation runtime Ljavax/enterprise/context/ApplicationScoped;
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final localItems:Lorg/fourthline/cling/registry/LocalItems;

.field protected final pendingExecutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final pendingSubscriptionsLock:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fourthline/cling/model/gena/RemoteGENASubscription;",
            ">;"
        }
    .end annotation
.end field

.field protected final registryListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fourthline/cling/registry/RegistryListener;",
            ">;"
        }
    .end annotation
.end field

.field protected registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

.field protected final remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

.field protected final resourceItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fourthline/cling/registry/RegistryItem<",
            "Ljava/net/URI;",
            "Lorg/fourthline/cling/model/resource/Resource;",
            ">;>;"
        }
    .end annotation
.end field

.field protected upnpService:Lorg/fourthline/cling/UpnpService;


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
    sput-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 6
    new-instance v0, Lorg/fourthline/cling/registry/RemoteItems;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/RemoteItems;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 7
    new-instance v0, Lorg/fourthline/cling/registry/LocalItems;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/LocalItems;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 13
    new-instance v0, Lorg/fourthline/cling/registry/RemoteItems;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/RemoteItems;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 14
    new-instance v0, Lorg/fourthline/cling/registry/LocalItems;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/LocalItems;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 15
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Registry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    .line 17
    sget-object p1, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v0, "Starting registry background maintenance..."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addDevice(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/LocalItems;->add(Lorg/fourthline/cling/model/meta/LocalDevice;)V
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

.method public declared-synchronized addDevice(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/LocalItems;->add(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
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

.method public declared-synchronized addDevice(Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->add(Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
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

.method public declared-synchronized addListener(Lorg/fourthline/cling/registry/RegistryListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public declared-synchronized addLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->addSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public declared-synchronized addRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->addSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public declared-synchronized addResource(Lorg/fourthline/cling/model/resource/Resource;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->addResource(Lorg/fourthline/cling/model/resource/Resource;I)V
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

.method public declared-synchronized addResource(Lorg/fourthline/cling/model/resource/Resource;I)V
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/registry/RegistryItem;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 4
    iget-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
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

.method public declared-synchronized advertiseLocalDevices()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/LocalItems;->advertiseLocalDevices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;
    .locals 2

    .line 1
    new-instance v0, Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryMaintenanceIntervalMillis()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, p0, v1}, Lorg/fourthline/cling/registry/RegistryMaintainer;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;I)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public declared-synchronized executeAsyncProtocol(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public declared-synchronized getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/RegistryItems;->get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/RegistryItems;->get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object p1

    .line 22
    :cond_1
    monitor-exit p0

    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw p1
.end method

.method public declared-synchronized getDevices()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItems;->get()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getDevices(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/registry/RegistryItems;->get(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/registry/RegistryItems;->get(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getDevices(Lorg/fourthline/cling/model/types/ServiceType;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 10
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/registry/RegistryItems;->get(Lorg/fourthline/cling/model/types/ServiceType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/registry/RegistryItems;->get(Lorg/fourthline/cling/model/types/ServiceType;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/LocalItems;->getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public declared-synchronized getListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/registry/RegistryListener;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    .line 3
    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public declared-synchronized getLocalDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/RegistryItems;->get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lorg/fourthline/cling/model/meta/LocalDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method public declared-synchronized getLocalDevices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/LocalItems;->get()Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method

.method public declared-synchronized getLocalSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/LocalGENASubscription;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->getSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/GENASubscription;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lorg/fourthline/cling/model/gena/LocalGENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public declared-synchronized getRemoteDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/RegistryItems;->get(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lorg/fourthline/cling/model/meta/RemoteDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method public declared-synchronized getRemoteDevices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryItems;->get()Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method

.method public declared-synchronized getRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->getSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/GENASubscription;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method public declared-synchronized getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/fourthline/cling/model/resource/Resource;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/net/URI;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/registry/RegistryImpl;->getResource(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 17
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 18
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getResource(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 3
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/resource/Resource;

    .line 4
    invoke-virtual {v1, p1}, Lorg/fourthline/cling/model/resource/Resource;->matches(Ljava/net/URI;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 5
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 9
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/resource/Resource;

    .line 10
    invoke-virtual {v1, p1}, Lorg/fourthline/cling/model/resource/Resource;->matches(Ljava/net/URI;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 11
    monitor-exit p0

    return-object v1

    .line 12
    :cond_3
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 13
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource URI can not be absolute, only path and query:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getResources()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/resource/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 3
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 4
    :cond_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getResources(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/fourthline/cling/model/resource/Resource;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/registry/RegistryItem;

    .line 7
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/resource/Resource;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/resource/Resource;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getService(Lorg/fourthline/cling/model/ServiceReference;)Lorg/fourthline/cling/model/meta/Service;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/ServiceReference;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/registry/RegistryImpl;->getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/fourthline/cling/model/ServiceReference;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceId;)Lorg/fourthline/cling/model/meta/Service;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    monitor-exit p0

    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public getUpnpService()Lorg/fourthline/cling/UpnpService;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWaitRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryImpl;->getRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    :goto_0
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    :try_start_1
    sget-object v1, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 19
    .line 20
    const-string v2, "Subscription not found, waiting for pending subscription procedure to terminate."

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    :goto_1
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryImpl;->getRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    monitor-exit v0

    .line 39
    return-object v1

    .line 40
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p1
.end method

.method public declared-synchronized isPaused()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method public declared-synchronized maintain()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 3
    .line 4
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 13
    .line 14
    const-string v1, "Maintaining registry..."

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_3

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 39
    .line 40
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 51
    .line 52
    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v4, "Removing expired resource: "

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 103
    .line 104
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lorg/fourthline/cling/model/resource/Resource;

    .line 109
    .line 110
    iget-object v3, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 111
    .line 112
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->getExpirationDetails()Lorg/fourthline/cling/model/ExpirationDetails;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v2, v3, v1}, Lorg/fourthline/cling/model/resource/Resource;->maintain(Ljava/util/List;Lorg/fourthline/cling/model/ExpirationDetails;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 121
    .line 122
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RemoteItems;->maintain()V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 126
    .line 127
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/LocalItems;->maintain()V

    .line 128
    .line 129
    .line 130
    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->runPendingExecutions(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    monitor-exit p0

    .line 135
    return-void

    .line 136
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    throw v0
.end method

.method public declared-synchronized notifyDiscoveryFailure(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lorg/fourthline/cling/registry/RegistryListener;

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lorg/fourthline/cling/registry/RegistryImpl$2;

    .line 31
    .line 32
    invoke-direct {v3, p0, v1, p1, p2}, Lorg/fourthline/cling/registry/RegistryImpl$2;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p1
.end method

.method public declared-synchronized notifyDiscoveryStart(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/registry/Registry;->getRemoteDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "Not notifying listeners, already registered: "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    const/4 p1, 0x0

    .line 51
    return p1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lorg/fourthline/cling/registry/RegistryListener;

    .line 73
    .line 74
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v3}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    new-instance v4, Lorg/fourthline/cling/registry/RegistryImpl$1;

    .line 83
    .line 84
    invoke-direct {v4, p0, v1, p1}, Lorg/fourthline/cling/registry/RegistryImpl$1;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    monitor-exit p0

    .line 92
    return v2

    .line 93
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    throw p1
.end method

.method public declared-synchronized pause()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 7
    .line 8
    const-string v1, "Pausing registry maintenance"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->runPendingExecutions(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryMaintainer;->stop()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method

.method public printDebugLog()V
    .locals 3

    .line 1
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v1, "====================================    REMOTE   ================================================"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryItems;->get()Ljava/util/Collection;

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
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 39
    .line 40
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 41
    .line 42
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 51
    .line 52
    const-string v1, "====================================    LOCAL    ================================================"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 58
    .line 59
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/LocalItems;->get()Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 78
    .line 79
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 80
    .line 81
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 90
    .line 91
    const-string v1, "====================================  RESOURCES  ================================================"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 113
    .line 114
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 115
    .line 116
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryItem;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 125
    .line 126
    const-string v1, "================================================================================================="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    return-void
.end method

.method public registerPendingRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public declared-synchronized removeAllLocalDevices()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/LocalItems;->removeAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public declared-synchronized removeAllRemoteDevices()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RemoteItems;->removeAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public declared-synchronized removeDevice(Lorg/fourthline/cling/model/meta/LocalDevice;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/LocalItems;->remove(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeDevice(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->remove(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeDevice(Lorg/fourthline/cling/model/types/UDN;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    instance-of v0, p1, Lorg/fourthline/cling/model/meta/LocalDevice;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryImpl;->removeDevice(Lorg/fourthline/cling/model/meta/LocalDevice;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    :try_start_1
    instance-of v0, p1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/RegistryImpl;->removeDevice(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 8
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeListener(Lorg/fourthline/cling/registry/RegistryListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public declared-synchronized removeLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->removeSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public declared-synchronized removeRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->removeSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public declared-synchronized removeResource(Lorg/fourthline/cling/model/resource/Resource;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    .line 3
    .line 4
    new-instance v1, Lorg/fourthline/cling/registry/RegistryItem;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {v1, p1}, Lorg/fourthline/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method public declared-synchronized resume()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 7
    .line 8
    const-string v1, "Resuming registry maintenance"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RemoteItems;->resume()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw v0
.end method

.method public declared-synchronized runPendingExecutions(Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 3
    .line 4
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Executing pending operations: "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/Runnable;

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-lez p1, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    :cond_3
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw p1
.end method

.method public declared-synchronized setDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/LocalItems;->setDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 3
    .line 4
    const-string v1, "Shutting down registry..."

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryMaintainer;->stop()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "Executing final pending operations on shutdown: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->runPendingExecutions(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lorg/fourthline/cling/registry/RegistryListener;

    .line 69
    .line 70
    invoke-interface {v2, p0}, Lorg/fourthline/cling/registry/RegistryListener;->beforeShutdown(Lorg/fourthline/cling/registry/Registry;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    new-array v2, v2, [Lorg/fourthline/cling/registry/RegistryItem;

    .line 81
    .line 82
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, [Lorg/fourthline/cling/registry/RegistryItem;

    .line 87
    .line 88
    array-length v2, v1

    .line 89
    :goto_2
    if-ge v0, v2, :cond_2

    .line 90
    .line 91
    aget-object v3, v1, v0

    .line 92
    .line 93
    invoke-virtual {v3}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lorg/fourthline/cling/model/resource/Resource;

    .line 98
    .line 99
    invoke-virtual {v3}, Lorg/fourthline/cling/model/resource/Resource;->shutdown()V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 106
    .line 107
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RemoteItems;->shutdown()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 111
    .line 112
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/LocalItems;->shutdown()V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_3

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lorg/fourthline/cling/registry/RegistryListener;

    .line 132
    .line 133
    invoke-interface {v1}, Lorg/fourthline/cling/registry/RegistryListener;->afterShutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_3
    monitor-exit p0

    .line 138
    return-void

    .line 139
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw v0
.end method

.method public unregisterPendingRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingSubscriptionsLock:Ljava/util/Set;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public declared-synchronized update(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RemoteItems;->update(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public declared-synchronized updateLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/LocalItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->updateSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public declared-synchronized updateRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/RemoteItems;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/RegistryItems;->updateSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.class public Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/UpnpServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingThreadFactory;,
        Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingExecutor;
    }
.end annotation

.annotation runtime Ljavax/enterprise/inject/Alternative;
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private final datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

.field private final defaultExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final deviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

.field private final genaEventProcessor:Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

.field private final namespace:Lorg/fourthline/cling/model/Namespace;

.field private final serviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

.field private final soapActionProcessor:Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

.field private final streamListenPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;

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
    sput-object v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 5
    sget-boolean p2, Lorg/fourthline/cling/model/ModelUtil;->ANDROID_RUNTIME:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string p2, "Unsupported runtime environment, use org.fourthline.cling.android.AndroidUpnpServiceConfiguration"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iput p1, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->streamListenPort:I

    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 9
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createDatagramProcessor()Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    .line 10
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createSOAPActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->soapActionProcessor:Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    .line 11
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createGENAEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->genaEventProcessor:Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    .line 12
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->deviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    .line 13
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->serviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    .line 14
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->namespace:Lorg/fourthline/cling/model/Namespace;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;-><init>(IZ)V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public createDatagramIO(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/DatagramIO;
    .locals 1

    .line 1
    new-instance p1, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;

    .line 2
    .line 3
    new-instance v0, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;

    .line 4
    .line 5
    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, v0}, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;-><init>(Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public createDatagramProcessor()Lorg/fourthline/cling/transport/spi/DatagramProcessor;
    .locals 1

    .line 1
    new-instance v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createDefaultExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    new-instance v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingExecutor;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingExecutor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;
    .locals 1

    .line 1
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createGENAEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;
    .locals 1

    .line 1
    new-instance v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createMulticastReceiver(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/MulticastReceiver;
    .locals 3

    .line 1
    new-instance v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;

    .line 2
    .line 3
    new-instance v1, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    .line 4
    .line 5
    invoke-interface {p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getMulticastGroup()Ljava/net/InetAddress;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getMulticastPort()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {v1, v2, p1}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;-><init>(Ljava/net/InetAddress;I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;-><init>(Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public createNamespace()Lorg/fourthline/cling/model/Namespace;
    .locals 1

    .line 1
    new-instance v0, Lorg/fourthline/cling/model/Namespace;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/fourthline/cling/model/Namespace;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createNetworkAddressFactory()Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;
    .locals 1

    .line 1
    iget v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->streamListenPort:I

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->createNetworkAddressFactory(I)Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    move-result-object v0

    return-object v0
.end method

.method public createNetworkAddressFactory(I)Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;
    .locals 1

    .line 2
    new-instance v0, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;-><init>(I)V

    return-object v0
.end method

.method public createSOAPActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;
    .locals 1

    .line 1
    new-instance v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;
    .locals 1

    .line 1
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createStreamClient()Lorg/fourthline/cling/transport/spi/StreamClient;
    .locals 3

    .line 1
    new-instance v0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;

    .line 2
    .line 3
    new-instance v1, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getSyncProtocolExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/StreamClientImpl;-><init>(Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public createStreamServer(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/StreamServer;
    .locals 2

    .line 1
    new-instance v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    .line 2
    .line 3
    new-instance v1, Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    .line 4
    .line 5
    invoke-interface {p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getStreamListenPort()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-direct {v1, p1}, Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/StreamServerImpl;-><init>(Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public getAliveIntervalMillis()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getDatagramIOExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getDatagramProcessor()Lorg/fourthline/cling/transport/spi/DatagramProcessor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescriptorRetrievalHeaders(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Lorg/fourthline/cling/model/message/UpnpHeaders;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->deviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventSubscriptionHeaders(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/message/UpnpHeaders;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getExclusiveServiceTypes()[Lorg/fourthline/cling/model/types/ServiceType;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lorg/fourthline/cling/model/types/ServiceType;

    .line 3
    .line 4
    return-object v0
.end method

.method public getGenaEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->genaEventProcessor:Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMulticastReceiverExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getNamespace()Lorg/fourthline/cling/model/Namespace;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->namespace:Lorg/fourthline/cling/model/Namespace;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRegistryListenerExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRegistryMaintenanceIntervalMillis()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getRemoteDeviceMaxAgeSeconds()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->serviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSoapActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->soapActionProcessor:Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStreamServerExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSyncProtocolExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isReceivedSubscriptionTimeoutIgnored()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 2

    .line 1
    sget-object v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    const-string v1, "Shutting down default executor service"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    return-void
.end method

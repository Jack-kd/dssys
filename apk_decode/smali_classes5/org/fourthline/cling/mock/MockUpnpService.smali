.class public Lorg/fourthline/cling/mock/MockUpnpService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/UpnpService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;
    }
.end annotation

.annotation runtime Ljavax/enterprise/inject/Alternative;
.end annotation


# instance fields
.field protected final configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

.field protected final controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

.field protected final networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

.field protected final protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

.field protected final registry:Lorg/fourthline/cling/registry/Registry;

.field protected final router:Lorg/fourthline/cling/mock/MockRouter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;-><init>(ZZ)V

    invoke-direct {p0, v1, v0}, Lorg/fourthline/cling/mock/MockUpnpService;-><init>(ZLorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/mock/MockUpnpService;-><init>(ZLorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V

    return-void
.end method

.method public constructor <init>(ZLorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lorg/fourthline/cling/mock/MockUpnpService;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 7
    invoke-virtual {p0, p0, p1}, Lorg/fourthline/cling/mock/MockUpnpService;->createProtocolFactory(Lorg/fourthline/cling/UpnpService;Z)Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpService;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 8
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpService$1;

    invoke-direct {v0, p0, p0, p2}, Lorg/fourthline/cling/mock/MockUpnpService$1;-><init>(Lorg/fourthline/cling/mock/MockUpnpService;Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V

    iput-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService;->registry:Lorg/fourthline/cling/registry/Registry;

    .line 9
    invoke-interface {p2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->createNetworkAddressFactory()Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/fourthline/cling/mock/MockUpnpService;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 10
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService;->createRouter()Lorg/fourthline/cling/mock/MockRouter;

    move-result-object v1

    iput-object v1, p0, Lorg/fourthline/cling/mock/MockUpnpService;->router:Lorg/fourthline/cling/mock/MockRouter;

    .line 11
    new-instance v1, Lorg/fourthline/cling/controlpoint/ControlPointImpl;

    invoke-direct {v1, p2, p1, v0}, Lorg/fourthline/cling/controlpoint/ControlPointImpl;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/fourthline/cling/registry/Registry;)V

    iput-object v1, p0, Lorg/fourthline/cling/mock/MockUpnpService;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    .line 3
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;-><init>(ZZ)V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/mock/MockUpnpService;-><init>(ZLorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1

    .line 4
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    invoke-direct {v0, p2, p3}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;-><init>(ZZ)V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/mock/MockUpnpService;-><init>(ZLorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V

    return-void
.end method


# virtual methods
.method public createProtocolFactory(Lorg/fourthline/cling/UpnpService;Z)Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .line 1
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;-><init>(Lorg/fourthline/cling/UpnpService;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createRouter()Lorg/fourthline/cling/mock/MockRouter;
    .locals 3

    .line 1
    new-instance v0, Lorg/fourthline/cling/mock/MockRouter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/mock/MockRouter;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRegistry()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService;->registry:Lorg/fourthline/cling/registry/Registry;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRouter()Lorg/fourthline/cling/mock/MockRouter;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService;->router:Lorg/fourthline/cling/mock/MockRouter;

    return-object v0
.end method

.method public bridge synthetic getRouter()Lorg/fourthline/cling/transport/Router;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService;->getRouter()Lorg/fourthline/cling/mock/MockRouter;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->shutdown()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->shutdown()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

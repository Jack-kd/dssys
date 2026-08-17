.class public Lorg/fourthline/cling/model/meta/RemoteDevice;
.super Lorg/fourthline/cling/model/meta/Device;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/meta/Device<",
        "Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;",
        "Lorg/fourthline/cling/model/meta/RemoteDevice;",
        "Lorg/fourthline/cling/model/meta/RemoteService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 14
    invoke-direct/range {p0 .. p7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 6
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v4

    filled-new-array {p5}, [Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/RemoteService;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 7
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v4

    filled-new-array {p5}, [Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v5

    filled-new-array {p6}, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 8
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 9
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 2
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/RemoteService;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 3
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v5

    filled-new-array {p5}, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 10
    filled-new-array {p5}, [Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/RemoteService;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 11
    filled-new-array {p5}, [Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v5

    filled-new-array {p6}, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 12
    invoke-direct/range {p0 .. p5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 13
    invoke-direct/range {p0 .. p6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 4
    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 5
    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method


# virtual methods
.method public discoverResources(Lorg/fourthline/cling/model/Namespace;)[Lorg/fourthline/cling/model/resource/Resource;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getServices()[Lorg/fourthline/cling/model/meta/RemoteService;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_1

    .line 14
    .line 15
    aget-object v5, v1, v4

    .line 16
    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance v6, Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;

    .line 21
    .line 22
    invoke-virtual {p1, v5}, Lorg/fourthline/cling/model/Namespace;->getEventCallbackPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-direct {v6, v7, v5}, Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/RemoteService;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->hasEmbeddedDevices()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    array-length v2, v1

    .line 46
    :goto_2
    if-ge v3, v2, :cond_3

    .line 47
    .line 48
    aget-object v4, v1, v3

    .line 49
    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    invoke-virtual {v4, p1}, Lorg/fourthline/cling/model/meta/Device;->discoverResources(Lorg/fourthline/cling/model/Namespace;)[Lorg/fourthline/cling/model/resource/Resource;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    new-array p1, p1, [Lorg/fourthline/cling/model/resource/Resource;

    .line 72
    .line 73
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, [Lorg/fourthline/cling/model/resource/Resource;

    .line 78
    .line 79
    return-object p1
.end method

.method public bridge synthetic findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/Device;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object p1

    return-object p1
.end method

.method public findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p0}, Lorg/fourthline/cling/model/meta/Device;->find(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    return-object p1
.end method

.method public bridge synthetic getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->embeddedDevices:[Lorg/fourthline/cling/model/meta/Device;

    if-eqz v0, :cond_0

    check-cast v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    return-object v0
.end method

.method public bridge synthetic getRoot()Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getRoot()Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    move-object v0, p0

    .line 3
    :goto_0
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getParentDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getParentDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getServices()[Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->services:[Lorg/fourthline/cling/model/meta/Service;

    if-eqz v0, :cond_0

    check-cast v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    return-object v0
.end method

.method public bridge synthetic getServices()[Lorg/fourthline/cling/model/meta/Service;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getServices()[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;Ljava/util/List;)Lorg/fourthline/cling/model/meta/Device;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 1
    check-cast p6, [Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-virtual/range {p0 .. p7}, Lorg/fourthline/cling/model/meta/RemoteDevice;->newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;Ljava/util/List;)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;Ljava/util/List;)Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/UDN;",
            "Lorg/fourthline/cling/model/meta/UDAVersion;",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/fourthline/cling/model/meta/Icon;",
            "[",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    new-instance v1, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    .line 4
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-direct {v1, p1, v2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)V

    .line 5
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-interface {p7, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    :goto_0
    move-object v7, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/RemoteDevice;-><init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    return-object v0
.end method

.method public newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "[",
            "Lorg/fourthline/cling/model/meta/Action<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;[",
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/RemoteService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/fourthline/cling/model/meta/RemoteService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/RemoteService;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    return-object v0
.end method

.method public bridge synthetic newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/Service;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 2
    invoke-virtual/range {p0 .. p7}, Lorg/fourthline/cling/model/meta/RemoteDevice;->newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object p1

    return-object p1
.end method

.method public newServiceArray(I)[Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 0

    .line 2
    new-array p1, p1, [Lorg/fourthline/cling/model/meta/RemoteService;

    return-object p1
.end method

.method public bridge synthetic newServiceArray(I)[Lorg/fourthline/cling/model/meta/Service;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->newServiceArray(I)[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object p1

    return-object p1
.end method

.method public normalizeURI(Ljava/net/URI;)Ljava/net/URL;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getBaseURL()Ljava/net/URL;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getBaseURL()Ljava/net/URL;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0, p1}, Lorg/seamless/util/URIUtil;->createAbsoluteURL(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0, p1}, Lorg/seamless/util/URIUtil;->createAbsoluteURL(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public bridge synthetic toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object p1

    return-object p1
.end method

.method public toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;",
            ">;)[",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    return-object p1
.end method

.method public toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;)[",
            "Lorg/fourthline/cling/model/meta/RemoteService;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/RemoteService;

    return-object p1
.end method

.method public bridge synthetic toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Service;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object p1

    return-object p1
.end method

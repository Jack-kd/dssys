.class public Lorg/fourthline/cling/binding/staging/MutableDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public baseURL:Ljava/net/URL;

.field public deviceType:Ljava/lang/String;

.field public dlnaCaps:Lorg/fourthline/cling/model/types/DLNACaps;

.field public dlnaDocs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/types/DLNADoc;",
            ">;"
        }
    .end annotation
.end field

.field public embeddedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/binding/staging/MutableDevice;",
            ">;"
        }
    .end annotation
.end field

.field public friendlyName:Ljava/lang/String;

.field public icons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/binding/staging/MutableIcon;",
            ">;"
        }
    .end annotation
.end field

.field public manufacturer:Ljava/lang/String;

.field public manufacturerURI:Ljava/net/URI;

.field public modelDescription:Ljava/lang/String;

.field public modelName:Ljava/lang/String;

.field public modelNumber:Ljava/lang/String;

.field public modelURI:Ljava/net/URI;

.field public parentDevice:Lorg/fourthline/cling/binding/staging/MutableDevice;

.field public presentationURI:Ljava/net/URI;

.field public serialNumber:Ljava/lang/String;

.field public services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/binding/staging/MutableService;",
            ">;"
        }
    .end annotation
.end field

.field public udaVersion:Lorg/fourthline/cling/binding/staging/MutableUDAVersion;

.field public udn:Lorg/fourthline/cling/model/types/UDN;

.field public upc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->udaVersion:Lorg/fourthline/cling/binding/staging/MutableUDAVersion;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->dlnaDocs:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->embeddedDevices:Ljava/util/List;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public build(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Device;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/staging/MutableDevice;->createDeviceVersion()Lorg/fourthline/cling/model/meta/UDAVersion;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->baseURL:Ljava/net/URL;

    invoke-virtual {p0, p1, v0, v1}, Lorg/fourthline/cling/binding/staging/MutableDevice;->build(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/fourthline/cling/model/meta/Device;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->embeddedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    .line 4
    invoke-virtual {v1, p1, p2, p3}, Lorg/fourthline/cling/binding/staging/MutableDevice;->build(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->udn:Lorg/fourthline/cling/model/types/UDN;

    .line 6
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/staging/MutableDevice;->createDeviceType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v3

    .line 7
    invoke-virtual {p0, p3}, Lorg/fourthline/cling/binding/staging/MutableDevice;->createDeviceDetails(Ljava/net/URL;)Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/staging/MutableDevice;->createIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v5

    .line 9
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/binding/staging/MutableDevice;->createServices(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v6

    move-object v0, p1

    move-object v2, p2

    .line 10
    invoke-virtual/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/Device;->newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;Ljava/util/List;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    return-object p1
.end method

.method public createDeviceDetails(Ljava/net/URL;)Lorg/fourthline/cling/model/meta/DeviceDetails;
    .locals 10

    .line 1
    new-instance v0, Lorg/fourthline/cling/model/meta/DeviceDetails;

    .line 2
    .line 3
    iget-object v2, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->friendlyName:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v3, Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->manufacturer:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->manufacturerURI:Ljava/net/URI;

    .line 10
    .line 11
    invoke-direct {v3, v1, v4}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    .line 12
    .line 13
    .line 14
    new-instance v4, Lorg/fourthline/cling/model/meta/ModelDetails;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelName:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelDescription:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v6, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelNumber:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v7, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelURI:Ljava/net/URI;

    .line 23
    .line 24
    invoke-direct {v4, v1, v5, v6, v7}, Lorg/fourthline/cling/model/meta/ModelDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 25
    .line 26
    .line 27
    iget-object v5, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->serialNumber:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v6, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->upc:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v7, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->presentationURI:Ljava/net/URI;

    .line 32
    .line 33
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->dlnaDocs:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    new-array v8, v8, [Lorg/fourthline/cling/model/types/DLNADoc;

    .line 40
    .line 41
    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v8, v1

    .line 46
    check-cast v8, [Lorg/fourthline/cling/model/types/DLNADoc;

    .line 47
    .line 48
    iget-object v9, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->dlnaCaps:Lorg/fourthline/cling/model/types/DLNACaps;

    .line 49
    .line 50
    move-object v1, p1

    .line 51
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public createDeviceType()Lorg/fourthline/cling/model/types/DeviceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->deviceType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/fourthline/cling/model/types/DeviceType;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/DeviceType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public createDeviceVersion()Lorg/fourthline/cling/model/meta/UDAVersion;
    .locals 3

    .line 1
    new-instance v0, Lorg/fourthline/cling/model/meta/UDAVersion;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->udaVersion:Lorg/fourthline/cling/binding/staging/MutableUDAVersion;

    .line 4
    .line 5
    iget v2, v1, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;->major:I

    .line 6
    .line 7
    iget v1, v1, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;->minor:I

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lorg/fourthline/cling/model/meta/UDAVersion;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public createIcons()[Lorg/fourthline/cling/model/meta/Icon;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [Lorg/fourthline/cling/model/meta/Icon;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lorg/fourthline/cling/binding/staging/MutableIcon;

    .line 27
    .line 28
    add-int/lit8 v4, v2, 0x1

    .line 29
    .line 30
    invoke-virtual {v3}, Lorg/fourthline/cling/binding/staging/MutableIcon;->build()Lorg/fourthline/cling/model/meta/Icon;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v0, v2

    .line 35
    .line 36
    move v2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method public createServices(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/meta/Service;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/meta/Device;->newServiceArray(I)[Lorg/fourthline/cling/model/meta/Service;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lorg/fourthline/cling/binding/staging/MutableService;

    .line 29
    .line 30
    add-int/lit8 v4, v2, 0x1

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Lorg/fourthline/cling/binding/staging/MutableService;->build(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Service;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    aput-object v3, v0, v2

    .line 37
    .line 38
    move v2, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object v0
.end method

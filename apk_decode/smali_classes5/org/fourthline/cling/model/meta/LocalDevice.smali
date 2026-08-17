.class public Lorg/fourthline/cling/model/meta/LocalDevice;
.super Lorg/fourthline/cling/model/meta/Device;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/meta/Device<",
        "Lorg/fourthline/cling/model/meta/DeviceIdentity;",
        "Lorg/fourthline/cling/model/meta/LocalDevice;",
        "Lorg/fourthline/cling/model/meta/LocalService;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;[Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 35
    invoke-direct/range {p0 .. p7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    move-object p1, p0

    const/4 p2, 0x0

    .line 36
    iput-object p2, p1, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;[Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 8
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

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 37
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 38
    iput-object p4, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 15
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v4

    filled-new-array {p5}, [Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 17
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v4

    filled-new-array {p5}, [Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v5

    filled-new-array {p6}, [Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 19
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;[Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 23
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 3
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 9
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v5

    filled-new-array {p5}, [Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 25
    filled-new-array {p5}, [Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 27
    filled-new-array {p5}, [Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v5

    filled-new-array {p6}, [Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 31
    invoke-direct/range {p0 .. p5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    move-object p1, p0

    const/4 p2, 0x0

    .line 32
    iput-object p2, p1, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;[Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 33
    invoke-direct/range {p0 .. p6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    move-object p1, p0

    const/4 p2, 0x0

    .line 34
    iput-object p2, p1, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/LocalService;)V
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

    .line 11
    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/LocalService;[Lorg/fourthline/cling/model/meta/LocalDevice;)V
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

    .line 13
    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 21
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    .line 22
    iput-object p3, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 5
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    .line 6
    iput-object p3, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 7
    filled-new-array {p4}, [Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v5

    filled-new-array {p5}, [Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 8
    iput-object p3, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;[Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 29
    filled-new-array {p5}, [Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v5

    filled-new-array {p6}, [Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 30
    iput-object p3, v0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

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
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->isRoot()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lorg/fourthline/cling/model/resource/DeviceDescriptorResource;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lorg/fourthline/cling/model/Namespace;->getDescriptorPath(Lorg/fourthline/cling/model/meta/Device;)Ljava/net/URI;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2, p0}, Lorg/fourthline/cling/model/resource/DeviceDescriptorResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getServices()[Lorg/fourthline/cling/model/meta/LocalService;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    array-length v2, v1

    .line 29
    const/4 v3, 0x0

    .line 30
    move v4, v3

    .line 31
    :goto_0
    if-ge v4, v2, :cond_1

    .line 32
    .line 33
    aget-object v5, v1, v4

    .line 34
    .line 35
    new-instance v6, Lorg/fourthline/cling/model/resource/ServiceDescriptorResource;

    .line 36
    .line 37
    invoke-virtual {p1, v5}, Lorg/fourthline/cling/model/Namespace;->getDescriptorPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-direct {v6, v7, v5}, Lorg/fourthline/cling/model/resource/ServiceDescriptorResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/LocalService;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance v6, Lorg/fourthline/cling/model/resource/ServiceControlResource;

    .line 48
    .line 49
    invoke-virtual {p1, v5}, Lorg/fourthline/cling/model/Namespace;->getControlPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-direct {v6, v7, v5}, Lorg/fourthline/cling/model/resource/ServiceControlResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/LocalService;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v6, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;

    .line 60
    .line 61
    invoke-virtual {p1, v5}, Lorg/fourthline/cling/model/Namespace;->getEventSubscriptionPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-direct {v6, v7, v5}, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/LocalService;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    array-length v2, v1

    .line 79
    move v4, v3

    .line 80
    :goto_1
    if-ge v4, v2, :cond_2

    .line 81
    .line 82
    aget-object v5, v1, v4

    .line 83
    .line 84
    new-instance v6, Lorg/fourthline/cling/model/resource/IconResource;

    .line 85
    .line 86
    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {p1, p0, v7}, Lorg/fourthline/cling/model/Namespace;->prefixIfRelative(Lorg/fourthline/cling/model/meta/Device;Ljava/net/URI;)Ljava/net/URI;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-direct {v6, v7, v5}, Lorg/fourthline/cling/model/resource/IconResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/Icon;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->hasEmbeddedDevices()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    array-length v2, v1

    .line 114
    :goto_2
    if-ge v3, v2, :cond_3

    .line 115
    .line 116
    aget-object v4, v1, v3

    .line 117
    .line 118
    invoke-virtual {v4, p1}, Lorg/fourthline/cling/model/meta/Device;->discoverResources(Lorg/fourthline/cling/model/Namespace;)[Lorg/fourthline/cling/model/resource/Resource;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    .line 128
    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    new-array p1, p1, [Lorg/fourthline/cling/model/resource/Resource;

    .line 137
    .line 138
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, [Lorg/fourthline/cling/model/resource/Resource;

    .line 143
    .line 144
    return-object p1
.end method

.method public bridge synthetic findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/Device;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object p1

    return-object p1
.end method

.method public findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p0}, Lorg/fourthline/cling/model/meta/Device;->find(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/LocalDevice;

    return-object p1
.end method

.method public getDetails(Lorg/fourthline/cling/model/profile/RemoteClientInfo;)Lorg/fourthline/cling/model/meta/DeviceDetails;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getDeviceDetailsProvider()Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getDeviceDetailsProvider()Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;->provide(Lorg/fourthline/cling/model/profile/RemoteClientInfo;)Lorg/fourthline/cling/model/meta/DeviceDetails;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public getDeviceDetailsProvider()Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->embeddedDevices:[Lorg/fourthline/cling/model/meta/Device;

    if-eqz v0, :cond_0

    check-cast v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    return-object v0
.end method

.method public bridge synthetic getRoot()Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getRoot()Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lorg/fourthline/cling/model/meta/LocalDevice;
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

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getServices()[Lorg/fourthline/cling/model/meta/LocalService;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->services:[Lorg/fourthline/cling/model/meta/Service;

    if-eqz v0, :cond_0

    check-cast v0, [Lorg/fourthline/cling/model/meta/LocalService;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    return-object v0
.end method

.method public bridge synthetic getServices()[Lorg/fourthline/cling/model/meta/Service;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getServices()[Lorg/fourthline/cling/model/meta/LocalService;

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
    check-cast p6, [Lorg/fourthline/cling/model/meta/LocalService;

    invoke-virtual/range {p0 .. p7}, Lorg/fourthline/cling/model/meta/LocalDevice;->newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;Ljava/util/List;)Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;Ljava/util/List;)Lorg/fourthline/cling/model/meta/LocalDevice;
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
            "Lorg/fourthline/cling/model/meta/LocalService;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/LocalDevice;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    new-instance v1, Lorg/fourthline/cling/model/meta/DeviceIdentity;

    .line 4
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/fourthline/cling/model/meta/DeviceIdentity;-><init>(Lorg/fourthline/cling/model/types/UDN;Ljava/lang/Integer;)V

    .line 5
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-interface {p7, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/LocalDevice;

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
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/LocalDevice;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;[Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-object v0
.end method

.method public newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/LocalService;
    .locals 0
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
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;[",
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/LocalService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 6
    new-instance p3, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-direct {p3, p1, p2, p6, p7}, Lorg/fourthline/cling/model/meta/LocalService;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    return-object p3
.end method

.method public bridge synthetic newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/Service;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 2
    invoke-virtual/range {p0 .. p7}, Lorg/fourthline/cling/model/meta/LocalDevice;->newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object p1

    return-object p1
.end method

.method public newServiceArray(I)[Lorg/fourthline/cling/model/meta/LocalService;
    .locals 0

    .line 2
    new-array p1, p1, [Lorg/fourthline/cling/model/meta/LocalService;

    return-object p1
.end method

.method public bridge synthetic newServiceArray(I)[Lorg/fourthline/cling/model/meta/Service;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->newServiceArray(I)[Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object p1

    return-object p1
.end method

.method public toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            ">;)[",
            "Lorg/fourthline/cling/model/meta/LocalDevice;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/LocalDevice;

    return-object p1
.end method

.method public toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/LocalService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;)[",
            "Lorg/fourthline/cling/model/meta/LocalService;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/LocalService;

    return-object p1
.end method

.method public bridge synthetic toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Service;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object p1

    return-object p1
.end method

.method public validate()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/fourthline/cling/model/meta/Device;->validate()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->hasIcons()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    array-length v2, v1

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    if-ge v3, v2, :cond_3

    .line 26
    .line 27
    aget-object v4, v1, v3

    .line 28
    .line 29
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5}, Ljava/net/URI;->isAbsolute()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const-string v6, "icons"

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    new-instance v5, Lorg/fourthline/cling/model/ValidationError;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v9, "Local icon URI can not be absolute: "

    .line 53
    .line 54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-direct {v5, v7, v6, v8}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const-string v7, "../"

    .line 83
    .line 84
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_1

    .line 89
    .line 90
    new-instance v5, Lorg/fourthline/cling/model/ValidationError;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v9, "Local icon URI must not contain \'../\': "

    .line 102
    .line 103
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-direct {v5, v7, v6, v8}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :cond_1
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    const-string v7, "/"

    .line 132
    .line 133
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_2

    .line 138
    .line 139
    new-instance v5, Lorg/fourthline/cling/model/ValidationError;

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v9, "Local icon URI must not start with \'/\': "

    .line 151
    .line 152
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-direct {v5, v7, v6, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_3
    return-object v0
.end method

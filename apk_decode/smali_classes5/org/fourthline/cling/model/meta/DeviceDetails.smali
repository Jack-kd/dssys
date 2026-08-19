.class public Lorg/fourthline/cling/model/meta/DeviceDetails;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/model/Validatable;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final baseURL:Ljava/net/URL;

.field private final dlnaCaps:Lorg/fourthline/cling/model/types/DLNACaps;

.field private final dlnaDocs:[Lorg/fourthline/cling/model/types/DLNADoc;

.field private final friendlyName:Ljava/lang/String;

.field private final manufacturerDetails:Lorg/fourthline/cling/model/meta/ManufacturerDetails;

.field private final modelDetails:Lorg/fourthline/cling/model/meta/ModelDetails;

.field private final presentationURI:Ljava/net/URI;

.field private final secProductCaps:Lorg/fourthline/cling/model/types/DLNACaps;

.field private final serialNumber:Ljava/lang/String;

.field private final upc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/model/meta/DeviceDetails;

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
    sput-object v0, Lorg/fourthline/cling/model/meta/DeviceDetails;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, p2

    .line 10
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 11
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 3
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 5
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 8
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 16
    invoke-static {p6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 17
    invoke-static/range {p6 .. p6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 8

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 14
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 15
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 9
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/net/URI;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 12
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    .line 13
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v9, p5

    .line 6
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 7
    invoke-direct/range {v0 .. v10}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    move-object v9, p4

    .line 4
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v8, p2

    move-object v9, p3

    .line 2
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 18
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 19
    invoke-direct/range {v0 .. v10}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->baseURL:Ljava/net/URL;

    .line 22
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->friendlyName:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 23
    new-instance p3, Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    invoke-direct {p3}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;-><init>()V

    :cond_0
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->manufacturerDetails:Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    if-nez p4, :cond_1

    .line 24
    new-instance p4, Lorg/fourthline/cling/model/meta/ModelDetails;

    invoke-direct {p4}, Lorg/fourthline/cling/model/meta/ModelDetails;-><init>()V

    :cond_1
    iput-object p4, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->modelDetails:Lorg/fourthline/cling/model/meta/ModelDetails;

    .line 25
    iput-object p5, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->serialNumber:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->upc:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->presentationURI:Ljava/net/URI;

    if-eqz p8, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 28
    new-array p8, p1, [Lorg/fourthline/cling/model/types/DLNADoc;

    :goto_0
    iput-object p8, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->dlnaDocs:[Lorg/fourthline/cling/model/types/DLNADoc;

    .line 29
    iput-object p9, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->dlnaCaps:Lorg/fourthline/cling/model/types/DLNACaps;

    .line 30
    iput-object p10, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->secProductCaps:Lorg/fourthline/cling/model/types/DLNACaps;

    return-void
.end method


# virtual methods
.method public getBaseURL()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->baseURL:Ljava/net/URL;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDlnaCaps()Lorg/fourthline/cling/model/types/DLNACaps;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->dlnaCaps:Lorg/fourthline/cling/model/types/DLNACaps;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDlnaDocs()[Lorg/fourthline/cling/model/types/DLNADoc;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->dlnaDocs:[Lorg/fourthline/cling/model/types/DLNADoc;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->friendlyName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->manufacturerDetails:Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModelDetails()Lorg/fourthline/cling/model/meta/ModelDetails;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->modelDetails:Lorg/fourthline/cling/model/meta/ModelDetails;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPresentationURI()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->presentationURI:Ljava/net/URI;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecProductCaps()Lorg/fourthline/cling/model/types/DLNACaps;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->secProductCaps:Lorg/fourthline/cling/model/types/DLNACaps;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->serialNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->upc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 4
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
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0xc

    .line 21
    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    sget-object v1, Lorg/fourthline/cling/model/meta/DeviceDetails;->log:Ljava/util/logging/Logger;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "UPnP specification violation, UPC must be 12 digits: "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :catch_0
    sget-object v1, Lorg/fourthline/cling/model/meta/DeviceDetails;->log:Ljava/util/logging/Logger;

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v3, "UPnP specification violation, UPC must be 12 digits all-numeric: "

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-object v0
.end method

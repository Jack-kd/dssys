.class public enum Lcom/sigmob/sdk/mraid/k;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/mraid/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/mraid/k;

.field public static final enum b:Lcom/sigmob/sdk/mraid/k;

.field public static final enum c:Lcom/sigmob/sdk/mraid/k;

.field public static final enum d:Lcom/sigmob/sdk/mraid/k;

.field public static final enum e:Lcom/sigmob/sdk/mraid/k;

.field public static final enum f:Lcom/sigmob/sdk/mraid/k;

.field public static final enum g:Lcom/sigmob/sdk/mraid/k;

.field public static final enum h:Lcom/sigmob/sdk/mraid/k;

.field public static final enum i:Lcom/sigmob/sdk/mraid/k;

.field public static final enum j:Lcom/sigmob/sdk/mraid/k;

.field public static final enum k:Lcom/sigmob/sdk/mraid/k;

.field public static final enum l:Lcom/sigmob/sdk/mraid/k;

.field public static final enum m:Lcom/sigmob/sdk/mraid/k;

.field public static final enum n:Lcom/sigmob/sdk/mraid/k;

.field public static final enum o:Lcom/sigmob/sdk/mraid/k;

.field private static final synthetic q:[Lcom/sigmob/sdk/mraid/k;


# instance fields
.field private final p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lcom/sigmob/sdk/mraid/k;

    const-string v1, "close"

    const-string v2, "CLOSE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/k;->a:Lcom/sigmob/sdk/mraid/k;

    new-instance v1, Lcom/sigmob/sdk/mraid/k$1;

    const-string v2, "expand"

    const-string v4, "EXPAND"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/sigmob/sdk/mraid/k$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/sdk/mraid/k;->b:Lcom/sigmob/sdk/mraid/k;

    new-instance v2, Lcom/sigmob/sdk/mraid/k;

    const-string v4, "usecustomclose"

    const-string v6, "USE_CUSTOM_CLOSE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/sdk/mraid/k;->c:Lcom/sigmob/sdk/mraid/k;

    new-instance v4, Lcom/sigmob/sdk/mraid/k$2;

    const-string v6, "open"

    const-string v8, "OPEN"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/sigmob/sdk/mraid/k$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/sdk/mraid/k;->d:Lcom/sigmob/sdk/mraid/k;

    new-instance v6, Lcom/sigmob/sdk/mraid/k$3;

    const-string v8, "feedback"

    const-string v10, "feedBack"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/sigmob/sdk/mraid/k$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sigmob/sdk/mraid/k;->e:Lcom/sigmob/sdk/mraid/k;

    new-instance v8, Lcom/sigmob/sdk/mraid/k;

    const-string v10, "unload"

    const-string v12, "UNLOAD"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sigmob/sdk/mraid/k;->f:Lcom/sigmob/sdk/mraid/k;

    new-instance v10, Lcom/sigmob/sdk/mraid/k;

    const-string v12, "openFourElements"

    const-string v14, "OPENFOURELEMENTS"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sigmob/sdk/mraid/k;->g:Lcom/sigmob/sdk/mraid/k;

    new-instance v12, Lcom/sigmob/sdk/mraid/k$4;

    const-string v14, "resize"

    move/from16 v16, v3

    const-string v3, "RESIZE"

    move/from16 v17, v5

    const/4 v5, 0x7

    invoke-direct {v12, v3, v5, v14}, Lcom/sigmob/sdk/mraid/k$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sigmob/sdk/mraid/k;->h:Lcom/sigmob/sdk/mraid/k;

    new-instance v3, Lcom/sigmob/sdk/mraid/k;

    const-string v14, "setOrientationProperties"

    move/from16 v18, v5

    const-string v5, "SET_ORIENTATION_PROPERTIES"

    move/from16 v19, v7

    const/16 v7, 0x8

    invoke-direct {v3, v5, v7, v14}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sigmob/sdk/mraid/k;->i:Lcom/sigmob/sdk/mraid/k;

    new-instance v5, Lcom/sigmob/sdk/mraid/k$5;

    const-string v14, "playVideo"

    move/from16 v20, v7

    const-string v7, "PLAY_VIDEO"

    move/from16 v21, v9

    const/16 v9, 0x9

    invoke-direct {v5, v7, v9, v14}, Lcom/sigmob/sdk/mraid/k$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sigmob/sdk/mraid/k;->j:Lcom/sigmob/sdk/mraid/k;

    new-instance v7, Lcom/sigmob/sdk/mraid/k$6;

    const-string v14, "storePicture"

    move/from16 v22, v9

    const-string v9, "STORE_PICTURE"

    move/from16 v23, v11

    const/16 v11, 0xa

    invoke-direct {v7, v9, v11, v14}, Lcom/sigmob/sdk/mraid/k$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sigmob/sdk/mraid/k;->k:Lcom/sigmob/sdk/mraid/k;

    new-instance v9, Lcom/sigmob/sdk/mraid/k$7;

    const-string v14, "createCalendarEvent"

    move/from16 v24, v11

    const-string v11, "CREATE_CALENDAR_EVENT"

    move/from16 v25, v13

    const/16 v13, 0xb

    invoke-direct {v9, v11, v13, v14}, Lcom/sigmob/sdk/mraid/k$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sigmob/sdk/mraid/k;->l:Lcom/sigmob/sdk/mraid/k;

    new-instance v11, Lcom/sigmob/sdk/mraid/k$8;

    const-string v14, "vpaid"

    move/from16 v26, v13

    const-string v13, "VPAID"

    move/from16 v27, v15

    const/16 v15, 0xc

    invoke-direct {v11, v13, v15, v14}, Lcom/sigmob/sdk/mraid/k$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sigmob/sdk/mraid/k;->m:Lcom/sigmob/sdk/mraid/k;

    new-instance v13, Lcom/sigmob/sdk/mraid/k$9;

    const-string v14, "extension"

    move/from16 v28, v15

    const-string v15, "EXTENSION"

    move-object/from16 v29, v0

    const/16 v0, 0xd

    invoke-direct {v13, v15, v0, v14}, Lcom/sigmob/sdk/mraid/k$9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/sigmob/sdk/mraid/k;->n:Lcom/sigmob/sdk/mraid/k;

    new-instance v14, Lcom/sigmob/sdk/mraid/k;

    const-string v15, ""

    move/from16 v30, v0

    const-string v0, "UNSPECIFIED"

    move-object/from16 v31, v1

    const/16 v1, 0xe

    invoke-direct {v14, v0, v1, v15}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/sigmob/sdk/mraid/k;->o:Lcom/sigmob/sdk/mraid/k;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/sigmob/sdk/mraid/k;

    aput-object v29, v0, v16

    aput-object v31, v0, v17

    aput-object v2, v0, v19

    aput-object v4, v0, v21

    aput-object v6, v0, v23

    aput-object v8, v0, v25

    aput-object v10, v0, v27

    aput-object v12, v0, v18

    aput-object v3, v0, v20

    aput-object v5, v0, v22

    aput-object v7, v0, v24

    aput-object v9, v0, v26

    aput-object v11, v0, v28

    aput-object v13, v0, v30

    aput-object v14, v0, v1

    sput-object v0, Lcom/sigmob/sdk/mraid/k;->q:[Lcom/sigmob/sdk/mraid/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/k;->p:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/mraid/k$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/k;
    .locals 5

    .line 1
    invoke-static {}, Lcom/sigmob/sdk/mraid/k;->values()[Lcom/sigmob/sdk/mraid/k;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/sigmob/sdk/mraid/k;->p:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sigmob/sdk/mraid/k;->o:Lcom/sigmob/sdk/mraid/k;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/k;
    .locals 1

    const-class v0, Lcom/sigmob/sdk/mraid/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/mraid/k;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/mraid/k;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/mraid/k;->q:[Lcom/sigmob/sdk/mraid/k;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/mraid/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/mraid/k;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/k;->p:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/base/models/PlacementType;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

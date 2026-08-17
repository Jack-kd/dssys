.class public final enum Lcom/sigmob/sdk/base/models/PlacementType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/models/PlacementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/sdk/base/models/PlacementType;

.field public static final enum INLINE:Lcom/sigmob/sdk/base/models/PlacementType;

.field public static final enum INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sigmob/sdk/base/models/PlacementType;

    const-string v1, "INLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/models/PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/PlacementType;->INLINE:Lcom/sigmob/sdk/base/models/PlacementType;

    new-instance v1, Lcom/sigmob/sdk/base/models/PlacementType;

    const-string v2, "INTERSTITIAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/base/models/PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    filled-new-array {v0, v1}, [Lcom/sigmob/sdk/base/models/PlacementType;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/PlacementType;->$VALUES:[Lcom/sigmob/sdk/base/models/PlacementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/PlacementType;
    .locals 1

    const-class v0, Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/models/PlacementType;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/models/PlacementType;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/models/PlacementType;->$VALUES:[Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/models/PlacementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/models/PlacementType;

    return-object v0
.end method


# virtual methods
.method public toJavascriptString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

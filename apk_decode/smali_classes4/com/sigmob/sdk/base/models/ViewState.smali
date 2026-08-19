.class public final enum Lcom/sigmob/sdk/base/models/ViewState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/models/ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/sdk/base/models/ViewState;

.field public static final enum DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

.field public static final enum EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

.field public static final enum HIDDEN:Lcom/sigmob/sdk/base/models/ViewState;

.field public static final enum LOADING:Lcom/sigmob/sdk/base/models/ViewState;

.field public static final enum RESIZED:Lcom/sigmob/sdk/base/models/ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/sigmob/sdk/base/models/ViewState;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/models/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/ViewState;->LOADING:Lcom/sigmob/sdk/base/models/ViewState;

    new-instance v1, Lcom/sigmob/sdk/base/models/ViewState;

    const-string v2, "DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/base/models/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/base/models/ViewState;->DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

    new-instance v2, Lcom/sigmob/sdk/base/models/ViewState;

    const-string v3, "RESIZED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/sigmob/sdk/base/models/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sigmob/sdk/base/models/ViewState;->RESIZED:Lcom/sigmob/sdk/base/models/ViewState;

    new-instance v3, Lcom/sigmob/sdk/base/models/ViewState;

    const-string v4, "EXPANDED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/sigmob/sdk/base/models/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/sdk/base/models/ViewState;->EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

    new-instance v4, Lcom/sigmob/sdk/base/models/ViewState;

    const-string v5, "HIDDEN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/sigmob/sdk/base/models/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sigmob/sdk/base/models/ViewState;->HIDDEN:Lcom/sigmob/sdk/base/models/ViewState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sigmob/sdk/base/models/ViewState;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ViewState;->$VALUES:[Lcom/sigmob/sdk/base/models/ViewState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ViewState;
    .locals 1

    const-class v0, Lcom/sigmob/sdk/base/models/ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/models/ViewState;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/models/ViewState;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->$VALUES:[Lcom/sigmob/sdk/base/models/ViewState;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/models/ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/models/ViewState;

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

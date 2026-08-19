.class public final enum Lcom/sigmob/sdk/base/services/g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/services/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/services/g;

.field public static final enum b:Lcom/sigmob/sdk/base/services/g;

.field public static final enum c:Lcom/sigmob/sdk/base/services/g;

.field private static final synthetic d:[Lcom/sigmob/sdk/base/services/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sigmob/sdk/base/services/g;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/services/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/services/g;->a:Lcom/sigmob/sdk/base/services/g;

    new-instance v1, Lcom/sigmob/sdk/base/services/g;

    const-string v2, "STOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/base/services/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/base/services/g;->b:Lcom/sigmob/sdk/base/services/g;

    new-instance v2, Lcom/sigmob/sdk/base/services/g;

    const-string v3, "FAILED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/sigmob/sdk/base/services/g;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sigmob/sdk/base/services/g;->c:Lcom/sigmob/sdk/base/services/g;

    filled-new-array {v0, v1, v2}, [Lcom/sigmob/sdk/base/services/g;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/services/g;->d:[Lcom/sigmob/sdk/base/services/g;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/services/g;
    .locals 1

    const-class v0, Lcom/sigmob/sdk/base/services/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/services/g;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/services/g;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/services/g;->d:[Lcom/sigmob/sdk/base/services/g;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/services/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/services/g;

    return-object v0
.end method

.class public final enum Lcom/sigmob/sdk/base/views/n$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/views/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/views/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/views/n$a;

.field public static final enum b:Lcom/sigmob/sdk/base/views/n$a;

.field public static final enum c:Lcom/sigmob/sdk/base/views/n$a;

.field private static final synthetic d:[Lcom/sigmob/sdk/base/views/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sigmob/sdk/base/views/n$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/views/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/views/n$a;->a:Lcom/sigmob/sdk/base/views/n$a;

    new-instance v1, Lcom/sigmob/sdk/base/views/n$a;

    const-string v2, "IMAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/base/views/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/base/views/n$a;->b:Lcom/sigmob/sdk/base/views/n$a;

    new-instance v2, Lcom/sigmob/sdk/base/views/n$a;

    const-string v3, "JAVASCRIPT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/sigmob/sdk/base/views/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sigmob/sdk/base/views/n$a;->c:Lcom/sigmob/sdk/base/views/n$a;

    filled-new-array {v0, v1, v2}, [Lcom/sigmob/sdk/base/views/n$a;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/views/n$a;->d:[Lcom/sigmob/sdk/base/views/n$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/views/n$a;
    .locals 1

    const-class v0, Lcom/sigmob/sdk/base/views/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/views/n$a;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/views/n$a;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/views/n$a;->d:[Lcom/sigmob/sdk/base/views/n$a;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/views/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/views/n$a;

    return-object v0
.end method

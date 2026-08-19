.class public final enum Lcom/sigmob/sdk/base/views/n$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/views/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/views/n$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/views/n$b;

.field public static final enum b:Lcom/sigmob/sdk/base/views/n$b;

.field public static final enum c:Lcom/sigmob/sdk/base/views/n$b;

.field public static final enum d:Lcom/sigmob/sdk/base/views/n$b;

.field public static final enum e:Lcom/sigmob/sdk/base/views/n$b;

.field private static final synthetic f:[Lcom/sigmob/sdk/base/views/n$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/sigmob/sdk/base/views/n$b;

    const-string v1, "STATIC_RESOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/views/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/views/n$b;->a:Lcom/sigmob/sdk/base/views/n$b;

    new-instance v1, Lcom/sigmob/sdk/base/views/n$b;

    const-string v2, "HTML_RESOURCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/base/views/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/base/views/n$b;->b:Lcom/sigmob/sdk/base/views/n$b;

    new-instance v2, Lcom/sigmob/sdk/base/views/n$b;

    const-string v3, "IFRAME_RESOURCE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/sigmob/sdk/base/views/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sigmob/sdk/base/views/n$b;->c:Lcom/sigmob/sdk/base/views/n$b;

    new-instance v3, Lcom/sigmob/sdk/base/views/n$b;

    const-string v4, "NATIVE_RESOURCE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/sigmob/sdk/base/views/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/sdk/base/views/n$b;->d:Lcom/sigmob/sdk/base/views/n$b;

    new-instance v4, Lcom/sigmob/sdk/base/views/n$b;

    const-string v5, "URL_RESOURCE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/sigmob/sdk/base/views/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sigmob/sdk/base/views/n$b;->e:Lcom/sigmob/sdk/base/views/n$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sigmob/sdk/base/views/n$b;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/views/n$b;->f:[Lcom/sigmob/sdk/base/views/n$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/views/n$b;
    .locals 1

    const-class v0, Lcom/sigmob/sdk/base/views/n$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/views/n$b;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/views/n$b;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/views/n$b;->f:[Lcom/sigmob/sdk/base/views/n$b;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/views/n$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/views/n$b;

    return-object v0
.end method

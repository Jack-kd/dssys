.class public final enum Lcom/fl/saas/q0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final enum b:Lcom/fl/saas/q0;

.field public static final enum c:Lcom/fl/saas/q0;

.field public static final enum d:Lcom/fl/saas/q0;

.field private static final synthetic e:[Lcom/fl/saas/q0;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/fl/saas/q0;

    .line 2
    .line 3
    const-string v1, "VERTICAL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/fl/saas/q0;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/fl/saas/q0;->b:Lcom/fl/saas/q0;

    .line 10
    .line 11
    new-instance v0, Lcom/fl/saas/q0;

    .line 12
    .line 13
    const-string v1, "HORIZONTAL"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/fl/saas/q0;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/fl/saas/q0;->c:Lcom/fl/saas/q0;

    .line 20
    .line 21
    new-instance v0, Lcom/fl/saas/q0;

    .line 22
    .line 23
    const-string v1, "ENVELOPE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/fl/saas/q0;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/fl/saas/q0;->d:Lcom/fl/saas/q0;

    .line 30
    .line 31
    invoke-static {}, Lcom/fl/saas/q0;->a()[Lcom/fl/saas/q0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/fl/saas/q0;->e:[Lcom/fl/saas/q0;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/fl/saas/q0;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Lcom/fl/saas/q0;
    .locals 5

    .line 2
    invoke-static {}, Lcom/fl/saas/q0;->values()[Lcom/fl/saas/q0;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/fl/saas/q0;->b()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/fl/saas/q0;->b:Lcom/fl/saas/q0;

    return-object p0
.end method

.method private static synthetic a()[Lcom/fl/saas/q0;
    .locals 3

    .line 1
    sget-object v0, Lcom/fl/saas/q0;->b:Lcom/fl/saas/q0;

    sget-object v1, Lcom/fl/saas/q0;->c:Lcom/fl/saas/q0;

    sget-object v2, Lcom/fl/saas/q0;->d:Lcom/fl/saas/q0;

    filled-new-array {v0, v1, v2}, [Lcom/fl/saas/q0;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fl/saas/q0;
    .locals 1

    .line 1
    const-class v0, Lcom/fl/saas/q0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fl/saas/q0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fl/saas/q0;
    .locals 1

    .line 1
    sget-object v0, Lcom/fl/saas/q0;->e:[Lcom/fl/saas/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fl/saas/q0;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fl/saas/q0;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fl/saas/q0;->a:I

    .line 2
    .line 3
    return v0
.end method

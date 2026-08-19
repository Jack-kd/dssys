.class public final enum Lcom/varbto/internal/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/varbto/internal/g;

.field public static final enum b:Lcom/varbto/internal/g;

.field public static final enum c:Lcom/varbto/internal/g;

.field public static final enum d:Lcom/varbto/internal/g;

.field public static final enum e:Lcom/varbto/internal/g;

.field public static final synthetic f:[Lcom/varbto/internal/g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/varbto/internal/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "S"

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lcom/varbto/internal/g;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/varbto/internal/g;->a:Lcom/varbto/internal/g;

    .line 10
    .line 11
    new-instance v1, Lcom/varbto/internal/g;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const-string v3, "A"

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Lcom/varbto/internal/g;-><init>(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/varbto/internal/g;->b:Lcom/varbto/internal/g;

    .line 20
    .line 21
    new-instance v2, Lcom/varbto/internal/g;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    const-string v4, "B"

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Lcom/varbto/internal/g;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/varbto/internal/g;->c:Lcom/varbto/internal/g;

    .line 30
    .line 31
    new-instance v3, Lcom/varbto/internal/g;

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    const-string v5, "C"

    .line 35
    .line 36
    invoke-direct {v3, v4, v5}, Lcom/varbto/internal/g;-><init>(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/varbto/internal/g;->d:Lcom/varbto/internal/g;

    .line 40
    .line 41
    new-instance v4, Lcom/varbto/internal/g;

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    const-string v6, "UNKNOWN"

    .line 45
    .line 46
    invoke-direct {v4, v5, v6}, Lcom/varbto/internal/g;-><init>(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/varbto/internal/g;->e:Lcom/varbto/internal/g;

    .line 50
    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/varbto/internal/g;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/varbto/internal/g;->f:[Lcom/varbto/internal/g;

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/varbto/internal/g;
    .locals 1

    .line 1
    const-class v0, Lcom/varbto/internal/g;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/varbto/internal/g;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/varbto/internal/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/varbto/internal/g;->f:[Lcom/varbto/internal/g;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/varbto/internal/g;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/varbto/internal/g;

    .line 8
    .line 9
    return-object v0
.end method

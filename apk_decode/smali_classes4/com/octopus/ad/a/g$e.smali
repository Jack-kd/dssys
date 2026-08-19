.class public final enum Lcom/octopus/ad/a/g$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/a/g$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/octopus/ad/a/g$e;

.field public static final enum b:Lcom/octopus/ad/a/g$e;

.field public static final enum c:Lcom/octopus/ad/a/g$e;

.field public static final enum d:Lcom/octopus/ad/a/g$e;

.field private static final synthetic f:[Lcom/octopus/ad/a/g$e;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/octopus/ad/a/g$e;

    .line 2
    .line 3
    const-string v1, "PLATFORM_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/octopus/ad/a/g$e;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/octopus/ad/a/g$e;->a:Lcom/octopus/ad/a/g$e;

    .line 10
    .line 11
    new-instance v1, Lcom/octopus/ad/a/g$e;

    .line 12
    .line 13
    const-string v2, "PLATFORM_IOS"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/octopus/ad/a/g$e;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/octopus/ad/a/g$e;->b:Lcom/octopus/ad/a/g$e;

    .line 20
    .line 21
    new-instance v2, Lcom/octopus/ad/a/g$e;

    .line 22
    .line 23
    const-string v3, "PLATFORM_ANDROID"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/octopus/ad/a/g$e;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/octopus/ad/a/g$e;->c:Lcom/octopus/ad/a/g$e;

    .line 30
    .line 31
    new-instance v3, Lcom/octopus/ad/a/g$e;

    .line 32
    .line 33
    const-string v4, "PLATFORM_OTHER"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Lcom/octopus/ad/a/g$e;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/octopus/ad/a/g$e;->d:Lcom/octopus/ad/a/g$e;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lcom/octopus/ad/a/g$e;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/octopus/ad/a/g$e;->f:[Lcom/octopus/ad/a/g$e;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/octopus/ad/a/g$e;->e:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/a/g$e;
    .locals 1

    .line 1
    const-class v0, Lcom/octopus/ad/a/g$e;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/octopus/ad/a/g$e;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/a/g$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/a/g$e;->f:[Lcom/octopus/ad/a/g$e;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/octopus/ad/a/g$e;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/octopus/ad/a/g$e;

    .line 8
    .line 9
    return-object v0
.end method

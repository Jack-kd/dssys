.class public final enum Lorg/seamless/swing/logging/LogController$Expiration;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/swing/logging/LogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Expiration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/seamless/swing/logging/LogController$Expiration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/seamless/swing/logging/LogController$Expiration;

.field public static final enum FIVE_MINUTES:Lorg/seamless/swing/logging/LogController$Expiration;

.field public static final enum NEVER:Lorg/seamless/swing/logging/LogController$Expiration;

.field public static final enum SIXTY_SECONDS:Lorg/seamless/swing/logging/LogController$Expiration;

.field public static final enum TEN_SECONDS:Lorg/seamless/swing/logging/LogController$Expiration;


# instance fields
.field private label:Ljava/lang/String;

.field private seconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lorg/seamless/swing/logging/LogController$Expiration;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const-string v2, "10 Seconds"

    .line 6
    .line 7
    const-string v3, "TEN_SECONDS"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/seamless/swing/logging/LogController$Expiration;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/seamless/swing/logging/LogController$Expiration;->TEN_SECONDS:Lorg/seamless/swing/logging/LogController$Expiration;

    .line 14
    .line 15
    new-instance v1, Lorg/seamless/swing/logging/LogController$Expiration;

    .line 16
    .line 17
    const/16 v2, 0x3c

    .line 18
    .line 19
    const-string v3, "60 Seconds"

    .line 20
    .line 21
    const-string v4, "SIXTY_SECONDS"

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-direct {v1, v4, v5, v2, v3}, Lorg/seamless/swing/logging/LogController$Expiration;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lorg/seamless/swing/logging/LogController$Expiration;->SIXTY_SECONDS:Lorg/seamless/swing/logging/LogController$Expiration;

    .line 28
    .line 29
    new-instance v2, Lorg/seamless/swing/logging/LogController$Expiration;

    .line 30
    .line 31
    const/16 v3, 0x12c

    .line 32
    .line 33
    const-string v4, "5 Minutes"

    .line 34
    .line 35
    const-string v5, "FIVE_MINUTES"

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    invoke-direct {v2, v5, v6, v3, v4}, Lorg/seamless/swing/logging/LogController$Expiration;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Lorg/seamless/swing/logging/LogController$Expiration;->FIVE_MINUTES:Lorg/seamless/swing/logging/LogController$Expiration;

    .line 42
    .line 43
    new-instance v3, Lorg/seamless/swing/logging/LogController$Expiration;

    .line 44
    .line 45
    const v4, 0x7fffffff

    .line 46
    .line 47
    .line 48
    const-string v5, "Never"

    .line 49
    .line 50
    const-string v6, "NEVER"

    .line 51
    .line 52
    const/4 v7, 0x3

    .line 53
    invoke-direct {v3, v6, v7, v4, v5}, Lorg/seamless/swing/logging/LogController$Expiration;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v3, Lorg/seamless/swing/logging/LogController$Expiration;->NEVER:Lorg/seamless/swing/logging/LogController$Expiration;

    .line 57
    .line 58
    filled-new-array {v0, v1, v2, v3}, [Lorg/seamless/swing/logging/LogController$Expiration;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lorg/seamless/swing/logging/LogController$Expiration;->$VALUES:[Lorg/seamless/swing/logging/LogController$Expiration;

    .line 63
    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/seamless/swing/logging/LogController$Expiration;->seconds:I

    .line 5
    .line 6
    iput-object p4, p0, Lorg/seamless/swing/logging/LogController$Expiration;->label:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/swing/logging/LogController$Expiration;
    .locals 1

    .line 1
    const-class v0, Lorg/seamless/swing/logging/LogController$Expiration;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/seamless/swing/logging/LogController$Expiration;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/seamless/swing/logging/LogController$Expiration;
    .locals 1

    .line 1
    sget-object v0, Lorg/seamless/swing/logging/LogController$Expiration;->$VALUES:[Lorg/seamless/swing/logging/LogController$Expiration;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/seamless/swing/logging/LogController$Expiration;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/seamless/swing/logging/LogController$Expiration;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$Expiration;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/seamless/swing/logging/LogController$Expiration;->seconds:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogController$Expiration;->getLabel()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

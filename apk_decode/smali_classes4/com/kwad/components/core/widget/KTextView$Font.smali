.class public final enum Lcom/kwad/components/core/widget/KTextView$Font;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/widget/KTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Font"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/components/core/widget/KTextView$Font;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/components/core/widget/KTextView$Font;

.field public static final enum AvenirNextBold:Lcom/kwad/components/core/widget/KTextView$Font;

.field public static final enum AvenirNextBoldItalic:Lcom/kwad/components/core/widget/KTextView$Font;

.field public static final enum DIN:Lcom/kwad/components/core/widget/KTextView$Font;

.field public static final enum HYQiHei75S:Lcom/kwad/components/core/widget/KTextView$Font;

.field public static final enum HYQiHei80S:Lcom/kwad/components/core/widget/KTextView$Font;

.field public static final enum HYQiHei90S:Lcom/kwad/components/core/widget/KTextView$Font;

.field public static final enum SIYuan:Lcom/kwad/components/core/widget/KTextView$Font;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/kwad/components/core/widget/KTextView$Font;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "HYQiHei_75S"

    .line 5
    .line 6
    const-string v3, "HYQiHei75S"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/kwad/components/core/widget/KTextView$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/kwad/components/core/widget/KTextView$Font;->HYQiHei75S:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 12
    .line 13
    new-instance v1, Lcom/kwad/components/core/widget/KTextView$Font;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "HYQiHei_80S"

    .line 17
    .line 18
    const-string v4, "HYQiHei80S"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lcom/kwad/components/core/widget/KTextView$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/kwad/components/core/widget/KTextView$Font;->HYQiHei80S:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 24
    .line 25
    new-instance v2, Lcom/kwad/components/core/widget/KTextView$Font;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string v4, "HYQiHei_90S"

    .line 29
    .line 30
    const-string v5, "HYQiHei90S"

    .line 31
    .line 32
    invoke-direct {v2, v5, v3, v4}, Lcom/kwad/components/core/widget/KTextView$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/kwad/components/core/widget/KTextView$Font;->HYQiHei90S:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 36
    .line 37
    new-instance v3, Lcom/kwad/components/core/widget/KTextView$Font;

    .line 38
    .line 39
    const-string v4, "SIYuan"

    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    invoke-direct {v3, v4, v5, v4}, Lcom/kwad/components/core/widget/KTextView$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v3, Lcom/kwad/components/core/widget/KTextView$Font;->SIYuan:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 46
    .line 47
    new-instance v4, Lcom/kwad/components/core/widget/KTextView$Font;

    .line 48
    .line 49
    const/4 v5, 0x4

    .line 50
    const-string v6, "AvenirNext-Bold"

    .line 51
    .line 52
    const-string v7, "AvenirNextBold"

    .line 53
    .line 54
    invoke-direct {v4, v7, v5, v6}, Lcom/kwad/components/core/widget/KTextView$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v4, Lcom/kwad/components/core/widget/KTextView$Font;->AvenirNextBold:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 58
    .line 59
    new-instance v5, Lcom/kwad/components/core/widget/KTextView$Font;

    .line 60
    .line 61
    const/4 v6, 0x5

    .line 62
    const-string v7, "AvenirNext-Boldltalic"

    .line 63
    .line 64
    const-string v8, "AvenirNextBoldItalic"

    .line 65
    .line 66
    invoke-direct {v5, v8, v6, v7}, Lcom/kwad/components/core/widget/KTextView$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v5, Lcom/kwad/components/core/widget/KTextView$Font;->AvenirNextBoldItalic:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 70
    .line 71
    new-instance v6, Lcom/kwad/components/core/widget/KTextView$Font;

    .line 72
    .line 73
    const/4 v7, 0x6

    .line 74
    const-string v8, "din"

    .line 75
    .line 76
    const-string v9, "DIN"

    .line 77
    .line 78
    invoke-direct {v6, v9, v7, v8}, Lcom/kwad/components/core/widget/KTextView$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v6, Lcom/kwad/components/core/widget/KTextView$Font;->DIN:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 82
    .line 83
    filled-new-array/range {v0 .. v6}, [Lcom/kwad/components/core/widget/KTextView$Font;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lcom/kwad/components/core/widget/KTextView$Font;->$VALUES:[Lcom/kwad/components/core/widget/KTextView$Font;

    .line 88
    .line 89
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

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/kwad/components/core/widget/KTextView$Font;->name:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/components/core/widget/KTextView$Font;
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/components/core/widget/KTextView$Font;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/kwad/components/core/widget/KTextView$Font;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/kwad/components/core/widget/KTextView$Font;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/core/widget/KTextView$Font;->$VALUES:[Lcom/kwad/components/core/widget/KTextView$Font;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/kwad/components/core/widget/KTextView$Font;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/kwad/components/core/widget/KTextView$Font;

    .line 8
    .line 9
    return-object v0
.end method

.class public final enum Lcom/meishu/sdk/core/ad/AdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/meishu/sdk/core/ad/AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meishu/sdk/core/ad/AdType;

.field public static final enum BANNER:Lcom/meishu/sdk/core/ad/AdType;

.field public static final enum DRAW:Lcom/meishu/sdk/core/ad/AdType;

.field public static final enum FEED:Lcom/meishu/sdk/core/ad/AdType;

.field public static final enum FEED_MIX:Lcom/meishu/sdk/core/ad/AdType;

.field public static final enum FEED_PRE_RENDER:Lcom/meishu/sdk/core/ad/AdType;

.field public static final enum FULL_SCREEN_VIDEO:Lcom/meishu/sdk/core/ad/AdType;

.field public static final enum INTERSTITIAL:Lcom/meishu/sdk/core/ad/AdType;

.field public static final enum PASTER:Lcom/meishu/sdk/core/ad/AdType;

.field public static final enum REWARD:Lcom/meishu/sdk/core/ad/AdType;

.field public static final enum SPLASH:Lcom/meishu/sdk/core/ad/AdType;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/ad/AdType;

    .line 2
    .line 3
    const-string v1, "FEED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/meishu/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/meishu/sdk/core/ad/AdType;->FEED:Lcom/meishu/sdk/core/ad/AdType;

    .line 11
    .line 12
    new-instance v1, Lcom/meishu/sdk/core/ad/AdType;

    .line 13
    .line 14
    const-string v2, "FEED_PRE_RENDER"

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/meishu/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/meishu/sdk/core/ad/AdType;->FEED_PRE_RENDER:Lcom/meishu/sdk/core/ad/AdType;

    .line 21
    .line 22
    new-instance v2, Lcom/meishu/sdk/core/ad/AdType;

    .line 23
    .line 24
    const-string v3, "FEED_MIX"

    .line 25
    .line 26
    const/16 v5, 0xa

    .line 27
    .line 28
    invoke-direct {v2, v3, v4, v5}, Lcom/meishu/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/meishu/sdk/core/ad/AdType;->FEED_MIX:Lcom/meishu/sdk/core/ad/AdType;

    .line 32
    .line 33
    new-instance v3, Lcom/meishu/sdk/core/ad/AdType;

    .line 34
    .line 35
    const-string v4, "BANNER"

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    invoke-direct {v3, v4, v5, v5}, Lcom/meishu/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    sput-object v3, Lcom/meishu/sdk/core/ad/AdType;->BANNER:Lcom/meishu/sdk/core/ad/AdType;

    .line 42
    .line 43
    new-instance v4, Lcom/meishu/sdk/core/ad/AdType;

    .line 44
    .line 45
    const-string v5, "SPLASH"

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    invoke-direct {v4, v5, v6, v6}, Lcom/meishu/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v4, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    .line 52
    .line 53
    new-instance v5, Lcom/meishu/sdk/core/ad/AdType;

    .line 54
    .line 55
    const-string v6, "INTERSTITIAL"

    .line 56
    .line 57
    const/4 v7, 0x5

    .line 58
    invoke-direct {v5, v6, v7, v7}, Lcom/meishu/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    sput-object v5, Lcom/meishu/sdk/core/ad/AdType;->INTERSTITIAL:Lcom/meishu/sdk/core/ad/AdType;

    .line 62
    .line 63
    new-instance v6, Lcom/meishu/sdk/core/ad/AdType;

    .line 64
    .line 65
    const-string v7, "PASTER"

    .line 66
    .line 67
    const/4 v8, 0x6

    .line 68
    invoke-direct {v6, v7, v8, v8}, Lcom/meishu/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v6, Lcom/meishu/sdk/core/ad/AdType;->PASTER:Lcom/meishu/sdk/core/ad/AdType;

    .line 72
    .line 73
    new-instance v7, Lcom/meishu/sdk/core/ad/AdType;

    .line 74
    .line 75
    const-string v8, "REWARD"

    .line 76
    .line 77
    const/4 v9, 0x7

    .line 78
    invoke-direct {v7, v8, v9, v9}, Lcom/meishu/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v7, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 82
    .line 83
    new-instance v8, Lcom/meishu/sdk/core/ad/AdType;

    .line 84
    .line 85
    const-string v9, "DRAW"

    .line 86
    .line 87
    const/16 v10, 0x8

    .line 88
    .line 89
    invoke-direct {v8, v9, v10, v10}, Lcom/meishu/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    sput-object v8, Lcom/meishu/sdk/core/ad/AdType;->DRAW:Lcom/meishu/sdk/core/ad/AdType;

    .line 93
    .line 94
    new-instance v9, Lcom/meishu/sdk/core/ad/AdType;

    .line 95
    .line 96
    const-string v10, "FULL_SCREEN_VIDEO"

    .line 97
    .line 98
    const/16 v11, 0x9

    .line 99
    .line 100
    invoke-direct {v9, v10, v11, v11}, Lcom/meishu/sdk/core/ad/AdType;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v9, Lcom/meishu/sdk/core/ad/AdType;->FULL_SCREEN_VIDEO:Lcom/meishu/sdk/core/ad/AdType;

    .line 104
    .line 105
    filled-new-array/range {v0 .. v9}, [Lcom/meishu/sdk/core/ad/AdType;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lcom/meishu/sdk/core/ad/AdType;->$VALUES:[Lcom/meishu/sdk/core/ad/AdType;

    .line 110
    .line 111
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
    iput p3, p0, Lcom/meishu/sdk/core/ad/AdType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/AdType;
    .locals 1

    .line 1
    const-class v0, Lcom/meishu/sdk/core/ad/AdType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/meishu/sdk/core/ad/AdType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/meishu/sdk/core/ad/AdType;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->$VALUES:[Lcom/meishu/sdk/core/ad/AdType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/meishu/sdk/core/ad/AdType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/meishu/sdk/core/ad/AdType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/AdType;->value:I

    .line 2
    .line 3
    return v0
.end method

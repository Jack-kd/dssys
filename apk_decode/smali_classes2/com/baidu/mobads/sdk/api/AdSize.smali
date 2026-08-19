.class public final enum Lcom/baidu/mobads/sdk/api/AdSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mobads/sdk/api/AdSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/mobads/sdk/api/AdSize;

.field public static final enum Banner:Lcom/baidu/mobads/sdk/api/AdSize;

.field public static final enum FeedH5TemplateNative:Lcom/baidu/mobads/sdk/api/AdSize;

.field public static final enum FeedNative:Lcom/baidu/mobads/sdk/api/AdSize;

.field public static final enum InterstitialForVideoBeforePlay:Lcom/baidu/mobads/sdk/api/AdSize;

.field public static final enum InterstitialForVideoPausePlay:Lcom/baidu/mobads/sdk/api/AdSize;

.field public static final enum InterstitialGame:Lcom/baidu/mobads/sdk/api/AdSize;

.field public static final enum InterstitialOther:Lcom/baidu/mobads/sdk/api/AdSize;

.field public static final enum InterstitialReader:Lcom/baidu/mobads/sdk/api/AdSize;

.field public static final enum InterstitialRefresh:Lcom/baidu/mobads/sdk/api/AdSize;

.field public static final enum PrerollVideoNative:Lcom/baidu/mobads/sdk/api/AdSize;

.field public static final enum RewardVideo:Lcom/baidu/mobads/sdk/api/AdSize;

.field public static final enum Square:Lcom/baidu/mobads/sdk/api/AdSize;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 2
    .line 3
    const-string v1, "Banner"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mobads/sdk/api/AdSize;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/baidu/mobads/sdk/api/AdSize;->Banner:Lcom/baidu/mobads/sdk/api/AdSize;

    .line 10
    .line 11
    new-instance v1, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 12
    .line 13
    const-string v2, "Square"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/baidu/mobads/sdk/api/AdSize;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/baidu/mobads/sdk/api/AdSize;->Square:Lcom/baidu/mobads/sdk/api/AdSize;

    .line 20
    .line 21
    new-instance v2, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 22
    .line 23
    const-string v3, "InterstitialGame"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    const/4 v5, 0x6

    .line 27
    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/mobads/sdk/api/AdSize;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/baidu/mobads/sdk/api/AdSize;->InterstitialGame:Lcom/baidu/mobads/sdk/api/AdSize;

    .line 31
    .line 32
    new-instance v3, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 33
    .line 34
    const-string v4, "InterstitialReader"

    .line 35
    .line 36
    const/4 v6, 0x3

    .line 37
    const/4 v7, 0x7

    .line 38
    invoke-direct {v3, v4, v6, v7}, Lcom/baidu/mobads/sdk/api/AdSize;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    sput-object v3, Lcom/baidu/mobads/sdk/api/AdSize;->InterstitialReader:Lcom/baidu/mobads/sdk/api/AdSize;

    .line 42
    .line 43
    new-instance v4, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 44
    .line 45
    const-string v6, "InterstitialRefresh"

    .line 46
    .line 47
    const/4 v8, 0x4

    .line 48
    const/16 v9, 0x9

    .line 49
    .line 50
    invoke-direct {v4, v6, v8, v9}, Lcom/baidu/mobads/sdk/api/AdSize;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    sput-object v4, Lcom/baidu/mobads/sdk/api/AdSize;->InterstitialRefresh:Lcom/baidu/mobads/sdk/api/AdSize;

    .line 54
    .line 55
    move v6, v5

    .line 56
    new-instance v5, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 57
    .line 58
    const-string v8, "InterstitialOther"

    .line 59
    .line 60
    const/4 v10, 0x5

    .line 61
    const/16 v11, 0xa

    .line 62
    .line 63
    invoke-direct {v5, v8, v10, v11}, Lcom/baidu/mobads/sdk/api/AdSize;-><init>(Ljava/lang/String;II)V

    .line 64
    .line 65
    .line 66
    sput-object v5, Lcom/baidu/mobads/sdk/api/AdSize;->InterstitialOther:Lcom/baidu/mobads/sdk/api/AdSize;

    .line 67
    .line 68
    move v8, v6

    .line 69
    new-instance v6, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 70
    .line 71
    const-string v10, "InterstitialForVideoBeforePlay"

    .line 72
    .line 73
    const/16 v12, 0xc

    .line 74
    .line 75
    invoke-direct {v6, v10, v8, v12}, Lcom/baidu/mobads/sdk/api/AdSize;-><init>(Ljava/lang/String;II)V

    .line 76
    .line 77
    .line 78
    sput-object v6, Lcom/baidu/mobads/sdk/api/AdSize;->InterstitialForVideoBeforePlay:Lcom/baidu/mobads/sdk/api/AdSize;

    .line 79
    .line 80
    move v8, v7

    .line 81
    new-instance v7, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 82
    .line 83
    const-string v10, "InterstitialForVideoPausePlay"

    .line 84
    .line 85
    const/16 v12, 0xd

    .line 86
    .line 87
    invoke-direct {v7, v10, v8, v12}, Lcom/baidu/mobads/sdk/api/AdSize;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v7, Lcom/baidu/mobads/sdk/api/AdSize;->InterstitialForVideoPausePlay:Lcom/baidu/mobads/sdk/api/AdSize;

    .line 91
    .line 92
    new-instance v8, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 93
    .line 94
    const/16 v10, 0x8

    .line 95
    .line 96
    const/16 v12, 0xe

    .line 97
    .line 98
    const-string v13, "RewardVideo"

    .line 99
    .line 100
    invoke-direct {v8, v13, v10, v12}, Lcom/baidu/mobads/sdk/api/AdSize;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v8, Lcom/baidu/mobads/sdk/api/AdSize;->RewardVideo:Lcom/baidu/mobads/sdk/api/AdSize;

    .line 104
    .line 105
    move v10, v9

    .line 106
    new-instance v9, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 107
    .line 108
    const-string v12, "PrerollVideoNative"

    .line 109
    .line 110
    const/16 v13, 0xf

    .line 111
    .line 112
    invoke-direct {v9, v12, v10, v13}, Lcom/baidu/mobads/sdk/api/AdSize;-><init>(Ljava/lang/String;II)V

    .line 113
    .line 114
    .line 115
    sput-object v9, Lcom/baidu/mobads/sdk/api/AdSize;->PrerollVideoNative:Lcom/baidu/mobads/sdk/api/AdSize;

    .line 116
    .line 117
    new-instance v10, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 118
    .line 119
    const-string v12, "FeedNative"

    .line 120
    .line 121
    const/16 v13, 0x10

    .line 122
    .line 123
    invoke-direct {v10, v12, v11, v13}, Lcom/baidu/mobads/sdk/api/AdSize;-><init>(Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    sput-object v10, Lcom/baidu/mobads/sdk/api/AdSize;->FeedNative:Lcom/baidu/mobads/sdk/api/AdSize;

    .line 127
    .line 128
    new-instance v11, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 129
    .line 130
    const/16 v12, 0xb

    .line 131
    .line 132
    const/16 v13, 0x11

    .line 133
    .line 134
    const-string v14, "FeedH5TemplateNative"

    .line 135
    .line 136
    invoke-direct {v11, v14, v12, v13}, Lcom/baidu/mobads/sdk/api/AdSize;-><init>(Ljava/lang/String;II)V

    .line 137
    .line 138
    .line 139
    sput-object v11, Lcom/baidu/mobads/sdk/api/AdSize;->FeedH5TemplateNative:Lcom/baidu/mobads/sdk/api/AdSize;

    .line 140
    .line 141
    filled-new-array/range {v0 .. v11}, [Lcom/baidu/mobads/sdk/api/AdSize;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sput-object v0, Lcom/baidu/mobads/sdk/api/AdSize;->$VALUES:[Lcom/baidu/mobads/sdk/api/AdSize;

    .line 146
    .line 147
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
    iput p3, p0, Lcom/baidu/mobads/sdk/api/AdSize;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/AdSize;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/baidu/mobads/sdk/api/AdSize;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/baidu/mobads/sdk/api/AdSize;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/mobads/sdk/api/AdSize;->$VALUES:[Lcom/baidu/mobads/sdk/api/AdSize;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/baidu/mobads/sdk/api/AdSize;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/baidu/mobads/sdk/api/AdSize;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/api/AdSize;->value:I

    .line 2
    .line 3
    return v0
.end method

.class public final enum Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

.field public static final enum ACTION_BAR_BLACK_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

.field public static final enum ACTION_BAR_BLUE_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

.field public static final enum ACTION_BAR_COFFEE_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

.field public static final enum ACTION_BAR_GREEN_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

.field public static final enum ACTION_BAR_NAVYBLUE_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

.field public static final enum ACTION_BAR_RED_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

.field public static final enum ACTION_BAR_WHITE_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;


# instance fields
.field public mBackgroundColor:I

.field public mCloseColor:I

.field public mProgressColor:I

.field public mTitleColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 2
    .line 3
    const v5, -0xa9932e

    .line 4
    .line 5
    .line 6
    const v6, -0x50506

    .line 7
    .line 8
    .line 9
    const-string v1, "ACTION_BAR_WHITE_THEME"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const v3, -0x5b5b5c

    .line 13
    .line 14
    .line 15
    const v4, -0x686869

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;-><init>(Ljava/lang/String;IIIII)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->ACTION_BAR_WHITE_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 22
    .line 23
    new-instance v1, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 24
    .line 25
    const/16 v6, -0x30de

    .line 26
    .line 27
    const v7, -0x13bfc4

    .line 28
    .line 29
    .line 30
    const-string v2, "ACTION_BAR_RED_THEME"

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v4, -0x1

    .line 34
    const/4 v5, -0x1

    .line 35
    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;-><init>(Ljava/lang/String;IIIII)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->ACTION_BAR_RED_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 39
    .line 40
    new-instance v2, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 41
    .line 42
    const v7, -0xa9932e

    .line 43
    .line 44
    .line 45
    const v8, -0xda3f5f

    .line 46
    .line 47
    .line 48
    const-string v3, "ACTION_BAR_GREEN_THEME"

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    const/4 v6, -0x1

    .line 52
    invoke-direct/range {v2 .. v8}, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;-><init>(Ljava/lang/String;IIIII)V

    .line 53
    .line 54
    .line 55
    sput-object v2, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->ACTION_BAR_GREEN_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 56
    .line 57
    new-instance v3, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 58
    .line 59
    const v8, 0xffcf22

    .line 60
    .line 61
    .line 62
    const v9, -0xd8d4b2

    .line 63
    .line 64
    .line 65
    const-string v4, "ACTION_BAR_NAVYBLUE_THEME"

    .line 66
    .line 67
    const/4 v5, 0x3

    .line 68
    const/4 v7, -0x1

    .line 69
    invoke-direct/range {v3 .. v9}, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;-><init>(Ljava/lang/String;IIIII)V

    .line 70
    .line 71
    .line 72
    sput-object v3, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->ACTION_BAR_NAVYBLUE_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 73
    .line 74
    new-instance v4, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 75
    .line 76
    const/16 v9, -0x30de

    .line 77
    .line 78
    const v10, -0xd3a558

    .line 79
    .line 80
    .line 81
    const-string v5, "ACTION_BAR_BLUE_THEME"

    .line 82
    .line 83
    const/4 v6, 0x4

    .line 84
    const/4 v8, -0x1

    .line 85
    invoke-direct/range {v4 .. v10}, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;-><init>(Ljava/lang/String;IIIII)V

    .line 86
    .line 87
    .line 88
    sput-object v4, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->ACTION_BAR_BLUE_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 89
    .line 90
    new-instance v5, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 91
    .line 92
    const/16 v10, -0x30de

    .line 93
    .line 94
    const v11, -0xabbdbe

    .line 95
    .line 96
    .line 97
    const-string v6, "ACTION_BAR_COFFEE_THEME"

    .line 98
    .line 99
    const/4 v7, 0x5

    .line 100
    const/4 v9, -0x1

    .line 101
    invoke-direct/range {v5 .. v11}, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;-><init>(Ljava/lang/String;IIIII)V

    .line 102
    .line 103
    .line 104
    sput-object v5, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->ACTION_BAR_COFFEE_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 105
    .line 106
    new-instance v6, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 107
    .line 108
    const/16 v11, -0x30de

    .line 109
    .line 110
    const v12, -0xd1ccca

    .line 111
    .line 112
    .line 113
    const-string v7, "ACTION_BAR_BLACK_THEME"

    .line 114
    .line 115
    const/4 v8, 0x6

    .line 116
    const/4 v10, -0x1

    .line 117
    invoke-direct/range {v6 .. v12}, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;-><init>(Ljava/lang/String;IIIII)V

    .line 118
    .line 119
    .line 120
    sput-object v6, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->ACTION_BAR_BLACK_THEME:Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 121
    .line 122
    filled-new-array/range {v0 .. v6}, [Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sput-object v0, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->$VALUES:[Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 127
    .line 128
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->mCloseColor:I

    .line 5
    .line 6
    iput p4, p0, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->mTitleColor:I

    .line 7
    .line 8
    iput p5, p0, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->mProgressColor:I

    .line 9
    .line 10
    iput p6, p0, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->mBackgroundColor:I

    .line 11
    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->$VALUES:[Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/baidu/mobads/sdk/api/ActionBarColorTheme;

    .line 8
    .line 9
    return-object v0
.end method

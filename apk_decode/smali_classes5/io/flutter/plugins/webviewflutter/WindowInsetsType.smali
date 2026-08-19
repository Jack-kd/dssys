.class public final enum Lio/flutter/plugins/webviewflutter/WindowInsetsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/WindowInsetsType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/plugins/webviewflutter/WindowInsetsType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/flutter/plugins/webviewflutter/WindowInsetsType;",
        "",
        "raw",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getRaw",
        "()I",
        "SYSTEM_BARS",
        "DISPLAY_CUTOUT",
        "CAPTION_BAR",
        "IME",
        "MANDATORY_SYSTEM_GESTURES",
        "NAVIGATION_BARS",
        "STATUS_BARS",
        "SYSTEM_GESTURES",
        "TAPPABLE_ELEMENT",
        "Companion",
        "webview_flutter_android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/a;

.field private static final synthetic $VALUES:[Lio/flutter/plugins/webviewflutter/WindowInsetsType;

.field public static final enum CAPTION_BAR:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

.field public static final Companion:Lio/flutter/plugins/webviewflutter/WindowInsetsType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DISPLAY_CUTOUT:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

.field public static final enum IME:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

.field public static final enum MANDATORY_SYSTEM_GESTURES:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

.field public static final enum NAVIGATION_BARS:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

.field public static final enum STATUS_BARS:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

.field public static final enum SYSTEM_BARS:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

.field public static final enum SYSTEM_GESTURES:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

.field public static final enum TAPPABLE_ELEMENT:Lio/flutter/plugins/webviewflutter/WindowInsetsType;


# instance fields
.field private final raw:I


# direct methods
.method private static final synthetic $values()[Lio/flutter/plugins/webviewflutter/WindowInsetsType;
    .locals 9

    sget-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->SYSTEM_BARS:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    sget-object v1, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->DISPLAY_CUTOUT:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    sget-object v2, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->CAPTION_BAR:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    sget-object v3, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->IME:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    sget-object v4, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->MANDATORY_SYSTEM_GESTURES:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    sget-object v5, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->NAVIGATION_BARS:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    sget-object v6, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->STATUS_BARS:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    sget-object v7, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->SYSTEM_GESTURES:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    sget-object v8, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->TAPPABLE_ELEMENT:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    filled-new-array/range {v0 .. v8}, [Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 2
    .line 3
    const-string v1, "SYSTEM_BARS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/WindowInsetsType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->SYSTEM_BARS:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 10
    .line 11
    new-instance v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 12
    .line 13
    const-string v1, "DISPLAY_CUTOUT"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/WindowInsetsType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->DISPLAY_CUTOUT:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 20
    .line 21
    new-instance v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 22
    .line 23
    const-string v1, "CAPTION_BAR"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/WindowInsetsType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->CAPTION_BAR:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 30
    .line 31
    new-instance v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 32
    .line 33
    const-string v1, "IME"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/WindowInsetsType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->IME:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 40
    .line 41
    new-instance v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 42
    .line 43
    const-string v1, "MANDATORY_SYSTEM_GESTURES"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/WindowInsetsType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->MANDATORY_SYSTEM_GESTURES:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 50
    .line 51
    new-instance v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 52
    .line 53
    const-string v1, "NAVIGATION_BARS"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/WindowInsetsType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->NAVIGATION_BARS:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 60
    .line 61
    new-instance v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 62
    .line 63
    const-string v1, "STATUS_BARS"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/WindowInsetsType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->STATUS_BARS:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 70
    .line 71
    new-instance v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 72
    .line 73
    const-string v1, "SYSTEM_GESTURES"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/WindowInsetsType;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->SYSTEM_GESTURES:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 80
    .line 81
    new-instance v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 82
    .line 83
    const-string v1, "TAPPABLE_ELEMENT"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/WindowInsetsType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->TAPPABLE_ELEMENT:Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 91
    .line 92
    invoke-static {}, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->$values()[Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->$VALUES:[Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/enums/b;->a([Ljava/lang/Enum;)Lkotlin/enums/a;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->$ENTRIES:Lkotlin/enums/a;

    .line 103
    .line 104
    new-instance v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType$Companion;

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-direct {v0, v1}, Lio/flutter/plugins/webviewflutter/WindowInsetsType$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    .line 108
    .line 109
    .line 110
    sput-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->Companion:Lio/flutter/plugins/webviewflutter/WindowInsetsType$Companion;

    .line 111
    .line 112
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
    iput p3, p0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->raw:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->$ENTRIES:Lkotlin/enums/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/WindowInsetsType;
    .locals 1

    const-class v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    return-object p0
.end method

.method public static values()[Lio/flutter/plugins/webviewflutter/WindowInsetsType;
    .locals 1

    sget-object v0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->$VALUES:[Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    return-object v0
.end method


# virtual methods
.method public final getRaw()I
    .locals 1

    .line 1
    iget v0, p0, Lio/flutter/plugins/webviewflutter/WindowInsetsType;->raw:I

    .line 2
    .line 3
    return v0
.end method

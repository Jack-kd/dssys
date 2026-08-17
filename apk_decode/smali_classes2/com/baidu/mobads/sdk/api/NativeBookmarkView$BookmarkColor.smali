.class public final enum Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/sdk/api/NativeBookmarkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BookmarkColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

.field public static final enum BLUE:Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

.field public static final enum BROWN:Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

.field public static final enum DARK:Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

.field public static final enum GREEN:Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

.field public static final enum PINK:Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;


# instance fields
.field private final buttonColor:Ljava/lang/String;

.field private final cardColor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 2
    .line 3
    const-string v1, "#CCBE99"

    .line 4
    .line 5
    const-string v2, "#BFA360"

    .line 6
    .line 7
    const-string v3, "BROWN"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->BROWN:Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 14
    .line 15
    new-instance v1, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 16
    .line 17
    const-string v2, "#D9B8B8"

    .line 18
    .line 19
    const-string v3, "#996B6B"

    .line 20
    .line 21
    const-string v4, "PINK"

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->PINK:Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 28
    .line 29
    new-instance v2, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 30
    .line 31
    const-string v3, "#A8C4A7"

    .line 32
    .line 33
    const-string v4, "#6D996B"

    .line 34
    .line 35
    const-string v5, "GREEN"

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    invoke-direct {v2, v5, v6, v3, v4}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->GREEN:Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 42
    .line 43
    new-instance v3, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 44
    .line 45
    const-string v4, "#B8C8D9"

    .line 46
    .line 47
    const-string v5, "#608FBF"

    .line 48
    .line 49
    const-string v6, "BLUE"

    .line 50
    .line 51
    const/4 v7, 0x3

    .line 52
    invoke-direct {v3, v6, v7, v4, v5}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sput-object v3, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->BLUE:Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 56
    .line 57
    new-instance v4, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 58
    .line 59
    const-string v5, "#333333"

    .line 60
    .line 61
    const-string v6, "#605230"

    .line 62
    .line 63
    const-string v7, "DARK"

    .line 64
    .line 65
    const/4 v8, 0x4

    .line 66
    invoke-direct {v4, v7, v8, v5, v6}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v4, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->DARK:Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 70
    .line 71
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->$VALUES:[Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 76
    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->cardColor:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->buttonColor:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$100(Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->cardColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->buttonColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->$VALUES:[Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;

    .line 8
    .line 9
    return-object v0
.end method

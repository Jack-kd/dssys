.class public final enum Lcom/baidu/oauth/sdkbqt/auth/i$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/oauth/sdkbqt/auth/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/oauth/sdkbqt/auth/i$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/oauth/sdkbqt/auth/i$b;

.field public static final enum b:Lcom/baidu/oauth/sdkbqt/auth/i$b;

.field private static final synthetic d:[Lcom/baidu/oauth/sdkbqt/auth/i$b;


# instance fields
.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/i$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "webViewWillAppear"

    .line 5
    .line 6
    const-string v3, "ON_RESUME"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/baidu/oauth/sdkbqt/auth/i$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/baidu/oauth/sdkbqt/auth/i$b;->a:Lcom/baidu/oauth/sdkbqt/auth/i$b;

    .line 12
    .line 13
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/i$b;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "webViewWillDisappear"

    .line 17
    .line 18
    const-string v4, "ON_PAUSE"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lcom/baidu/oauth/sdkbqt/auth/i$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/baidu/oauth/sdkbqt/auth/i$b;->b:Lcom/baidu/oauth/sdkbqt/auth/i$b;

    .line 24
    .line 25
    filled-new-array {v0, v1}, [Lcom/baidu/oauth/sdkbqt/auth/i$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/baidu/oauth/sdkbqt/auth/i$b;->d:[Lcom/baidu/oauth/sdkbqt/auth/i$b;

    .line 30
    .line 31
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
    iput-object p3, p0, Lcom/baidu/oauth/sdkbqt/auth/i$b;->c:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/oauth/sdkbqt/auth/i$b;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/oauth/sdkbqt/auth/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/oauth/sdkbqt/auth/i$b;

    return-object p0
.end method

.method public static a()[Lcom/baidu/oauth/sdkbqt/auth/i$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/i$b;->d:[Lcom/baidu/oauth/sdkbqt/auth/i$b;

    invoke-virtual {v0}, [Lcom/baidu/oauth/sdkbqt/auth/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/oauth/sdkbqt/auth/i$b;

    return-object v0
.end method

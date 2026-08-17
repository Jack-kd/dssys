.class final enum Lcom/baidu/passbqt/http/Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/passbqt/http/Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/passbqt/http/Method;

.field public static final enum b:Lcom/baidu/passbqt/http/Method;

.field private static final synthetic c:[Lcom/baidu/passbqt/http/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/baidu/passbqt/http/Method;

    .line 2
    .line 3
    const-string v1, "GET"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/baidu/passbqt/http/Method;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/baidu/passbqt/http/Method;->a:Lcom/baidu/passbqt/http/Method;

    .line 10
    .line 11
    new-instance v0, Lcom/baidu/passbqt/http/Method;

    .line 12
    .line 13
    const-string v1, "POST"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/baidu/passbqt/http/Method;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/baidu/passbqt/http/Method;->b:Lcom/baidu/passbqt/http/Method;

    .line 20
    .line 21
    invoke-static {}, Lcom/baidu/passbqt/http/Method;->b()[Lcom/baidu/passbqt/http/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/baidu/passbqt/http/Method;->c:[Lcom/baidu/passbqt/http/Method;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/passbqt/http/Method;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/passbqt/http/Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/passbqt/http/Method;

    return-object p0
.end method

.method public static a()[Lcom/baidu/passbqt/http/Method;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/passbqt/http/Method;->c:[Lcom/baidu/passbqt/http/Method;

    invoke-virtual {v0}, [Lcom/baidu/passbqt/http/Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/passbqt/http/Method;

    return-object v0
.end method

.method private static synthetic b()[Lcom/baidu/passbqt/http/Method;
    .locals 2

    .line 1
    sget-object v0, Lcom/baidu/passbqt/http/Method;->a:Lcom/baidu/passbqt/http/Method;

    .line 2
    .line 3
    sget-object v1, Lcom/baidu/passbqt/http/Method;->b:Lcom/baidu/passbqt/http/Method;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lcom/baidu/passbqt/http/Method;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

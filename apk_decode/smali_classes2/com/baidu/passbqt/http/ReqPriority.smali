.class public final enum Lcom/baidu/passbqt/http/ReqPriority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/passbqt/http/ReqPriority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/passbqt/http/ReqPriority;

.field public static final enum b:Lcom/baidu/passbqt/http/ReqPriority;

.field public static final enum c:Lcom/baidu/passbqt/http/ReqPriority;

.field public static final enum d:Lcom/baidu/passbqt/http/ReqPriority;

.field private static final synthetic e:[Lcom/baidu/passbqt/http/ReqPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/baidu/passbqt/http/ReqPriority;

    .line 2
    .line 3
    const-string v1, "LOW"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/baidu/passbqt/http/ReqPriority;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/baidu/passbqt/http/ReqPriority;->a:Lcom/baidu/passbqt/http/ReqPriority;

    .line 10
    .line 11
    new-instance v0, Lcom/baidu/passbqt/http/ReqPriority;

    .line 12
    .line 13
    const-string v1, "NORMAL"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/baidu/passbqt/http/ReqPriority;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/baidu/passbqt/http/ReqPriority;->b:Lcom/baidu/passbqt/http/ReqPriority;

    .line 20
    .line 21
    new-instance v0, Lcom/baidu/passbqt/http/ReqPriority;

    .line 22
    .line 23
    const-string v1, "HIGH"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/baidu/passbqt/http/ReqPriority;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/baidu/passbqt/http/ReqPriority;->c:Lcom/baidu/passbqt/http/ReqPriority;

    .line 30
    .line 31
    new-instance v0, Lcom/baidu/passbqt/http/ReqPriority;

    .line 32
    .line 33
    const-string v1, "IMMEDIATE"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/baidu/passbqt/http/ReqPriority;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/baidu/passbqt/http/ReqPriority;->d:Lcom/baidu/passbqt/http/ReqPriority;

    .line 40
    .line 41
    invoke-static {}, Lcom/baidu/passbqt/http/ReqPriority;->b()[Lcom/baidu/passbqt/http/ReqPriority;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/baidu/passbqt/http/ReqPriority;->e:[Lcom/baidu/passbqt/http/ReqPriority;

    .line 46
    .line 47
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

.method public static a(Ljava/lang/String;)Lcom/baidu/passbqt/http/ReqPriority;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/passbqt/http/ReqPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/passbqt/http/ReqPriority;

    return-object p0
.end method

.method public static a()[Lcom/baidu/passbqt/http/ReqPriority;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/passbqt/http/ReqPriority;->e:[Lcom/baidu/passbqt/http/ReqPriority;

    invoke-virtual {v0}, [Lcom/baidu/passbqt/http/ReqPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/passbqt/http/ReqPriority;

    return-object v0
.end method

.method private static synthetic b()[Lcom/baidu/passbqt/http/ReqPriority;
    .locals 4

    .line 1
    sget-object v0, Lcom/baidu/passbqt/http/ReqPriority;->a:Lcom/baidu/passbqt/http/ReqPriority;

    .line 2
    .line 3
    sget-object v1, Lcom/baidu/passbqt/http/ReqPriority;->b:Lcom/baidu/passbqt/http/ReqPriority;

    .line 4
    .line 5
    sget-object v2, Lcom/baidu/passbqt/http/ReqPriority;->c:Lcom/baidu/passbqt/http/ReqPriority;

    .line 6
    .line 7
    sget-object v3, Lcom/baidu/passbqt/http/ReqPriority;->d:Lcom/baidu/passbqt/http/ReqPriority;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lcom/baidu/passbqt/http/ReqPriority;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

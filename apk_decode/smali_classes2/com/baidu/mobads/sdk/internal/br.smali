.class public final enum Lcom/baidu/mobads/sdk/internal/br;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mobads/sdk/internal/br;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobads/sdk/internal/br;

.field public static final enum b:Lcom/baidu/mobads/sdk/internal/br;

.field public static final c:Ljava/lang/String; = "msg"

.field private static final synthetic f:[Lcom/baidu/mobads/sdk/internal/br;


# instance fields
.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/internal/br;

    .line 2
    .line 3
    const v1, 0xf6951

    .line 4
    .line 5
    .line 6
    const-string v2, "\u63a5\u53e3\u4f7f\u7528\u95ee\u9898"

    .line 7
    .line 8
    const-string v3, "INTERFACE_USE_PROBLEM"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/baidu/mobads/sdk/internal/br;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/baidu/mobads/sdk/internal/br;->a:Lcom/baidu/mobads/sdk/internal/br;

    .line 15
    .line 16
    new-instance v1, Lcom/baidu/mobads/sdk/internal/br;

    .line 17
    .line 18
    const v2, 0x2e6301

    .line 19
    .line 20
    .line 21
    const-string v3, "\u5bb9\u5668\u5927\u5c0f\u4e0d\u8fbe\u6807"

    .line 22
    .line 23
    const-string v4, "SHOW_STANDARD_UNFIT"

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/baidu/mobads/sdk/internal/br;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/baidu/mobads/sdk/internal/br;->b:Lcom/baidu/mobads/sdk/internal/br;

    .line 30
    .line 31
    filled-new-array {v0, v1}, [Lcom/baidu/mobads/sdk/internal/br;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/baidu/mobads/sdk/internal/br;->f:[Lcom/baidu/mobads/sdk/internal/br;

    .line 36
    .line 37
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
    iput p3, p0, Lcom/baidu/mobads/sdk/internal/br;->d:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/baidu/mobads/sdk/internal/br;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/mobads/sdk/internal/br;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/mobads/sdk/internal/br;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mobads/sdk/internal/br;

    return-object p0
.end method

.method public static a()[Lcom/baidu/mobads/sdk/internal/br;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/mobads/sdk/internal/br;->f:[Lcom/baidu/mobads/sdk/internal/br;

    invoke-virtual {v0}, [Lcom/baidu/mobads/sdk/internal/br;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobads/sdk/internal/br;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/br;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/br;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

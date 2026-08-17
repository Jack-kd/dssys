.class public Lcom/sigmob/sdk/base/common/am;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/am$a;,
        Lcom/sigmob/sdk/base/common/am$d;,
        Lcom/sigmob/sdk/base/common/am$b;,
        Lcom/sigmob/sdk/base/common/am$c;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "am"

.field private static b:Lcom/sigmob/sdk/base/common/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sigmob/sdk/base/common/ag;
    .locals 1

    .line 1
    sget-object v0, Lcom/sigmob/sdk/base/common/am;->b:Lcom/sigmob/sdk/base/common/ag;

    return-object v0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/ag;)Lcom/sigmob/sdk/base/common/ag;
    .locals 0

    .line 2
    sput-object p0, Lcom/sigmob/sdk/base/common/am;->b:Lcom/sigmob/sdk/base/common/ag;

    return-object p0
.end method

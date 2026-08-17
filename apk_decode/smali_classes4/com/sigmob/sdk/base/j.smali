.class public final enum Lcom/sigmob/sdk/base/j;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/j;

.field public static final enum b:Lcom/sigmob/sdk/base/j;

.field public static final enum c:Lcom/sigmob/sdk/base/j;

.field public static final enum d:Lcom/sigmob/sdk/base/j;

.field public static final enum e:Lcom/sigmob/sdk/base/j;

.field public static final enum f:Lcom/sigmob/sdk/base/j;

.field public static final enum g:Lcom/sigmob/sdk/base/j;

.field private static final synthetic i:[Lcom/sigmob/sdk/base/j;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/sigmob/sdk/base/j;

    const-string v1, "AppSWith"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/j;->a:Lcom/sigmob/sdk/base/j;

    new-instance v1, Lcom/sigmob/sdk/base/j;

    const-string v2, "AutoNextPreload"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/sigmob/sdk/base/j;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/sdk/base/j;->b:Lcom/sigmob/sdk/base/j;

    new-instance v2, Lcom/sigmob/sdk/base/j;

    const-string v3, "NormalRequest"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/sigmob/sdk/base/j;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sigmob/sdk/base/j;->c:Lcom/sigmob/sdk/base/j;

    new-instance v3, Lcom/sigmob/sdk/base/j;

    const-string v4, "SplashCloseRequest"

    const/4 v6, 0x5

    invoke-direct {v3, v4, v5, v6}, Lcom/sigmob/sdk/base/j;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sigmob/sdk/base/j;->d:Lcom/sigmob/sdk/base/j;

    new-instance v4, Lcom/sigmob/sdk/base/j;

    const-string v5, "ReloadAfterExpiration"

    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-direct {v4, v5, v7, v8}, Lcom/sigmob/sdk/base/j;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sigmob/sdk/base/j;->e:Lcom/sigmob/sdk/base/j;

    new-instance v5, Lcom/sigmob/sdk/base/j;

    const-string v7, "ActiveFailureReload"

    const/4 v9, 0x7

    invoke-direct {v5, v7, v6, v9}, Lcom/sigmob/sdk/base/j;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sigmob/sdk/base/j;->f:Lcom/sigmob/sdk/base/j;

    new-instance v6, Lcom/sigmob/sdk/base/j;

    const-string v7, "OtherRequest"

    const/16 v9, 0x3e7

    invoke-direct {v6, v7, v8, v9}, Lcom/sigmob/sdk/base/j;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sigmob/sdk/base/j;->g:Lcom/sigmob/sdk/base/j;

    filled-new-array/range {v0 .. v6}, [Lcom/sigmob/sdk/base/j;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/j;->i:[Lcom/sigmob/sdk/base/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/sdk/base/j;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/j;
    .locals 1

    const-class v0, Lcom/sigmob/sdk/base/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/j;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/j;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/j;->i:[Lcom/sigmob/sdk/base/j;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/j;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/j;->h:I

    return v0
.end method

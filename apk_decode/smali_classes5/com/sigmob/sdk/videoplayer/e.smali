.class public final enum Lcom/sigmob/sdk/videoplayer/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/videoplayer/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/videoplayer/e;

.field public static final enum b:Lcom/sigmob/sdk/videoplayer/e;

.field public static final enum c:Lcom/sigmob/sdk/videoplayer/e;

.field public static final enum d:Lcom/sigmob/sdk/videoplayer/e;

.field public static final enum e:Lcom/sigmob/sdk/videoplayer/e;

.field public static final enum f:Lcom/sigmob/sdk/videoplayer/e;

.field private static final synthetic g:[Lcom/sigmob/sdk/videoplayer/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/sigmob/sdk/videoplayer/e;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/videoplayer/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/videoplayer/e;->a:Lcom/sigmob/sdk/videoplayer/e;

    new-instance v1, Lcom/sigmob/sdk/videoplayer/e;

    const-string v2, "RETRY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/videoplayer/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/videoplayer/e;->b:Lcom/sigmob/sdk/videoplayer/e;

    new-instance v2, Lcom/sigmob/sdk/videoplayer/e;

    const-string v3, "FULLSCREEN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/sigmob/sdk/videoplayer/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sigmob/sdk/videoplayer/e;->c:Lcom/sigmob/sdk/videoplayer/e;

    new-instance v3, Lcom/sigmob/sdk/videoplayer/e;

    const-string v4, "VOLUME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/sigmob/sdk/videoplayer/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/sdk/videoplayer/e;->d:Lcom/sigmob/sdk/videoplayer/e;

    new-instance v4, Lcom/sigmob/sdk/videoplayer/e;

    const-string v5, "BIGRETRY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/sigmob/sdk/videoplayer/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sigmob/sdk/videoplayer/e;->e:Lcom/sigmob/sdk/videoplayer/e;

    new-instance v5, Lcom/sigmob/sdk/videoplayer/e;

    const-string v6, "BACK"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/sigmob/sdk/videoplayer/e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sigmob/sdk/videoplayer/e;->f:Lcom/sigmob/sdk/videoplayer/e;

    filled-new-array/range {v0 .. v5}, [Lcom/sigmob/sdk/videoplayer/e;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/videoplayer/e;->g:[Lcom/sigmob/sdk/videoplayer/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/videoplayer/e;
    .locals 1

    const-class v0, Lcom/sigmob/sdk/videoplayer/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/videoplayer/e;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/videoplayer/e;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/videoplayer/e;->g:[Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/videoplayer/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/videoplayer/e;

    return-object v0
.end method

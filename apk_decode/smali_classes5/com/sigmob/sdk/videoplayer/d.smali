.class public final enum Lcom/sigmob/sdk/videoplayer/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/videoplayer/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/videoplayer/d;

.field public static final enum b:Lcom/sigmob/sdk/videoplayer/d;

.field public static final enum c:Lcom/sigmob/sdk/videoplayer/d;

.field public static final enum d:Lcom/sigmob/sdk/videoplayer/d;

.field public static final enum e:Lcom/sigmob/sdk/videoplayer/d;

.field public static final enum f:Lcom/sigmob/sdk/videoplayer/d;

.field public static final enum g:Lcom/sigmob/sdk/videoplayer/d;

.field public static final enum h:Lcom/sigmob/sdk/videoplayer/d;

.field public static final enum i:Lcom/sigmob/sdk/videoplayer/d;

.field public static final enum j:Lcom/sigmob/sdk/videoplayer/d;

.field public static final enum k:Lcom/sigmob/sdk/videoplayer/d;

.field public static final enum l:Lcom/sigmob/sdk/videoplayer/d;

.field private static final synthetic m:[Lcom/sigmob/sdk/videoplayer/d;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/sigmob/sdk/videoplayer/d;

    const-string v1, "STATE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/videoplayer/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/videoplayer/d;->a:Lcom/sigmob/sdk/videoplayer/d;

    new-instance v1, Lcom/sigmob/sdk/videoplayer/d;

    const-string v2, "STATE_NORMAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/videoplayer/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/videoplayer/d;->b:Lcom/sigmob/sdk/videoplayer/d;

    new-instance v2, Lcom/sigmob/sdk/videoplayer/d;

    const-string v3, "STATE_BUFFERING_START"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/sigmob/sdk/videoplayer/d;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sigmob/sdk/videoplayer/d;->c:Lcom/sigmob/sdk/videoplayer/d;

    new-instance v3, Lcom/sigmob/sdk/videoplayer/d;

    const-string v4, "STATE_BUFFERING_END"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/sigmob/sdk/videoplayer/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/sdk/videoplayer/d;->d:Lcom/sigmob/sdk/videoplayer/d;

    new-instance v4, Lcom/sigmob/sdk/videoplayer/d;

    const-string v5, "STATE_PREPARING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/sigmob/sdk/videoplayer/d;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sigmob/sdk/videoplayer/d;->e:Lcom/sigmob/sdk/videoplayer/d;

    new-instance v5, Lcom/sigmob/sdk/videoplayer/d;

    const-string v6, "STATE_PREPARING_CHANGING_URL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/sigmob/sdk/videoplayer/d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sigmob/sdk/videoplayer/d;->f:Lcom/sigmob/sdk/videoplayer/d;

    new-instance v6, Lcom/sigmob/sdk/videoplayer/d;

    const-string v7, "STATE_PREPARED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/sigmob/sdk/videoplayer/d;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sigmob/sdk/videoplayer/d;->g:Lcom/sigmob/sdk/videoplayer/d;

    new-instance v7, Lcom/sigmob/sdk/videoplayer/d;

    const-string v8, "STATE_PLAYING"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/sigmob/sdk/videoplayer/d;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sigmob/sdk/videoplayer/d;->h:Lcom/sigmob/sdk/videoplayer/d;

    new-instance v8, Lcom/sigmob/sdk/videoplayer/d;

    const-string v9, "STATE_PAUSE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/sigmob/sdk/videoplayer/d;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sigmob/sdk/videoplayer/d;->i:Lcom/sigmob/sdk/videoplayer/d;

    new-instance v9, Lcom/sigmob/sdk/videoplayer/d;

    const-string v10, "STATE_AUTO_COMPLETE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/sigmob/sdk/videoplayer/d;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sigmob/sdk/videoplayer/d;->j:Lcom/sigmob/sdk/videoplayer/d;

    new-instance v10, Lcom/sigmob/sdk/videoplayer/d;

    const-string v11, "STATE_STOP"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/sigmob/sdk/videoplayer/d;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sigmob/sdk/videoplayer/d;->k:Lcom/sigmob/sdk/videoplayer/d;

    new-instance v11, Lcom/sigmob/sdk/videoplayer/d;

    const-string v12, "STATE_ERROR"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/sigmob/sdk/videoplayer/d;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sigmob/sdk/videoplayer/d;->l:Lcom/sigmob/sdk/videoplayer/d;

    filled-new-array/range {v0 .. v11}, [Lcom/sigmob/sdk/videoplayer/d;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/videoplayer/d;->m:[Lcom/sigmob/sdk/videoplayer/d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/videoplayer/d;
    .locals 1

    const-class v0, Lcom/sigmob/sdk/videoplayer/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/videoplayer/d;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/videoplayer/d;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/videoplayer/d;->m:[Lcom/sigmob/sdk/videoplayer/d;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/videoplayer/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/videoplayer/d;

    return-object v0
.end method

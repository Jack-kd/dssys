.class public final enum Lcom/sigmob/sdk/mraid/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/mraid/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/mraid/b$a;

.field public static final enum b:Lcom/sigmob/sdk/mraid/b$a;

.field public static final enum c:Lcom/sigmob/sdk/mraid/b$a;

.field public static final enum d:Lcom/sigmob/sdk/mraid/b$a;

.field public static final enum e:Lcom/sigmob/sdk/mraid/b$a;

.field public static final enum f:Lcom/sigmob/sdk/mraid/b$a;

.field public static final enum g:Lcom/sigmob/sdk/mraid/b$a;

.field private static final synthetic i:[Lcom/sigmob/sdk/mraid/b$a;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/sigmob/sdk/mraid/b$a;

    const/4 v1, 0x0

    const/16 v2, 0x33

    const-string v3, "TOP_LEFT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/b$a;->a:Lcom/sigmob/sdk/mraid/b$a;

    new-instance v1, Lcom/sigmob/sdk/mraid/b$a;

    const/4 v2, 0x1

    const/16 v3, 0x31

    const-string v4, "TOP_CENTER"

    invoke-direct {v1, v4, v2, v3}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/sdk/mraid/b$a;->b:Lcom/sigmob/sdk/mraid/b$a;

    new-instance v2, Lcom/sigmob/sdk/mraid/b$a;

    const/4 v3, 0x2

    const/16 v4, 0x35

    const-string v5, "TOP_RIGHT"

    invoke-direct {v2, v5, v3, v4}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sigmob/sdk/mraid/b$a;->c:Lcom/sigmob/sdk/mraid/b$a;

    new-instance v3, Lcom/sigmob/sdk/mraid/b$a;

    const/4 v4, 0x3

    const/16 v5, 0x11

    const-string v6, "CENTER"

    invoke-direct {v3, v6, v4, v5}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sigmob/sdk/mraid/b$a;->d:Lcom/sigmob/sdk/mraid/b$a;

    new-instance v4, Lcom/sigmob/sdk/mraid/b$a;

    const/4 v5, 0x4

    const/16 v6, 0x53

    const-string v7, "BOTTOM_LEFT"

    invoke-direct {v4, v7, v5, v6}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sigmob/sdk/mraid/b$a;->e:Lcom/sigmob/sdk/mraid/b$a;

    new-instance v5, Lcom/sigmob/sdk/mraid/b$a;

    const/4 v6, 0x5

    const/16 v7, 0x51

    const-string v8, "BOTTOM_CENTER"

    invoke-direct {v5, v8, v6, v7}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sigmob/sdk/mraid/b$a;->f:Lcom/sigmob/sdk/mraid/b$a;

    new-instance v6, Lcom/sigmob/sdk/mraid/b$a;

    const/4 v7, 0x6

    const/16 v8, 0x55

    const-string v9, "BOTTOM_RIGHT"

    invoke-direct {v6, v9, v7, v8}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sigmob/sdk/mraid/b$a;->g:Lcom/sigmob/sdk/mraid/b$a;

    filled-new-array/range {v0 .. v6}, [Lcom/sigmob/sdk/mraid/b$a;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/mraid/b$a;->i:[Lcom/sigmob/sdk/mraid/b$a;

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

    iput p3, p0, Lcom/sigmob/sdk/mraid/b$a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/b$a;
    .locals 1

    const-class v0, Lcom/sigmob/sdk/mraid/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/mraid/b$a;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/mraid/b$a;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/mraid/b$a;->i:[Lcom/sigmob/sdk/mraid/b$a;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/mraid/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/mraid/b$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/mraid/b$a;->h:I

    return v0
.end method

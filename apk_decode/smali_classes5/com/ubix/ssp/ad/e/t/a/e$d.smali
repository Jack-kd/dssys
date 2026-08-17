.class public final enum Lcom/ubix/ssp/ad/e/t/a/e$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/t/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ubix/ssp/ad/e/t/a/e$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ubix/ssp/ad/e/t/a/e$d;

.field public static final enum b:Lcom/ubix/ssp/ad/e/t/a/e$d;

.field public static final enum c:Lcom/ubix/ssp/ad/e/t/a/e$d;

.field private static final synthetic d:[Lcom/ubix/ssp/ad/e/t/a/e$d;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ubix/ssp/ad/e/t/a/e$d;

    const-string v1, "WAIT_FINISH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ubix/ssp/ad/e/t/a/e$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ubix/ssp/ad/e/t/a/e$d;->a:Lcom/ubix/ssp/ad/e/t/a/e$d;

    new-instance v1, Lcom/ubix/ssp/ad/e/t/a/e$d;

    const-string v2, "SYNC_DECODER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/ubix/ssp/ad/e/t/a/e$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ubix/ssp/ad/e/t/a/e$d;->b:Lcom/ubix/ssp/ad/e/t/a/e$d;

    new-instance v2, Lcom/ubix/ssp/ad/e/t/a/e$d;

    const-string v3, "COVER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/ubix/ssp/ad/e/t/a/e$d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ubix/ssp/ad/e/t/a/e$d;->c:Lcom/ubix/ssp/ad/e/t/a/e$d;

    filled-new-array {v0, v1, v2}, [Lcom/ubix/ssp/ad/e/t/a/e$d;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/t/a/e$d;->d:[Lcom/ubix/ssp/ad/e/t/a/e$d;

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

    iput p3, p0, Lcom/ubix/ssp/ad/e/t/a/e$d;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ubix/ssp/ad/e/t/a/e$d;
    .locals 1

    const-class v0, Lcom/ubix/ssp/ad/e/t/a/e$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ubix/ssp/ad/e/t/a/e$d;

    return-object p0
.end method

.method public static values()[Lcom/ubix/ssp/ad/e/t/a/e$d;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/t/a/e$d;->d:[Lcom/ubix/ssp/ad/e/t/a/e$d;

    invoke-virtual {v0}, [Lcom/ubix/ssp/ad/e/t/a/e$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubix/ssp/ad/e/t/a/e$d;

    return-object v0
.end method

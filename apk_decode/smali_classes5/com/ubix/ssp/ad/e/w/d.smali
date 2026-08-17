.class final enum Lcom/ubix/ssp/ad/e/w/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ubix/ssp/ad/e/w/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ubix/ssp/ad/e/w/d;

.field private static final synthetic b:[Lcom/ubix/ssp/ad/e/w/d;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/ubix/ssp/ad/e/w/d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "TRACK"

    const/4 v2, 0x0

    const-string v3, "track"

    invoke-direct/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/w/d;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/ubix/ssp/ad/e/w/d;->a:Lcom/ubix/ssp/ad/e/w/d;

    filled-new-array {v0}, [Lcom/ubix/ssp/ad/e/w/d;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/w/d;->b:[Lcom/ubix/ssp/ad/e/w/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/w/d;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ubix/ssp/ad/e/w/d;->d:Z

    iput-boolean p5, p0, Lcom/ubix/ssp/ad/e/w/d;->e:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ubix/ssp/ad/e/w/d;
    .locals 1

    const-class v0, Lcom/ubix/ssp/ad/e/w/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ubix/ssp/ad/e/w/d;

    return-object p0
.end method

.method public static values()[Lcom/ubix/ssp/ad/e/w/d;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/w/d;->b:[Lcom/ubix/ssp/ad/e/w/d;

    invoke-virtual {v0}, [Lcom/ubix/ssp/ad/e/w/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubix/ssp/ad/e/w/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/d;->c:Ljava/lang/String;

    return-object v0
.end method

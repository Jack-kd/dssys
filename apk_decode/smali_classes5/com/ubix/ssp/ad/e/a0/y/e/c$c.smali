.class Lcom/ubix/ssp/ad/e/a0/y/e/c$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/a0/y/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:I

.field final synthetic d:Lcom/ubix/ssp/ad/e/a0/y/e/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/y/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->d:Lcom/ubix/ssp/ad/e/a0/y/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x64

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->a:I

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->b:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/y/e/c;FII)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->d:Lcom/ubix/ssp/ad/e/a0/y/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->b:F

    iput p3, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->a:I

    iput p4, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/y/e/c$c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->b:F

    return p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/y/e/c$c;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->b:F

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/a0/y/e/c$c;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->c:I

    return p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/a0/y/e/c$c;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/e/a0/y/e/c$c;->a:I

    return p0
.end method

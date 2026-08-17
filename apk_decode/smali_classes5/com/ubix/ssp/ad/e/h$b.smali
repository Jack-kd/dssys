.class Lcom/ubix/ssp/ad/e/h$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:Z

.field private f:Z

.field private g:I

.field final synthetic h:Lcom/ubix/ssp/ad/e/h;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/h;I)V
    .locals 4

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/h$b;->h:Lcom/ubix/ssp/ad/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/ubix/ssp/ad/e/h$b;->d:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/h$b;->e:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/h$b;->f:Z

    iput p2, p0, Lcom/ubix/ssp/ad/e/h$b;->g:I

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/h;->j(Lcom/ubix/ssp/ad/e/h;)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/h;->f(Lcom/ubix/ssp/ad/e/h;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-double v0, p2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/h;->b(Lcom/ubix/ssp/ad/e/h;)I

    move-result p2

    int-to-double v2, p2

    div-double/2addr v0, v2

    double-to-float p2, v0

    iput p2, p0, Lcom/ubix/ssp/ad/e/h$b;->d:F

    float-to-double v0, p2

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/h;->g(Lcom/ubix/ssp/ad/e/h;)Ljava/util/Random;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-double p1, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr p1, v2

    sub-double/2addr p1, v2

    sub-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p0, Lcom/ubix/ssp/ad/e/h$b;->d:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/h$b;->e:Z

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/h$b;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/ubix/ssp/ad/e/h$b;->a:I

    return p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/h$b;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/ubix/ssp/ad/e/h$b;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/h$b;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/h$b;->f:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/h$b;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/ubix/ssp/ad/e/h$b;->b:I

    return p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/h$b;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/ubix/ssp/ad/e/h$b;->b:I

    return p1
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/h$b;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/ubix/ssp/ad/e/h$b;->g:I

    return p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/h$b;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/ubix/ssp/ad/e/h$b;->c:I

    return p1
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/e/h$b;)F
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/e/h$b;->d:F

    return p0
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/e/h$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/h$b;->f:Z

    return p0
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/e/h$b;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/e/h$b;->c:I

    return p0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$b;->h:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/h;->b(Lcom/ubix/ssp/ad/e/h;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/h$b;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/ubix/ssp/ad/e/h$b;->g:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/e/h$b;->g:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/ubix/ssp/ad/e/h$b;->b:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/e/h$b;->b:I

    return v0
.end method

.class public Lcom/ubix/ssp/ad/e/d;
.super Landroid/view/View;


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field g:I

.field h:I

.field i:Z

.field j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field t:F

.field u:F

.field private v:I

.field private w:I

.field private x:Landroid/graphics/Bitmap;

.field private y:Z

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/d;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/d;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/d;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/d;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/d;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/d;->f:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/d;->g:I

    const/16 v2, 0xff

    iput v2, p0, Lcom/ubix/ssp/ad/e/d;->h:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/d;->i:Z

    const/16 v2, 0x1e

    iput v2, p0, Lcom/ubix/ssp/ad/e/d;->k:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/ubix/ssp/ad/e/d;->n:F

    const-string v2, "\u5411\u4e0a\u6ed1\u52a8\u6216\u70b9\u51fb"

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/d;->p:Ljava/lang/String;

    const-string v2, "\u8df3\u8f6c\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/d;->q:Ljava/lang/String;

    const/16 v2, 0x10

    iput v2, p0, Lcom/ubix/ssp/ad/e/d;->r:I

    const/16 v2, 0xc

    iput v2, p0, Lcom/ubix/ssp/ad/e/d;->s:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/d;->v:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/d;->w:I

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/ubix/ssp/ad/e/d;->z:F

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/e/d;->y:Z

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->c:Landroid/graphics/Paint;

    iget v0, p0, Lcom/ubix/ssp/ad/e/d;->r:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->c:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ubix/ssp/ad/e/d;->s:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->d:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->d:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->e:Landroid/graphics/Paint;

    const/high16 v0, 0x66000000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->e:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->e:Landroid/graphics/Paint;

    iget v0, p0, Lcom/ubix/ssp/ad/e/d;->r:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/d;->f:Landroid/graphics/Paint;

    iget v0, p0, Lcom/ubix/ssp/ad/e/d;->s:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/d;->z:F

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/d;->k:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->b:Landroid/graphics/Paint;

    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 3
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x5a

    const/4 v1, 0x1

    const-string v2, "ubix/ic_full_slide_arrow.webp"

    invoke-static {p1, v2, v0, v1}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/d;->x:Landroid/graphics/Bitmap;

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/d;->a()V

    new-instance p1, Lcom/ubix/ssp/ad/e/d$a;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/e/d$a;-><init>(Lcom/ubix/ssp/ad/e/d;)V

    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(ZII)V
    .locals 4

    .line 4
    iget v0, p0, Lcom/ubix/ssp/ad/e/d;->m:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/ubix/ssp/ad/e/d;->l:I

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/ubix/ssp/ad/e/d;->m:I

    iput p3, p0, Lcom/ubix/ssp/ad/e/d;->l:I

    div-int/lit8 p2, p2, 0x2

    int-to-double v0, p2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/d;->n:F

    int-to-float p2, p2

    iput p2, p0, Lcom/ubix/ssp/ad/e/d;->t:F

    int-to-double p2, p3

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v0

    sub-double/2addr p2, v2

    double-to-float p2, p2

    iput p2, p0, Lcom/ubix/ssp/ad/e/d;->u:F

    if-eqz p1, :cond_1

    const-wide p1, 0x3ff199999999999aL    # 1.1

    :goto_0
    mul-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/ubix/ssp/ad/e/d;->w:I

    goto :goto_1

    :cond_1
    const-wide p1, 0x3feccccccccccccdL    # 0.9

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/d;->a()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/d;->o:Z

    return-void
.end method

.method public a(FF)Z
    .locals 6

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInside x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget v0, p0, Lcom/ubix/ssp/ad/e/d;->t:F

    sub-float/2addr p1, v0

    float-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget p1, p0, Lcom/ubix/ssp/ad/e/d;->u:F

    iget v0, p0, Lcom/ubix/ssp/ad/e/d;->v:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/d;->n:F

    const/high16 v2, 0x41f00000    # 30.0f

    add-float/2addr v1, v2

    iget v3, p0, Lcom/ubix/ssp/ad/e/d;->g:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget v0, p0, Lcom/ubix/ssp/ad/e/d;->n:F

    add-float/2addr v0, v2

    iget v1, p0, Lcom/ubix/ssp/ad/e/d;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v4, v4

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/ubix/ssp/ad/e/d;->l:I

    int-to-float v0, v0

    const/high16 v5, 0x41000000    # 8.0f

    div-float/2addr v0, v5

    cmpl-float v0, v4, v0

    if-lez v0, :cond_0

    const/16 v0, 0xc

    if-ge v3, v0, :cond_0

    iget v0, p0, Lcom/ubix/ssp/ad/e/d;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/d;->r:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/d;->c:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    iget v0, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/ubix/ssp/ad/e/d;->l:I

    int-to-float v1, v1

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/16 v0, 0xa

    if-ge v2, v0, :cond_1

    iget v0, p0, Lcom/ubix/ssp/ad/e/d;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/d;->s:I

    add-int/lit8 v2, v2, 0x1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/d;->d:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubix/ssp/ad/e/d;->r:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubix/ssp/ad/e/d;->s:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/ubix/ssp/ad/e/d;->t:F

    iget v2, p0, Lcom/ubix/ssp/ad/e/d;->u:F

    iget v3, p0, Lcom/ubix/ssp/ad/e/d;->v:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/ubix/ssp/ad/e/d;->n:F

    iget v4, p0, Lcom/ubix/ssp/ad/e/d;->g:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/ubix/ssp/ad/e/d;->t:F

    iget v1, p0, Lcom/ubix/ssp/ad/e/d;->u:F

    iget v2, p0, Lcom/ubix/ssp/ad/e/d;->v:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/ubix/ssp/ad/e/d;->n:F

    const/high16 v3, 0x41f00000    # 30.0f

    add-float/2addr v2, v3

    iget v3, p0, Lcom/ubix/ssp/ad/e/d;->g:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/d;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/ubix/ssp/ad/e/d;->t:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/ubix/ssp/ad/e/d;->l:I

    int-to-double v2, v2

    iget v4, p0, Lcom/ubix/ssp/ad/e/d;->n:F

    float-to-double v4, v4

    const-wide v6, 0x3fee666666666666L    # 0.95

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/d;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/ubix/ssp/ad/e/d;->g:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->p:Ljava/lang/String;

    iget v1, p0, Lcom/ubix/ssp/ad/e/d;->t:F

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    iget v3, p0, Lcom/ubix/ssp/ad/e/d;->l:I

    iget v4, p0, Lcom/ubix/ssp/ad/e/d;->w:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/ubix/ssp/ad/e/d;->n:F

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/d;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->q:Ljava/lang/String;

    iget v1, p0, Lcom/ubix/ssp/ad/e/d;->t:F

    add-float/2addr v1, v2

    iget v3, p0, Lcom/ubix/ssp/ad/e/d;->l:I

    iget v6, p0, Lcom/ubix/ssp/ad/e/d;->w:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Lcom/ubix/ssp/ad/e/d;->z:F

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    iget v6, p0, Lcom/ubix/ssp/ad/e/d;->n:F

    div-float/2addr v6, v5

    add-float/2addr v3, v6

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/d;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->p:Ljava/lang/String;

    iget v1, p0, Lcom/ubix/ssp/ad/e/d;->t:F

    iget v2, p0, Lcom/ubix/ssp/ad/e/d;->l:I

    iget v3, p0, Lcom/ubix/ssp/ad/e/d;->w:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/ubix/ssp/ad/e/d;->n:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/d;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/d;->q:Ljava/lang/String;

    iget v1, p0, Lcom/ubix/ssp/ad/e/d;->t:F

    iget v2, p0, Lcom/ubix/ssp/ad/e/d;->l:I

    iget v3, p0, Lcom/ubix/ssp/ad/e/d;->w:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/ubix/ssp/ad/e/d;->z:F

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    iget v3, p0, Lcom/ubix/ssp/ad/e/d;->n:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/d;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/d;->q:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/d;->p:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

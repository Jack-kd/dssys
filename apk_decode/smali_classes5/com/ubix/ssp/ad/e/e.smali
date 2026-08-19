.class public Lcom/ubix/ssp/ad/e/e;
.super Landroid/view/View;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field c:Landroid/graphics/Path;

.field d:Landroid/graphics/Path;

.field e:Landroid/graphics/Paint;

.field f:Landroid/graphics/Paint;

.field g:I

.field h:Z

.field i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Path;

.field n:Landroid/graphics/RectF;

.field private o:[Ljava/lang/String;

.field p:Z

.field private q:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/e;->a:Ljava/lang/String;

    const-string p1, "\u8df3\u8f6c\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/e;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/e;->c:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/e;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/e;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/e;->f:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/e;->h:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/ubix/ssp/ad/e/e;->j:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/e;->m:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/e;->o:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/e;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/e;->b()V

    return-void
.end method

.method private b()V
    .locals 7

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/e;->n:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/e/e;->h:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    add-int/lit8 v1, v1, 0x3

    :goto_0
    iput v1, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    add-int/lit8 v1, v1, -0x4

    goto :goto_0

    :goto_1
    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/e;->j:I

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    iput v2, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    iput-boolean v3, p0, Lcom/ubix/ssp/ad/e/e;->i:Z

    iput-boolean v3, p0, Lcom/ubix/ssp/ad/e/e;->h:Z

    :cond_1
    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    if-gez v1, :cond_2

    iput v3, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/e;->h:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/e;->i:Z

    :cond_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/e;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/e;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/e;->c:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->l:I

    int-to-float v3, v1

    iget v4, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    iget v5, p0, Lcom/ubix/ssp/ad/e/e;->j:I

    sub-int v5, v4, v5

    iget v6, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->d:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    iget v3, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->d:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->l:I

    int-to-float v3, v1

    iget v4, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    iget v5, p0, Lcom/ubix/ssp/ad/e/e;->j:I

    sub-int v5, v4, v5

    iget v6, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->m:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->m:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->m:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->l:I

    int-to-float v2, v1

    iget v3, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    iget v4, p0, Lcom/ubix/ssp/ad/e/e;->j:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v3, v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v5, v2

    const-string v2, "#80020202"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v2, "#00d9d9d9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->f:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/e;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ubix/ssp/ad/e/e;->l:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/e;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/e;->c:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->l:I

    int-to-float v2, v1

    iget v3, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    iget v5, p0, Lcom/ubix/ssp/ad/e/e;->j:I

    sub-int v5, v3, v5

    int-to-float v5, v5

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v3, v3

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/e;->d:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->d:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->l:I

    int-to-float v2, v1

    iget v3, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    iget v4, p0, Lcom/ubix/ssp/ad/e/e;->j:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v3, v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/e;->l:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/ubix/ssp/ad/e/e;->l:I

    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/e;->j:I

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/e;->a()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/e;->p:Z

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 4
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x5a

    const/4 v1, 0x1

    const-string v2, "ubix/ic_full_slide_arrow.webp"

    invoke-static {p1, v2, v0, v1}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/e;->q:Landroid/graphics/Bitmap;

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/e;->a()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/e;->n:Landroid/graphics/RectF;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/ubix/ssp/ad/e/e$a;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/e/e$a;-><init>(Lcom/ubix/ssp/ad/e/e;)V

    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(FF)Z
    .locals 8

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside 1 x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/e;->m:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/high16 v3, 0x41200000    # 10.0f

    sub-float v3, p1, v3

    const-string v4, "inside 2"

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget v7, v1, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    aget v4, v1, v2

    float-to-int v5, v4

    int-to-float v5, v5

    cmpg-float v5, v5, p1

    const/high16 v7, 0x3f800000    # 1.0f

    if-gtz v5, :cond_0

    add-float/2addr v4, v7

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTargetX="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\uff1brealX="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    aget p1, v1, v6

    iget v0, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    move v2, v6

    goto :goto_1

    :cond_0
    add-float/2addr v3, v7

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "inside 3"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return v2
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->c:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/e;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/ubix/ssp/ad/e/e;->l:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/ubix/ssp/ad/e/e;->k:I

    int-to-double v2, v2

    iget v4, p0, Lcom/ubix/ssp/ad/e/e;->j:I

    int-to-double v4, v4

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/ubix/ssp/ad/e/e;->g:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/e;->d:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/e;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/e;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

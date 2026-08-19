.class public Lcom/ubix/ssp/ad/e/r;
.super Landroid/view/View;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field c:Landroid/graphics/Path;

.field d:Landroid/graphics/Path;

.field e:Landroid/graphics/Paint;

.field f:Landroid/graphics/Paint;

.field g:Landroid/graphics/Paint;

.field h:Landroid/graphics/Paint;

.field i:I

.field j:Z

.field k:Z

.field private l:I

.field private m:I

.field private n:I

.field o:Landroid/graphics/RectF;

.field private p:[Ljava/lang/String;

.field private q:Landroid/graphics/Path;

.field private r:Ljava/lang/String;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Matrix;

.field private u:F

.field v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "\u5de6\u6ed1\u6216\u70b9\u51fb"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/r;->a:Ljava/lang/String;

    const-string v0, "\u8df3\u8f6c\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/r;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/r;->c:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/r;->d:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/r;->e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/r;->f:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/r;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/r;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/e/r;->j:Z

    const/16 v3, 0xa0

    iput v3, p0, Lcom/ubix/ssp/ad/e/r;->l:I

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/r;->p:[Ljava/lang/String;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/r;->q:Landroid/graphics/Path;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/r;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/r;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/r;->s:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/r;->t:Landroid/graphics/Matrix;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/r;->u:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ubix/ic_full_slide_arrow.webp"

    invoke-static {p1, v0, v1, v2}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/r;->s:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/r;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/r;->c()V

    return-void
.end method

.method private c()V
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/r;->o:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/e/r;->j:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    add-int/lit8 v1, v1, 0x2

    :goto_0
    iput v1, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    :goto_1
    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/r;->l:I

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    iput v2, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    iput-boolean v3, p0, Lcom/ubix/ssp/ad/e/r;->k:Z

    iput-boolean v3, p0, Lcom/ubix/ssp/ad/e/r;->j:Z

    :cond_1
    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    if-gez v1, :cond_2

    iput v3, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/r;->j:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/r;->k:Z

    :cond_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/r;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/r;->c:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->n:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->n:I

    iget v3, p0, Lcom/ubix/ssp/ad/e/r;->l:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v5, p0, Lcom/ubix/ssp/ad/e/r;->m:I

    int-to-float v5, v5

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->q:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->q:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->q:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->n:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/r;->l:I

    sub-int v2, v1, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/ubix/ssp/ad/e/r;->m:I

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    const-string v2, "#66ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v2, "#40ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/ubix/ssp/ad/e/r;->n:I

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ubix/ssp/ad/e/r;->l:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/r;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->n:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/r;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/r;->c:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->n:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/r;->l:I

    sub-int v2, v1, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/ubix/ssp/ad/e/r;->m:I

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/r;->n:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/ubix/ssp/ad/e/r;->m:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ubix/ssp/ad/e/r;->n:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/ubix/ssp/ad/e/r;->m:I

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/r;->a()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/r;->v:Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/r;->a:Ljava/lang/String;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/r;->b:Ljava/lang/String;

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/r;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/r;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/r;->r:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public a(FF)Z
    .locals 8

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInside pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/r;->q:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/high16 v3, 0x41200000    # 10.0f

    sub-float v3, p2, v3

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

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    aget v4, v1, v6

    float-to-int v5, v4

    int-to-float v5, v5

    cmpg-float v5, v5, p2

    const/high16 v7, 0x3f800000    # 1.0f

    if-gtz v5, :cond_0

    add-float/2addr v4, v7

    cmpl-float v4, v4, p2

    if-ltz v4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTargetX="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\uff1brealX="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    aget p2, v1, v2

    iget v0, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    return v6

    :cond_0
    add-float/2addr v3, v7

    goto :goto_0

    :cond_1
    return v2
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/r;->a()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->o:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/e/r$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/r$a;-><init>(Lcom/ubix/ssp/ad/e/r;)V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->c:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->t:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->t:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->n:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/r;->l:I

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/ubix/ssp/ad/e/r;->i:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/ubix/ssp/ad/e/r;->m:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->s:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/r;->t:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/r;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->d:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/r;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->g:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->g:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ubix/ssp/ad/e/r;->u:F

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->g:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubix/ssp/ad/e/r;->u:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/r;->h:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/r;->r:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/r;->g:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/r;->r:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/r;->g:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v5, v5

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v5, v4

    iget v4, p0, Lcom/ubix/ssp/ad/e/r;->n:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v6, p0, Lcom/ubix/ssp/ad/e/r;->u:F

    mul-float/2addr v6, v3

    sub-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float/2addr v4, v2

    float-to-int v2, v4

    iget v4, p0, Lcom/ubix/ssp/ad/e/r;->m:I

    int-to-float v4, v4

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/r;->r:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    div-float/2addr v7, v6

    sub-float/2addr v4, v7

    float-to-int v4, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/r;->r:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    int-to-float v2, v2

    iget v8, p0, Lcom/ubix/ssp/ad/e/r;->u:F

    add-float v9, v2, v8

    int-to-float v4, v4

    add-int/lit8 v10, v1, 0x1

    int-to-float v11, v10

    mul-float/2addr v5, v11

    add-float/2addr v4, v5

    add-float/2addr v8, v4

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/r;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v9, v8, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/r;->r:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/r;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v1, v10

    goto :goto_0

    :cond_2
    return-void
.end method

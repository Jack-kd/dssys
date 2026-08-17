.class public Lcom/sigmob/sdk/base/views/an;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/RectF;

.field private e:F

.field private f:Ljava/lang/Float;

.field private g:F

.field private h:Landroid/graphics/Paint;

.field private i:F

.field private j:Landroid/graphics/PointF;

.field private k:Landroid/graphics/Path;

.field private l:Landroid/graphics/Paint;

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:Landroid/graphics/PointF;

.field private r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/an;->e:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/an;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/sigmob/sdk/base/views/an;->e:F

    const/high16 p2, 0x40400000    # 3.0f

    iput p2, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/an;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/sigmob/sdk/base/views/an;->e:F

    const/high16 p2, 0x40400000    # 3.0f

    iput p2, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/an;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->a:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/an;->a:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/an;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/an;->b:Landroid/graphics/Paint;

    const v3, -0x333334

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/an;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x42b80000    # 92.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iget v4, p0, Lcom/sigmob/sdk/base/views/an;->m:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    int-to-float v0, v0

    div-float/2addr v4, v0

    iput v4, p0, Lcom/sigmob/sdk/base/views/an;->r:F

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/sigmob/sdk/base/views/an;->i:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/an;->c:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/an;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/an;->j:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget v6, p0, Lcom/sigmob/sdk/base/views/an;->i:F

    invoke-direct {v0, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/an;->q:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/an;->k:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/an;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/an;->m:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/an;->i:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sigmob/sdk/base/views/an;->o:F

    iget v0, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sigmob/sdk/base/views/an;->p:F

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 4
    new-instance p1, Lcom/sigmob/sdk/base/views/G;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/base/views/G;-><init>(Lcom/sigmob/sdk/base/views/an;)V

    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/graphics/Path;Landroid/graphics/PointF;)V
    .locals 8

    .line 5
    iget v0, p2, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/an;->i:F

    float-to-double v2, v2

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/sigmob/sdk/base/views/an;->i:F

    add-float/2addr v1, v2

    iget v3, p2, Landroid/graphics/PointF;->x:F

    float-to-double v6, v3

    float-to-double v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v6, v2

    double-to-float v2, v6

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sigmob/sdk/base/views/an;->i:F

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/sigmob/sdk/base/views/an;->i:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/an;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/an;->a()V

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/base/views/an$1;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/base/views/an$1;-><init>(Lcom/sigmob/sdk/base/views/an;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a(F)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/an;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/an;->e:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    mul-float/2addr p1, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    const-string p1, "rotationX"

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/an;->l:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/sigmob/sdk/base/views/an;->e:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/an;->j:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/base/views/an;->a(Landroid/graphics/Path;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/an;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/an;->q:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/base/views/an;->a(Landroid/graphics/Path;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/an;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    iget v1, p0, Lcom/sigmob/sdk/base/views/an;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sigmob/sdk/base/views/an;->o:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/an;->p:F

    sub-float/2addr v1, v3

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/an;->c:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sigmob/sdk/base/views/an;->n:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    add-float/2addr v2, v1

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-virtual {v4, v0, v1, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/an;->c:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sigmob/sdk/base/views/an;->p:F

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/an;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/an;->e:F

    const v3, 0x3f7ae148    # 0.98f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    iget v2, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    iget v3, p0, Lcom/sigmob/sdk/base/views/an;->p:F

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    iget v2, p0, Lcom/sigmob/sdk/base/views/an;->o:F

    mul-float/2addr v3, v2

    iget v2, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    add-float/2addr v2, v3

    :goto_0
    add-float/2addr v2, v1

    iget v3, p0, Lcom/sigmob/sdk/base/views/an;->o:F

    add-float v4, v1, v3

    iget v5, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    add-float/2addr v4, v5

    iget v7, p0, Lcom/sigmob/sdk/base/views/an;->e:F

    const v8, 0x3e4ccccd    # 0.2f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    add-float/2addr v3, v1

    sub-float v4, v3, v5

    :cond_2
    iget-object v3, p0, Lcom/sigmob/sdk/base/views/an;->d:Landroid/graphics/RectF;

    iget v7, p0, Lcom/sigmob/sdk/base/views/an;->p:F

    add-float/2addr v0, v7

    iget v7, p0, Lcom/sigmob/sdk/base/views/an;->n:I

    int-to-float v7, v7

    sub-float/2addr v7, v5

    invoke-virtual {v3, v0, v2, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/an;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/an;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/an;->r:F

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/an;->n:I

    if-lez v2, :cond_3

    int-to-float v3, v2

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    :goto_1
    int-to-float v2, v2

    sub-float/2addr v2, v3

    div-float v8, v2, v6

    iget v2, p0, Lcom/sigmob/sdk/base/views/an;->o:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/an;->g:F

    sub-float v9, v1, v2

    add-float v10, v8, v3

    add-float v11, v9, v0

    iget-object v12, p0, Lcom/sigmob/sdk/base/views/an;->h:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p2, p0, Lcom/sigmob/sdk/base/views/an;->m:I

    iput p1, p0, Lcom/sigmob/sdk/base/views/an;->n:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/an;->a()V

    return-void
.end method

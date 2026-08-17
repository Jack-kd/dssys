.class public Lcom/sigmob/sdk/base/views/e;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/Path;

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/RectF;

.field private j:F

.field private k:F

.field private l:F

.field private m:Landroid/graphics/PointF;

.field private n:I

.field private o:Landroid/graphics/PointF;

.field private p:Landroid/graphics/PointF;

.field private q:Landroid/graphics/PathMeasure;

.field private r:Landroid/graphics/PathMeasure;

.field private s:F

.field private t:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, 0x3e4ccccd    # 0.2f

    iput p1, p0, Lcom/sigmob/sdk/base/views/e;->s:F

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/e;->a:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/e;->b:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/e;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/e;->t:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/e;->e:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/e;->f:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/e;->g:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/e;->h:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/e;->q:Landroid/graphics/PathMeasure;

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/e;->r:Landroid/graphics/PathMeasure;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/e;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3e4ccccd    # 0.2f

    iput p1, p0, Lcom/sigmob/sdk/base/views/e;->s:F

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/e;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e4ccccd    # 0.2f

    iput p1, p0, Lcom/sigmob/sdk/base/views/e;->s:F

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/e;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/e$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/e$1;-><init>(Lcom/sigmob/sdk/base/views/e;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private a(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 11

    .line 3
    iget v0, p3, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p2

    div-float/2addr v0, v1

    new-instance p2, Landroid/graphics/PointF;

    iget v1, p3, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p4

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v1, v5

    iget v5, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    sub-double v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v6, v9

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-direct {p2, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    iget v5, p3, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    sub-double v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v6, v9

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    sub-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr p3, v2

    invoke-direct {v1, v5, p3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p3, Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide v7, 0x3ff0c152382d7365L    # 1.0471975511965976

    sub-double v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float/2addr v0, p4

    sub-float/2addr v2, v0

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    sub-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr p4, v3

    add-float/2addr v0, p4

    invoke-direct {p3, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget p4, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget p2, v1, Landroid/graphics/PointF;->x:F

    iget p4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/e;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/e;->b()V

    return-void
.end method

.method private b()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    int-to-float v0, v0

    int-to-float v3, v2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, v3

    div-float v4, v0, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v6, v4, v5

    mul-float/2addr v6, v3

    float-to-int v3, v6

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sigmob/sdk/base/views/e;->j:F

    const v3, 0x3ecccccd    # 0.4f

    div-float/2addr v3, v4

    mul-float/2addr v4, v3

    mul-float/2addr v4, v0

    float-to-int v3, v4

    iput v3, p0, Lcom/sigmob/sdk/base/views/e;->n:I

    const v3, 0x3f490fdb

    iput v3, p0, Lcom/sigmob/sdk/base/views/e;->k:F

    mul-float/2addr v5, v2

    iput v5, p0, Lcom/sigmob/sdk/base/views/e;->l:F

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/e;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sigmob/sdk/base/views/e;->j:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/e;->c:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sigmob/sdk/base/views/e;->j:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    iget v4, p0, Lcom/sigmob/sdk/base/views/e;->l:F

    mul-float/2addr v4, v0

    iget v0, p0, Lcom/sigmob/sdk/base/views/e;->n:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    sub-float v0, v3, v4

    new-instance v4, Landroid/graphics/PointF;

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-direct {v4, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/sigmob/sdk/base/views/e;->m:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/e;->m:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float v5, v4, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v6, v3, v0

    add-float/2addr v4, v0

    add-float/2addr v3, v0

    invoke-direct {v1, v5, v6, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/e;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->m:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/sigmob/sdk/base/views/e;->k:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/e;->i:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/e;->m:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sigmob/sdk/base/views/e;->k:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/sigmob/sdk/base/views/e;->i:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v2

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/e;->o:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->m:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/sigmob/sdk/base/views/e;->k:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/e;->i:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/e;->m:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sigmob/sdk/base/views/e;->k:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/sigmob/sdk/base/views/e;->i:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v2

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v2, v4

    sub-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/e;->p:Landroid/graphics/PointF;

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 11

    .line 2
    iget v0, p3, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p2

    div-float/2addr v0, v1

    new-instance p2, Landroid/graphics/PointF;

    iget v1, p3, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p4

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v1, v5

    iget v5, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    sub-double v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v6, v9

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-direct {p2, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    iget v5, p3, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    sub-double v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v6, v9

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    sub-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr p3, v2

    invoke-direct {v1, v5, p3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p3, Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide v7, 0x4000c152382d7365L    # 2.0943951023931953

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float/2addr v0, p4

    add-float/2addr v2, v0

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    add-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr p4, v3

    add-float/2addr v0, p4

    invoke-direct {p3, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget p4, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget p2, v1, Landroid/graphics/PointF;->x:F

    iget p4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/base/views/e;->s:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/e;->i:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sigmob/sdk/base/views/e;->k:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v0

    const-wide v4, 0x4066800000000000L    # 180.0

    sub-double v2, v4, v2

    double-to-float v9, v2

    iget-object v7, p0, Lcom/sigmob/sdk/base/views/e;->i:Landroid/graphics/RectF;

    add-double/2addr v0, v4

    double-to-float v8, v0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sigmob/sdk/base/views/e;->a:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->e:Landroid/graphics/Path;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->t:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->t:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->i:Landroid/graphics/RectF;

    neg-float v2, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v5, 0x1

    invoke-virtual {p1, v1, v4, v2, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->q:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->e:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->q:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->q:Landroid/graphics/PathMeasure;

    iget v7, p0, Lcom/sigmob/sdk/base/views/e;->s:F

    mul-float/2addr p1, v7

    iget-object v7, p0, Lcom/sigmob/sdk/base/views/e;->t:Landroid/graphics/Path;

    invoke-virtual {v1, v0, p1, v7, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->t:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->f:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->f:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->t:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->t:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->i:Landroid/graphics/RectF;

    div-float/2addr v9, v3

    invoke-virtual {p1, v1, v4, v9, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->r:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->f:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->r:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->r:Landroid/graphics/PathMeasure;

    iget v2, p0, Lcom/sigmob/sdk/base/views/e;->s:F

    mul-float/2addr p1, v2

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/e;->t:Landroid/graphics/Path;

    invoke-virtual {v1, v0, p1, v2, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->t:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->c:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget p1, p0, Lcom/sigmob/sdk/base/views/e;->s:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->d:Landroid/graphics/Paint;

    const v1, -0x333334

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->g:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->g:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->m:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/e;->o:Landroid/graphics/PointF;

    iget v3, p0, Lcom/sigmob/sdk/base/views/e;->l:F

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sigmob/sdk/base/views/e;->a(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->d:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->h:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->h:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->h:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/e;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->p:Landroid/graphics/PointF;

    iget v2, p0, Lcom/sigmob/sdk/base/views/e;->l:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sigmob/sdk/base/views/e;->b(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/e;->h:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/e;->d:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/e;->a()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

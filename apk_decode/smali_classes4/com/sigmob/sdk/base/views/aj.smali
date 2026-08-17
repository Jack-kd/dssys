.class public Lcom/sigmob/sdk/base/views/aj;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/aj;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/aj;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/aj;->a()V

    return-void
.end method

.method private a()V
    .locals 0

    .line 1
    return-void
.end method

.method private a(Landroid/graphics/Path;Landroid/graphics/PointF;)V
    .locals 8

    .line 2
    iget v0, p2, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/aj;->b:I

    int-to-double v2, v2

    const-wide v4, 0x4000c152382d7365L    # 2.0943951023931953

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/sigmob/sdk/base/views/aj;->b:I

    int-to-float v3, v2

    add-float/2addr v1, v3

    iget v3, p2, Landroid/graphics/PointF;->x:F

    float-to-double v6, v3

    int-to-double v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v6, v2

    double-to-float v2, v6

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sigmob/sdk/base/views/aj;->b:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/sigmob/sdk/base/views/aj;->a:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sigmob/sdk/base/views/aj;->b:I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/aj;->d:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/aj;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/aj;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sigmob/sdk/base/views/aj;->a:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/aj;->c:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Lcom/sigmob/sdk/base/views/aj;->b:I

    int-to-float v2, v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aj;->d:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/base/views/aj;->a(Landroid/graphics/Path;Landroid/graphics/PointF;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aj;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/aj;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/aj;->b()V

    return-void
.end method

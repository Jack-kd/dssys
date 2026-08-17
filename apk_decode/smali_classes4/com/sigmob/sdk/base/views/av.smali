.class public Lcom/sigmob/sdk/base/views/av;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Path;

.field private c:I

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/RectF;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/av;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/av;->b:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/av;->a:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    div-float v3, v0, v3

    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Lcom/sigmob/sdk/base/views/av;->g:I

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Lcom/sigmob/sdk/base/views/av;->h:I

    mul-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/sigmob/sdk/base/views/av;->c:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v1

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    new-instance v4, Landroid/graphics/RectF;

    add-float/2addr v3, v0

    add-float/2addr v2, v1

    invoke-direct {v4, v0, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/sigmob/sdk/base/views/av;->f:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/av;->f:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/sigmob/sdk/base/views/av;->c:I

    int-to-float v4, v3

    add-float/2addr v2, v4

    iget v4, v1, Landroid/graphics/RectF;->top:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v3

    sub-float/2addr v5, v6

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-direct {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/av;->e:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/av;->f:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/sigmob/sdk/base/views/av;->c:I

    mul-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    sub-float/2addr v1, v4

    const v4, 0x400ccccd    # 2.2f

    div-float/2addr v1, v4

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/av;->f:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v5, v3

    iget v3, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v6, p0, Lcom/sigmob/sdk/base/views/av;->c:I

    mul-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    sub-float/2addr v1, v7

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/av;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v6

    sub-float/2addr v1, v4

    invoke-direct {v0, v2, v5, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/av;->d:Landroid/graphics/RectF;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/av;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/av;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/av;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/av;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/av;->f:Landroid/graphics/RectF;

    iget v2, p0, Lcom/sigmob/sdk/base/views/av;->g:I

    int-to-float v3, v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/av;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/av;->e:Landroid/graphics/RectF;

    iget v2, p0, Lcom/sigmob/sdk/base/views/av;->h:I

    int-to-float v3, v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/av;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/av;->d:Landroid/graphics/RectF;

    iget v2, p0, Lcom/sigmob/sdk/base/views/av;->h:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/av;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/av;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/av;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/av;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/av;->a()V

    return-void
.end method

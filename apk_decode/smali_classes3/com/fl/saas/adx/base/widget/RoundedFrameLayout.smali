.class public Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private borderColor:I

.field private final borderPaint:Landroid/graphics/Paint;

.field private borderWidth:F

.field private final path:Landroid/graphics/Path;

.field private radii:[F

.field private final rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->rectF:Landroid/graphics/RectF;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->radii:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderWidth:F

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->rectF:Landroid/graphics/RectF;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->radii:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderWidth:F

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->path:Landroid/graphics/Path;

    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->rectF:Landroid/graphics/RectF;

    const/16 p3, 0x8

    new-array p3, p3, [F

    iput-object p3, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->radii:[F

    const/4 p3, 0x0

    iput p3, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderColor:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderWidth:F

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    sget-object v1, Lcom/fl/saas/R$styleable;->FLRoundedFrameLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/fl/saas/R$styleable;->FLRoundedFrameLayout_fl_radius:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    sget v2, Lcom/fl/saas/R$styleable;->FLRoundedFrameLayout_fl_topLeftRadius:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    sget v3, Lcom/fl/saas/R$styleable;->FLRoundedFrameLayout_fl_topRightRadius:I

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    sget v4, Lcom/fl/saas/R$styleable;->FLRoundedFrameLayout_fl_bottomRightRadius:I

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    sget v5, Lcom/fl/saas/R$styleable;->FLRoundedFrameLayout_fl_bottomLeftRadius:I

    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    sget v5, Lcom/fl/saas/R$styleable;->FLRoundedFrameLayout_fl_borderColor:I

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderColor:I

    sget v0, Lcom/fl/saas/R$styleable;->FLRoundedFrameLayout_fl_borderWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderWidth:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, v2, v3, v4, p2}, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->setRadii(FFFF)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private setRadii(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->radii:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p2, v0, p1

    const/4 p1, 0x5

    aput p3, v0, p1

    const/4 p1, 0x4

    aput p3, v0, p1

    const/4 p1, 0x7

    aput p4, v0, p1

    const/4 p1, 0x6

    aput p4, v0, p1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->updatePath()V

    return-void
.end method

.method private updatePath()V
    .locals 4

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderWidth:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->rectF:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->updatePath()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    iput p1, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderColor:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    iput p1, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderWidth:F

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBottomLeftRadius(F)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->radii:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->updatePath()V

    return-void
.end method

.method public setBottomRightRadius(F)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->radii:[F

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->updatePath()V

    return-void
.end method

.method public setTopLeftRadius(F)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->radii:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->updatePath()V

    return-void
.end method

.method public setTopRightRadius(F)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->radii:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;->updatePath()V

    return-void
.end method

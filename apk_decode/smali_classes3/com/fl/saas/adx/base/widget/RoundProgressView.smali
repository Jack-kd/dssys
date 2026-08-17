.class public Lcom/fl/saas/adx/base/widget/RoundProgressView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mCurrentProgress:F

.field private mMaxProgress:F

.field private mProgressColor:I

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/fl/saas/adx/base/widget/RoundProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result p1

    iput p1, p0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    const-string p1, "#CD853F"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mProgressColor:I

    const/high16 p1, 0x42c80000    # 100.0f

    iput p1, p0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mMaxProgress:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mCurrentProgress:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/fl/saas/adx/base/widget/RoundProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mCurrentProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v6, v2

    sub-float v7, v6, v4

    invoke-direct {v3, v4, v4, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    sub-int v2, v1, v2

    int-to-float v7, v2

    iget v8, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v8

    sub-float/2addr v7, v9

    div-float/2addr v8, v5

    int-to-float v1, v1

    sub-float v9, v1, v8

    sub-float v10, v6, v8

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v8, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v8, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mProgressColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget v8, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mCurrentProgress:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    iget v9, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mMaxProgress:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    const/16 v10, 0x12

    const/high16 v11, 0x42100000    # 36.0f

    if-gt v8, v10, :cond_1

    mul-int/2addr v2, v8

    int-to-float v2, v2

    div-float/2addr v2, v11

    div-float/2addr v1, v5

    iget v3, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float v3, v6, v3

    invoke-virtual {v9, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    :goto_0
    sub-float/2addr v6, v2

    invoke-virtual {v9, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_1
    const/high16 v12, 0x41600000    # 14.0f

    const/16 v13, 0x20

    const/high16 v14, 0x42b40000    # 90.0f

    if-gt v8, v13, :cond_2

    div-float/2addr v1, v5

    iget v2, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float v2, v6, v2

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    div-float v1, v6, v5

    iget v2, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v6, v2

    invoke-virtual {v9, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    sub-int/2addr v8, v10

    mul-int/lit16 v8, v8, 0xb4

    int-to-float v1, v8

    div-float/2addr v1, v12

    invoke-virtual {v9, v3, v14, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_1

    :cond_2
    const/16 v10, 0x44

    const/high16 v15, 0x43340000    # 180.0f

    if-gt v8, v10, :cond_3

    sub-int/2addr v8, v13

    mul-int/2addr v2, v8

    int-to-float v2, v2

    div-float/2addr v2, v11

    div-float/2addr v1, v5

    iget v4, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float v4, v6, v4

    invoke-virtual {v9, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    div-float v1, v6, v5

    iget v4, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v6, v4

    invoke-virtual {v9, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v9, v3, v14, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    add-float/2addr v1, v2

    iget v2, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_3
    const/high16 v13, -0x3d4c0000    # -90.0f

    move/from16 v16, v5

    const/16 v5, 0x52

    if-gt v8, v5, :cond_4

    div-float v2, v1, v16

    iget v5, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v5, v5

    div-float v5, v5, v16

    sub-float v5, v6, v5

    invoke-virtual {v9, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    div-float v2, v6, v16

    iget v5, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v5, v5

    div-float v5, v5, v16

    sub-float/2addr v6, v5

    invoke-virtual {v9, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v9, v3, v14, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v2, v2

    div-float v2, v2, v16

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sub-int/2addr v8, v10

    mul-int/lit16 v8, v8, 0xb4

    int-to-float v1, v8

    div-float/2addr v1, v12

    invoke-virtual {v9, v4, v13, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_1

    :cond_4
    div-float v10, v1, v16

    iget v12, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v12, v12

    div-float v12, v12, v16

    sub-float v12, v6, v12

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Path;->moveTo(FF)V

    div-float v10, v6, v16

    iget v12, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v12, v12

    div-float v12, v12, v16

    sub-float v12, v6, v12

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v9, v3, v14, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sub-float/2addr v1, v10

    iget v3, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v3, v3

    div-float v3, v3, v16

    invoke-virtual {v9, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v9, v4, v13, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sub-int/2addr v8, v5

    mul-int/2addr v2, v8

    int-to-float v2, v2

    div-float/2addr v2, v11

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mStrokeWidth:I

    int-to-float v2, v2

    div-float v2, v2, v16

    goto/16 :goto_0

    :goto_2
    invoke-virtual {v1, v9, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mMaxProgress:F

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mMaxProgress:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/fl/saas/adx/base/widget/RoundProgressView;->mCurrentProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

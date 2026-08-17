.class public Lcom/meishu/sdk/core/view/RoundImageView;
.super Lcom/meishu/sdk/core/view/gif/GifImageView;
.source "SourceFile"


# instance fields
.field private borderColor:I

.field private borderRadii:[F

.field private borderRectF:Landroid/graphics/RectF;

.field private borderWidth:I

.field private context:Landroid/content/Context;

.field private cornerBottomLeftRadius:I

.field private cornerBottomRightRadius:I

.field private cornerRadius:I

.field private cornerTopLeftRadius:I

.field private cornerTopRightRadius:I

.field private height:I

.field private innerBorderColor:I

.field private innerBorderWidth:I

.field private isCircle:Z

.field private isCoverSrc:Z

.field private maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radius:F

.field private srcPath:Landroid/graphics/Path;

.field private srcRadii:[F

.field private srcRectF:Landroid/graphics/RectF;

.field private width:I

.field private xfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/meishu/sdk/core/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/view/gif/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p3, -0x1

    .line 4
    iput p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderColor:I

    .line 5
    iput p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->innerBorderColor:I

    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    .line 7
    sget-object p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    if-ge v0, p2, :cond_c

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p2

    .line 10
    sget p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView_ms_is_cover_src:I

    if-ne p2, p3, :cond_0

    .line 11
    iget-boolean p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCoverSrc:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCoverSrc:Z

    goto/16 :goto_1

    .line 12
    :cond_0
    sget p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView_ms_is_circle:I

    if-ne p2, p3, :cond_1

    .line 13
    iget-boolean p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCircle:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCircle:Z

    goto/16 :goto_1

    .line 14
    :cond_1
    sget p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView_ms_border_width:I

    if-ne p2, p3, :cond_2

    .line 15
    iget p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderWidth:I

    goto/16 :goto_1

    .line 16
    :cond_2
    sget p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView_ms_border_color:I

    if-ne p2, p3, :cond_3

    .line 17
    iget p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderColor:I

    goto/16 :goto_1

    .line 18
    :cond_3
    sget p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView_ms_inner_border_width:I

    if-ne p2, p3, :cond_4

    .line 19
    iget p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->innerBorderWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->innerBorderWidth:I

    goto :goto_1

    .line 20
    :cond_4
    sget p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView_ms_inner_border_color:I

    if-ne p2, p3, :cond_5

    .line 21
    iget p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->innerBorderColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->innerBorderColor:I

    goto :goto_1

    .line 22
    :cond_5
    sget p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView_ms_corner_radius:I

    if-ne p2, p3, :cond_6

    .line 23
    iget p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerRadius:I

    goto :goto_1

    .line 24
    :cond_6
    sget p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView_ms_corner_top_left_radius:I

    if-ne p2, p3, :cond_7

    .line 25
    iget p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerTopLeftRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerTopLeftRadius:I

    goto :goto_1

    .line 26
    :cond_7
    sget p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView_ms_corner_top_right_radius:I

    if-ne p2, p3, :cond_8

    .line 27
    iget p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerTopRightRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerTopRightRadius:I

    goto :goto_1

    .line 28
    :cond_8
    sget p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView_ms_corner_bottom_left_radius:I

    if-ne p2, p3, :cond_9

    .line 29
    iget p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerBottomLeftRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerBottomLeftRadius:I

    goto :goto_1

    .line 30
    :cond_9
    sget p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView_ms_corner_bottom_right_radius:I

    if-ne p2, p3, :cond_a

    .line 31
    iget p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerBottomRightRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerBottomRightRadius:I

    goto :goto_1

    .line 32
    :cond_a
    sget p3, Lcom/meishu/sdk/R$styleable;->ms_RoundImageView_ms_mask_color:I

    if-ne p2, p3, :cond_b

    .line 33
    iget p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->maskColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->maskColor:I

    :cond_b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 34
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x8

    .line 35
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderRadii:[F

    .line 36
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcRadii:[F

    .line 37
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderRectF:Landroid/graphics/RectF;

    .line 38
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 40
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    .line 41
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-gt p1, p2, :cond_d

    .line 42
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->xfermode:Landroid/graphics/Xfermode;

    goto :goto_2

    .line 43
    :cond_d
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->xfermode:Landroid/graphics/Xfermode;

    .line 44
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcPath:Landroid/graphics/Path;

    .line 45
    :goto_2
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/RoundImageView;->calculateRadii()V

    .line 46
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/RoundImageView;->clearInnerBorderWidth()V

    return-void
.end method

.method private calculateRadii()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCircle:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerRadius:I

    .line 7
    .line 8
    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v0, :cond_2

    .line 12
    .line 13
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderRadii:[F

    .line 14
    .line 15
    array-length v3, v0

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    iget v3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerRadius:I

    .line 19
    .line 20
    int-to-float v3, v3

    .line 21
    aput v3, v0, v2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcRadii:[F

    .line 24
    .line 25
    iget v4, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderWidth:I

    .line 26
    .line 27
    int-to-float v4, v4

    .line 28
    div-float/2addr v4, v1

    .line 29
    sub-float/2addr v3, v4

    .line 30
    aput v3, v0, v2

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    return-void

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderRadii:[F

    .line 37
    .line 38
    iget v3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerTopLeftRadius:I

    .line 39
    .line 40
    int-to-float v3, v3

    .line 41
    const/4 v4, 0x1

    .line 42
    aput v3, v0, v4

    .line 43
    .line 44
    aput v3, v0, v2

    .line 45
    .line 46
    iget v5, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerTopRightRadius:I

    .line 47
    .line 48
    int-to-float v5, v5

    .line 49
    const/4 v6, 0x3

    .line 50
    aput v5, v0, v6

    .line 51
    .line 52
    const/4 v7, 0x2

    .line 53
    aput v5, v0, v7

    .line 54
    .line 55
    iget v8, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerBottomRightRadius:I

    .line 56
    .line 57
    int-to-float v8, v8

    .line 58
    const/4 v9, 0x5

    .line 59
    aput v8, v0, v9

    .line 60
    .line 61
    const/4 v10, 0x4

    .line 62
    aput v8, v0, v10

    .line 63
    .line 64
    iget v11, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerBottomLeftRadius:I

    .line 65
    .line 66
    int-to-float v11, v11

    .line 67
    const/4 v12, 0x7

    .line 68
    aput v11, v0, v12

    .line 69
    .line 70
    const/4 v13, 0x6

    .line 71
    aput v11, v0, v13

    .line 72
    .line 73
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcRadii:[F

    .line 74
    .line 75
    iget v14, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderWidth:I

    .line 76
    .line 77
    int-to-float v14, v14

    .line 78
    div-float/2addr v14, v1

    .line 79
    sub-float/2addr v3, v14

    .line 80
    aput v3, v0, v4

    .line 81
    .line 82
    aput v3, v0, v2

    .line 83
    .line 84
    sub-float/2addr v5, v14

    .line 85
    aput v5, v0, v6

    .line 86
    .line 87
    aput v5, v0, v7

    .line 88
    .line 89
    sub-float/2addr v8, v14

    .line 90
    aput v8, v0, v9

    .line 91
    .line 92
    aput v8, v0, v10

    .line 93
    .line 94
    sub-float/2addr v11, v14

    .line 95
    aput v11, v0, v12

    .line 96
    .line 97
    aput v11, v0, v13

    .line 98
    .line 99
    return-void
.end method

.method private calculateRadiiAndRectF(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerRadius:I

    .line 5
    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/RoundImageView;->calculateRadii()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/RoundImageView;->initBorderRectF()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private clearInnerBorderWidth()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCircle:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->innerBorderWidth:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCircle:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderWidth:I

    .line 6
    .line 7
    const/high16 v1, 0x40000000    # 2.0f

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget v2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderColor:I

    .line 12
    .line 13
    iget v3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->radius:F

    .line 14
    .line 15
    int-to-float v4, v0

    .line 16
    div-float/2addr v4, v1

    .line 17
    sub-float/2addr v3, v4

    .line 18
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/meishu/sdk/core/view/RoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;IIF)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->innerBorderWidth:I

    .line 22
    .line 23
    if-lez v0, :cond_2

    .line 24
    .line 25
    iget v2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->innerBorderColor:I

    .line 26
    .line 27
    iget v3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->radius:F

    .line 28
    .line 29
    iget v4, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderWidth:I

    .line 30
    .line 31
    int-to-float v4, v4

    .line 32
    sub-float/2addr v3, v4

    .line 33
    int-to-float v4, v0

    .line 34
    div-float/2addr v4, v1

    .line 35
    sub-float/2addr v3, v4

    .line 36
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/meishu/sdk/core/view/RoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;IIF)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget v6, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderWidth:I

    .line 41
    .line 42
    if-lez v6, :cond_2

    .line 43
    .line 44
    iget v7, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderColor:I

    .line 45
    .line 46
    iget-object v8, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderRectF:Landroid/graphics/RectF;

    .line 47
    .line 48
    iget-object v9, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderRadii:[F

    .line 49
    .line 50
    move-object v4, p0

    .line 51
    move-object v5, p1

    .line 52
    invoke-direct/range {v4 .. v9}, Lcom/meishu/sdk/core/view/RoundImageView;->drawRectFBorder(Landroid/graphics/Canvas;IILandroid/graphics/RectF;[F)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method private drawCircleBorder(Landroid/graphics/Canvas;IIF)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/meishu/sdk/core/view/RoundImageView;->initBorderPaint(II)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    .line 5
    .line 6
    iget p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->width:I

    .line 7
    .line 8
    int-to-float p3, p3

    .line 9
    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr p3, v0

    .line 12
    iget v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->height:I

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    div-float/2addr v1, v0

    .line 16
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 17
    .line 18
    invoke-virtual {p2, p3, v1, p4, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    .line 22
    .line 23
    iget-object p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private drawRectFBorder(Landroid/graphics/Canvas;IILandroid/graphics/RectF;[F)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/meishu/sdk/core/view/RoundImageView;->initBorderPaint(II)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    .line 5
    .line 6
    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 7
    .line 8
    invoke-virtual {p2, p4, p5, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    .line 12
    .line 13
    iget-object p3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private initBorderPaint(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 7
    .line 8
    int-to-float p1, p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 18
    .line 19
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private initBorderRectF()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCircle:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderRectF:Landroid/graphics/RectF;

    .line 6
    .line 7
    iget v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderWidth:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr v1, v2

    .line 13
    iget v2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->width:I

    .line 14
    .line 15
    int-to-float v2, v2

    .line 16
    sub-float/2addr v2, v1

    .line 17
    iget v3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->height:I

    .line 18
    .line 19
    int-to-float v3, v3

    .line 20
    sub-float/2addr v3, v1

    .line 21
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private initSrcRectF()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCircle:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->width:I

    .line 6
    .line 7
    iget v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->height:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->radius:F

    .line 18
    .line 19
    iget-object v2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    .line 20
    .line 21
    iget v3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->width:I

    .line 22
    .line 23
    int-to-float v3, v3

    .line 24
    div-float/2addr v3, v1

    .line 25
    sub-float v4, v3, v0

    .line 26
    .line 27
    iget v5, p0, Lcom/meishu/sdk/core/view/RoundImageView;->height:I

    .line 28
    .line 29
    int-to-float v5, v5

    .line 30
    div-float/2addr v5, v1

    .line 31
    sub-float v1, v5, v0

    .line 32
    .line 33
    add-float/2addr v3, v0

    .line 34
    add-float/2addr v5, v0

    .line 35
    invoke-virtual {v2, v4, v1, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    .line 40
    .line 41
    iget v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->width:I

    .line 42
    .line 43
    int-to-float v1, v1

    .line 44
    iget v2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->height:I

    .line 45
    .line 46
    int-to-float v2, v2

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 49
    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCoverSrc:Z

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderRectF:Landroid/graphics/RectF;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    .line 58
    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method public isCircle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCircle:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/RoundImageView;->clearInnerBorderWidth()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/RoundImageView;->initSrcRectF()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public isCoverSrc(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCoverSrc:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/RoundImageView;->initSrcRectF()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCoverSrc:Z

    .line 10
    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->width:I

    .line 16
    .line 17
    iget v3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderWidth:I

    .line 18
    .line 19
    mul-int/lit8 v3, v3, 0x2

    .line 20
    .line 21
    sub-int v4, v0, v3

    .line 22
    .line 23
    iget v5, p0, Lcom/meishu/sdk/core/view/RoundImageView;->innerBorderWidth:I

    .line 24
    .line 25
    mul-int/lit8 v5, v5, 0x2

    .line 26
    .line 27
    sub-int/2addr v4, v5

    .line 28
    int-to-float v4, v4

    .line 29
    const/high16 v6, 0x3f800000    # 1.0f

    .line 30
    .line 31
    mul-float/2addr v4, v6

    .line 32
    int-to-float v0, v0

    .line 33
    div-float/2addr v4, v0

    .line 34
    iget v7, p0, Lcom/meishu/sdk/core/view/RoundImageView;->height:I

    .line 35
    .line 36
    sub-int v3, v7, v3

    .line 37
    .line 38
    sub-int/2addr v3, v5

    .line 39
    int-to-float v3, v3

    .line 40
    mul-float/2addr v3, v6

    .line 41
    int-to-float v5, v7

    .line 42
    div-float/2addr v3, v5

    .line 43
    div-float/2addr v0, v1

    .line 44
    div-float/2addr v5, v1

    .line 45
    invoke-virtual {p1, v4, v3, v0, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 59
    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->isCircle:Z

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    .line 66
    .line 67
    iget v3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->width:I

    .line 68
    .line 69
    int-to-float v3, v3

    .line 70
    div-float/2addr v3, v1

    .line 71
    iget v4, p0, Lcom/meishu/sdk/core/view/RoundImageView;->height:I

    .line 72
    .line 73
    int-to-float v4, v4

    .line 74
    div-float/2addr v4, v1

    .line 75
    iget v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->radius:F

    .line 76
    .line 77
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 78
    .line 79
    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcRadii:[F

    .line 88
    .line 89
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 101
    .line 102
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->xfermode:Landroid/graphics/Xfermode;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 112
    .line 113
    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    .line 116
    const/16 v1, 0x1b

    .line 117
    .line 118
    if-gt v0, v1, :cond_2

    .line 119
    .line 120
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 123
    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcPath:Landroid/graphics/Path;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcRectF:Landroid/graphics/RectF;

    .line 131
    .line 132
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 133
    .line 134
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcPath:Landroid/graphics/Path;

    .line 138
    .line 139
    iget-object v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    .line 140
    .line 141
    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 142
    .line 143
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcPath:Landroid/graphics/Path;

    .line 147
    .line 148
    iget-object v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 149
    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->srcPath:Landroid/graphics/Path;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 156
    .line 157
    .line 158
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 161
    .line 162
    .line 163
    iget v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->maskColor:I

    .line 164
    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    iget-object v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 168
    .line 169
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->path:Landroid/graphics/Path;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->paint:Landroid/graphics/Paint;

    .line 175
    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/RoundImageView;->drawBorders(Landroid/graphics/Canvas;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->width:I

    .line 5
    .line 6
    iput p2, p0, Lcom/meishu/sdk/core/view/RoundImageView;->height:I

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/RoundImageView;->initBorderRectF()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/RoundImageView;->initSrcRectF()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    float-to-int p1, p1

    .line 9
    iput p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->borderWidth:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/RoundImageView;->calculateRadiiAndRectF(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setCornerBottomLeftRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    float-to-int p1, p1

    .line 9
    iput p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerBottomLeftRadius:I

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/RoundImageView;->calculateRadiiAndRectF(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setCornerBottomRightRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    float-to-int p1, p1

    .line 9
    iput p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerBottomRightRadius:I

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/RoundImageView;->calculateRadiiAndRectF(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    float-to-int p1, p1

    .line 9
    iput p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerRadius:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/RoundImageView;->calculateRadiiAndRectF(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setCornerTopLeftRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    float-to-int p1, p1

    .line 9
    iput p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerTopLeftRadius:I

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/RoundImageView;->calculateRadiiAndRectF(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setCornerTopRightRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    float-to-int p1, p1

    .line 9
    iput p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->cornerTopRightRadius:I

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/RoundImageView;->calculateRadiiAndRectF(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setInnerBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->innerBorderColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setInnerBorderWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/RoundImageView;->context:Landroid/content/Context;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    float-to-int p1, p1

    .line 9
    iput p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->innerBorderWidth:I

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/RoundImageView;->clearInnerBorderWidth()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setMaskColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/RoundImageView;->maskColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

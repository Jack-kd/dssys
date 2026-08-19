.class public Lcom/fl/saas/adx/base/widget/CircularCountDownView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mBgColor:I

.field private mCurrentAngle:F

.field private mCurrentProgress:F

.field private mEndAngle:I

.field private mMaxProgress:F

.field private mProgressColor:I

.field private mProgressbarBgColor:I

.field private mRadius:I

.field private mStartAngle:I

.field private mStrokeWidth:I

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSize:F

.field private final skipDes:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/fl/saas/adx/base/widget/CircularCountDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/fl/saas/adx/base/widget/CircularCountDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mStartAngle:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mCurrentAngle:F

    const/16 v0, 0x168

    iput v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mEndAngle:I

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getSysLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh-CN"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8df3\u8fc7 "

    goto :goto_0

    :cond_0
    const-string v0, "Skip "

    :goto_0
    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->skipDes:Ljava/lang/String;

    sget-object v1, Lcom/fl/saas/R$styleable;->FLCircularCountDownView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/fl/saas/R$styleable;->FLCircularCountDownView_fl_radius:I

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mRadius:I

    sget p2, Lcom/fl/saas/R$styleable;->FLCircularCountDownView_fl_strokeWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mStrokeWidth:I

    sget p2, Lcom/fl/saas/R$styleable;->FLCircularCountDownView_fl_centerBackgroundColor:I

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mBgColor:I

    sget p2, Lcom/fl/saas/R$styleable;->FLCircularCountDownView_fl_progressbarBackgroundColor:I

    const-string v1, "#F4F4F4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mProgressbarBgColor:I

    sget p2, Lcom/fl/saas/R$styleable;->FLCircularCountDownView_fl_progressbarColor:I

    const-string v1, "#CD853F"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mProgressColor:I

    sget p2, Lcom/fl/saas/R$styleable;->FLCircularCountDownView_fl_maxProgress:I

    const/16 v1, 0x64

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mMaxProgress:F

    sget p2, Lcom/fl/saas/R$styleable;->FLCircularCountDownView_fl_progress:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mCurrentProgress:F

    sget p2, Lcom/fl/saas/R$styleable;->FLCircularCountDownView_fl_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mText:Ljava/lang/String;

    sget p2, Lcom/fl/saas/R$styleable;->FLCircularCountDownView_fl_textColor:I

    const-string p3, "#696969"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mTextColor:I

    sget p2, Lcom/fl/saas/R$styleable;->FLCircularCountDownView_fl_textSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/4 v0, 0x2

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mTextSize:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private drawCenterBg(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 6

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mStrokeWidth:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mBgColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mStartAngle:I

    int-to-float v2, v0

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mEndAngle:I

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCenterText(Landroid/graphics/Canvas;I)V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v1, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v1, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mText:Ljava/lang/String;

    int-to-float p2, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v2, p2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 6

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mStrokeWidth:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mProgressColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mCurrentProgress:F

    iget v1, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mMaxProgress:F

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v3, v0, v1

    iput v3, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mCurrentAngle:F

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mStartAngle:I

    int-to-float v2, v0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawProgressbarBg(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 6

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mStrokeWidth:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mProgressbarBgColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mStartAngle:I

    int-to-float v2, v0

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mEndAngle:I

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget v2, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mStrokeWidth:I

    int-to-float v3, v2

    iput v3, v1, Landroid/graphics/RectF;->left:F

    iput v3, v1, Landroid/graphics/RectF;->top:F

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, v1}, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->drawCenterBg(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    invoke-direct {p0, p1, v1}, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->drawProgressbarBg(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    invoke-direct {p0, p1, v1}, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->drawProgress(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    invoke-direct {p0, p1, v0}, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->drawCenterText(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mRadius:I

    mul-int/lit8 p1, p1, 0x2

    :goto_0
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mMaxProgress:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mCurrentProgress:F

    div-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mCurrentAngle:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Progress value can not be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mText:Ljava/lang/String;

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mTextColor:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Color value can not be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/CircularCountDownView;->mTextSize:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "textSize can not be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

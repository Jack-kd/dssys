.class public Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;
    }
.end annotation


# static fields
.field public static final SCALE:F = 1.0f

.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_FINISH:I = 0x3

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_PAUSE:I = 0x2

.field public static final STYLE_BALL_JUMP:I = 0x2

.field public static final STYLE_BALL_PULSE:I = 0x1


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundSecondColor:I

.field private mBallRadius:F

.field private mBallSpacing:F

.field private mBallStyle:I

.field private mBorderWidth:F

.field private mButtonRadius:F

.field private mCurrentText:Ljava/lang/CharSequence;

.field private mMaxProgress:I

.field private mMinProgress:I

.field private mProgress:F

.field private mProgressAnimation:Landroid/animation/ValueAnimator;

.field private mProgressPercent:F

.field private mProgressTextGradient:Landroid/graphics/LinearGradient;

.field private mState:I

.field private mTextBottomBorder:F

.field private mTextColor:I

.field private mTextCoverColor:I

.field private volatile mTextPaint:Landroid/graphics/Paint;

.field private mTextRightBorder:F

.field private mToProgress:F

.field private scaleFloats:[F

.field private showBorder:Z

.field private translateYFloats:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    iput p3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBallStyle:I

    const/high16 p3, -0x40800000    # -1.0f

    iput p3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgress:F

    const/high16 p3, 0x40800000    # 4.0f

    iput p3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBallSpacing:F

    const/high16 p3, 0x40c00000    # 6.0f

    iput p3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBallRadius:F

    const/4 p3, 0x3

    new-array v0, p3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->scaleFloats:[F

    new-array p3, p3, [F

    iput-object p3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->translateYFloats:[F

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->init()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->setupAnimations()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;)F
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgress:F

    return p0
.end method

.method public static synthetic access$002(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;F)F
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgress:F

    return p1
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;)F
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mToProgress:F

    return p0
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;)[F
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->scaleFloats:[F

    return-object p0
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;)[F
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->translateYFloats:[F

    return-object p0
.end method

.method private createBallJumpAnimators()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x8c

    const/16 v2, 0xd2

    const/16 v3, 0x46

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    iget v5, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextBottomBorder:F

    iget v6, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBallRadius:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    sub-float v6, v5, v6

    new-array v4, v4, [F

    aput v5, v4, v2

    const/4 v7, 0x1

    aput v6, v4, v7

    const/4 v6, 0x2

    aput v5, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x258

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget v5, v1, v3

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v5, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$3;

    invoke-direct {v5, p0, v3}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$3;-><init>(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createBallPulseAnimators()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xf0

    const/16 v2, 0x168

    const/16 v3, 0x78

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x2ee

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget v4, v1, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v4, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$2;

    invoke-direct {v4, p0, v2}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$2;-><init>(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private dp2px(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 9

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundBounds:Landroid/graphics/RectF;

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->showBorder:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBorderWidth:F

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput v3, v0, Landroid/graphics/RectF;->left:F

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBorderWidth:F

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-boolean v3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->showBorder:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBorderWidth:F

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-boolean v3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->showBorder:Z

    if-eqz v3, :cond_3

    iget v4, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBorderWidth:F

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    sub-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mButtonRadius:F

    iget-object v3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mState:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    return-void

    :cond_5
    move-object v3, p1

    goto :goto_4

    :cond_6
    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgress:F

    iget v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mMaxProgress:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgressPercent:F

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundSecondColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mButtonRadius:F

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgressPercent:F

    mul-float v6, v1, v2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    :goto_4
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mButtonRadius:F

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLoadingBall(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextRightBorder:F

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBallRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBallSpacing:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextBottomBorder:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->translateYFloats:[F

    aget v1, v1, v0

    iget v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBallRadius:F

    iget-object v3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->scaleFloats:[F

    aget v3, v3, v0

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawTextAbove(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v4, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v6, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    sub-float/2addr v2, v4

    iget-object v4, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mCurrentText:Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    const-string v4, ""

    iput-object v4, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mCurrentText:Ljava/lang/CharSequence;

    :cond_0
    iget-object v4, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mCurrentText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iput v2, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextBottomBorder:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    div-float/2addr v6, v5

    iput v6, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextRightBorder:F

    iget v6, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mState:I

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    const/4 v8, 0x1

    if-eq v6, v8, :cond_2

    if-eq v6, v3, :cond_2

    const/4 v3, 0x3

    if-eq v6, v3, :cond_1

    return-void

    :cond_1
    iget-object v3, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextCoverColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mCurrentText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    div-float/2addr v6, v5

    iget-object v4, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-direct/range {p0 .. p1}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->drawLoadingBall(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget v9, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgressPercent:F

    mul-float/2addr v6, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v3

    int-to-float v9, v9

    div-float v10, v4, v5

    sub-float/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    div-int/2addr v11, v3

    int-to-float v11, v11

    add-float/2addr v11, v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    div-int/2addr v12, v3

    int-to-float v12, v12

    sub-float/2addr v10, v12

    add-float/2addr v10, v6

    div-float/2addr v10, v4

    cmpg-float v12, v6, v9

    if-gtz v12, :cond_3

    iget-object v3, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextColor:I

    :goto_0
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    cmpg-float v9, v9, v6

    if-gez v9, :cond_4

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_4

    new-instance v11, Landroid/graphics/LinearGradient;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    div-float v12, v6, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    div-float v14, v6, v5

    iget v6, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextCoverColor:I

    iget v7, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextColor:I

    filled-new-array {v6, v7}, [I

    move-result-object v16

    const v6, 0x3a83126f    # 0.001f

    add-float/2addr v6, v10

    new-array v3, v3, [F

    const/4 v7, 0x0

    aput v10, v3, v7

    aput v6, v3, v8

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v17, v3

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgressTextGradient:Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgressTextGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextCoverColor:I

    goto :goto_0

    :goto_1
    iget-object v3, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mCurrentText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    div-float/2addr v6, v5

    iget-object v4, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_5
    iget-object v3, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextCoverColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mCurrentText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    div-float/2addr v6, v5

    iget-object v4, v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawing(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->drawTextAbove(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private init()V
    .locals 4

    const/16 v0, 0x64

    iput v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mMaxProgress:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mMinProgress:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgress:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->showBorder:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->dp2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iput v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mState:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget-object v0, Lcom/fl/saas/R$styleable;->FLAdxDownloadProgressButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/fl/saas/R$styleable;->FLAdxDownloadProgressButton_fl_adx_progress_btn_background_color:I

    const-string v0, "#00C983"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundColor:I

    sget p2, Lcom/fl/saas/R$styleable;->FLAdxDownloadProgressButton_fl_adx_progress_btn_background_second_color:I

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundSecondColor:I

    sget p2, Lcom/fl/saas/R$styleable;->FLAdxDownloadProgressButton_fl_adx_progress_btn_radius:I

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->dp2px(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mButtonRadius:F

    sget p2, Lcom/fl/saas/R$styleable;->FLAdxDownloadProgressButton_fl_adx_progress_btn_text_color:I

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBackgroundColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextColor:I

    sget p2, Lcom/fl/saas/R$styleable;->FLAdxDownloadProgressButton_fl_adx_progress_btn_text_cover_color:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextCoverColor:I

    sget p2, Lcom/fl/saas/R$styleable;->FLAdxDownloadProgressButton_fl_adx_progress_btn_border_width:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->dp2px(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBorderWidth:F

    sget p2, Lcom/fl/saas/R$styleable;->FLAdxDownloadProgressButton_fl_adx_progress_btn_ball_style:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBallStyle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private setBallStyle(I)V
    .locals 1

    iput p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBallStyle:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->createBallPulseAnimators()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mAnimators:Ljava/util/ArrayList;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->createBallJumpAnimators()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private setupAnimations()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgressAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$1;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$1;-><init>(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBallStyle:I

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->setBallStyle(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimators()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopAnimators()V
    .locals 5

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getBorderWidth()F
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBorderWidth:F

    return v0
.end method

.method public getButtonRadius()F
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mButtonRadius:F

    return v0
.end method

.method public getCurrentText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mCurrentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMaxProgress()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mMaxProgress:I

    return v0
.end method

.method public getMinProgress()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mMinProgress:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgress:F

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mState:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextColor:I

    return v0
.end method

.method public getTextCoverColor()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextCoverColor:I

    return v0
.end method

.method public isShowBorder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->showBorder:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->drawing(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->access$400(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mState:I

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->access$500(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgress:F

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->access$600(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mCurrentText:Ljava/lang/CharSequence;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;

    iget v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgress:F

    float-to-int v2, v2

    iget v3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mState:I

    iget-object v4, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mCurrentText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;-><init>(Landroid/os/Parcelable;IILjava/lang/String;)V

    return-object v1
.end method

.method public setBorderWidth(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->dp2px(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mBorderWidth:F

    return-void
.end method

.method public setButtonRadius(F)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mButtonRadius:F

    return-void
.end method

.method public setCurrentText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mCurrentText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mMaxProgress:I

    return-void
.end method

.method public setMinProgress(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mMinProgress:I

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgress:F

    return-void
.end method

.method public setProgressText(Ljava/lang/String;I)V
    .locals 3

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mMinProgress:I

    const-string v1, "%"

    if-lt p2, v0, :cond_1

    iget v2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mMaxProgress:I

    if-gt p2, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mCurrentText:Ljava/lang/CharSequence;

    int-to-float p1, p2

    iput p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mToProgress:F

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgressAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgressAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->resume()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgressAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgressAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    if-ge p2, v0, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgress:F

    return-void

    :cond_2
    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mMaxProgress:I

    if-le p2, v0, :cond_3

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mProgress:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mCurrentText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setShowBorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->showBorder:Z

    return-void
.end method

.method public setState(I)V
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mState:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mState:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->startAnimators()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->stopAnimators()V

    :cond_1
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextColor:I

    return-void
.end method

.method public setTextCoverColor(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->mTextCoverColor:I

    return-void
.end method

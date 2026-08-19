.class public Lcom/sigmob/sdk/base/views/ao;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Path;

.field private n:Landroid/animation/AnimatorSet;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/ao;->m:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/ao;->b:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ao;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ao;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ao;->c()V

    return-void
.end method

.method private a(I)Landroid/animation/Animator;
    .locals 8

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-float p1, p1

    const/4 v1, 0x3

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v5, 0x1

    aput p1, v2, v5

    const/4 p1, 0x2

    aput v4, v2, p1

    const-string v6, "rotation"

    invoke-static {p0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v6, p0, Lcom/sigmob/sdk/base/views/ao;->l:I

    neg-int v6, v6

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    new-array v1, v1, [F

    aput v4, v1, v3

    aput v6, v1, v5

    aput v4, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Lcom/sigmob/sdk/base/views/J;

    invoke-direct {v4, p0}, Lcom/sigmob/sdk/base/views/J;-><init>(Lcom/sigmob/sdk/base/views/ao;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v2, p1, v3

    aput-object v1, p1, v5

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/base/views/ao;->e:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/ao;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ao;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/ao;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/ao;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/views/ao;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/ao;->n:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/base/views/ao;->d:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/views/ao;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/ao;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/ao$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/ao$1;-><init>(Lcom/sigmob/sdk/base/views/ao;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private synthetic c(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/base/views/ao;->c:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/views/ao;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/ao;->c(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/views/ao;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/sigmob/sdk/base/views/ao;->o:Z

    return p0
.end method

.method private d()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ao;->l:I

    iget v1, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ao;->g:I

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/ao;->g:I

    int-to-float v1, v1

    const/high16 v2, 0x42960000    # 75.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ao;->f:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/ao;->g:I

    int-to-float v3, v2

    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v3, v4

    div-float/2addr v0, v3

    int-to-float v3, v2

    mul-float/2addr v0, v3

    const/high16 v3, 0x41300000    # 11.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ao;->h:I

    iget v0, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/ao;->g:I

    int-to-float v5, v2

    mul-float/2addr v5, v4

    div-float/2addr v0, v5

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v0, v5

    int-to-float v5, v2

    mul-float/2addr v0, v5

    float-to-int v0, v0

    mul-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ao;->i:I

    iget v0, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/ao;->g:I

    int-to-float v2, v1

    mul-float/2addr v2, v4

    div-float/2addr v0, v2

    mul-float/2addr v0, v3

    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ao;->j:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ao;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ao;->n:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ao;->n:Landroid/animation/AnimatorSet;

    const/16 v0, -0x2d

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/views/ao;->a(I)Landroid/animation/Animator;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/base/views/ao;->a(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ao;->getFlipLeftAnimation()Landroid/animation/Animator;

    move-result-object v2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ao;->getFlipRightAnimation()Landroid/animation/Animator;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/ao;->n:Landroid/animation/AnimatorSet;

    filled-new-array {v0, v1, v2, v3}, [Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ao;->n:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sigmob/sdk/base/views/ao$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/ao$2;-><init>(Lcom/sigmob/sdk/base/views/ao;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/ao;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ao;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method private getFlipLeftAnimation()Landroid/animation/Animator;
    .locals 9

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "rotationY"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    new-array v1, v1, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v1, v4

    const/4 v6, 0x1

    aput v3, v1, v6

    const/4 v3, 0x2

    aput v5, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v5, Lcom/sigmob/sdk/base/views/I;

    invoke-direct {v5, p0}, Lcom/sigmob/sdk/base/views/I;-><init>(Lcom/sigmob/sdk/base/views/ao;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x3e8

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v4

    aput-object v1, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x42340000    # 45.0f
        0x0
    .end array-data
.end method

.method private getFlipRightAnimation()Landroid/animation/Animator;
    .locals 9

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "rotationY"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    neg-int v3, v3

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    new-array v1, v1, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v1, v4

    const/4 v6, 0x1

    aput v3, v1, v6

    const/4 v3, 0x2

    aput v5, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v5, Lcom/sigmob/sdk/base/views/H;

    invoke-direct {v5, p0}, Lcom/sigmob/sdk/base/views/H;-><init>(Lcom/sigmob/sdk/base/views/ao;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x3e8

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v4

    aput-object v1, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        -0x3dcc0000    # -45.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/ao;->o:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ao;->n:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/ao;->o:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ao;->n:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/ao;->b()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sigmob/sdk/base/views/ao;->l:I

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ao;->m:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ao;->b:Landroid/graphics/RectF;

    iget v2, p0, Lcom/sigmob/sdk/base/views/ao;->g:I

    int-to-float v3, v2

    int-to-float v4, v2

    iget v5, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    iget v6, p0, Lcom/sigmob/sdk/base/views/ao;->l:I

    sub-int/2addr v6, v2

    int-to-float v2, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ao;->m:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/ao;->b:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sigmob/sdk/base/views/ao;->f:I

    int-to-float v4, v3

    int-to-float v3, v3

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ao;->m:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ao;->m:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sigmob/sdk/base/views/ao;->l:I

    int-to-float v4, v1

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/ao;->l:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/ao;->c:F

    add-float/2addr v2, v1

    iget v1, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    int-to-float v3, v1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    neg-int v0, v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    iget v3, p0, Lcom/sigmob/sdk/base/views/ao;->d:F

    add-float v1, v0, v3

    iget v0, p0, Lcom/sigmob/sdk/base/views/ao;->l:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/ao;->e:F

    add-float/2addr v1, v2

    int-to-float v0, v0

    const v3, 0x3fcccccd    # 1.6f

    mul-float/2addr v0, v3

    add-float v3, v0, v2

    iget v0, p0, Lcom/sigmob/sdk/base/views/ao;->l:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/ao;->k:I

    iget v1, p0, Lcom/sigmob/sdk/base/views/ao;->h:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/sigmob/sdk/base/views/ao;->l:I

    iget v3, p0, Lcom/sigmob/sdk/base/views/ao;->j:I

    sub-int/2addr v2, v3

    move v3, v1

    int-to-float v1, v0

    move v4, v2

    int-to-float v2, v4

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/sigmob/sdk/base/views/ao;->i:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v5, v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/sigmob/sdk/base/views/ao;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ao;->c()V

    return-void
.end method

.class public Lcom/sigmob/sdk/base/views/aa;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private description:Ljava/lang/String;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/Path;

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private final p:Landroid/os/Handler;

.field private q:I

.field private r:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/aa;->p:Landroid/os/Handler;

    const-string p1, "#FF5A57"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/base/views/aa;->q:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/aa;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/aa;->p:Landroid/os/Handler;

    const-string p1, "#FF5A57"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/base/views/aa;->q:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/aa;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/aa;->p:Landroid/os/Handler;

    const-string p1, "#FF5A57"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/base/views/aa;->q:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/aa;->c()V

    return-void
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/Paint;II)Landroid/animation/Animator;
    .locals 11

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v6, 0x1

    aput v2, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v7, p4

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    int-to-long v9, p3

    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p4, Lcom/sigmob/sdk/base/views/aa$1;

    invoke-direct {p4, p0, v1, p1}, Lcom/sigmob/sdk/base/views/aa$1;-><init>(Lcom/sigmob/sdk/base/views/aa;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v2, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 p1, 0xff

    filled-new-array {p1, v5}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    int-to-float p3, p3

    const p4, 0x3f4ccccd    # 0.8f

    mul-float/2addr p3, p4

    float-to-long p3, p3

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/sigmob/sdk/base/views/aa$2;

    invoke-direct {p3, p0, p2}, Lcom/sigmob/sdk/base/views/aa$2;-><init>(Lcom/sigmob/sdk/base/views/aa;Landroid/graphics/Paint;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p2, v3, [Landroid/animation/Animator;

    aput-object v2, p2, v5

    aput-object p1, p2, v6

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/aa;)Landroid/os/Handler;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/aa;->p:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 1

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p3

    iput v0, p2, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iput v0, p2, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p3

    iput v0, p2, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p3

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/aa;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/views/aa;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method private c()V
    .locals 7

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/aa;->r:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sigmob/sdk/base/views/aa;->r:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->a:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/aa;->n:F

    new-instance v0, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/aa;->a:Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/aa;->a:Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->c:Landroid/graphics/Paint;

    iget v5, p0, Lcom/sigmob/sdk/base/views/aa;->q:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->d:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->e:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->i:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->f:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->g:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->h:Landroid/graphics/RectF;

    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->i:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->i:Landroid/graphics/Path;

    iget v2, p0, Lcom/sigmob/sdk/base/views/aa;->o:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/sigmob/sdk/base/views/aa;->o:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/aa;->a:Landroid/graphics/Paint;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sigmob/sdk/base/views/aa;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;II)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/aa;->g:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/aa;->b:Landroid/graphics/Paint;

    const/16 v3, 0x320

    const/16 v4, 0x190

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/views/aa;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;II)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    filled-new-array {v0, v1}, [Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/sigmob/sdk/base/views/aa$3;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/views/aa$3;-><init>(Lcom/sigmob/sdk/base/views/aa;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/sigmob/sdk/base/views/aa;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/aa;->description:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->g:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->p:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/aa;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/aa;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/aa;->g:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/aa;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/aa;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/aa;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sigmob/sdk/base/views/aa;->l:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sigmob/sdk/base/views/aa;->r:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/aa;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sigmob/sdk/base/views/aa;->l:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/aa;->m:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/aa;->d:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/aa;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/aa;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/aa;->d:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/aa;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sigmob/sdk/base/views/aa;->r:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/aa;->o:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/aa;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    const/high16 p3, 0x40800000    # 4.0f

    div-float p4, p1, p3

    iput p4, p0, Lcom/sigmob/sdk/base/views/aa;->j:F

    int-to-float p2, p2

    const/high16 v0, 0x40400000    # 3.0f

    div-float v0, p2, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/aa;->k:F

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/aa;->f:Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p4, v2

    div-float v4, v0, v2

    div-float/2addr p4, v2

    sub-float p4, p1, p4

    div-float/2addr v0, v2

    sub-float v0, p2, v0

    invoke-virtual {v1, v3, v4, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p4, p0, Lcom/sigmob/sdk/base/views/aa;->g:Landroid/graphics/RectF;

    iget v0, p0, Lcom/sigmob/sdk/base/views/aa;->j:F

    div-float v1, v0, v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/aa;->k:F

    div-float v4, v3, v2

    div-float/2addr v0, v2

    sub-float v0, p1, v0

    div-float/2addr v3, v2

    sub-float v3, p2, v3

    invoke-virtual {p4, v1, v4, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p4, p0, Lcom/sigmob/sdk/base/views/aa;->h:Landroid/graphics/RectF;

    iget v0, p0, Lcom/sigmob/sdk/base/views/aa;->j:F

    div-float v1, v0, v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/aa;->k:F

    div-float v4, v3, v2

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    div-float/2addr v3, v2

    sub-float/2addr p2, v3

    invoke-virtual {p4, v1, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/aa;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x5

    :goto_0
    iget-object p2, p0, Lcom/sigmob/sdk/base/views/aa;->title:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/aa;->d:Landroid/graphics/Paint;

    iget-object p4, p0, Lcom/sigmob/sdk/base/views/aa;->title:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p2

    iget-object p4, p0, Lcom/sigmob/sdk/base/views/aa;->f:Landroid/graphics/RectF;

    iget v1, p4, Landroid/graphics/RectF;->right:F

    iget p4, p4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, p4

    iget p4, p0, Lcom/sigmob/sdk/base/views/aa;->n:F

    mul-float/2addr p4, p3

    sub-float/2addr v1, p4

    cmpl-float p2, p2, v1

    if-lez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sigmob/sdk/base/views/aa;->title:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p3, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/aa;->title:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/aa;->d:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/aa;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/base/views/aa;->l:F

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/aa;->d:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/aa;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/sigmob/sdk/base/views/aa;->m:F

    :cond_2
    iget p1, p0, Lcom/sigmob/sdk/base/views/aa;->m:F

    const p2, 0x3f19999a    # 0.6f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/sigmob/sdk/base/views/aa;->o:F

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/aa;->d()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/aa;->a()V

    return-void
.end method

.method public setButtonColor(I)V
    .locals 0

    iput p1, p0, Lcom/sigmob/sdk/base/views/aa;->q:I

    return-void
.end method

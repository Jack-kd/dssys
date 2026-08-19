.class public Lcom/sigmob/sdk/base/views/ak;
.super Landroid/view/View;


# instance fields
.field private a:F

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/Path;

.field private h:Landroid/graphics/PointF;

.field private i:Landroid/graphics/PointF;

.field private j:Landroid/graphics/PointF;

.field private k:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ak;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ak;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ak;->b()V

    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/Paint;I)Landroid/animation/AnimatorSet;
    .locals 8

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/ak;->a:F

    sub-float/2addr v2, v3

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    aput v2, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v4, Lcom/sigmob/sdk/base/views/E;

    invoke-direct {v4, p0, p1}, Lcom/sigmob/sdk/base/views/E;-><init>(Lcom/sigmob/sdk/base/views/ak;Landroid/graphics/PointF;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, -0x1

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    filled-new-array {v0, v5}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v4, Lcom/sigmob/sdk/base/views/F;

    invoke-direct {v4, p0, p2}, Lcom/sigmob/sdk/base/views/F;-><init>(Lcom/sigmob/sdk/base/views/ak;Landroid/graphics/Paint;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long p2, p3

    const-wide/16 v6, 0x3e8

    mul-long/2addr p2, v6

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p2, v3, [Landroid/animation/Animator;

    aput-object v2, p2, v5

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p1
.end method

.method private synthetic a(Landroid/graphics/Paint;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private a(Landroid/graphics/Path;Landroid/graphics/PointF;)V
    .locals 8

    .line 5
    iget v0, p2, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/ak;->k:F

    float-to-double v2, v2

    const-wide v4, 0x4000c152382d7365L    # 2.0943951023931953

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/sigmob/sdk/base/views/ak;->k:F

    add-float/2addr v1, v2

    iget v3, p2, Landroid/graphics/PointF;->x:F

    float-to-double v6, v3

    float-to-double v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v6, v2

    double-to-float v2, v6

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sigmob/sdk/base/views/ak;->k:F

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private synthetic a(Landroid/graphics/PointF;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 6
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ak;->c()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/ak;Landroid/graphics/PointF;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/views/ak;->a(Landroid/graphics/PointF;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private b()V
    .locals 5

    .line 2
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ak;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sigmob/sdk/base/views/ak;->k:F

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sigmob/sdk/base/views/ak;->a:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->b:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->b:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->c:Landroid/graphics/Paint;

    iget v4, p0, Lcom/sigmob/sdk/base/views/ak;->a:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->c:Landroid/graphics/Paint;

    const/16 v4, 0x7f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ak;->a:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->d:Landroid/graphics/Paint;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->e:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->g:Landroid/graphics/Path;

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/views/ak;Landroid/graphics/Paint;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/views/ak;->a(Landroid/graphics/Paint;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ak;->h:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/base/views/ak;->a(Landroid/graphics/Path;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ak;->i:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/base/views/ak;->a(Landroid/graphics/Path;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ak;->j:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/base/views/ak;->a(Landroid/graphics/Path;Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->h:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ak;->b:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/base/views/ak;->a(Landroid/graphics/PointF;Landroid/graphics/Paint;I)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ak;->i:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/ak;->c:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v3, v2}, Lcom/sigmob/sdk/base/views/ak;->a(Landroid/graphics/PointF;Landroid/graphics/Paint;I)Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/ak;->j:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/ak;->d:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, v2}, Lcom/sigmob/sdk/base/views/ak;->a(Landroid/graphics/PointF;Landroid/graphics/Paint;I)Landroid/animation/AnimatorSet;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ak;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ak;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ak;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    int-to-float p2, p2

    const/high16 p4, 0x41500000    # 13.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p4

    int-to-float p4, p4

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ak;->a:F

    add-float/2addr v1, p2

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->h:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ak;->a:F

    add-float/2addr v1, p2

    add-float/2addr v1, p4

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->i:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ak;->a:F

    add-float/2addr p2, v1

    mul-float/2addr p4, p3

    add-float/2addr p2, p4

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ak;->j:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ak;->c()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/ak;->a()V

    return-void
.end method

.class public Lcom/sigmob/sdk/base/views/ai;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;

.field private c:F

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Path;

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/animation/ValueAnimator;

.field private r:Landroid/animation/ValueAnimator;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sigmob/sdk/base/views/ai;->l:F

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ai;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sigmob/sdk/base/views/ai;->l:F

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ai;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sigmob/sdk/base/views/ai;->l:F

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ai;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/ai;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/base/views/ai;->l:F

    return p1
.end method

.method private a(IF)I
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/ai;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/sigmob/sdk/base/views/ai;->i:I

    return p1
.end method

.method private a()V
    .locals 2

    .line 4
    const/high16 v0, -0x10000

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->h:Landroid/graphics/Path;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ai;->c:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/ai;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ai;->d()V

    return-void
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/sigmob/sdk/base/views/ai;->k:I

    neg-int v0, v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/ai;->m:I

    iget v2, p0, Lcom/sigmob/sdk/base/views/ai;->n:I

    add-int/2addr v1, v2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sigmob/sdk/base/views/ai$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/ai$1;-><init>(Lcom/sigmob/sdk/base/views/ai;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->q:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->q:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/sdk/base/views/ai;->r:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/sigmob/sdk/base/views/ai$2;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/base/views/ai$2;-><init>(Lcom/sigmob/sdk/base/views/ai;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/ai;->r:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/ai;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ai;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data
.end method

.method private c()V
    .locals 9

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->g:Landroid/graphics/Paint;

    iget v0, p0, Lcom/sigmob/sdk/base/views/ai;->n:I

    iput v0, p0, Lcom/sigmob/sdk/base/views/ai;->j:I

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/ai;->k:I

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v0, p0, Lcom/sigmob/sdk/base/views/ai;->j:I

    int-to-float v3, v0

    iget v0, p0, Lcom/sigmob/sdk/base/views/ai;->k:I

    int-to-float v4, v0

    const/4 v0, -0x1

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, v0, v2}, Lcom/sigmob/sdk/base/views/ai;->a(IF)I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v6}, Lcom/sigmob/sdk/base/views/ai;->a(IF)I

    move-result v6

    invoke-direct {p0, v0, v2}, Lcom/sigmob/sdk/base/views/ai;->a(IF)I

    move-result v0

    filled-new-array {v5, v6, v0}, [I

    move-result-object v6

    const/4 v0, 0x3

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ai;->k:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/ai;->i:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ai;->k:I

    iget v4, p0, Lcom/sigmob/sdk/base/views/ai;->i:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ai;->k:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sigmob/sdk/base/views/ai;->i:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sigmob/sdk/base/views/ai;->j:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/sigmob/sdk/base/views/ai;->i:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget v2, p0, Lcom/sigmob/sdk/base/views/ai;->j:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/sigmob/sdk/base/views/ai;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/ai;->d:Ljava/lang/String;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    const/16 v4, 0xcc

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    iget v4, v0, Lcom/sigmob/sdk/base/views/ai;->c:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->b:Landroid/graphics/RectF;

    iget v4, v0, Lcom/sigmob/sdk/base/views/ai;->c:F

    iget v5, v0, Lcom/sigmob/sdk/base/views/ai;->m:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v4, v6

    sub-float/2addr v5, v7

    iget v7, v0, Lcom/sigmob/sdk/base/views/ai;->n:I

    int-to-float v7, v7

    mul-float v8, v4, v6

    sub-float/2addr v7, v8

    invoke-virtual {v2, v4, v4, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->h:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/sigmob/sdk/base/views/ai;->b:Landroid/graphics/RectF;

    iget v5, v0, Lcom/sigmob/sdk/base/views/ai;->p:I

    int-to-float v7, v5

    int-to-float v5, v5

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v7, v5, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->h:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    const/16 v7, 0x4c

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->h:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->h:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/sigmob/sdk/base/views/ai;->b:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v6

    iget-object v10, v0, Lcom/sigmob/sdk/base/views/ai;->b:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v10, v6

    invoke-virtual {v2, v7, v9, v10, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->h:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v2, v0, Lcom/sigmob/sdk/base/views/ai;->n:I

    int-to-float v7, v2

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v8

    iget v9, v0, Lcom/sigmob/sdk/base/views/ai;->l:F

    mul-float/2addr v7, v9

    iget v9, v0, Lcom/sigmob/sdk/base/views/ai;->m:I

    int-to-float v9, v9

    int-to-float v2, v2

    mul-float/2addr v2, v8

    mul-float/2addr v2, v6

    sub-float/2addr v9, v2

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, v0, Lcom/sigmob/sdk/base/views/ai;->n:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v8, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    iget v5, v0, Lcom/sigmob/sdk/base/views/ai;->l:F

    const/high16 v8, 0x41800000    # 16.0f

    mul-float/2addr v5, v8

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v11, v5, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    const-string v10, "GO"

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v12, 0x3fc00000    # 1.5f

    div-float/2addr v2, v12

    sub-float/2addr v9, v2

    iget v2, v0, Lcom/sigmob/sdk/base/views/ai;->n:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v14, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v13, v14

    div-float/2addr v13, v6

    add-float/2addr v2, v13

    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v13

    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v9, v2, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const v13, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v13

    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    iget-object v14, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    add-float/2addr v14, v9

    const/high16 v15, 0x40800000    # 4.0f

    div-float v15, v2, v15

    add-float/2addr v14, v15

    move/from16 v16, v6

    iget v6, v0, Lcom/sigmob/sdk/base/views/ai;->n:I

    int-to-float v6, v6

    div-float v6, v6, v16

    div-float v17, v2, v16

    sub-float v6, v6, v17

    invoke-virtual {v13, v14, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v6, v9

    add-float/2addr v6, v2

    iget v2, v0, Lcom/sigmob/sdk/base/views/ai;->n:I

    int-to-float v2, v2

    div-float v2, v2, v16

    invoke-virtual {v13, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v9, v2

    add-float/2addr v9, v15

    iget v2, v0, Lcom/sigmob/sdk/base/views/ai;->n:I

    int-to-float v2, v2

    div-float v2, v2, v16

    add-float v2, v2, v17

    invoke-virtual {v13, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "..."

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v9, 0x0

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v11, v13, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->title:Ljava/lang/String;

    iget-object v5, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v10, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v10

    mul-float/2addr v5, v12

    move v10, v4

    :goto_0
    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ai;->title:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v10, v13, :cond_1

    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    iget-object v14, v0, Lcom/sigmob/sdk/base/views/ai;->title:Ljava/lang/String;

    invoke-virtual {v13, v14, v6, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v13

    add-float/2addr v13, v5

    iget-object v14, v0, Lcom/sigmob/sdk/base/views/ai;->b:Landroid/graphics/RectF;

    iget v15, v14, Landroid/graphics/RectF;->right:F

    iget v14, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v15, v14

    sub-float/2addr v15, v5

    sub-float/2addr v15, v7

    cmpl-float v13, v13, v15

    if-lez v13, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ai;->title:Ljava/lang/String;

    sub-int/2addr v10, v11

    invoke-virtual {v13, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v10, v0, Lcom/sigmob/sdk/base/views/ai;->n:I

    int-to-float v10, v10

    div-float v10, v10, v16

    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v14, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v13, v14

    sub-float/2addr v10, v13

    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v10, v13

    iget-object v13, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v10, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    move v5, v9

    :goto_2
    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v11, v8, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    cmpl-float v2, v5, v9

    if-lez v2, :cond_3

    move v2, v5

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v8, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v8

    mul-float/2addr v2, v12

    :goto_3
    iget-object v8, v0, Lcom/sigmob/sdk/base/views/ai;->d:Ljava/lang/String;

    :goto_4
    iget-object v9, v0, Lcom/sigmob/sdk/base/views/ai;->d:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_5

    iget-object v9, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/sigmob/sdk/base/views/ai;->d:Ljava/lang/String;

    invoke-virtual {v9, v10, v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    add-float/2addr v9, v5

    iget-object v10, v0, Lcom/sigmob/sdk/base/views/ai;->b:Landroid/graphics/RectF;

    iget v12, v10, Landroid/graphics/RectF;->right:F

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v10

    sub-float/2addr v12, v5

    sub-float/2addr v12, v7

    cmpl-float v9, v9, v12

    if-lez v9, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/sigmob/sdk/base/views/ai;->d:Ljava/lang/String;

    sub-int/2addr v4, v11

    invoke-virtual {v7, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget v3, v0, Lcom/sigmob/sdk/base/views/ai;->n:I

    int-to-float v3, v3

    div-float v3, v3, v16

    iget-object v4, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v5, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/sigmob/sdk/base/views/ai;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->h:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/ai;->f:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/sigmob/sdk/base/views/ai;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/sigmob/sdk/base/views/ai;->m:I

    int-to-float p3, p2

    const p4, 0x3f4ccccd    # 0.8f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcom/sigmob/sdk/base/views/ai;->n:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sigmob/sdk/base/views/ai;->o:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sigmob/sdk/base/views/ai;->p:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ai;->c()V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ai;->b()V

    return-void
.end method

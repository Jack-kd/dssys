.class public Lcom/ubix/ssp/ad/e/p;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:F

.field private e:I

.field private f:Landroid/graphics/Matrix;

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/RectF;

.field l:F

.field m:Landroid/animation/ValueAnimator;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/e/p;->d:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/ubix/ssp/ad/e/p;->e:I

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/p;->f:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/p;->g:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/p;->h:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/p;->i:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/p;->j:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/p;->k:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/p;->n:Z

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/p;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/p;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/e/p;->d:F

    return p1
.end method

.method private a()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ubix/ic_shake_revolve.webp"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/p;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/p;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ubix/ic_shake_phone.webp"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/p;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/p;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/p;->n:Z

    return p0
.end method

.method private c()V
    .locals 10

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/p;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/p;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float/2addr v1, v2

    const/4 v3, 0x0

    iput v3, p0, Lcom/ubix/ssp/ad/e/p;->l:F

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/p;->g:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/p;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/p;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/p;->j:Landroid/graphics/RectF;

    iget v5, p0, Lcom/ubix/ssp/ad/e/p;->l:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    iget v9, p0, Lcom/ubix/ssp/ad/e/p;->l:F

    add-float/2addr v2, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    div-float/2addr v9, v8

    invoke-virtual {v4, v5, v6, v2, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/p;->k:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    div-float/2addr v6, v8

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->h:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/p;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/p;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->i:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->m:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/p;->m:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/ubix/ssp/ad/e/p$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/p$a;-><init>(Lcom/ubix/ssp/ad/e/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/ubix/ssp/ad/e/p$b;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/p$b;-><init>(Lcom/ubix/ssp/ad/e/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/ubix/ssp/ad/e/p$c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/p$c;-><init>(Lcom/ubix/ssp/ad/e/p;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->m:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/p;->n:Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/p;->m:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/p;->g:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/p;->j:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/p;->g:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/p;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/p;->f:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v2, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2}, Landroid/graphics/Camera;->setLocation(FFF)V

    iget v2, p0, Lcom/ubix/ssp/ad/e/p;->d:F

    const/high16 v4, 0x42340000    # 45.0f

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateY(F)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/p;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/p;->h:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/p;->i:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/p;->c()V

    return-void
.end method

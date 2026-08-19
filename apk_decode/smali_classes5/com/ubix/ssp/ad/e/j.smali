.class public Lcom/ubix/ssp/ad/e/j;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:F

.field private f:I

.field private g:Landroid/graphics/Matrix;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/RectF;

.field private l:F

.field private m:F

.field n:F

.field o:F

.field p:F

.field q:Landroid/graphics/Bitmap;

.field r:I

.field s:I

.field t:I

.field u:F

.field private final v:F

.field w:Landroid/animation/ValueAnimator;

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/e/j;->e:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/j;->f:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/j;->g:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/j;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/j;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/j;->j:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/j;->k:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/j;->r:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/j;->s:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/j;->t:I

    iput p1, p0, Lcom/ubix/ssp/ad/e/j;->u:F

    const/high16 p1, 0x42340000    # 45.0f

    iput p1, p0, Lcom/ubix/ssp/ad/e/j;->v:F

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/j;->x:Z

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/j;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/j;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/e/j;->e:F

    return p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/j;)Landroid/graphics/Matrix;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/j;->g:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ubix/ic_shake_arrow.webp"

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ubix/ic_shake_phone.webp"

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/j;->b:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/j;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ubix/ssp/ad/e/j;->f:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/j;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/j;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/j;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/j;->l:F

    return p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/j;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/j;->m:F

    return p0
.end method

.method private c()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->a:Landroid/graphics/Bitmap;

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

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/ubix/ssp/ad/e/j;->n:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/j;->h:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/j;->k:Landroid/graphics/RectF;

    iget v3, p0, Lcom/ubix/ssp/ad/e/j;->n:F

    int-to-float v0, v0

    add-float v4, v0, v3

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    mul-float/2addr v5, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/j;->i:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/j;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/j;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/j;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/j;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/ubix/ssp/ad/e/j;->l:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/j;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/ubix/ssp/ad/e/j;->m:F

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/j;->g:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/ubix/ssp/ad/e/j;->l:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/j;->g:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/ubix/ssp/ad/e/j;->n:F

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/j;->r:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/j;->s:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/j;->r:I

    div-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/ubix/ssp/ad/e/j;->t:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/j;->q:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/j;->l:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/ubix/ssp/ad/e/j;->o:F

    iget v0, p0, Lcom/ubix/ssp/ad/e/j;->n:F

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/j;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/ubix/ssp/ad/e/j;->l:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/ubix/ssp/ad/e/j;->p:F

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/e/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/j;->x:Z

    return p0
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->w:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/j;->w:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->w:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->w:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/ubix/ssp/ad/e/j$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/j$a;-><init>(Lcom/ubix/ssp/ad/e/j;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->w:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/ubix/ssp/ad/e/j$b;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/j$b;-><init>(Lcom/ubix/ssp/ad/e/j;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/ubix/ssp/ad/e/j$c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/j$c;-><init>(Lcom/ubix/ssp/ad/e/j;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x40800000    # 4.0f
    .end array-data
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->w:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/j;->x:Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/j;->w:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/j;->h:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/j;->k:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->q:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->q:Landroid/graphics/Bitmap;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/ubix/ssp/ad/e/j;->e:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    const/high16 v5, 0x42340000    # 45.0f

    if-gtz v2, :cond_1

    mul-float v2, v0, v5

    iget v5, p0, Lcom/ubix/ssp/ad/e/j;->t:I

    int-to-float v7, v5

    iget v6, p0, Lcom/ubix/ssp/ad/e/j;->n:F

    sub-float v6, v7, v6

    mul-float/2addr v6, v0

    float-to-int v0, v6

    sub-int/2addr v5, v0

    int-to-float v5, v5

    :goto_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/j;->s:I

    int-to-float v8, v0

    iget-object v9, p0, Lcom/ubix/ssp/ad/e/j;->c:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->g:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/ubix/ssp/ad/e/j;->u:F

    sub-float/2addr v5, v2

    iget v6, p0, Lcom/ubix/ssp/ad/e/j;->o:F

    iget v7, p0, Lcom/ubix/ssp/ad/e/j;->p:F

    invoke-virtual {v0, v5, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iput v2, p0, Lcom/ubix/ssp/ad/e/j;->u:F

    goto :goto_1

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v6, v0, v2

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/ubix/ssp/ad/e/j;->t:I

    int-to-float v7, v6

    iget v8, p0, Lcom/ubix/ssp/ad/e/j;->n:F

    sub-float v8, v7, v8

    sub-float/2addr v2, v0

    mul-float/2addr v8, v2

    float-to-int v0, v8

    mul-float/2addr v2, v5

    sub-int/2addr v6, v0

    int-to-float v5, v6

    goto :goto_0

    :cond_2
    const/high16 v6, 0x40400000    # 3.0f

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_3

    iget v6, p0, Lcom/ubix/ssp/ad/e/j;->t:I

    move v7, v5

    int-to-float v5, v6

    iget v8, p0, Lcom/ubix/ssp/ad/e/j;->n:F

    sub-float v8, v5, v8

    sub-float/2addr v0, v2

    mul-float/2addr v8, v0

    float-to-int v2, v8

    mul-float/2addr v0, v7

    add-int/2addr v6, v2

    int-to-float v7, v6

    iget v2, p0, Lcom/ubix/ssp/ad/e/j;->s:I

    int-to-float v8, v2

    iget-object v9, p0, Lcom/ubix/ssp/ad/e/j;->c:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/j;->g:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/ubix/ssp/ad/e/j;->u:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/ubix/ssp/ad/e/j;->o:F

    iget v7, p0, Lcom/ubix/ssp/ad/e/j;->p:F

    invoke-virtual {v2, v5, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iput v0, p0, Lcom/ubix/ssp/ad/e/j;->u:F

    goto :goto_1

    :cond_3
    move v7, v5

    iget v2, p0, Lcom/ubix/ssp/ad/e/j;->t:I

    int-to-float v5, v2

    iget v6, p0, Lcom/ubix/ssp/ad/e/j;->n:F

    sub-float v6, v5, v6

    const/high16 v8, 0x40800000    # 4.0f

    sub-float/2addr v8, v0

    mul-float/2addr v6, v8

    float-to-int v0, v6

    mul-float v10, v8, v7

    add-int/2addr v2, v0

    int-to-float v7, v2

    iget v0, p0, Lcom/ubix/ssp/ad/e/j;->s:I

    int-to-float v8, v0

    iget-object v9, p0, Lcom/ubix/ssp/ad/e/j;->c:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->g:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/ubix/ssp/ad/e/j;->u:F

    sub-float v2, v10, v2

    iget v5, p0, Lcom/ubix/ssp/ad/e/j;->o:F

    iget v6, p0, Lcom/ubix/ssp/ad/e/j;->p:F

    invoke-virtual {v0, v2, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iput v10, p0, Lcom/ubix/ssp/ad/e/j;->u:F

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/j;->h:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/j;->k:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/j;->d:Landroid/graphics/Paint;

    invoke-virtual {v4, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->q:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/j;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/j;->c()V

    return-void
.end method

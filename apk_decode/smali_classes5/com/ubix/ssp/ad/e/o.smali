.class public Lcom/ubix/ssp/ad/e/o;
.super Landroid/view/View;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field i:Landroid/graphics/Matrix;

.field j:Landroid/graphics/Paint;

.field k:F

.field l:F

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/graphics/Bitmap;

.field o:I

.field p:Landroid/graphics/Matrix;

.field q:Landroid/graphics/Matrix;

.field r:Landroid/graphics/Matrix;

.field s:Landroid/graphics/Matrix;

.field t:I

.field u:Z

.field v:F

.field w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/o;->a:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/o;->b:I

    const/16 v1, 0x1c

    iput v1, p0, Lcom/ubix/ssp/ad/e/o;->c:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/ubix/ssp/ad/e/o;->g:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/ubix/ssp/ad/e/o;->h:F

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/o;->i:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/o;->j:Landroid/graphics/Paint;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/o;->n:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/o;->p:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/o;->q:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/o;->r:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/o;->s:Landroid/graphics/Matrix;

    const/16 v3, 0x3c

    iput v3, p0, Lcom/ubix/ssp/ad/e/o;->t:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/o;->u:Z

    iput v2, p0, Lcom/ubix/ssp/ad/e/o;->v:F

    iput v0, p0, Lcom/ubix/ssp/ad/e/o;->w:I

    const-string v2, "ubix/ic_slide_right_down.webp"

    invoke-static {p1, v2}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    const-string v2, "ubix/ic_slide_hand2.webp"

    const/16 v4, -0x2d

    invoke-static {p1, v2, v4, v0}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/o;->n:Landroid/graphics/Bitmap;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/o;->u:Z

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->v:F

    iput v3, p0, Lcom/ubix/ssp/ad/e/o;->c:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    const/high16 p2, 0x42f00000    # 120.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->e:I

    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->f:I

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->o:I

    iget p1, p0, Lcom/ubix/ssp/ad/e/o;->f:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->h:F

    iget p1, p0, Lcom/ubix/ssp/ad/e/o;->f:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->k:F

    iget p2, p0, Lcom/ubix/ssp/ad/e/o;->e:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iput p2, p0, Lcom/ubix/ssp/ad/e/o;->l:F

    iget v0, p0, Lcom/ubix/ssp/ad/e/o;->o:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/o;->w:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ubix/ssp/ad/e/o;->o:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/o;->i:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/ubix/ssp/ad/e/o;->v:F

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p2

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/ubix/ssp/ad/e/o;->t:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    const/high16 p2, 0x43340000    # 180.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->e:I

    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->f:I

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->o:I

    iget p1, p0, Lcom/ubix/ssp/ad/e/o;->f:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->h:F

    iget p1, p0, Lcom/ubix/ssp/ad/e/o;->f:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->k:F

    iget p1, p0, Lcom/ubix/ssp/ad/e/o;->e:I

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->l:F

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/o;->i:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/ubix/ssp/ad/e/o;->k:F

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/o;->g:I

    return p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/o;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/e/o;->g:I

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/o;)I
    .locals 2

    iget v0, p0, Lcom/ubix/ssp/ad/e/o;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ubix/ssp/ad/e/o;->g:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v0, Lcom/ubix/ssp/ad/e/o$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/o$a;-><init>(Lcom/ubix/ssp/ad/e/o;)V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/ubix/ssp/ad/e/o;->f:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/o;->e:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->p:Landroid/graphics/Matrix;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->p:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ubix/ssp/ad/e/o;->v:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->p:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ubix/ssp/ad/e/o;->t:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/ubix/ssp/ad/e/o;->t:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/o;->p:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->q:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->q:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ubix/ssp/ad/e/o;->v:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->q:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/ubix/ssp/ad/e/o;->w:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/ubix/ssp/ad/e/o;->t:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/ubix/ssp/ad/e/o;->o:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/ubix/ssp/ad/e/o;->h:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/ubix/ssp/ad/e/o;->t:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/o;->q:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->r:Landroid/graphics/Matrix;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->r:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ubix/ssp/ad/e/o;->v:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->r:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ubix/ssp/ad/e/o;->o:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/ubix/ssp/ad/e/o;->h:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iget v3, p0, Lcom/ubix/ssp/ad/e/o;->t:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/ubix/ssp/ad/e/o;->w:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/ubix/ssp/ad/e/o;->t:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/o;->r:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->s:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->s:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ubix/ssp/ad/e/o;->v:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->s:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ubix/ssp/ad/e/o;->o:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/ubix/ssp/ad/e/o;->h:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iget v3, p0, Lcom/ubix/ssp/ad/e/o;->t:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/ubix/ssp/ad/e/o;->o:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/ubix/ssp/ad/e/o;->h:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/ubix/ssp/ad/e/o;->t:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->m:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/o;->s:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o;->n:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/o;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/o;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/o;->f:I

    iget p2, p0, Lcom/ubix/ssp/ad/e/o;->e:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

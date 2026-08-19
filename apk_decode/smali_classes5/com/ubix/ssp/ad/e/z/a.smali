.class public Lcom/ubix/ssp/ad/e/z/a;
.super Lcom/ubix/ssp/ad/e/z/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/z/a$b;
    }
.end annotation


# instance fields
.field A:I

.field B:I

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:I

.field n:Landroid/graphics/Matrix;

.field o:F

.field p:F

.field q:J

.field r:Landroid/os/HandlerThread;

.field private s:Landroid/os/Handler;

.field t:Landroid/graphics/Bitmap;

.field private u:I

.field v:Z

.field w:I

.field x:F

.field y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/z/h;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->n:Landroid/graphics/Matrix;

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/a;->o:F

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/a;->p:F

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ConfirmViewDraw"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->r:Landroid/os/HandlerThread;

    const/16 v0, 0x10

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/a;->u:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/a;->v:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/ubix/ssp/ad/e/z/a;->w:I

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/ubix/ssp/ad/e/z/a;->x:F

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/a;->z:Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/a;->h:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/a;->l:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/a;->i:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/a;->j:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/a;->k:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/a;->h:Landroid/widget/ImageView;

    const/16 v0, 0x2711

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/a;->l:Landroid/widget/ImageView;

    const/16 v0, 0x2715

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/a;->i:Landroid/widget/TextView;

    const/16 v0, 0x2712

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/a;->j:Landroid/widget/TextView;

    const/16 v0, 0x2713

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/a;->k:Landroid/widget/TextView;

    const/16 v0, 0x2714

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/a;->k:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/a;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0xbf6101

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/a;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/z/a;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/z/a;->z:Z

    return p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/z/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/z/a;->s:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/z/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/e/z/a;->u:I

    return p0
.end method

.method private d()V
    .locals 7

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-int v3, v5

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    div-int/lit8 v5, v4, 0x3

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/a;->k:Landroid/widget/TextView;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setZ(F)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/a;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/a;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/z/h;->b()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/a;->y:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/a;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->r:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->s:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/l;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->n:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/a;->o:F

    iget v2, p0, Lcom/ubix/ssp/ad/e/z/a;->x:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/a;->v:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40200000    # 2.5f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const v6, 0x3ca3d70a    # 0.02f

    if-nez v0, :cond_3

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/a;->x:F

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/a;->x:F

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/a;->p:F

    const/4 v6, 0x0

    cmpg-float v7, v0, v6

    if-gtz v7, :cond_0

    iput v6, p0, Lcom/ubix/ssp/ad/e/z/a;->p:F

    iput-boolean v5, p0, Lcom/ubix/ssp/ad/e/z/a;->v:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_1

    sub-float/2addr v0, v4

    goto :goto_0

    :cond_1
    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_2

    sub-float/2addr v0, v3

    goto :goto_0

    :cond_2
    sub-float/2addr v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/ubix/ssp/ad/e/z/a;->x:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/a;->x:F

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/a;->p:F

    const/high16 v6, 0x42480000    # 50.0f

    cmpl-float v7, v0, v6

    if-ltz v7, :cond_4

    iput v6, p0, Lcom/ubix/ssp/ad/e/z/a;->p:F

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/z/a;->v:Z

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/a;->w:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/a;->w:I

    goto :goto_1

    :cond_4
    const/high16 v5, 0x42200000    # 40.0f

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_5

    add-float/2addr v0, v4

    goto :goto_0

    :cond_5
    const/high16 v4, 0x41f00000    # 30.0f

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_6

    add-float/2addr v0, v3

    goto :goto_0

    :cond_6
    add-float/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/ubix/ssp/ad/e/z/a;->p:F

    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->n:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/ubix/ssp/ad/e/z/a;->A:I

    int-to-float v2, v2

    iget v3, p0, Lcom/ubix/ssp/ad/e/z/a;->p:F

    add-float/2addr v2, v3

    iget v4, p0, Lcom/ubix/ssp/ad/e/z/a;->B:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/a;->w:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->t:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/a;->n:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void

    :cond_7
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public g()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ubix/ic_slide_hand.webp"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/z/a;->t:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/z/a;->q:J

    new-instance v0, Lcom/ubix/ssp/ad/e/z/a$b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/z/a$b;-><init>(Lcom/ubix/ssp/ad/e/z/a;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/a;->r:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/a;->r:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/a;->s:Landroid/os/Handler;

    iget v2, p0, Lcom/ubix/ssp/ad/e/z/a;->u:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x2714

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/ubix/ssp/ad/e/z/a;->A:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ubix/ssp/ad/e/z/a;->B:I

    :cond_0
    return-void
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    return v0
.end method

.method public getPopupType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x2714

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2715

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->a()V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_3

    invoke-interface {p1, v1}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->a()V

    :cond_5
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_6
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_7

    invoke-interface {p1, v1, v1}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V

    :cond_7
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_8

    :goto_0
    invoke-interface {p1, v1}, Lcom/ubix/ssp/ad/e/z/h$c;->b(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_8
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/a;->e()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/a;->f()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/a;->e()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/a;->f()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 8

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget p3, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    div-int/lit8 p3, p3, 0x5

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p4

    const p5, 0xe0a25

    if-eq p4, p5, :cond_0

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    const-wide v2, 0x3fb999999999999aL    # 0.1

    packed-switch p4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    div-int/lit8 p4, p3, 0x16

    sub-int p5, p3, p4

    div-int/lit8 p3, p3, 0xa

    sub-int v0, p5, p3

    add-int/2addr p3, p4

    invoke-virtual {p2, v0, p4, p5, p3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :pswitch_1
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    mul-int/lit8 p4, p3, 0x2

    div-int/lit8 p4, p4, 0x3

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    const/16 p4, 0x2713

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    div-int/lit8 v1, v0, 0x14

    add-int/2addr p5, v1

    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p4

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    div-int/lit8 v2, v1, 0x14

    add-int/2addr p4, v2

    div-int/lit8 v1, v1, 0x8

    :goto_1
    add-int/2addr p4, v1

    invoke-virtual {p2, p3, p5, v0, p4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :pswitch_2
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    int-to-double p3, p3

    mul-double/2addr p3, v2

    double-to-int p3, p3

    const/16 p4, 0x2712

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    iget v2, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    div-int/lit8 v3, v2, 0x24

    add-int/2addr p5, v3

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p4

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    div-int/lit8 v2, v1, 0x24

    add-int/2addr p4, v2

    div-int/lit8 v1, v1, 0x4

    goto :goto_1

    :pswitch_3
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    int-to-double p3, p3

    mul-double/2addr p3, v2

    double-to-int p3, p3

    const/16 p4, 0x2711

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    iget v2, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    div-int/lit8 v3, v2, 0xe

    add-int/2addr p5, v3

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p4

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    div-int/lit8 v2, v1, 0xe

    add-int/2addr p4, v2

    div-int/lit8 v1, v1, 0xa

    goto :goto_1

    :pswitch_4
    iget p4, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    sub-int p5, p4, p3

    div-int/lit8 p5, p5, 0x2

    div-int/lit8 v0, p4, 0x8

    add-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, v0

    invoke-virtual {p2, p5, v0, p4, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_0
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    int-to-double p3, p3

    const-wide v0, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v0, p3

    double-to-int p5, v0

    const-wide v0, 0x3ff199999999999aL    # 1.1

    mul-double/2addr p3, v0

    double-to-int p3, p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-double p3, p3

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/z/h;->b:D

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    sub-double/2addr p3, v2

    double-to-int p3, p3

    iget p4, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    int-to-double v4, p4

    const-wide v6, 0x3fee666666666666L    # 0.95

    mul-double/2addr v6, v4

    double-to-int p4, v6

    mul-double/2addr v4, v0

    sub-double/2addr v4, v2

    double-to-int v0, v4

    invoke-virtual {p2, p5, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/z/a;->m:I

    int-to-double v0, p1

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    double-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "IS_DOWNLOAD"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "ICON_URL"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "TITLE"

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SUB_TITLE"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "BUTTON_TEXT"

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v8

    iget-object v9, v1, Lcom/ubix/ssp/ad/e/z/a;->h:Landroid/widget/ImageView;

    new-instance v10, Lcom/ubix/ssp/ad/e/z/a$a;

    invoke-direct {v10, v1}, Lcom/ubix/ssp/ad/e/z/a$a;-><init>(Lcom/ubix/ssp/ad/e/z/a;)V

    const/4 v11, -0x1

    invoke-interface {v8, v0, v9, v11, v10}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz v4, :cond_5

    const-string v0, "DOWNLOAD_APP_NAME"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "DOWNLOAD_APP_VERSION"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "DOWNLOAD_APP_PUBLISHER"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "DOWNLOAD_APP_ICP_NUMBER"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "DOWNLOAD_APP_SUITABLE_AGE"

    invoke-virtual {v2, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "DOWNLOAD_APP_SIZE"

    invoke-virtual {v2, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const v15, 0xe0a25

    :try_start_1
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v15, :cond_0

    goto/16 :goto_7

    :cond_0
    const-wide/16 v16, 0x0

    cmp-long v16, v13, v16

    const-string v17, ""

    if-lez v16, :cond_1

    long-to-double v13, v13

    :try_start_2
    invoke-static {v13, v14}, Lcom/ubix/ssp/ad/e/a0/k;->a(D)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v13, v3

    const/4 v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_1
    move-object/from16 v13, v17

    :goto_1
    const-string v14, "\u5e94\u7528\u540d\u79f0:%s\u4e28\u5e94\u7528\u7248\u672c:%s\u4e28\u5f00\u53d1\u8005:%s%s%s%s\u4e28\u6743\u9650\u4e28\u9690\u79c1\u4e28\u529f\u80fd\u4ecb\u7ecd"

    :try_start_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    move/from16 v18, v3

    move-object/from16 v0, v17

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    const-string v3, "\u4e28\u5907\u6848\u53f7:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, v17

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4e28\u9002\u7528\u5e74\u9f84:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-eqz v18, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u4e28\u5e94\u7528\u5927\u5c0f:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :cond_4
    move-object v12, v0

    move-object v13, v3

    move-object v0, v14

    move-object/from16 v14, v17

    filled-new-array/range {v9 .. v14}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/ubix/ssp/ad/e/f;

    invoke-direct {v3, v0}, Lcom/ubix/ssp/ad/e/f;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    invoke-virtual {v3, v0}, Lcom/ubix/ssp/ad/e/f;->a(Lcom/ubix/ssp/ad/e/z/h$b;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->k:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v4, :cond_6

    const-string v7, "\u7acb\u5373\u4e0b\u8f7d"

    goto :goto_6

    :cond_6
    const-string v7, "\u67e5\u770b\u8be6\u60c5"

    :cond_7
    :goto_6
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->k:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->k:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->i:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->j:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->i:Landroid/widget/TextView;

    const v4, -0xcccccd

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->j:Landroid/widget/TextView;

    const v4, -0x7c7c7d

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->i:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->j:Landroid/widget/TextView;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/a;->l:Landroid/widget/ImageView;

    const-string v3, "ubix/ic_close.webp"

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "HAS_INDICATE"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/ubix/ssp/ad/e/z/a;->y:Z

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/z/a;->g()V

    :cond_8
    :goto_7
    return-void
.end method

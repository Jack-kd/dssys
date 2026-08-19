.class public Lcom/ubix/ssp/ad/h/a;
.super Lcom/ubix/ssp/ad/b;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/animation/ValueAnimator;

.field protected l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Lcom/ubix/ssp/ad/g/k/e;

.field private o:Lcom/ubix/ssp/ad/h/c/b;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:F

.field private v:I

.field private w:I

.field private x:Z

.field private y:Landroid/graphics/Rect;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/b;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x4

    iput p1, p0, Lcom/ubix/ssp/ad/h/a;->r:I

    iput v0, p0, Lcom/ubix/ssp/ad/h/a;->t:I

    const p1, 0x3d4ccccd    # 0.05f

    iput p1, p0, Lcom/ubix/ssp/ad/h/a;->u:F

    const/4 p1, 0x5

    iput p1, p0, Lcom/ubix/ssp/ad/h/a;->v:I

    iput p1, p0, Lcom/ubix/ssp/ad/h/a;->w:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/h/a;->x:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/ubix/ssp/ad/h/a;->y:Landroid/graphics/Rect;

    iput v0, p0, Lcom/ubix/ssp/ad/h/a;->z:I

    iput p1, p0, Lcom/ubix/ssp/ad/h/a;->A:I

    iput p1, p0, Lcom/ubix/ssp/ad/h/a;->B:I

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/h/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/h/a;->B:I

    return p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/h/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method private a(FII)Z
    .locals 1

    .line 10
    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p2, p3

    div-float/2addr p1, p2

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/ubix/ssp/ad/h/a;->u:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/h/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private d(II)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    mul-int v1, p1, p2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/ubix/ssp/ad/h/a;->w:I

    mul-int/2addr v1, p2

    int-to-float v1, v1

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Lcom/ubix/ssp/ad/h/a;->v:I

    mul-int/2addr v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic g(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic h(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic i(Lcom/ubix/ssp/ad/h/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/b;->b:I

    return p0
.end method

.method public static synthetic j(Lcom/ubix/ssp/ad/h/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/h/a;->B:I

    return p0
.end method

.method public static synthetic k(Lcom/ubix/ssp/ad/h/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/h/a;->A:I

    return p0
.end method

.method public static synthetic l(Lcom/ubix/ssp/ad/h/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/h/a;->z:I

    return p0
.end method

.method public static synthetic m(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic n(Lcom/ubix/ssp/ad/h/a;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/h/a;->C:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic o(Lcom/ubix/ssp/ad/h/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/b;->d:Z

    return p0
.end method

.method public static synthetic p(Lcom/ubix/ssp/ad/h/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method public static synthetic q(Lcom/ubix/ssp/ad/h/a;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/ubix/ssp/ad/b;->d:Z

    return p0
.end method

.method public static synthetic r(Lcom/ubix/ssp/ad/h/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method public static synthetic s(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private s()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->n:Lcom/ubix/ssp/ad/g/k/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/ubix/ssp/ad/g/k/b;->a(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private t()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->C:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x63

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/h/a;->C:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/ubix/ssp/ad/h/a;->A:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->C:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->C:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/ubix/ssp/ad/h/a$b;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/h/a$b;-><init>(Lcom/ubix/ssp/ad/h/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->C:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/ubix/ssp/ad/h/a$c;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/h/a$c;-><init>(Lcom/ubix/ssp/ad/h/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic u(Lcom/ubix/ssp/ad/h/a;)Lcom/ubix/ssp/ad/g/k/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/h/a;->n:Lcom/ubix/ssp/ad/g/k/e;

    return-object p0
.end method

.method private u()V
    .locals 4

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ubix/ssp/ad/h/a;->z:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v0

    const/16 v1, 0x1774

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v0

    const/16 v1, 0x177e

    if-ne v0, v1, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/ubix/ssp/ad/h/a;->t()V

    const v0, 0x61a81

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v1, p0, Lcom/ubix/ssp/ad/h/a;->z:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/ubix/ssp/ad/e/g;

    iget v2, p0, Lcom/ubix/ssp/ad/h/a;->A:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/ubix/ssp/ad/e/g;->setDuration(J)V

    check-cast v0, Lcom/ubix/ssp/ad/e/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/g;->e()V

    return-void

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u8df3\u8fc7"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8df3\u8fc7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ubix/ssp/ad/h/a;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic v(Lcom/ubix/ssp/ad/h/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/b;->b:I

    return p0
.end method

.method public static synthetic w(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic x(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic y(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;III)Ljava/util/HashMap;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static/range {p1 .. p1}, Lcom/ubix/ssp/ad/e/a0/r;->i(Landroid/content/Context;)I

    move-result v9

    sub-int v9, v7, v9

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-double v10, v6

    int-to-float v6, v1

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v12, v6

    int-to-float v13, v2

    div-float/2addr v12, v13

    const/16 v4, 0x1773

    const-wide v16, 0x3ffccccccccccccdL    # 1.8

    const/16 v14, 0x177e

    const/16 v15, 0x1774

    if-le v8, v7, :cond_7

    if-eq v3, v15, :cond_4

    if-ne v3, v14, :cond_0

    goto :goto_4

    :cond_0
    div-int/lit8 v12, v7, 0xa

    mul-int/lit8 v12, v12, 0x9

    invoke-static/range {p1 .. p1}, Lcom/ubix/ssp/ad/e/a0/r;->i(Landroid/content/Context;)I

    move-result v18

    sub-int v12, v12, v18

    if-eq v3, v4, :cond_2

    const/16 v4, 0x177d

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    mul-int v4, v12, v1

    div-int/2addr v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    mul-int v4, v12, v1

    div-int/2addr v4, v2

    int-to-double v14, v4

    div-double v14, v14, v16

    double-to-int v4, v14

    :goto_1
    int-to-float v14, v4

    div-float v14, v6, v14

    int-to-float v15, v12

    div-float v15, v13, v15

    cmpl-float v18, v14, v15

    if-lez v18, :cond_3

    :goto_2
    div-float/2addr v6, v14

    float-to-int v6, v6

    div-float/2addr v13, v14

    :goto_3
    float-to-int v13, v13

    goto/16 :goto_b

    :cond_3
    div-float/2addr v6, v15

    float-to-int v6, v6

    div-float/2addr v13, v15

    goto :goto_3

    :cond_4
    :goto_4
    iget v4, v0, Lcom/ubix/ssp/ad/h/a;->t:I

    const/4 v14, 0x1

    if-ne v4, v14, :cond_e

    invoke-direct {v0, v12, v8, v9}, Lcom/ubix/ssp/ad/h/a;->a(FII)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_a

    :cond_5
    invoke-direct {v0, v8, v7}, Lcom/ubix/ssp/ad/h/a;->d(II)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v14, v12

    div-float v14, v6, v14

    int-to-float v15, v4

    div-float v15, v13, v15

    cmpl-float v18, v14, v15

    if-lez v18, :cond_6

    div-float/2addr v6, v14

    float-to-int v6, v6

    div-float/2addr v13, v14

    :goto_5
    float-to-int v13, v13

    goto :goto_6

    :cond_6
    div-float/2addr v6, v15

    float-to-int v6, v6

    div-float/2addr v13, v15

    goto :goto_5

    :goto_6
    move/from16 v19, v12

    move v12, v4

    move/from16 v4, v19

    goto/16 :goto_b

    :cond_7
    move v14, v15

    if-eq v3, v14, :cond_c

    const/16 v14, 0x177e

    if-ne v3, v14, :cond_8

    goto :goto_9

    :cond_8
    div-int/lit8 v12, v7, 0xa

    mul-int/lit8 v12, v12, 0x9

    invoke-static/range {p1 .. p1}, Lcom/ubix/ssp/ad/e/a0/r;->i(Landroid/content/Context;)I

    move-result v14

    sub-int/2addr v12, v14

    if-eq v3, v4, :cond_a

    const/16 v4, 0x177d

    if-ne v3, v4, :cond_9

    goto :goto_7

    :cond_9
    mul-int v4, v12, v1

    div-int/2addr v4, v2

    goto :goto_8

    :cond_a
    :goto_7
    mul-int v4, v12, v1

    div-int/2addr v4, v2

    int-to-double v14, v4

    div-double v14, v14, v16

    double-to-int v4, v14

    :goto_8
    div-int/lit8 v14, v8, 0xa

    mul-int/lit8 v14, v14, 0x9

    if-le v4, v14, :cond_b

    move v4, v14

    :cond_b
    int-to-float v14, v4

    div-float v14, v6, v14

    int-to-float v15, v12

    div-float v15, v13, v15

    cmpl-float v18, v14, v15

    if-lez v18, :cond_3

    goto :goto_2

    :cond_c
    :goto_9
    iget v4, v0, Lcom/ubix/ssp/ad/h/a;->t:I

    const/4 v14, 0x1

    if-ne v4, v14, :cond_e

    invoke-direct {v0, v12, v8, v9}, Lcom/ubix/ssp/ad/h/a;->a(FII)Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_a
    move v4, v8

    move v6, v4

    move v12, v9

    move v13, v12

    goto :goto_b

    :cond_d
    invoke-direct {v0, v8, v7}, Lcom/ubix/ssp/ad/h/a;->d(II)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v14, v12

    div-float v14, v6, v14

    int-to-float v15, v4

    div-float v15, v13, v15

    cmpl-float v18, v14, v15

    move/from16 v19, v12

    move v12, v4

    move/from16 v4, v19

    if-lez v18, :cond_3

    goto/16 :goto_2

    :cond_e
    move v12, v7

    move v13, v12

    move v4, v8

    move v6, v4

    :goto_b
    int-to-double v14, v6

    sub-double/2addr v14, v10

    double-to-int v6, v14

    int-to-double v13, v13

    sub-double/2addr v13, v10

    double-to-int v10, v13

    iget-object v11, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "screenWidth"

    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "screenHeight"

    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "frameWidth"

    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "frameHeight"

    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "instlWidth"

    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "instlHeight"

    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v13, "bitmapWidth"

    invoke-virtual {v11, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "bitmapHeight"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "drawingWidth"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "drawingHeight"

    if-le v8, v7, :cond_f

    iget-object v2, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_c
    invoke-virtual {v2, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_f
    const/16 v2, 0x1771

    if-eq v3, v2, :cond_12

    const/16 v2, 0x1772

    if-ne v3, v2, :cond_10

    goto :goto_e

    :cond_10
    iget-object v2, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    if-le v10, v6, :cond_11

    goto :goto_d

    :cond_11
    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-double v13, v7

    mul-double v13, v13, v16

    double-to-int v7, v13

    int-to-double v13, v7

    sub-int v7, v6, v10

    int-to-double v10, v7

    const-wide v16, 0x3ff4cccccccccccdL    # 1.3

    mul-double v10, v10, v16

    sub-double/2addr v13, v10

    double-to-int v10, v13

    :goto_d
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_c

    :cond_12
    :goto_e
    iget-object v2, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    goto :goto_d

    :goto_f
    const-string v2, "adBottom"

    const-string v7, "adRight"

    const-string v10, "adTop"

    const-string v11, "adLeft"

    const/16 v14, 0x1774

    if-eq v3, v14, :cond_14

    const/16 v14, 0x177e

    if-ne v3, v14, :cond_13

    goto :goto_10

    :cond_13
    iget-object v3, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    sub-int v4, v8, v6

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, v9, v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    add-int/2addr v8, v6

    div-int/lit8 v6, v8, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v9, v1

    div-int/lit8 v12, v9, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    move v4, v6

    goto :goto_11

    :cond_14
    :goto_10
    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_11
    iget-object v3, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v8, v4, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "__WIDTH__"

    invoke-virtual {v3, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v9, v12, v5

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "__HEIGHT__"

    invoke-virtual {v3, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "__IMP_AREA__"

    invoke-virtual {v3, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    return-object v1
.end method

.method public a(IIIDI[IILjava/lang/String;Ljava/lang/String;IDZZ)V
    .locals 16

    .line 4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    iput v1, v0, Lcom/ubix/ssp/ad/h/a;->s:I

    const/16 v4, 0x80

    const v5, 0xde3dd

    const-string v6, "\u70b9\u51fb\u6b64\u5904"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x1773

    if-eq v1, v4, :cond_b

    const/16 v4, 0x84

    if-eq v1, v4, :cond_b

    const/4 v4, 0x2

    const/16 v10, 0x177d

    if-eq v1, v4, :cond_8

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v6

    :cond_0
    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/ubix/ssp/ad/h/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/c;

    if-eqz v1, :cond_e

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/ubix/ssp/ad/h/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v1

    if-eq v1, v9, :cond_4

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v1

    if-ne v1, v10, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/ubix/ssp/ad/h/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v1

    if-eq v1, v9, :cond_4

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v1

    if-ne v1, v10, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-wide/from16 p10, p4

    move/from16 p12, p6

    move-object/from16 p7, v0

    move/from16 p8, v1

    move/from16 p9, v2

    invoke-virtual/range {p7 .. p12}, Lcom/ubix/ssp/ad/b;->a(ZZDI)V

    return-void

    :cond_4
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object/from16 p7, p0

    move-wide/from16 p10, p4

    move/from16 p12, p6

    move/from16 p8, v0

    move/from16 p9, v1

    invoke-virtual/range {p7 .. p12}, Lcom/ubix/ssp/ad/b;->a(ZZDI)V

    move-object/from16 v0, p7

    return-void

    :cond_5
    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/ubix/ssp/ad/h/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v1

    if-eq v1, v9, :cond_7

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v1

    if-ne v1, v10, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v3, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-virtual/range {v0 .. v15}, Lcom/ubix/ssp/ad/b;->a(ZIIIZZD[IIIDZZ)V

    return-void

    :cond_7
    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-virtual/range {v0 .. v15}, Lcom/ubix/ssp/ad/b;->a(ZIIIZZD[IIIDZZ)V

    return-void

    :cond_8
    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/ubix/ssp/ad/h/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v1

    if-eq v1, v9, :cond_a

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v1

    if-ne v1, v10, :cond_9

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v3, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-virtual/range {v0 .. v15}, Lcom/ubix/ssp/ad/b;->a(ZIIIZZD[IIIDZZ)V

    return-void

    :cond_a
    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-virtual/range {v0 .. v15}, Lcom/ubix/ssp/ad/b;->a(ZIIIZZD[IIIDZZ)V

    return-void

    :cond_b
    iget-object v4, v0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v4}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v4

    if-eq v4, v9, :cond_f

    iget-object v4, v0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v4}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v4

    const/16 v9, 0x1771

    if-eq v4, v9, :cond_f

    iget-object v4, v0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v4}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v4

    const/16 v9, 0x1772

    if-eq v4, v9, :cond_f

    iget-object v4, v0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v4}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v4

    const/16 v9, 0x1774

    if-ne v4, v9, :cond_c

    goto :goto_4

    :cond_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v2, v6

    :cond_d
    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/ubix/ssp/ad/h/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/c;

    if-eqz v1, :cond_e

    :goto_3
    invoke-virtual {v1, v7}, Lcom/ubix/ssp/ad/e/c;->setNeedWave(Z)V

    :cond_e
    return-void

    :cond_f
    :goto_4
    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/ubix/ssp/ad/h/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    move-wide/from16 v7, p4

    move/from16 v2, p6

    invoke-virtual {v0, v1, v7, v8, v2}, Lcom/ubix/ssp/ad/b;->a(IDI)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/h/c/b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0xde3dd

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "#ccc9c9c9"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/16 p4, 0x48

    const/4 v0, -0x1

    invoke-static {p2, p3, p4, v0}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/h/a;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    const p1, 0x61a81

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_2
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    .line 6
    iget v0, p0, Lcom/ubix/ssp/ad/h/a;->r:I

    int-to-float v0, v0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ubix/ssp/ad/h/a;->r:I

    const-string v0, "RENDER_MODE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/h/a;->t:I

    const-string v0, "SCALE_IGNORE_PERCENT"

    const v2, 0x3d4ccccd    # 0.05f

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/h/a;->u:F

    const-string v0, "SCALE_HORIZONTAL_MARGIN"

    const/4 v2, 0x5

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/h/a;->v:I

    const/16 v3, 0x32

    if-lt v0, v3, :cond_0

    iput v2, p0, Lcom/ubix/ssp/ad/h/a;->v:I

    :cond_0
    const-string v0, "SCALE_VERTICAL_MARGIN"

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/h/a;->w:I

    if-lt v0, v3, :cond_1

    iput v2, p0, Lcom/ubix/ssp/ad/h/a;->w:I

    :cond_1
    const-string v0, "AD_WIDTH"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/ubix/ssp/ad/h/a;->p:I

    const-string v4, "AD_HEIGHT"

    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/ubix/ssp/ad/h/a;->q:I

    const-string v6, "TEMPLATE_ID"

    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, p1, v3, v5, v7}, Lcom/ubix/ssp/ad/h/a;->a(Landroid/content/Context;III)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    const-string v5, "SIZE_MAP"

    invoke-virtual {p2, v5, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v5, "CLICK_MAP"

    invoke-virtual {p2, v5, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "SKIP_VIEW_STYLE"

    invoke-virtual {p2, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ubix/ssp/ad/h/a;->z:I

    const-string v1, "SKIP_COUNT_TIME"

    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ubix/ssp/ad/h/a;->A:I

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/h/c/b;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/ubix/ssp/ad/h/c/b;

    move-result-object v1

    iput-object v1, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/ubix/ssp/ad/h/a;->a(Landroid/content/Context;III)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/h/c/b;->a(Ljava/util/HashMap;)V

    :cond_2
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->a(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 8
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    iget-object v0, v1, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/a;->r()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0xde318

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/a;->r()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/a;->r()Landroid/view/ViewGroup;

    move-result-object v0

    const v3, 0xde3dd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/a;->r()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v1 .. v16}, Lcom/ubix/ssp/ad/h/a;->a(IIIDI[IILjava/lang/String;Ljava/lang/String;IDZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 9
    invoke-super/range {p0 .. p8}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/ubix/ssp/ad/h/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public a(IFF)Z
    .locals 7

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/16 v1, 0x84

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    const-string v3, "adLeft"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    const-string v4, "adTop"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    const-string v5, "adRight"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    const-string v6, "adBottom"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    return p1

    :cond_1
    return v2

    :catch_0
    return p1

    :cond_2
    :goto_0
    const p1, 0xde441

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/e;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/a;->y:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/a;->y:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/ubix/ssp/ad/e/e;->a(FF)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public b(Landroid/os/Bundle;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/h/c/b;->a(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ubix/ssp/ad/h/a;->s:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ubix/ssp/ad/h/a;->a(IFF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/h/a;->x:Z

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/h/a;->s:I

    invoke-virtual {p0, v0, p1}, Lcom/ubix/ssp/ad/b;->a(ILandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/b;->a(Landroid/view/MotionEvent;)V

    iget p1, p0, Lcom/ubix/ssp/ad/b;->k:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__TRI_VAL__"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/ubix/ssp/ad/h/a;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "__INSIDE_AREA__"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v0, "__CLICK_AREA__"

    const-string v1, "4"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v0, "__CLICK_TRIGGER__"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/a;->n:Lcom/ubix/ssp/ad/g/k/e;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/ubix/ssp/ad/b;->b:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-interface {p1, v0, p0, v1}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getInterface()Lcom/ubix/ssp/ad/g/k/b;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->n:Lcom/ubix/ssp/ad/g/k/e;

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/ubix/ssp/ad/b;->j()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/h/c/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->C:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->a()V

    :cond_2
    return-void
.end method

.method public n()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/h/a;->s:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/h/a;->s()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/h/a;->u()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "__CLICK_TRIGGER__"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0xde3dd

    const v4, 0xde441

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v3, "__INSIDE_AREA__"

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/ubix/ssp/ad/h/a;->x:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v2, "true"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v2, "__CLICK_AREA__"

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->n:Lcom/ubix/ssp/ad/g/k/e;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/ubix/ssp/ad/b;->b:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-interface {v0, v1, p1, v2}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_3
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/ubix/ssp/ad/h/a;->p:I

    iget p3, p0, Lcom/ubix/ssp/ad/h/a;->q:I

    iget-object p4, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {p4}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ubix/ssp/ad/h/a;->a(Landroid/content/Context;III)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/a;->l:Ljava/util/HashMap;

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/ubix/ssp/ad/h/a$d;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/h/a$d;-><init>(Lcom/ubix/ssp/ad/h/a;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/s;->a()V

    :cond_1
    const p1, 0x61a81

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/ubix/ssp/ad/e/g;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/ubix/ssp/ad/e/g;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/g;->c()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/a;->C:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/h/a;->s()V

    new-instance p1, Lcom/ubix/ssp/ad/h/a$e;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/h/a$e;-><init>(Lcom/ubix/ssp/ad/h/a;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/s;->a()V

    :cond_1
    const p1, 0x61a81

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/ubix/ssp/ad/e/g;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/ubix/ssp/ad/e/g;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/g;->c()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/a;->C:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    const v0, 0x61a81

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    const v0, 0x61a82

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_1
    const v0, 0x61a83

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_2
    const v0, 0xe0aed

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_3
    return-void
.end method

.method public r()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    return-object v0
.end method

.method public setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/ubix/ssp/ad/g/k/e;

    iput-object v0, p0, Lcom/ubix/ssp/ad/h/a;->n:Lcom/ubix/ssp/ad/g/k/e;

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a;->o:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/h/c/b;->setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V

    return-void
.end method

.method public setShakeSensor(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->setShakeSensor(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    new-instance v1, Lcom/ubix/ssp/ad/h/a$a;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/h/a$a;-><init>(Lcom/ubix/ssp/ad/h/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s$e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShowCloseBtnDelay(I)V
    .locals 0

    return-void
.end method

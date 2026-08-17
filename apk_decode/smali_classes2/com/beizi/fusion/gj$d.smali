.class Lcom/beizi/fusion/gj$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/rf$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/gj;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/beizi/fusion/gj;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/gj;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/gj$d;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v0}, Lcom/beizi/fusion/gj;->o(Lcom/beizi/fusion/gj;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/gj$d;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 42
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    iget-object v0, p0, Lcom/beizi/fusion/gj$d;->a:Landroid/widget/ImageView;

    sget v1, Lcom/beizi/fusion/R$drawable;->beizi_bg_place_holder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object v0, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v0}, Lcom/beizi/fusion/gj;->p(Lcom/beizi/fusion/gj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/beizi/fusion/gj$d;->a:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 46
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 48
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v0}, Lcom/beizi/fusion/gj;->q(Lcom/beizi/fusion/gj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v0}, Lcom/beizi/fusion/gj;->j(Lcom/beizi/fusion/gj;)V

    .line 51
    iget-object v0, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v0}, Lcom/beizi/fusion/gj;->k(Lcom/beizi/fusion/gj;)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v0}, Lcom/beizi/fusion/gj;->l(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/cm;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v0}, Lcom/beizi/fusion/gj;->l(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/cm;

    move-result-object v0

    invoke-interface {v0}, Lcom/beizi/fusion/cm;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/gj;->a(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 10

    const/16 v0, 0x8

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v1}, Lcom/beizi/fusion/gj;->m(Lcom/beizi/fusion/gj;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/beizi/fusion/gj;->a(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/gj;->a(I)V

    return-void

    .line 4
    :cond_1
    const-string v1, "BeiZisAd"

    const-string v2, "renderImageView onBitmapLoaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v1}, Lcom/beizi/fusion/gj;->m(Lcom/beizi/fusion/gj;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    int-to-double v2, v3

    div-double/2addr v4, v2

    double-to-float v2, v4

    .line 8
    iget-object v3, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v3}, Lcom/beizi/fusion/gj;->G(Lcom/beizi/fusion/gj;)I

    move-result v3

    .line 9
    iget-object v4, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v4}, Lcom/beizi/fusion/gj;->c(Lcom/beizi/fusion/gj;)I

    move-result v4

    if-lez v4, :cond_2

    .line 10
    iget-object v4, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v4}, Lcom/beizi/fusion/gj;->c(Lcom/beizi/fusion/gj;)I

    move-result v4

    goto :goto_0

    :cond_2
    int-to-float v4, v3

    div-float/2addr v4, v2

    float-to-int v4, v4

    .line 11
    :goto_0
    iget-object v5, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v5}, Lcom/beizi/fusion/gj;->d(Lcom/beizi/fusion/gj;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    iget-object v5, p0, Lcom/beizi/fusion/gj$d;->a:Landroid/widget/ImageView;

    goto :goto_1

    .line 13
    :cond_3
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :goto_1
    if-eqz v5, :cond_4

    .line 14
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 15
    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 16
    iput v4, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    int-to-double v8, v3

    mul-double/2addr v8, v6

    int-to-double v6, v4

    div-double/2addr v8, v6

    double-to-float v6, v8

    sub-float/2addr v6, v2

    .line 18
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v6, 0x3dcccccd    # 0.1f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_5

    .line 19
    invoke-static {}, Lcom/beizi/fusion/x3;->c()Lcom/beizi/fusion/x3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beizi/fusion/x3;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v6, Lcom/beizi/fusion/gj$d$a;

    invoke-direct {v6, p0, v1, p1, v5}, Lcom/beizi/fusion/gj$d$a;-><init>(Lcom/beizi/fusion/gj$d;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    float-to-double v1, v2

    const-wide v6, 0x3fb1eb851eb851ecL    # 0.07

    cmpl-double v1, v1, v6

    if-lez v1, :cond_6

    .line 20
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 21
    :cond_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 22
    :goto_2
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 24
    iget-object v1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v1}, Lcom/beizi/fusion/gj;->g(Lcom/beizi/fusion/gj;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 25
    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {p1}, Lcom/beizi/fusion/gj;->h(Lcom/beizi/fusion/gj;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    const-string p1, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v5, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 29
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 30
    :cond_7
    iget-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {p1}, Lcom/beizi/fusion/gj;->i(Lcom/beizi/fusion/gj;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 31
    iget-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {p1}, Lcom/beizi/fusion/gj;->j(Lcom/beizi/fusion/gj;)V

    .line 32
    iget-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {p1}, Lcom/beizi/fusion/gj;->k(Lcom/beizi/fusion/gj;)V

    .line 33
    :cond_8
    iget-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {p1}, Lcom/beizi/fusion/gj;->l(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/cm;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 34
    iget-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {p1}, Lcom/beizi/fusion/gj;->l(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/cm;

    move-result-object p1

    invoke-interface {p1}, Lcom/beizi/fusion/cm;->e()V

    :cond_9
    return-void

    .line 35
    :cond_a
    iget-object v1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {v1}, Lcom/beizi/fusion/gj;->m(Lcom/beizi/fusion/gj;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {p1}, Lcom/beizi/fusion/gj;->j(Lcom/beizi/fusion/gj;)V

    .line 37
    iget-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {p1}, Lcom/beizi/fusion/gj;->k(Lcom/beizi/fusion/gj;)V

    .line 38
    iget-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-static {p1}, Lcom/beizi/fusion/gj;->n(Lcom/beizi/fusion/gj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 39
    :catch_0
    iget-object p1, p0, Lcom/beizi/fusion/gj$d;->b:Lcom/beizi/fusion/gj;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/gj;->a(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

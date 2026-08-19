.class public Lcom/ubix/ssp/ad/f/a;
.super Lcom/ubix/ssp/ad/b;


# instance fields
.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:D

.field private q:Lcom/ubix/ssp/ad/g/k/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private s()V
    .locals 4

    new-instance v0, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/e/t/a/e;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x927c1

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    const v3, 0x927c2

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    const v3, 0x927c4

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/ubix/ssp/ad/e/t/a/e;->setSupportRound(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/f/a;->n:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/f/a;->o:I

    const-string v0, "AD_WIDTH"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "AD_HEIGHT"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    float-to-double v1, p1

    iput-wide v1, p0, Lcom/ubix/ssp/ad/f/a;->p:D

    const/4 p1, -0x1

    if-ne v0, p1, :cond_0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    const-wide/high16 p1, 0x4054000000000000L    # 80.0

    mul-double/2addr v1, p1

    double-to-int p1, v1

    iput p1, p0, Lcom/ubix/ssp/ad/f/a;->m:I

    iput p1, p0, Lcom/ubix/ssp/ad/f/a;->l:I

    goto :goto_2

    :cond_0
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v1, 0x3c

    if-gt p1, v1, :cond_1

    iget-wide p1, p0, Lcom/ubix/ssp/ad/f/a;->p:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    :goto_0
    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/f/a;->l:I

    :goto_1
    iput p1, p0, Lcom/ubix/ssp/ad/f/a;->m:I

    goto :goto_2

    :cond_1
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v1, 0x64

    if-lt p1, v1, :cond_2

    iget-wide p1, p0, Lcom/ubix/ssp/ad/f/a;->p:D

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double v1, p1

    iget-wide v3, p0, Lcom/ubix/ssp/ad/f/a;->p:D

    mul-double/2addr v1, v3

    double-to-int p1, v1

    iput p1, p0, Lcom/ubix/ssp/ad/f/a;->l:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    iget-wide v0, p0, Lcom/ubix/ssp/ad/f/a;->p:D

    mul-double/2addr p1, v0

    double-to-int p1, p1

    goto :goto_1

    :goto_2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/f/a;->s()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v1

    const-string v2, "IMAGE_URL"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    const v3, 0x927c1

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V

    const v1, 0x927c2

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x927c4

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const-string v3, "ubix/ic_logo_dark_bg.webp"

    :try_start_1
    const-string v4, "IS_UNNAMED"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {v3, p1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const-string p1, "ubix/ic_close_gray.webp"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getInterface()Lcom/ubix/ssp/ad/g/k/b;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/a;->q:Lcom/ubix/ssp/ad/g/k/d;

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 9

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    move-object p1, p0

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_0

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result p5

    const v0, 0x927c1

    packed-switch p5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p5

    int-to-double v1, p5

    iget-wide v3, p1, Lcom/ubix/ssp/ad/f/a;->p:D

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-int p5, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-double v3, v0

    iget-wide v7, p1, Lcom/ubix/ssp/ad/f/a;->p:D

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    double-to-int v0, v3

    invoke-virtual {p4, p5, v1, v2, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    int-to-double v1, p5

    iget-wide v3, p1, Lcom/ubix/ssp/ad/f/a;->p:D

    const-wide v5, 0x401970a3d70a3d71L    # 6.36

    mul-double/2addr v5, v3

    sub-double/2addr v1, v5

    double-to-int p5, v1

    const-wide/high16 v1, 0x402c000000000000L    # 14.0

    mul-double/2addr v3, v1

    double-to-int v1, v3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p4, p2, p5, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :pswitch_3
    iget p5, p1, Lcom/ubix/ssp/ad/f/a;->l:I

    iget v0, p1, Lcom/ubix/ssp/ad/f/a;->m:I

    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x927c1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget p1, p0, Lcom/ubix/ssp/ad/f/a;->l:I

    iget p2, p0, Lcom/ubix/ssp/ad/f/a;->m:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ubix/ssp/ad/g/k/b;",
            ">(TT;)V"
        }
    .end annotation

    check-cast p1, Lcom/ubix/ssp/ad/g/k/d;

    iput-object p1, p0, Lcom/ubix/ssp/ad/f/a;->q:Lcom/ubix/ssp/ad/g/k/d;

    return-void
.end method

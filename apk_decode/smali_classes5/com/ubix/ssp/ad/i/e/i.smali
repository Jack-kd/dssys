.class public Lcom/ubix/ssp/ad/i/e/i;
.super Lcom/ubix/ssp/ad/i/e/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/e/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/i/e/a;->a([Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 13

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance p1, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/ubix/ssp/ad/e/t/a/e;-><init>(Landroid/content/Context;)V

    const v2, 0x30d43

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ubix/ssp/ad/e/t/a/e;-><init>(Landroid/content/Context;)V

    const v3, 0x30d44

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    new-instance v3, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ubix/ssp/ad/e/t/a/e;-><init>(Landroid/content/Context;)V

    const v4, 0x30d45

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/ubix/ssp/ad/e/t/a/e;->setSupportRound(Z)V

    invoke-virtual {v2, v4}, Lcom/ubix/ssp/ad/e/t/a/e;->setSupportRound(Z)V

    invoke-virtual {v3, v4}, Lcom/ubix/ssp/ad/e/t/a/e;->setSupportRound(Z)V

    const v5, -0xcccccd

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v5, p0, Lcom/ubix/ssp/ad/i/e/a;->m:[Lcom/ubix/ssp/ad/e/t/a/e;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    aput-object v2, v5, v4

    const/4 v4, 0x2

    aput-object v3, v5, v4

    iget-object v4, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    int-to-double v7, v5

    const-wide v9, 0x400a666666666666L    # 3.3

    div-double/2addr v7, v9

    double-to-int v5, v7

    const-wide/high16 v11, 0x3fe2000000000000L    # 0.5625

    mul-double/2addr v7, v11

    double-to-int v7, v7

    invoke-direct {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/ubix/ssp/ad/i/e/a;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    int-to-double v7, v5

    div-double/2addr v7, v9

    double-to-int v5, v7

    mul-double/2addr v7, v11

    double-to-int v7, v7

    invoke-direct {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/ubix/ssp/ad/i/e/a;->f:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    int-to-double v7, v5

    div-double/2addr v7, v9

    double-to-int v5, v7

    mul-double/2addr v7, v11

    double-to-int v7, v7

    invoke-direct {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/ubix/ssp/ad/i/e/a;->g:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/ubix/ssp/ad/i/e/a;->e:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/ubix/ssp/ad/i/e/a;->f:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->g:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x1f47d1

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->f:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->h:Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x30d41

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->h:Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v4

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v2

    invoke-virtual {p1, v6, v4, v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->h:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->i()Z

    move-result p1

    const v2, 0x1eab93

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x1eab92

    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->c()Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v0

    invoke-virtual {p1, v6, v0, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->e()Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public l()V
    .locals 10

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->m:[Lcom/ubix/ssp/ad/e/t/a/e;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, p0, Lcom/ubix/ssp/ad/i/e/a;->A:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->m:[Lcom/ubix/ssp/ad/e/t/a/e;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, p0, Lcom/ubix/ssp/ad/i/e/a;->B:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->m:[Lcom/ubix/ssp/ad/e/t/a/e;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->A:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->m:[Lcom/ubix/ssp/ad/e/t/a/e;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->B:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->m:[Lcom/ubix/ssp/ad/e/t/a/e;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v6, p0, Lcom/ubix/ssp/ad/i/e/a;->A:I

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->m:[Lcom/ubix/ssp/ad/e/t/a/e;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->B:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->B:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v2, 0x1eab91

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v2, 0x1eab92

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    const v5, 0xe0a25

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    mul-int/2addr v6, v4

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    const v2, 0xde315

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_2

    const-wide/high16 v4, 0x4041000000000000L    # 34.0

    mul-double/2addr v4, v0

    iget v6, p0, Lcom/ubix/ssp/ad/i/e/a;->B:I

    int-to-double v6, v6

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    const v2, 0x1ef9b1

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-wide/high16 v3, 0x4042000000000000L    # 36.0

    mul-double/2addr v0, v3

    iget v3, p0, Lcom/ubix/ssp/ad/i/e/a;->B:I

    int-to-double v3, v3

    const-wide v5, 0x3fee666666666666L    # 0.95

    mul-double/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    return-void
.end method

.class public Lcom/ubix/ssp/ad/i/e/g;
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

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/i/e/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 6

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ubix/ssp/ad/i/e/a;->y:I

    iget v2, p0, Lcom/ubix/ssp/ad/i/e/a;->z:I

    invoke-direct {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x1

    const v2, 0x30d42

    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v1

    invoke-virtual {p1, v1, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x1f47d1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->e()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x3

    const v1, 0x1eab93

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v0

    invoke-virtual {p1, v5, v0, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->c()Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 9

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x40c00000    # 6.0f

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->y:I

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    const v2, 0x1eab91

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->y:I

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v3

    add-int/2addr v5, v3

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/ubix/ssp/ad/i/e/a;->y:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/ubix/ssp/ad/i/e/a;->z:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/ubix/ssp/ad/i/e/a;->z:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v2, 0x1eab92

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    const v3, 0xe0a25

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v4, v3

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    const v2, 0xde315

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_3

    const-wide/high16 v3, 0x4041000000000000L    # 34.0

    mul-double/2addr v3, v0

    iget-object v5, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x3feb333333333333L    # 0.85

    mul-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    const v2, 0x1ef9b1

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-wide/high16 v3, 0x4042000000000000L    # 36.0

    mul-double/2addr v0, v3

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fee666666666666L    # 0.95

    mul-double/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    return-void
.end method

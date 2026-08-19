.class public Lcom/ubix/ssp/ad/i/e/k;
.super Lcom/ubix/ssp/ad/i/e/a;


# instance fields
.field private l0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/e/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/i/e/k;->l0:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const v0, 0x1f6ee1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/f;->a()V

    :cond_0
    invoke-super {p0}, Lcom/ubix/ssp/ad/i/e/a;->a()V

    return-void
.end method

.method public a([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 2
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const v0, 0x30d58

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-super {p0, p1, v0}, Lcom/ubix/ssp/ad/i/e/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    if-eqz p2, :cond_1

    array-length p1, p2

    if-lez p1, :cond_1

    invoke-super {p0, p2}, Lcom/ubix/ssp/ad/i/e/a;->b([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 9

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const v4, 0x1eab93

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v3, Lcom/ubix/ssp/ad/d/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6, p1}, Lcom/ubix/ssp/ad/d/f;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const p1, 0x1f6ee1

    invoke-virtual {v3, p1}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    iget-object v8, p0, Lcom/ubix/ssp/ad/i/e/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/ubix/ssp/ad/i/e/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0xd

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->w:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->i()Z

    move-result p1

    const v0, 0x30d41

    if-eqz p1, :cond_1

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    div-int/lit8 v6, v6, 0x7

    const/16 v8, 0x96

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {p1, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x1eab92

    invoke-virtual {p1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v0

    invoke-virtual {p1, v7, v0, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->c()Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v0

    invoke-virtual {p1, v7, v0, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->e()Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->h()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->g()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    const v0, 0x1eab91

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v0, 0x1eab92

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const v1, 0xe0a25

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    mul-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    const v0, 0x30d53

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_2
    return-void
.end method

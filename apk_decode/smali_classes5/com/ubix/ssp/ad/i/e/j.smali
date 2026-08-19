.class public Lcom/ubix/ssp/ad/i/e/j;
.super Lcom/ubix/ssp/ad/i/e/a;


# instance fields
.field l0:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/e/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/i/e/j;->l0:F

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

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const v1, 0x1eab93

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    iget-object v5, p0, Lcom/ubix/ssp/ad/i/e/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->w:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->i()Z

    move-result p1

    const v3, 0x30d41

    if-eqz p1, :cond_1

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    div-int/lit8 v5, v5, 0x10

    invoke-direct {p1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x1eab92

    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v0

    invoke-virtual {p1, v4, v0, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->c()Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v0

    invoke-virtual {p1, v4, v0, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->e()Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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
    return-void
.end method

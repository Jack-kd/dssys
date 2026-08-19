.class public Lcom/ubix/ssp/ad/h/c/g;
.super Lcom/ubix/ssp/ad/h/c/b;


# instance fields
.field v:I

.field w:I

.field x:Landroid/view/WindowManager;

.field y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/h/c/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/16 p1, 0x177c

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/g;->y:I

    const-string p1, "TEMPLATE_ID"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/g;->y:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/g;->v:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/c;->e(Landroid/content/Context;)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/g;->w:I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/h/c/b;->a(I)Z

    move-result p1

    return p1
.end method

.method public getRealTemplateId()I
    .locals 1

    const/16 v0, 0x177c

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 10

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    move-object p1, p0

    iget p2, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    const/4 p4, 0x2

    if-ne p3, p4, :cond_0

    iget p2, p1, Lcom/ubix/ssp/ad/h/c/b;->b:I

    :cond_0
    const/4 p3, 0x0

    move v1, p3

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x61a82

    const/high16 v4, 0x41a00000    # 20.0f

    const v5, 0x61a84

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v6, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v3, v6

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v4

    add-int/2addr v6, v4

    iget v4, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v6, v4

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_9

    :sswitch_1
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v6, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v4, v6

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    iget v3, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_9

    :sswitch_2
    :try_start_0
    iget-wide v2, p1, Lcom/ubix/ssp/ad/h/c/b;->o:D

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    iget v4, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v5, v4, 0x6

    sub-int v5, v3, v5

    int-to-double v5, v5

    const-wide v7, 0x3fcb22d0e5604189L    # 0.212

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iget v6, p1, Lcom/ubix/ssp/ad/h/c/g;->v:I

    sub-int/2addr v6, v3

    div-int/2addr v6, p4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v6, v4

    sub-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v3

    div-int/lit8 v4, p2, 0x14

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x32

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    iget v4, p1, Lcom/ubix/ssp/ad/h/c/g;->v:I

    iget v7, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    add-int/2addr v4, v7

    div-int/2addr v4, p4

    iget v7, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v7, v7, 0x3

    sub-int/2addr v4, v7

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v7

    div-int/lit8 v8, p2, 0x14

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x32

    add-int/2addr v7, v2

    invoke-virtual {v0, v6, v3, v4, v7}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/c;

    iget v3, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    iget v4, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v4, v4, 0x6

    sub-int/2addr v3, v4

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    add-int/2addr v5, v2

    invoke-virtual {v0, v3, v5}, Lcom/ubix/ssp/ad/e/c;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9

    :sswitch_3
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, p5

    :goto_1
    const v3, 0xde3dd

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v2, v5

    iget v6, p1, Lcom/ubix/ssp/ad/h/c/g;->v:I

    iget v7, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int/2addr v6, v7

    div-int/2addr v6, p4

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/c/g;->getRealTemplateId()I

    move-result v7

    const/16 v8, 0x1773

    if-ne v7, v8, :cond_5

    iget v7, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/2addr v7, p4

    add-int/2addr v7, v6

    if-eqz v3, :cond_4

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    goto :goto_3

    :cond_4
    move v8, p3

    :goto_3
    sub-int/2addr v5, v8

    iget v8, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    div-int/2addr v8, p4

    add-int/2addr v6, v8

    if-eqz v3, :cond_7

    :goto_4
    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v3

    goto :goto_6

    :cond_5
    iget v4, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v4, v7

    div-int/2addr v4, p4

    add-int v7, v6, v4

    const/high16 v4, 0x42200000    # 40.0f

    if-eqz v3, :cond_6

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    goto :goto_5

    :cond_6
    move v8, p3

    :goto_5
    sub-int/2addr v5, v8

    iget v8, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    div-int/2addr v8, p4

    add-int/2addr v6, v8

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, p3

    :goto_6
    sub-int/2addr v2, v3

    invoke-virtual {v0, v7, v5, v6, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_9

    :sswitch_4
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :sswitch_5
    iget v2, p1, Lcom/ubix/ssp/ad/h/c/g;->v:I

    iget v3, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    add-int/2addr v3, v2

    div-int/2addr v3, p4

    iget v4, p1, Lcom/ubix/ssp/ad/h/c/g;->w:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v3, v2

    iget v2, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v2

    iget v4, p1, Lcom/ubix/ssp/ad/h/c/g;->v:I

    iget v5, p1, Lcom/ubix/ssp/ad/h/c/g;->w:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x10

    sub-int/2addr v2, v4

    iget v4, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    sub-int/2addr v2, v4

    iget v5, p1, Lcom/ubix/ssp/ad/h/c/g;->v:I

    iget v6, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    add-int/2addr v5, v6

    div-int/2addr v5, p4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v5, v4

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v4

    iget v6, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    sub-int/2addr v4, v6

    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_9

    :sswitch_6
    iget v2, p1, Lcom/ubix/ssp/ad/h/c/g;->v:I

    iget v3, p1, Lcom/ubix/ssp/ad/h/c/g;->w:I

    invoke-virtual {v0, p3, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_9

    :goto_7
    :sswitch_7
    iget v2, p1, Lcom/ubix/ssp/ad/h/c/g;->v:I

    iget v3, p1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int v4, v2, v3

    div-int/2addr v4, p4

    iget v5, p1, Lcom/ubix/ssp/ad/h/c/g;->w:I

    iget v6, p1, Lcom/ubix/ssp/ad/h/c/b;->b:I

    sub-int v7, v5, v6

    div-int/2addr v7, p4

    add-int/2addr v2, v3

    div-int/2addr v2, p4

    add-int/2addr v5, v6

    div-int/2addr v5, p4

    invoke-virtual {v0, v4, v7, v2, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_9

    :sswitch_8
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    add-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, p4

    add-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    add-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v2, v7

    div-int/2addr v2, p4

    add-int/2addr v6, v2

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_9

    :sswitch_9
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v3

    div-int/lit8 v4, p2, 0x1c

    sub-int/2addr v3, v4

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    div-int/lit8 v5, p2, 0xc

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v5

    :goto_8
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_9

    :sswitch_a
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p1, Lcom/ubix/ssp/ad/h/c/g;->v:I

    iget v4, p1, Lcom/ubix/ssp/ad/h/c/g;->w:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x10

    iget v4, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v6, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v4, v6

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p1, Lcom/ubix/ssp/ad/h/c/g;->v:I

    iget v7, p1, Lcom/ubix/ssp/ad/h/c/g;->w:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    iget v6, p1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    goto :goto_8

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x61a81 -> :sswitch_a
        0x61a82 -> :sswitch_9
        0x61a83 -> :sswitch_8
        0x61a84 -> :sswitch_7
        0x61a85 -> :sswitch_6
        0x61a87 -> :sswitch_5
        0x61a88 -> :sswitch_4
        0xde314 -> :sswitch_3
        0xde378 -> :sswitch_3
        0xde3dd -> :sswitch_2
        0xe0a25 -> :sswitch_1
        0xe0aed -> :sswitch_0
    .end sparse-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/g;->x:Landroid/view/WindowManager;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/g;->x:Landroid/view/WindowManager;

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/g;->x:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/c/b;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/h/c/b;->a(Ljava/util/HashMap;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/g;->v:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/c;->e(Landroid/content/Context;)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/g;->w:I

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->f(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/g;->v:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->g(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :goto_2
    const p1, 0x61a88

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p3, p0, Lcom/ubix/ssp/ad/h/c/b;->a:I

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p3, p0, Lcom/ubix/ssp/ad/h/c/b;->b:I

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

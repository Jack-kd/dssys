.class public Lcom/ubix/ssp/ad/h/c/a;
.super Lcom/ubix/ssp/ad/h/c/b;


# instance fields
.field v:I

.field w:I

.field x:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/h/c/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/a;->v:I

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

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/a;->w:I

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

    const/16 v0, 0x1771

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 17

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget v0, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v0, v1, Lcom/ubix/ssp/ad/h/c/b;->b:I

    :cond_0
    move v2, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v5, v0, :cond_9

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x61a82

    const v8, 0x61a84

    packed-switch v6, :pswitch_data_0

    const-wide v9, 0x3fcb22d0e5604189L    # 0.212

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const-wide/high16 v13, 0x4039000000000000L    # 25.0

    const/high16 v15, 0x41a00000    # 20.0f

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-static {v15}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v10, v10, 0x3

    add-int/2addr v9, v10

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v10

    :goto_1
    add-int/2addr v8, v10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v10, v10, 0x3

    add-int/2addr v8, v10

    invoke-virtual {v0, v6, v7, v9, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    :sswitch_1
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v7, v9

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v9, v9, 0x3

    sub-int/2addr v7, v9

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v10, v10, 0x3

    sub-int/2addr v9, v10

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v10, v10, 0x3

    sub-int/2addr v8, v10

    invoke-virtual {v0, v6, v7, v9, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v6, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v7, v7, 0x6

    sub-int/2addr v6, v7

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_8

    :sswitch_2
    const v6, 0xe0a25

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-wide v7, v1, Lcom/ubix/ssp/ad/h/c/b;->o:D

    mul-double/2addr v7, v13

    div-double/2addr v7, v11

    double-to-int v7, v7

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v11, v11, 0x6

    sub-int/2addr v8, v11

    int-to-double v11, v8

    mul-double/2addr v11, v9

    double-to-int v8, v11

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    goto :goto_2

    :cond_1
    move v6, v4

    :goto_2
    iget v9, v1, Lcom/ubix/ssp/ad/h/c/a;->v:I

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int v11, v9, v10

    div-int/2addr v11, v3

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/a;->w:I

    iget v13, v1, Lcom/ubix/ssp/ad/h/c/b;->d:I

    add-int/2addr v12, v13

    div-int/2addr v12, v3

    int-to-double v13, v12

    div-int/lit8 v15, v2, 0x14

    add-int/2addr v6, v15

    add-int/lit8 v6, v6, 0x32

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    add-int/2addr v6, v8

    int-to-double v6, v6

    const-wide v15, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v6, v15

    sub-double/2addr v13, v6

    double-to-int v8, v13

    add-int/2addr v9, v10

    div-int/2addr v9, v3

    invoke-virtual {v0, v11, v8, v9, v12}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/e;

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    double-to-int v6, v6

    invoke-virtual {v0, v8, v6}, Lcom/ubix/ssp/ad/e/e;->a(II)V

    goto/16 :goto_8

    :sswitch_3
    :try_start_0
    iget-wide v6, v1, Lcom/ubix/ssp/ad/h/c/b;->o:D

    mul-double/2addr v6, v13

    div-double/2addr v6, v11

    double-to-int v6, v6

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v11, v8, 0x6

    sub-int v11, v7, v11

    int-to-double v11, v11

    mul-double/2addr v11, v9

    double-to-int v9, v11

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/a;->v:I

    sub-int/2addr v10, v7

    div-int/2addr v10, v3

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v10, v8

    sub-int/2addr v10, v6

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v7

    div-int/lit8 v8, v2, 0x14

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x32

    sub-int/2addr v7, v9

    sub-int/2addr v7, v6

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/a;->v:I

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    add-int/2addr v8, v11

    div-int/2addr v8, v3

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v8, v11

    add-int/2addr v8, v6

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v11

    div-int/lit8 v12, v2, 0x14

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x32

    add-int/2addr v11, v6

    invoke-virtual {v0, v10, v7, v8, v11}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/c;

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v8, v8, 0x6

    sub-int/2addr v7, v8

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    add-int/2addr v9, v6

    invoke-virtual {v0, v7, v9}, Lcom/ubix/ssp/ad/e/c;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    :sswitch_4
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_3

    :cond_2
    move/from16 v6, p5

    :goto_3
    const v7, 0xde3dd

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    move v7, v4

    :goto_4
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v6, v8

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/a;->v:I

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v3

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/a;->getRealTemplateId()I

    move-result v10

    const/16 v11, 0x1773

    if-ne v10, v11, :cond_6

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v3

    add-int/2addr v10, v9

    if-eqz v7, :cond_5

    invoke-static {v15}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v11

    goto :goto_5

    :cond_5
    move v11, v4

    :goto_5
    sub-int/2addr v8, v11

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    div-int/2addr v11, v3

    add-int/2addr v9, v11

    if-eqz v7, :cond_8

    invoke-static {v15}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v7

    goto :goto_7

    :cond_6
    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v3

    add-int/2addr v10, v9

    const/high16 v11, 0x42200000    # 40.0f

    if-eqz v7, :cond_7

    invoke-static {v11}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v12

    goto :goto_6

    :cond_7
    move v12, v4

    :goto_6
    sub-int/2addr v8, v12

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v12, v13

    div-int/2addr v12, v3

    add-int/2addr v9, v12

    if-eqz v7, :cond_8

    invoke-static {v11}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v7

    goto :goto_7

    :cond_8
    move v7, v4

    :goto_7
    sub-int/2addr v6, v7

    invoke-virtual {v0, v10, v8, v9, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    :pswitch_0
    iget v6, v1, Lcom/ubix/ssp/ad/h/c/a;->v:I

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/a;->w:I

    invoke-virtual {v0, v4, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    :pswitch_1
    iget v6, v1, Lcom/ubix/ssp/ad/h/c/a;->v:I

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int v8, v6, v7

    div-int/2addr v8, v3

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/a;->w:I

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->b:I

    sub-int v11, v9, v10

    div-int/2addr v11, v3

    add-int/2addr v6, v7

    div-int/2addr v6, v3

    add-int/2addr v9, v10

    div-int/2addr v9, v3

    invoke-virtual {v0, v8, v11, v6, v9}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    add-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/2addr v9, v3

    add-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    add-int/2addr v9, v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v6, v11

    div-int/2addr v6, v3

    add-int/2addr v10, v6

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    :pswitch_3
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v7

    div-int/lit8 v9, v2, 0x1c

    sub-int/2addr v7, v9

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v8, v9

    div-int/lit8 v9, v2, 0xc

    add-int/2addr v8, v9

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    :pswitch_4
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/a;->v:I

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/a;->w:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/lit8 v7, v7, 0x10

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    sub-int/2addr v6, v7

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v10, v10, 0x3

    sub-int/2addr v9, v10

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/a;->v:I

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/a;->w:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    div-int/lit8 v10, v10, 0x10

    goto/16 :goto_1

    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x61a81
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xde314 -> :sswitch_4
        0xde378 -> :sswitch_4
        0xde3dd -> :sswitch_3
        0xde441 -> :sswitch_2
        0xe0a25 -> :sswitch_1
        0xe0aed -> :sswitch_0
    .end sparse-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/a;->x:Landroid/view/WindowManager;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/a;->x:Landroid/view/WindowManager;

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/a;->x:Landroid/view/WindowManager;

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

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/a;->v:I

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

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/a;->w:I

    return-void

    :cond_2
    :goto_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->f(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/a;->v:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->g(Landroid/content/Context;)I

    move-result p1

    goto :goto_0
.end method

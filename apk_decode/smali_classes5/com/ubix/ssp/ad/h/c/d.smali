.class public Lcom/ubix/ssp/ad/h/c/d;
.super Lcom/ubix/ssp/ad/h/c/b;


# instance fields
.field v:I

.field w:I

.field private x:Landroid/view/WindowManager;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/h/c/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/h/c/d;->y:Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/d;->v:I

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

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/d;->w:I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/h/c/b;->a(I)Z

    move-result p1

    return p1
.end method

.method public getAppInfoTop()I
    .locals 3

    const v0, 0xe0a25

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v1, v1, 0x2

    :goto_0
    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/h/c/d;->w:I

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v1, v1, 0x3

    goto :goto_0
.end method

.method public getRealTemplateId()I
    .locals 1

    const/16 v0, 0x177e

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget v0, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget v0, v1, Lcom/ubix/ssp/ad/h/c/b;->b:I

    :cond_0
    move v4, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_c

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v8

    const/high16 v9, 0x42200000    # 40.0f

    const/4 v10, 0x1

    const v11, 0x61a82

    const/high16 v12, 0x41a00000    # 20.0f

    const/4 v13, 0x3

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_b

    :sswitch_0
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v8, v13

    invoke-static {v12}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v9

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v10, v13

    add-int/2addr v9, v10

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v10

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v11, v13

    add-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    :sswitch_1
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v8, v13

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/d;->w:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v10, v13

    sub-int/2addr v9, v10

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    sub-int/2addr v11, v10

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/d;->w:I

    sub-int/2addr v12, v10

    invoke-virtual {v0, v8, v9, v11, v12}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v9, v9, 0x6

    sub-int/2addr v8, v9

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_b

    :sswitch_2
    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v8

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    int-to-double v9, v9

    const-wide v11, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v9, v11

    const-wide v13, 0x3fcb22d0e5604189L    # 0.212

    mul-double/2addr v9, v13

    double-to-int v9, v9

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-wide v9, v1, Lcom/ubix/ssp/ad/h/c/b;->o:D

    const-wide/high16 v13, 0x4039000000000000L    # 25.0

    mul-double/2addr v9, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v13

    double-to-int v9, v9

    iget-boolean v10, v1, Lcom/ubix/ssp/ad/h/c/d;->y:Z

    if-eqz v10, :cond_1

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    int-to-double v10, v10

    const-wide v12, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v12

    double-to-int v10, v10

    sub-int/2addr v10, v9

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/d;->getAppInfoTop()I

    move-result v11

    div-int/lit8 v12, v4, 0x14

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x32

    sub-int/2addr v11, v8

    sub-int/2addr v11, v9

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    int-to-double v12, v12

    const-wide v14, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v12, v14

    double-to-int v12, v12

    add-int/2addr v12, v9

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/d;->getAppInfoTop()I

    move-result v13

    div-int/lit8 v14, v4, 0x14

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x32

    add-int/2addr v13, v9

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/c;

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    int-to-double v10, v10

    const-wide v12, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v10, v12

    double-to-int v10, v10

    :goto_1
    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v10, v9

    add-int/2addr v8, v9

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    iget v10, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    int-to-double v13, v10

    const-wide v15, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v13, v15

    double-to-int v10, v13

    sub-int/2addr v10, v9

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/d;->getAppInfoTop()I

    move-result v13

    div-int/lit8 v14, v4, 0x14

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x32

    sub-int/2addr v13, v8

    sub-int/2addr v13, v9

    iget v14, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    int-to-double v14, v14

    const-wide v16, 0x3feccccccccccccdL    # 0.9

    mul-double v14, v14, v16

    double-to-int v14, v14

    add-int/2addr v14, v9

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/d;->getAppInfoTop()I

    move-result v15

    div-int/lit8 v16, v4, 0x14

    sub-int v15, v15, v16

    add-int/lit8 v15, v15, -0x32

    add-int/2addr v15, v9

    invoke-virtual {v0, v10, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/c;

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    int-to-double v13, v10

    mul-double/2addr v13, v11

    double-to-int v10, v13

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v10, v8}, Lcom/ubix/ssp/ad/e/c;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_b

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b

    :sswitch_3
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_4

    :cond_2
    move v8, v3

    :goto_4
    const v11, 0xde3dd

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_5

    :cond_3
    move v10, v6

    :goto_5
    const v11, 0x61a84

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int v11, v8, v11

    iget v13, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    iget v14, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int/2addr v13, v14

    div-int/2addr v13, v5

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/d;->getRealTemplateId()I

    move-result v14

    const/16 v15, 0x1773

    if-ne v14, v15, :cond_5

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v9, v14

    div-int/2addr v9, v5

    add-int/2addr v9, v13

    if-eqz v10, :cond_4

    invoke-static {v12}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v14

    goto :goto_6

    :cond_4
    move v14, v6

    :goto_6
    sub-int/2addr v11, v14

    iget v14, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v14, v15

    div-int/2addr v14, v5

    add-int/2addr v13, v14

    if-eqz v10, :cond_8

    invoke-static {v12}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    goto :goto_8

    :cond_5
    iget v12, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v12, v14

    div-int/2addr v12, v5

    add-int/2addr v12, v13

    if-eqz v10, :cond_6

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v14

    goto :goto_7

    :cond_6
    move v14, v6

    :goto_7
    sub-int/2addr v11, v14

    iget v14, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v14, v15

    div-int/2addr v14, v5

    add-int/2addr v13, v14

    if-eqz v10, :cond_7

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    move v9, v12

    goto :goto_8

    :cond_7
    move v9, v12

    :cond_8
    move v10, v6

    :goto_8
    sub-int/2addr v8, v10

    invoke-virtual {v0, v9, v11, v13, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    :sswitch_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sub-int v8, v2, p2

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v8, v3, p3

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_b

    :sswitch_5
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/d;->w:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    div-int/lit8 v9, v9, 0x10

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v9, v13

    sub-int/2addr v8, v9

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/d;->getAppInfoTop()I

    move-result v9

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/d;->w:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    div-int/lit8 v10, v10, 0x10

    sub-int/2addr v9, v10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    sub-int/2addr v9, v10

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    mul-int/2addr v10, v13

    sub-int/2addr v11, v10

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/d;->getAppInfoTop()I

    move-result v10

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    sub-int/2addr v10, v12

    invoke-virtual {v0, v8, v9, v11, v10}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    :sswitch_6
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/d;->w:I

    invoke-virtual {v0, v6, v6, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    :sswitch_7
    sub-int v8, v2, p2

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int v10, v8, v9

    div-int/2addr v10, v5

    sub-int v11, v3, p3

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/b;->b:I

    sub-int v13, v11, v12

    div-int/2addr v13, v5

    add-int/2addr v8, v9

    div-int/2addr v8, v5

    add-int/2addr v11, v12

    div-int/2addr v11, v5

    invoke-virtual {v0, v10, v13, v8, v11}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    :sswitch_8
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/2addr v11, v5

    add-int/2addr v10, v11

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    add-int/2addr v11, v12

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v8, v13

    div-int/2addr v8, v5

    add-int/2addr v12, v8

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    :sswitch_9
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v8, v13

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/d;->getAppInfoTop()I

    move-result v9

    div-int/lit8 v10, v4, 0x1c

    sub-int/2addr v9, v10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v10, v13

    div-int/lit8 v11, v4, 0xc

    add-int/2addr v10, v11

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/d;->getAppInfoTop()I

    move-result v11

    :goto_9
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_b

    :sswitch_a
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->t:I

    if-eq v8, v10, :cond_b

    if-eq v8, v5, :cond_a

    if-eq v8, v13, :cond_9

    const/4 v10, 0x4

    if-eq v8, v10, :cond_9

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/d;->w:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    div-int/lit8 v9, v9, 0x10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v10, v13

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    sub-int v11, v9, v10

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/d;->w:I

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    div-int/lit8 v9, v9, 0x10

    :goto_a
    iget v12, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v12, v13

    add-int/2addr v9, v12

    invoke-virtual {v0, v8, v10, v11, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_b

    :cond_9
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v9, v13

    sub-int/2addr v8, v9

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    sub-int/2addr v10, v9

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v11}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v11

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    goto :goto_9

    :cond_a
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v10

    sub-int/2addr v8, v10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v10, v13

    sub-int/2addr v8, v10

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/d;->v:I

    sub-int/2addr v11, v10

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v9

    goto :goto_a

    :cond_b
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_c
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

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/d;->x:Landroid/view/WindowManager;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/d;->x:Landroid/view/WindowManager;

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/d;->x:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/c/b;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/h/c/b;->a(Ljava/util/HashMap;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/h/c/d;->y:Z

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/d;->v:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/c;->e(Landroid/content/Context;)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/d;->w:I

    return-void

    :cond_2
    :goto_1
    iput-boolean p2, p0, Lcom/ubix/ssp/ad/h/c/d;->y:Z

    goto :goto_0
.end method

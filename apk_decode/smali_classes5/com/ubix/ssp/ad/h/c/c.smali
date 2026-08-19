.class public Lcom/ubix/ssp/ad/h/c/c;
.super Lcom/ubix/ssp/ad/h/c/b;


# instance fields
.field v:I

.field w:I

.field x:I

.field private y:Landroid/view/WindowManager;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/h/c/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/h/c/c;->z:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/h/c/c;->x:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/h/c/c;->v:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/c;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ubix/ssp/ad/h/c/c;->w:I

    const-string v0, "RENDER_MODE"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->r:I

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
    iget v0, p0, Lcom/ubix/ssp/ad/h/c/c;->w:I

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v1, v1, 0x3

    goto :goto_0
.end method

.method public getRealTemplateId()I
    .locals 1

    const/16 v0, 0x1774

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 20

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

    if-ge v7, v0, :cond_12

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v8

    const/high16 v9, 0x42200000    # 40.0f

    const v10, 0x61a82

    const/4 v11, 0x1

    const/4 v12, 0x3

    packed-switch v8, :pswitch_data_0

    const-wide v13, 0x3fd999999999999aL    # 0.4

    const/high16 v15, 0x41a00000    # 20.0f

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_f

    :sswitch_0
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v8, v12

    invoke-static {v15}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v9

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v10, v12

    add-int/2addr v9, v10

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v10

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_f

    :sswitch_1
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v8, v12

    sub-int v9, v3, p3

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/c;->x:I

    sub-int v10, v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    sub-int/2addr v12, v11

    iget v13, v1, Lcom/ubix/ssp/ad/h/c/c;->x:I

    sub-int/2addr v9, v13

    sub-int/2addr v9, v11

    invoke-virtual {v0, v8, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v9, v9, 0x6

    sub-int/2addr v8, v9

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_f

    :sswitch_2
    const v8, 0xe0a25

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/c;->h(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, v1, Lcom/ubix/ssp/ad/h/c/c;->z:Z

    if-eqz v9, :cond_2

    int-to-double v8, v8

    int-to-double v10, v3

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    :goto_2
    add-double/2addr v8, v10

    double-to-int v8, v8

    sub-int v8, v3, v8

    invoke-virtual {v0, v6, v8, v2, v3}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/e;

    double-to-int v8, v10

    :goto_3
    invoke-virtual {v0, v2, v8}, Lcom/ubix/ssp/ad/e/e;->a(II)V

    goto/16 :goto_f

    :cond_2
    int-to-double v8, v8

    int-to-double v10, v3

    mul-double/2addr v10, v13

    goto :goto_2

    :cond_3
    iget-boolean v9, v1, Lcom/ubix/ssp/ad/h/c/c;->z:Z

    if-eqz v9, :cond_4

    int-to-double v8, v8

    int-to-double v10, v3

    const-wide v12, 0x3fe4cccccccccccdL    # 0.65

    :goto_4
    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v8, v8

    sub-int v9, v3, v8

    invoke-virtual {v0, v6, v9, v2, v3}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/e;

    goto :goto_3

    :cond_4
    int-to-double v8, v8

    int-to-double v10, v3

    const-wide v12, 0x3fdccccccccccccdL    # 0.45

    goto :goto_4

    :sswitch_3
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

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    int-to-double v9, v9

    const-wide v11, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v9, v11

    const-wide v15, 0x3fcb22d0e5604189L    # 0.212

    mul-double/2addr v9, v15

    double-to-int v9, v9

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-wide v9, v1, Lcom/ubix/ssp/ad/h/c/b;->o:D

    const-wide/high16 v15, 0x4039000000000000L    # 25.0

    mul-double/2addr v9, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v15

    double-to-int v9, v9

    iget-boolean v10, v1, Lcom/ubix/ssp/ad/h/c/c;->z:Z

    if-eqz v10, :cond_5

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    int-to-double v10, v10

    const-wide v15, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v15

    double-to-int v10, v10

    sub-int/2addr v10, v9

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/c;->getAppInfoTop()I

    move-result v11

    div-int/lit8 v12, v4, 0x14

    sub-int/2addr v11, v12

    sub-int/2addr v11, v8

    sub-int/2addr v11, v9

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    move-wide/from16 v16, v13

    int-to-double v13, v12

    const-wide v18, 0x3fe6666666666666L    # 0.7

    mul-double v13, v13, v18

    double-to-int v12, v13

    add-int/2addr v12, v9

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/c;->getAppInfoTop()I

    move-result v13

    div-int/lit8 v14, v4, 0x14

    sub-int/2addr v13, v14

    add-int/2addr v13, v9

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/c;

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    int-to-double v10, v10

    mul-double v10, v10, v16

    double-to-int v10, v10

    :goto_5
    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v10, v9

    add-int/2addr v8, v9

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_5
    iget v10, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    int-to-double v13, v10

    const-wide v15, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v13, v15

    double-to-int v10, v13

    sub-int/2addr v10, v9

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/c;->getAppInfoTop()I

    move-result v13

    div-int/lit8 v14, v4, 0x14

    sub-int/2addr v13, v14

    sub-int/2addr v13, v8

    sub-int/2addr v13, v9

    iget v14, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    int-to-double v14, v14

    const-wide v16, 0x3feccccccccccccdL    # 0.9

    mul-double v14, v14, v16

    double-to-int v14, v14

    add-int/2addr v14, v9

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/c;->getAppInfoTop()I

    move-result v15

    div-int/lit8 v16, v4, 0x14

    sub-int v15, v15, v16

    add-int/2addr v15, v9

    invoke-virtual {v0, v10, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/c;

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    int-to-double v13, v10

    mul-double/2addr v13, v11

    double-to-int v10, v13

    goto :goto_5

    :goto_6
    invoke-virtual {v0, v10, v8}, Lcom/ubix/ssp/ad/e/c;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_f

    :sswitch_4
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_8

    :cond_6
    move v8, v3

    :goto_8
    const v10, 0xde3dd

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_9

    :cond_7
    move v11, v6

    :goto_9
    const v10, 0x61a84

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int v10, v8, v10

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    iget v13, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int/2addr v12, v13

    div-int/2addr v12, v5

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/c;->getRealTemplateId()I

    move-result v13

    const/16 v14, 0x1773

    if-ne v13, v14, :cond_9

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v9, v13

    div-int/2addr v9, v5

    add-int/2addr v9, v12

    if-eqz v11, :cond_8

    invoke-static {v15}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    goto :goto_a

    :cond_8
    move v13, v6

    :goto_a
    sub-int/2addr v10, v13

    iget v13, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v13, v14

    div-int/2addr v13, v5

    add-int/2addr v12, v13

    if-eqz v11, :cond_c

    invoke-static {v15}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v11

    goto :goto_c

    :cond_9
    iget v13, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/2addr v13, v5

    add-int/2addr v13, v12

    if-eqz v11, :cond_a

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v14

    goto :goto_b

    :cond_a
    move v14, v6

    :goto_b
    sub-int/2addr v10, v14

    iget v14, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v14, v15

    div-int/2addr v14, v5

    add-int/2addr v12, v14

    if-eqz v11, :cond_b

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v11

    move v9, v13

    goto :goto_c

    :cond_b
    move v9, v13

    :cond_c
    move v11, v6

    :goto_c
    sub-int/2addr v8, v11

    invoke-virtual {v0, v9, v10, v12, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_f

    :pswitch_0
    sub-int v8, v2, p2

    sub-int v9, v3, p3

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/c;->x:I

    sub-int/2addr v9, v10

    invoke-virtual {v0, v6, v6, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_f

    :pswitch_1
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->r:I

    if-ne v8, v11, :cond_d

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/c;->x:I

    sub-int v8, v3, v8

    invoke-virtual {v0, v6, v6, v2, v8}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/t/a/e;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_d
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_f

    :cond_d
    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/t/a/e;

    if-ne v8, v5, :cond_e

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_d

    :cond_e
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_d

    :pswitch_2
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

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

    goto/16 :goto_f

    :pswitch_3
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v8, v12

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/c;->getAppInfoTop()I

    move-result v9

    div-int/lit8 v10, v4, 0x1c

    sub-int/2addr v9, v10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v10, v12

    div-int/lit8 v11, v4, 0xc

    add-int/2addr v10, v11

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/c;->getAppInfoTop()I

    move-result v11

    :goto_e
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_f

    :pswitch_4
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->t:I

    if-eq v8, v11, :cond_11

    if-eq v8, v5, :cond_10

    if-eq v8, v12, :cond_f

    const/4 v10, 0x4

    if-eq v8, v10, :cond_f

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    sub-int v9, v2, p2

    sub-int v10, v3, p3

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/c;->x:I

    sub-int v11, v10, v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    div-int/lit8 v11, v11, 0x10

    iget v13, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v13, v12

    add-int/2addr v11, v13

    sub-int/2addr v8, v11

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    sub-int/2addr v11, v13

    iget v14, v1, Lcom/ubix/ssp/ad/h/c/c;->x:I

    sub-int/2addr v10, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    div-int/lit8 v9, v9, 0x10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v10, v12

    add-int/2addr v9, v10

    invoke-virtual {v0, v8, v13, v11, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_f

    :cond_f
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v9, v12

    sub-int/2addr v8, v9

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    sub-int/2addr v10, v9

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v11}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v11

    iget v13, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v13, v12

    add-int/2addr v11, v13

    goto :goto_e

    :cond_10
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v10

    sub-int/2addr v8, v10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v10, v12

    sub-int/2addr v8, v10

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/c;->v:I

    sub-int/2addr v11, v10

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v9

    iget v13, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v13, v12

    add-int/2addr v9, v13

    invoke-virtual {v0, v8, v10, v11, v9}, Landroid/view/View;->layout(IIII)V

    :cond_11
    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_12
    return-void

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

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/c;->y:Landroid/view/WindowManager;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/c;->y:Landroid/view/WindowManager;

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/c;->y:Landroid/view/WindowManager;

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

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/h/c/c;->z:Z

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/c;->v:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/c;->e(Landroid/content/Context;)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/c;->w:I

    return-void

    :cond_2
    :goto_1
    iput-boolean p2, p0, Lcom/ubix/ssp/ad/h/c/c;->z:Z

    goto :goto_0
.end method

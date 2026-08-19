.class public Lcom/ubix/ssp/ad/e/a0/y/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/ubix/ssp/ad/e/a0/y/a;Lcom/ubix/ssp/ad/e/a0/y/a;)D
    .locals 17

    .line 1
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ubix/ssp/ad/e/a0/y/a;->d()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/ubix/ssp/ad/e/a0/y/a;->e()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/ubix/ssp/ad/e/a0/y/a;->b()D

    move-result-wide v4

    add-double/2addr v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ubix/ssp/ad/e/a0/y/a;->c()D

    move-result-wide v6

    add-double/2addr v6, v2

    invoke-virtual/range {p1 .. p1}, Lcom/ubix/ssp/ad/e/a0/y/a;->d()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/ubix/ssp/ad/e/a0/y/a;->e()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/ubix/ssp/ad/e/a0/y/a;->b()D

    move-result-wide v12

    add-double/2addr v12, v8

    invoke-virtual/range {p1 .. p1}, Lcom/ubix/ssp/ad/e/a0/y/a;->c()D

    move-result-wide v14

    add-double/2addr v14, v10

    cmpl-double v16, v0, v12

    if-gtz v16, :cond_2

    cmpg-double v16, v4, v8

    if-ltz v16, :cond_2

    cmpl-double v16, v2, v14

    if-gtz v16, :cond_2

    cmpg-double v16, v6, v10

    if-gez v16, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sub-double/2addr v4, v0

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    mul-double/2addr v4, v0

    return-wide v4

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_3
    :goto_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method private static a(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 2

    .line 2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static a(Landroid/view/View;)Z
    .locals 8

    .line 3
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const-string v1, "android.view.WindowManagerGlobal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getInstance"

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mViews"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move v2, v3

    :cond_0
    :goto_0
    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    const/16 v6, 0x7d5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p0, :cond_9

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x2

    if-eq v5, v7, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v4, p0, :cond_9

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_6
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v7, :cond_8

    const v5, 0xd6003

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, p0, :cond_8

    move v3, v0

    goto :goto_3

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_4
    return v3

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static a(Landroid/view/View;FZLjava/util/List;)Z
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 4
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    mul-int/2addr v7, v8

    mul-int/2addr v5, v6

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    int-to-float v4, v7

    int-to-float v5, v5

    mul-float v5, v5, p1

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_6

    move-object v4, v0

    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, "isViewCovered: 2,if the parent of view is not visible,return true"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return v6

    :cond_0
    if-eqz v1, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isViewCovered :3 checkTopView"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v7

    add-int/2addr v7, v6

    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentParent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentView="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentChildView="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    move/from16 v20, v6

    goto/16 :goto_2

    :cond_2
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v9, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->isShown()Z

    move-result v12

    if-eqz v12, :cond_1

    if-eqz v11, :cond_1

    invoke-static {v8, v10}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    new-instance v11, Lcom/ubix/ssp/ad/e/a0/y/a;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    int-to-double v12, v8

    iget v8, v3, Landroid/graphics/Rect;->top:I

    int-to-double v14, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-double v8, v8

    move/from16 v20, v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v0, v6

    move-wide/from16 v18, v0

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/ubix/ssp/ad/e/a0/y/a;-><init>(DDDD)V

    new-instance v21, Lcom/ubix/ssp/ad/e/a0/y/a;

    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-double v0, v0

    iget v6, v10, Landroid/graphics/Rect;->top:I

    int-to-double v8, v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-double v12, v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v14, v6

    move-wide/from16 v22, v0

    move-wide/from16 v24, v8

    move-wide/from16 v26, v12

    move-wide/from16 v28, v14

    invoke-direct/range {v21 .. v29}, Lcom/ubix/ssp/ad/e/a0/y/a;-><init>(DDDD)V

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Lcom/ubix/ssp/ad/e/a0/y/a;Lcom/ubix/ssp/ad/e/a0/y/a;)D

    move-result-wide v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int/2addr v6, v8

    int-to-double v8, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    cmpl-double v0, v0, v8

    if-ltz v0, :cond_3

    return v20

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v6, v20

    goto/16 :goto_1

    :cond_4
    move/from16 v20, v6

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v4, v5

    move/from16 v6, v20

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    return v0

    :cond_6
    move/from16 v20, v6

    const-string v0, "isViewCovered: 1\uff0cif any part of the view is clipped by any of its parents,return true"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return v20
.end method

.method public static a(Landroid/view/View;ZZLjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 5
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p0, p1, p2, p3}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;FZLjava/util/List;)Z

    move-result p0

    return p0
.end method

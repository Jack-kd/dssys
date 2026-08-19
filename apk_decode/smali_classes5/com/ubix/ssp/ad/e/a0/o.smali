.class public Lcom/ubix/ssp/ad/e/a0/o;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/o$f;
    }
.end annotation


# instance fields
.field a:Lcom/ubix/ssp/ad/e/a;

.field private b:Lcom/ubix/ssp/ad/e/a0/o$f;

.field private c:Z

.field private d:Lcom/ubix/ssp/ad/e/a0/s;

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 10

    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->a:Lcom/ubix/ssp/ad/e/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->c:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->j:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->k:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/a0/o;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const v1, 0xde314

    invoke-virtual {p0, v1}, Landroid/view/View;->setId(I)V

    int-to-float p4, p4

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p4, v1

    iput p4, p0, Lcom/ubix/ssp/ad/e/a0/o;->e:F

    int-to-float p4, p5

    div-float/2addr p4, v1

    iput p4, p0, Lcom/ubix/ssp/ad/e/a0/o;->f:F

    const/16 p4, 0x28

    move/from16 p5, p6

    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/ubix/ssp/ad/e/a0/o;->g:I

    move/from16 p4, p7

    iput-boolean p4, p0, Lcom/ubix/ssp/ad/e/a0/o;->k:Z

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    new-instance v1, Lcom/ubix/ssp/ad/e/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/ubix/ssp/ad/e/a;-><init>(Landroid/content/Context;IIZZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/a0/o;->a:Lcom/ubix/ssp/ad/e/a;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/ubix/ssp/ad/e/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/ubix/ssp/ad/e/a;-><init>(Landroid/content/Context;IIZZLjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/a0/o;->a:Lcom/ubix/ssp/ad/e/a;

    :goto_0
    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/o;->a:Lcom/ubix/ssp/ad/e/a;

    const p3, 0xde318

    invoke-virtual {p2, p3}, Landroid/view/View;->setId(I)V

    iget-boolean p2, p0, Lcom/ubix/ssp/ad/e/a0/o;->k:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/o;->a:Lcom/ubix/ssp/ad/e/a;

    const/4 p3, 0x4

    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/o;->a:Lcom/ubix/ssp/ad/e/a;

    const/16 p3, 0x8

    goto :goto_1

    :goto_2
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xd

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p3, p0, Lcom/ubix/ssp/ad/e/a0/o;->a:Lcom/ubix/ssp/ad/e/a;

    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget p2, p0, Lcom/ubix/ssp/ad/e/a0/o;->g:I

    int-to-float p2, p2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->g:I

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/a0/o;->h:I

    return p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/a0/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/a0/o;->i:I

    return p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/a0/o;)Lcom/ubix/ssp/ad/e/a0/o$f;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/o;->b:Lcom/ubix/ssp/ad/e/a0/o$f;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->j:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(ID[IIIDZZ)V
    .locals 11

    .line 3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-wide v3, p2

    move-object v5, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/ubix/ssp/ad/e/a0/s;-><init>(Landroid/content/Context;D[IIDZZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 p1, 0x0

    aget v4, p4, p1

    move-wide v2, p2

    move-wide/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/ubix/ssp/ad/e/a0/s;-><init>(Landroid/content/Context;DID)V

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/ubix/ssp/ad/e/a0/o;->d:Lcom/ubix/ssp/ad/e/a0/s;

    new-instance p1, Lcom/ubix/ssp/ad/e/a0/o$d;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/e/a0/o$d;-><init>(Lcom/ubix/ssp/ad/e/a0/o;)V

    const-wide/16 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->d:Lcom/ubix/ssp/ad/e/a0/s;

    const p2, 0xde315

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/s;->a(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->b:Lcom/ubix/ssp/ad/e/a0/o$f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/a0/o$f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->d:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->d:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->d:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/o$b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/o$b;-><init>(Lcom/ubix/ssp/ad/e/a0/o;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/ubix/ssp/ad/e/a0/o$a;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/e/a0/o$a;-><init>(Lcom/ubix/ssp/ad/e/a0/o;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/o$c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/o$c;-><init>(Lcom/ubix/ssp/ad/e/a0/o;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    move-object p1, p0

    const v0, 0xde318

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sub-int/2addr p4, p2

    int-to-float p2, p4

    iget p4, p1, Lcom/ubix/ssp/ad/e/a0/o;->e:F

    mul-float/2addr p4, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p4, v1

    float-to-int p4, p4

    iget v1, p1, Lcom/ubix/ssp/ad/e/a0/o;->e:F

    mul-float/2addr p2, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    sub-int/2addr p5, p3

    int-to-float p3, p5

    iget p5, p1, Lcom/ubix/ssp/ad/e/a0/o;->f:F

    mul-float/2addr p3, p5

    iget p5, p1, Lcom/ubix/ssp/ad/e/a0/o;->g:I

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    sub-float v1, p3, p5

    float-to-int v1, v1

    add-float/2addr p3, p5

    float-to-int p3, p3

    invoke-virtual {v0, p4, v1, p2, p3}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->h:I

    iput p2, p0, Lcom/ubix/ssp/ad/e/a0/o;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/o;->a:Lcom/ubix/ssp/ad/e/a;

    iget v3, p0, Lcom/ubix/ssp/ad/e/a0/o;->g:I

    invoke-virtual {v2, v1, v3}, Lcom/ubix/ssp/ad/e/a;->a(II)[I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->b:Lcom/ubix/ssp/ad/e/a0/o$f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/a0/o$f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->b:Lcom/ubix/ssp/ad/e/a0/o$f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/o$f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->d:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/o;->b()V

    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const p1, 0xde315

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/a0/o;->setShakeSensor(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/o;->b()V

    return-void
.end method

.method public setCallback(Lcom/ubix/ssp/ad/e/a0/o$f;)V
    .locals 1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->b:Lcom/ubix/ssp/ad/e/a0/o$f;

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/o;->j:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/o$f;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->a:Lcom/ubix/ssp/ad/e/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setShakeSensor(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->b:Lcom/ubix/ssp/ad/e/a0/o$f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/o$f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->d:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->d:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->c:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o;->d:Lcom/ubix/ssp/ad/e/a0/s;

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/o$e;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/o$e;-><init>(Lcom/ubix/ssp/ad/e/a0/o;)V

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s$e;)V

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

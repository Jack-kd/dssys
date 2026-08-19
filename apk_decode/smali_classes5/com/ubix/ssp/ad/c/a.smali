.class public Lcom/ubix/ssp/ad/c/a;
.super Lcom/ubix/ssp/ad/b;


# instance fields
.field private l:I

.field private m:I

.field private n:I

.field private o:D

.field private p:Z

.field private q:Z

.field private r:Lcom/ubix/ssp/ad/g/k/a;

.field protected s:Landroid/animation/AnimatorSet;

.field private t:Lcom/ubix/ssp/ad/c/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/ubix/ssp/ad/c/a;->l:I

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/c/a;->o:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/c/a;->p:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/c/a;->q:Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/a;->s:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private declared-synchronized s()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/c/a;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/c/a;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/c/a;->p:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/a;->r:Lcom/ubix/ssp/ad/g/k/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ubix/ssp/ad/b;->b:I

    invoke-interface {v0, v1, p0}, Lcom/ubix/ssp/ad/g/k/b;->a(ILandroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string v0, "AD_WIDTH"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "AD_HEIGHT"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "IS_DOWNLOAD"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    iget-object v2, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v4, "CLICK_MAP"

    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v2

    float-to-double v4, v2

    iput-wide v4, p0, Lcom/ubix/ssp/ad/c/a;->o:D

    int-to-double v6, v0

    mul-double/2addr v6, v4

    double-to-int v0, v6

    iput v0, p0, Lcom/ubix/ssp/ad/c/a;->m:I

    int-to-double v0, v1

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/ubix/ssp/ad/c/a;->n:I

    iget v0, p0, Lcom/ubix/ssp/ad/c/a;->l:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/ubix/ssp/ad/c/a;->l:I

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/c/c/c;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/ubix/ssp/ad/c/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/a;->t:Lcom/ubix/ssp/ad/c/c/c;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p1, "TEMPLATE_ID"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const p2, 0x182b9

    if-eq p1, p2, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iput-boolean v3, p0, Lcom/ubix/ssp/ad/c/a;->q:Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 2
    invoke-super/range {p0 .. p8}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    const v0, 0xe0a25

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p7, v1

    const-string v2, ""

    if-lez v1, :cond_1

    long-to-double p7, p7

    invoke-static {p7, p8}, Lcom/ubix/ssp/ad/e/a0/k;->a(D)Ljava/lang/String;

    move-result-object p7

    const/4 p8, 0x1

    goto :goto_0

    :cond_1
    const/4 p8, 0x0

    move-object p7, v2

    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p5, v2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e28\u5907\u6848\u53f7:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    :goto_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p6, v2

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e28\u9002\u7528\u5e74\u9f84:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    :goto_2
    if-eqz p8, :cond_4

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e28\u5e94\u7528\u5927\u5c0f:"

    invoke-virtual {p8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object p7, v2

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "\u5e94\u7528\u540d\u79f0:%s\u4e28\u5e94\u7528\u7248\u672c:%s\u4e28\u5f00\u53d1\u8005:%s%s%s%s\u4e28\u6743\u9650\u4e28\u9690\u79c1\u4e28\u529f\u80fd\u4ecb\u7ecd"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/ubix/ssp/ad/e/f;

    invoke-direct {p3, p2}, Lcom/ubix/ssp/ad/e/f;-><init>(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/ubix/ssp/ad/c/a;->r:Lcom/ubix/ssp/ad/g/k/a;

    invoke-virtual {p3, p2}, Lcom/ubix/ssp/ad/e/f;->a(Lcom/ubix/ssp/ad/g/k/b;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/c/a;->p:Z

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/a;->t:Lcom/ubix/ssp/ad/c/c/c;

    invoke-virtual {v1, p1}, Lcom/ubix/ssp/ad/c/c/c;->a(Landroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/c/a;->q:Z

    return v0
.end method

.method public getInterface()Lcom/ubix/ssp/ad/g/k/b;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/a;->r:Lcom/ubix/ssp/ad/g/k/a;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/c/a;->s()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const v0, 0x7a188

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/a;->s:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const v0, 0x186a6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/g;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/c/a;->s()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget p1, p0, Lcom/ubix/ssp/ad/c/a;->m:I

    if-gtz p1, :cond_0

    iget-wide p1, p0, Lcom/ubix/ssp/ad/c/a;->o:D

    const-wide/high16 v0, 0x4074000000000000L    # 320.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/c/a;->m:I

    :cond_0
    iget p1, p0, Lcom/ubix/ssp/ad/c/a;->n:I

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/ubix/ssp/ad/c/a;->m:I

    int-to-double p1, p1

    const-wide v0, 0x401999999999999aL    # 6.4

    div-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/c/a;->n:I

    :cond_1
    iget p1, p0, Lcom/ubix/ssp/ad/c/a;->m:I

    iget p2, p0, Lcom/ubix/ssp/ad/c/a;->n:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/c/a;->s()V

    :cond_0
    return-void
.end method

.method public setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V
    .locals 1

    check-cast p1, Lcom/ubix/ssp/ad/g/k/a;

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/a;->r:Lcom/ubix/ssp/ad/g/k/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/a;->t:Lcom/ubix/ssp/ad/c/c/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/c/c/c;->setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V

    return-void
.end method

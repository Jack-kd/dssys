.class public Lcom/ubix/ssp/ad/i/a;
.super Lcom/ubix/ssp/ad/b;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private l:Z

.field private m:Lcom/ubix/ssp/ad/g/k/f;

.field private n:Lcom/ubix/ssp/ad/i/e/a;

.field private o:Z

.field private p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/b;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/a;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/a;->q:Z

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/i/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/i/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/i/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/i/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/i/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic g(Lcom/ubix/ssp/ad/i/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/b;->b:I

    return p0
.end method

.method public static synthetic h(Lcom/ubix/ssp/ad/i/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/b;->b:I

    return p0
.end method

.method public static synthetic i(Lcom/ubix/ssp/ad/i/a;)Lcom/ubix/ssp/ad/i/e/a;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    return-object p0
.end method

.method public static synthetic j(Lcom/ubix/ssp/ad/i/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic k(Lcom/ubix/ssp/ad/i/a;)Lcom/ubix/ssp/ad/g/k/f;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/i/a;->m:Lcom/ubix/ssp/ad/g/k/f;

    return-object p0
.end method

.method public static synthetic l(Lcom/ubix/ssp/ad/i/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/b;->b:I

    return p0
.end method

.method public static synthetic m(Lcom/ubix/ssp/ad/i/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic n(Lcom/ubix/ssp/ad/i/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic o(Lcom/ubix/ssp/ad/i/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic p(Lcom/ubix/ssp/ad/i/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic q(Lcom/ubix/ssp/ad/i/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public a(IIIDI[IILjava/lang/String;Ljava/lang/String;IDZZ)V
    .locals 16

    .line 2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    iget-object v4, v0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v4, v1}, Lcom/ubix/ssp/ad/i/e/a;->a(I)Landroid/view/ViewGroup;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const v5, 0x1ef9b1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eq v1, v12, :cond_7

    const/16 v13, 0x8

    if-eq v1, v13, :cond_5

    const/16 v2, 0x100

    if-eq v1, v2, :cond_2

    goto/16 :goto_5

    :cond_2
    sget v1, Lcom/ubix/ssp/ad/d/b;->E:I

    if-ne v1, v11, :cond_4

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/i/a;->o:Z

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/i/e/a;->b()V

    return-void

    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/i/e/a;->f()V

    return-void

    :cond_5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, v0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v2, "\u6ed1\u52a8\u6216\u70b9\u51fb\u4e86\u89e3\u66f4\u591a"

    goto :goto_1

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2, v9}, Lcom/ubix/ssp/ad/i/e/a;->a(Ljava/lang/String;Z)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    move-wide/from16 v7, p4

    move/from16 v3, p6

    invoke-virtual {v2, v7, v8, v3}, Lcom/ubix/ssp/ad/i/e/a;->a(DI)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_7
    move-wide/from16 v7, p4

    iget-object v1, v0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v2, "\u6447\u52a8\u6216\u70b9\u51fb\u4e86\u89e3\u66f4\u591a"

    goto :goto_2

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2, v11}, Lcom/ubix/ssp/ad/i/e/a;->a(Ljava/lang/String;Z)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/i/e/a;->getTemplateId()I

    move-result v1

    const/16 v3, 0x7d3

    if-eq v1, v3, :cond_a

    iget-object v1, v0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/i/e/a;->getTemplateId()I

    move-result v1

    const/16 v3, 0x7d4

    if-eq v1, v3, :cond_a

    iget-object v1, v0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/i/e/a;->getTemplateId()I

    move-result v1

    const/16 v3, 0x7d5

    if-ne v1, v3, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    :cond_a
    :goto_3
    const/16 v1, 0xd

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move/from16 v15, p15

    move-object v1, v4

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v15}, Lcom/ubix/ssp/ad/b;->a(Landroid/view/ViewGroup;Landroid/view/View;ZIZZD[IIIDZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/ubix/ssp/ad/b;->l()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ubix/ssp/ad/i/a;->s()V

    :cond_b
    :goto_5
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6

    .line 3
    const-string v0, "AD_INDEX"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/b;->b:I

    const-string v0, "isSlided"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/a;->o:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "CLICK_MAP"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/i/e/a;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/ubix/ssp/ad/i/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/i/e/a;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string v0, "AD_WIDTH"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    move v0, v1

    :cond_0
    const-string v2, "AD_HEIGHT"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    move v2, v1

    :cond_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, -0x40800000    # -1.0f

    if-ne v0, v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v0, v5

    :goto_0
    float-to-int v0, v0

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v1, v2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    mul-float v4, v1, p1

    :goto_1
    float-to-int p1, v4

    invoke-direct {v3, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string p1, "AD_MARGIN_LEFT"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result p1

    const-string v0, "AD_MARGIN_TOP"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v0

    const-string v1, "AD_MARGIN_RIGHT"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v1

    const-string v2, "AD_MARGIN_BOTTOM"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result p2

    invoke-virtual {v3, p1, v0, v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    add-int/2addr p1, p2

    if-lez p1, :cond_4

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 4
    invoke-super/range {p0 .. p8}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/ubix/ssp/ad/i/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)Z
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/e/a;->d(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public d(II)V
    .locals 0

    .line 2
    return-void
.end method

.method public getInterface()Lcom/ubix/ssp/ad/g/k/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/ubix/ssp/ad/b;->j()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/e/a;->a()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/i/a;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/a;->l:Z

    new-instance v0, Lcom/ubix/ssp/ad/i/a$b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/i/a$b;-><init>(Lcom/ubix/ssp/ad/i/a;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a;->m:Lcom/ubix/ssp/ad/g/k/f;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ubix/ssp/ad/b;->b:I

    invoke-interface {v0, v1, p0}, Lcom/ubix/ssp/ad/g/k/b;->a(ILandroid/view/View;)V

    :cond_0
    const v0, 0xde315

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/i/a;->setShakeSensor(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "1"

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "__CLICK_AREA__"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "__CLICK_TRIGGER__"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/a;->m:Lcom/ubix/ssp/ad/g/k/f;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ubix/ssp/ad/b;->b:I

    const v1, 0x1eab93

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-interface {p1, v0, v1, v2}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/a;->s()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/e/a;->k()V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/b;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->l()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/i/e/a;->a(Z)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/i/e/a;->k()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const p1, 0xde315

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/i/a;->setShakeSensor(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/a;->s()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const p1, 0xde315

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/i/a;->setShakeSensor(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_0

    const v0, 0x1ef9b1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->a()V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/e/a;->k()V

    :cond_4
    return-void
.end method

.method public setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/ubix/ssp/ad/g/k/f;

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/a;->m:Lcom/ubix/ssp/ad/g/k/f;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/e/a;->setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V

    return-void
.end method

.method public setShakeSensor(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_2

    const p1, 0x1ef9b1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/a;->n:Lcom/ubix/ssp/ad/i/e/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/i/e/a;->k()V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->setShakeSensor(Landroid/view/View;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/a;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/i/a;->q:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/a;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    new-instance v0, Lcom/ubix/ssp/ad/i/a$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/i/a$a;-><init>(Lcom/ubix/ssp/ad/i/a;)V

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s$e;)V

    :cond_4
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

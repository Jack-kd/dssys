.class public Lcom/ubix/ssp/ad/e/n;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:D

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:Landroid/animation/AnimatorSet;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/n;->a:D

    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/ubix/ssp/ad/e/n;->e:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/n;->f:Landroid/animation/AnimatorSet;

    const/16 v0, 0x514

    iput v0, p0, Lcom/ubix/ssp/ad/e/n;->i:I

    const-string v0, "\u5411\u4e0a\u6ed1\u52a8!"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/n;->j:Ljava/lang/String;

    const-string v0, "\u8df3\u8f6c\u8be6\u60c5\u6216\u7b2c\u4e09\u65b9\u5e94\u7528!"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/n;->k:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/n;->a:D

    const-wide/high16 v2, 0x404b000000000000L    # 54.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/ubix/ssp/ad/e/n;->b:I

    int-to-double v0, p1

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v2, v0

    double-to-int p1, v2

    iput p1, p0, Lcom/ubix/ssp/ad/e/n;->c:I

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/ubix/ssp/ad/e/n;->d:I

    invoke-direct {p0, p2, p3}, Lcom/ubix/ssp/ad/e/n;->a(ZZ)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/n;->b()V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    const/16 p3, 0x22b

    invoke-direct {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/n;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/n;->f:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private a(ZZ)V
    .locals 16

    .line 3
    move-object/from16 v1, p0

    if-eqz p2, :cond_0

    :try_start_0
    iget v0, v1, Lcom/ubix/ssp/ad/e/n;->b:I

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v2

    double-to-float v0, v4

    iput v0, v1, Lcom/ubix/ssp/ad/e/n;->e:F

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Lcom/ubix/ssp/ad/e/n;->b:I

    int-to-double v2, v0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Lcom/ubix/ssp/ad/e/n;->c:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0xde37b

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    const v4, 0xde37c

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    iget-object v5, v1, Lcom/ubix/ssp/ad/e/n;->j:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lcom/ubix/ssp/ad/e/n;->k:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x66000000

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v0, v8, v7, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v5, 0x4

    if-nez p1, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x2

    invoke-virtual {v6, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xe

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-wide v10, v1, Lcom/ubix/ssp/ad/e/n;->a:D

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    mul-double/2addr v10, v12

    double-to-int v10, v10

    iput v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xc

    invoke-virtual {v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-wide v14, v1, Lcom/ubix/ssp/ad/e/n;->a:D

    mul-double/2addr v14, v12

    double-to-int v11, v14

    iput v11, v10, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/ubix/ssp/ad/e/n;->g:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/ubix/ssp/ad/e/n;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/n;->g:Landroid/widget/ImageView;

    const-string v2, "ubix/ic_hand_common.webp"

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/n;->h:Landroid/widget/ImageView;

    const-string v2, "#bbffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v6, "#00ffffff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v2, v6, v8}, Lcom/ubix/ssp/ad/e/a0/c;->a(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Lcom/ubix/ssp/ad/e/n;->b:I

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_2

    invoke-virtual {v0, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, v1, Lcom/ubix/ssp/ad/e/n;->c:I

    iget v7, v1, Lcom/ubix/ssp/ad/e/n;->d:I

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_3

    invoke-virtual {v2, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-wide v3, v1, Lcom/ubix/ssp/ad/e/n;->a:D

    if-eqz p2, :cond_4

    move v6, v9

    goto :goto_3

    :cond_4
    move v6, v5

    :goto_3
    int-to-double v6, v6

    mul-double/2addr v6, v3

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eqz p2, :cond_5

    move v5, v9

    :cond_5
    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v3, v1, Lcom/ubix/ssp/ad/e/n;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/e/n;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private b()V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/n;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/n;->h:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/n;->f:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/n;->f:Landroid/animation/AnimatorSet;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/n;->e:F

    float-to-double v1, v0

    const-wide v3, 0x3fee666666666666L    # 0.95

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/n;->g:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "translationY"

    neg-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v1

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v1

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v1

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v7, v1

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v1

    const/high16 v9, 0x40e00000    # 7.0f

    mul-float/2addr v9, v1

    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v10, v1

    neg-float v0, v0

    const/16 v11, 0xa

    :try_start_1
    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    const/4 v13, 0x1

    aput v1, v11, v13

    const/4 v1, 0x2

    aput v4, v11, v1

    const/4 v4, 0x3

    aput v5, v11, v4

    const/4 v4, 0x4

    aput v6, v11, v4

    const/4 v4, 0x5

    aput v7, v11, v4

    const/4 v4, 0x6

    aput v8, v11, v4

    const/4 v4, 0x7

    aput v9, v11, v4

    const/16 v4, 0x8

    aput v10, v11, v4

    const/16 v4, 0x9

    aput v0, v11, v4

    invoke-static {v2, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/n;->g:Landroid/widget/ImageView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "alpha"

    const/16 v4, 0xb

    :try_start_2
    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/n;->h:Landroid/widget/ImageView;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "alpha"

    :try_start_3
    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/n;->h:Landroid/widget/ImageView;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v5, "scaleY"

    :try_start_4
    iget v6, p0, Lcom/ubix/ssp/ad/e/n;->e:F

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    new-array v7, v1, [F

    const/high16 v8, 0x3f400000    # 0.75f

    aput v8, v7, v12

    aput v6, v7, v13

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/n;->h:Landroid/widget/ImageView;

    iget v6, p0, Lcom/ubix/ssp/ad/e/n;->d:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/n;->g:Landroid/widget/ImageView;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, "alpha"

    :try_start_5
    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-static {v5, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v5, p0, Lcom/ubix/ssp/ad/e/n;->i:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget v5, p0, Lcom/ubix/ssp/ad/e/n;->i:I

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget v5, p0, Lcom/ubix/ssp/ad/e/n;->i:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget v5, p0, Lcom/ubix/ssp/ad/e/n;->i:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x190

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/n;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/n;->f:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/n;->f:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/ubix/ssp/ad/e/n$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/n$a;-><init>(Lcom/ubix/ssp/ad/e/n;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_2
    :goto_1
    :try_start_6
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_4

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/n;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/n;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/n;->f:Landroid/animation/AnimatorSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/n;->f:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/n;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/n;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/n;->c()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/n;->a()V

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/ad/e/n;->i:I

    return-void
.end method

.method public setMoveDistance(F)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/ad/e/n;->e:F

    return-void
.end method

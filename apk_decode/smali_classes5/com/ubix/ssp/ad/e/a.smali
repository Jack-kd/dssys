.class public Lcom/ubix/ssp/ad/e/a;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/ubix/ssp/ad/e/a;->c:I

    const-string v1, "\u6447\u52a8\u624b\u673a"

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/a;->d:Ljava/lang/String;

    const-string v1, "\u8df3\u8f6c\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/a;->e:Ljava/lang/String;

    iput p2, p0, Lcom/ubix/ssp/ad/e/a;->b:I

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x0

    if-eq p2, v2, :cond_1

    if-eq p2, v0, :cond_0

    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v1, "ubix/ic_hand_shake.webp"

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    move v1, v2

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/ubix/ssp/ad/e/p;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/ubix/ssp/ad/e/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/p;->b()V

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/ubix/ssp/ad/e/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/ubix/ssp/ad/e/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/j;->b()V

    goto :goto_0

    :goto_1
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, 0xde315

    invoke-virtual {p2, v5}, Landroid/view/View;->setId(I)V

    const v5, 0xde316

    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    const v5, 0xde317

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    if-eqz p5, :cond_7

    const-string p5, ""

    if-nez p6, :cond_2

    move-object p6, p5

    :cond_2
    iput-object p6, p0, Lcom/ubix/ssp/ad/e/a;->d:Ljava/lang/String;

    if-nez p7, :cond_3

    move-object p7, p5

    :cond_3
    iput-object p7, p0, Lcom/ubix/ssp/ad/e/a;->e:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_4

    iget-object p6, p0, Lcom/ubix/ssp/ad/e/a;->e:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_4

    iput p1, p0, Lcom/ubix/ssp/ad/e/a;->c:I

    goto :goto_3

    :cond_4
    iget-object p6, p0, Lcom/ubix/ssp/ad/e/a;->d:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_5

    iget-object p6, p0, Lcom/ubix/ssp/ad/e/a;->e:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_5

    goto :goto_2

    :cond_5
    iget-object p6, p0, Lcom/ubix/ssp/ad/e/a;->e:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_6

    iget-object p6, p0, Lcom/ubix/ssp/ad/e/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/ubix/ssp/ad/e/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/ubix/ssp/ad/e/a;->e:Ljava/lang/String;

    :cond_6
    iput v2, p0, Lcom/ubix/ssp/ad/e/a;->c:I

    goto :goto_3

    :cond_7
    :goto_2
    iput v0, p0, Lcom/ubix/ssp/ad/e/a;->c:I

    :goto_3
    iget-object p5, p0, Lcom/ubix/ssp/ad/e/a;->d:Ljava/lang/String;

    invoke-virtual {v3, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p0, Lcom/ubix/ssp/ad/e/a;->e:Ljava/lang/String;

    invoke-virtual {v4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p5, 0x40800000    # 4.0f

    const/4 p6, 0x0

    const/high16 p7, 0x3f800000    # 1.0f

    const/high16 v5, 0x66000000

    invoke-virtual {v3, p5, p6, p7, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, p5, p6, p7, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p6, 0x41400000    # 12.0f

    invoke-virtual {v4, p6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    if-eq p3, v6, :cond_8

    const/16 p6, 0x1e

    invoke-virtual {p2, p6, p6, p6, p6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_8
    const/16 p6, 0x8

    invoke-virtual {v3, p6}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p7

    invoke-virtual {p6, p7}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p6

    const/high16 p7, 0x41a00000    # 20.0f

    mul-float/2addr p6, p7

    mul-float/2addr p6, p5

    float-to-int p5, p6

    new-instance p6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p6, p5, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance p7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {p7, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x14

    invoke-virtual {p7, p1, v5, p1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    if-ne p3, v2, :cond_9

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v2, "#73ffffff"

    :goto_5
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    mul-int/2addr p5, v0

    invoke-static {p3, v2, p5}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_9
    if-nez p3, :cond_a

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v2, "#40000000"

    goto :goto_5

    :cond_a
    :goto_6
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a;->a:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_b

    move-object p3, p6

    goto :goto_7

    :cond_b
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    iget p5, p6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v0, p6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {p3, p5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_7
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_c

    invoke-virtual {p0, v3, p7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4, p7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public a(II)[I
    .locals 10

    int-to-double v0, p2

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v0

    double-to-int p1, v2

    iget v2, p0, Lcom/ubix/ssp/ad/e/a;->c:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v4

    double-to-int p1, v0

    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a;->b:I

    const v2, 0xde315

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0xde316

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0xde317

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v4

    int-to-float v6, p2

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float/2addr v7, v4

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_4

    const/4 v4, 0x7

    goto :goto_2

    :cond_4
    const/high16 v7, 0x42200000    # 40.0f

    mul-float/2addr v7, v4

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_5

    const/16 v4, 0x9

    goto :goto_2

    :cond_5
    const/high16 v7, 0x42700000    # 60.0f

    mul-float/2addr v7, v4

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_6

    const/16 v4, 0xb

    goto :goto_2

    :cond_6
    const/high16 v7, 0x42a00000    # 80.0f

    mul-float/2addr v7, v4

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_7

    const/16 v4, 0xc

    goto :goto_2

    :cond_7
    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v4

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_8

    const/16 v4, 0xe

    goto :goto_2

    :cond_8
    const/high16 v7, 0x42f00000    # 120.0f

    mul-float/2addr v7, v4

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_9

    const/16 v4, 0x10

    goto :goto_2

    :cond_9
    const/high16 v7, 0x43160000    # 150.0f

    mul-float/2addr v7, v4

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_a

    const/16 v4, 0x14

    goto :goto_2

    :cond_a
    const/high16 v7, 0x43480000    # 200.0f

    mul-float/2addr v4, v7

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_b

    const/16 v4, 0x18

    goto :goto_2

    :cond_b
    const/16 v4, 0x1c

    :goto_2
    int-to-float v6, v4

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    int-to-double v6, p1

    const-wide v8, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v6, v2

    iget v2, p0, Lcom/ubix/ssp/ad/e/a;->c:I

    if-lez v2, :cond_c

    sub-int v7, p2, p1

    div-int v2, v7, v2

    int-to-float v2, v2

    cmpl-float v2, v6, v2

    if-lez v2, :cond_c

    if-lez p2, :cond_c

    const/4 v2, 0x5

    :goto_3
    iget v8, p0, Lcom/ubix/ssp/ad/e/a;->c:I

    div-int v8, v7, v8

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_c

    if-lez v2, :cond_c

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    int-to-float v6, v4

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v8, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v6, v8, v6

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/ubix/ssp/ad/e/a;->c:I

    if-ne v4, v3, :cond_d

    move v7, v6

    goto :goto_4

    :cond_d
    move v7, v2

    :goto_4
    if-ne v4, v3, :cond_e

    goto :goto_5

    :cond_e
    move v5, v6

    :goto_5
    invoke-direct {v0, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    filled-new-array {p1, p2}, [I

    move-result-object p1

    return-object p1
.end method

.class public Lcom/ubix/ssp/ad/e/k;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZZ)V
    .locals 9

    .line 1
    const-string v7, ""

    const-string v8, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/ubix/ssp/ad/e/k;-><init>(Landroid/content/Context;IIZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6447\u52a8\u624b\u673a"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/k;->c:Ljava/lang/String;

    const-string v0, "\u8df3\u8f6c\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/k;->d:Ljava/lang/String;

    iput p2, p0, Lcom/ubix/ssp/ad/e/k;->b:I

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/k;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/k;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    :goto_0
    move v0, v1

    goto :goto_2

    :cond_0
    new-instance p2, Lcom/ubix/ssp/ad/e/p;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/ubix/ssp/ad/e/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/p;->b()V

    :goto_1
    move v0, p1

    goto :goto_2

    :cond_1
    new-instance p2, Lcom/ubix/ssp/ad/e/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/ubix/ssp/ad/e/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/j;->b()V

    goto :goto_1

    :cond_2
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "ubix/ic_hand_shake.webp"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :goto_2
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0xde315

    invoke-virtual {p2, v4}, Landroid/view/View;->setId(I)V

    const v4, 0xde316

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    const v4, 0xde317

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    if-eqz p6, :cond_4

    const-string p6, ""

    if-nez p7, :cond_3

    move-object p7, p6

    :cond_3
    iput-object p7, p0, Lcom/ubix/ssp/ad/e/k;->c:Ljava/lang/String;

    if-nez p8, :cond_6

    move-object p8, p6

    goto :goto_3

    :cond_4
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_5

    iput-object p7, p0, Lcom/ubix/ssp/ad/e/k;->c:Ljava/lang/String;

    :cond_5
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_7

    :cond_6
    :goto_3
    iput-object p8, p0, Lcom/ubix/ssp/ad/e/k;->d:Ljava/lang/String;

    :cond_7
    iget-object p6, p0, Lcom/ubix/ssp/ad/e/k;->c:Ljava/lang/String;

    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p6, p0, Lcom/ubix/ssp/ad/e/k;->d:Ljava/lang/String;

    invoke-virtual {v3, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p6, 0x40800000    # 4.0f

    const/4 p7, 0x0

    const/high16 p8, 0x3f800000    # 1.0f

    const/high16 v4, 0x66000000

    invoke-virtual {v2, p6, p7, p8, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, p6, p7, p8, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p7, 0x41400000    # 12.0f

    invoke-virtual {v3, p7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    if-eq p3, v5, :cond_8

    const/16 p7, 0x1e

    invoke-virtual {p2, p7, p7, p7, p7}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_8
    const/16 p7, 0x8

    invoke-virtual {v2, p7}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p8

    invoke-virtual {p7, p8}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p7

    const/high16 p8, 0x41a00000    # 20.0f

    mul-float/2addr p7, p8

    mul-float/2addr p7, p6

    float-to-int p6, p7

    if-eqz p4, :cond_9

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double p6, p6

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p6, v4

    double-to-int p6, p6

    invoke-direct {p4, p6, p6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_5

    :cond_9
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double p6, p6

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double/2addr p6, v4

    double-to-int p6, p6

    invoke-direct {p4, p6, p6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_5
    new-instance p6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p7, -0x2

    invoke-direct {p6, p7, p7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p7, 0x14

    invoke-virtual {p6, p1, p7, p1, p7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 p1, 0x90

    if-ne p3, v1, :cond_a

    iget-object p3, p0, Lcom/ubix/ssp/ad/e/k;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p7

    const-string p8, "#73ffffff"

    :goto_6
    invoke-static {p8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p8

    invoke-static {p7, p8, p1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_a
    if-nez p3, :cond_b

    iget-object p3, p0, Lcom/ubix/ssp/ad/e/k;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p7

    const-string p8, "#40000000"

    goto :goto_6

    :cond_b
    :goto_7
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/k;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    move-object p3, p4

    goto :goto_8

    :cond_c
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    iget p7, p4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 p7, p7, -0x3c

    iget p8, p4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/lit8 p8, p8, -0x3c

    invoke-direct {p3, p7, p8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_8
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/k;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_d

    invoke-virtual {p0, v2, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/k;->b:I

    const v1, 0xde315

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v2, v2, -0x3c

    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/lit8 v3, v3, -0x3c

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/k;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

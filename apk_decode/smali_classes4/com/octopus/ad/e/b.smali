.class public Lcom/octopus/ad/e/b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;IFFI)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/octopus/ad/e/b;->a:Z

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p5}, Lcom/octopus/ad/e/b;->a(Landroid/content/Context;IFFI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/e/b;->d:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;IFFI)V
    .locals 7

    .line 3
    iget-boolean v0, p0, Lcom/octopus/ad/e/b;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/octopus/ad/e/b;->a:Z

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v3, p2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    double-to-int p2, v3

    invoke-direct {v2, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p5, :cond_1

    .line 9
    sget p4, Lcom/octopus/ad/R$drawable;->oct_anim_shake:I

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p5

    invoke-virtual {p5}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    move-result-object p5

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v0, v3, p5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p5

    float-to-int p5, p5

    .line 11
    invoke-virtual {v2, p5, p5, p5, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 12
    sget p5, Lcom/octopus/ad/R$drawable;->oct_anim_rotate:I

    invoke-virtual {v1, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    sget p5, Lcom/octopus/ad/R$drawable;->oct_bg_rotate:I

    invoke-virtual {v1, p5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p5

    invoke-virtual {p5}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    move-result-object p5

    invoke-static {v0, p2, p5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p5

    float-to-int p5, p5

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr p4, v3

    .line 15
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, p4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    float-to-int p4, p4

    .line 16
    invoke-virtual {v1, p5, p4, p5, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p4, p0, Lcom/octopus/ad/e/b;->d:Landroid/graphics/drawable/AnimationDrawable;

    .line 18
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p5, -0x2

    invoke-direct {p4, p5, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 20
    new-instance p5, Landroid/widget/TextView;

    invoke-direct {p5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/octopus/ad/e/b;->b:Landroid/widget/TextView;

    .line 21
    invoke-virtual {p5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 23
    iget-object p1, p0, Lcom/octopus/ad/e/b;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 24
    iget-object p1, p0, Lcom/octopus/ad/e/b;->b:Landroid/widget/TextView;

    const/4 p5, -0x1

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object p1, p0, Lcom/octopus/ad/e/b;->b:Landroid/widget/TextView;

    const/4 p5, 0x2

    invoke-virtual {p1, p5, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 26
    iget-object p1, p0, Lcom/octopus/ad/e/b;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/octopus/ad/e/b;->c:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/octopus/ad/e/b;->b:Landroid/widget/TextView;

    const-string p3, "#80000000"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/high16 p5, 0x40a00000    # 5.0f

    invoke-virtual {p1, p5, p2, p2, p3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 28
    iget-object p1, p0, Lcom/octopus/ad/e/b;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/e/b;->d:Landroid/graphics/drawable/AnimationDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/e/b;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/octopus/ad/e/b;->b:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

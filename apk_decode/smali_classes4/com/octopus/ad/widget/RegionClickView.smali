.class public Lcom/octopus/ad/widget/RegionClickView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/GradientDrawable;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/octopus/ad/widget/RegionClickView;->a:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/RegionClickView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/octopus/ad/widget/RegionClickView;->a:Z

    .line 6
    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/RegionClickView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/octopus/ad/widget/RegionClickView;->a:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/RegionClickView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 2

    .line 6
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/widget/RegionClickView;->b:Landroid/graphics/drawable/GradientDrawable;

    .line 7
    const-string v1, "#80000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 8
    iget-object v0, p0, Lcom/octopus/ad/widget/RegionClickView;->b:Landroid/graphics/drawable/GradientDrawable;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 9
    iget-object p2, p0, Lcom/octopus/ad/widget/RegionClickView;->b:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#E8E8E8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/octopus/ad/widget/RegionClickView;->b:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 11
    iget-object p1, p0, Lcom/octopus/ad/widget/RegionClickView;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .line 12
    iget-boolean v0, p0, Lcom/octopus/ad/widget/RegionClickView;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/octopus/ad/widget/RegionClickView;->a:Z

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/octopus/ad/widget/RegionClickView;->a(Landroid/content/Context;I)V

    .line 15
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/octopus/ad/widget/RegionClickView;->c:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 18
    iget-object p1, p0, Lcom/octopus/ad/widget/RegionClickView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 19
    iget-object p1, p0, Lcom/octopus/ad/widget/RegionClickView;->c:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 20
    iget-object p1, p0, Lcom/octopus/ad/widget/RegionClickView;->c:Landroid/widget/TextView;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object p1, p0, Lcom/octopus/ad/widget/RegionClickView;->c:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u8df3\u8f6c\u81f3\u7b2c\u4e09\u65b9\u5e94\u7528\u6216\u8be6\u60c5\u9875"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/octopus/ad/widget/RegionClickView;->c:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 23
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 25
    iget-object p1, p0, Lcom/octopus/ad/widget/RegionClickView;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/String;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/RegionClickView;->setTitle(Ljava/lang/String;)V

    .line 2
    const-string p1, "#FFFFFF"

    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/RegionClickView;->setTitleColor(Ljava/lang/String;)V

    const/high16 p1, 0x41600000    # 14.0f

    mul-float/2addr p2, p1

    .line 3
    invoke-virtual {p0, p2}, Lcom/octopus/ad/widget/RegionClickView;->setTitleSize(F)V

    const-wide p1, 0x3fe6666666666666L    # 0.7

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/octopus/ad/widget/RegionClickView;->setBackGroundAlpha(D)V

    .line 5
    const-string p1, "#80000000"

    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/RegionClickView;->setBackgroundColor(Ljava/lang/String;)V

    return-void
.end method

.method public setBackGroundAlpha(D)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/widget/RegionClickView;->b:Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    cmpl-double v1, p1, v1

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    const-wide v1, 0x406fe00000000000L    # 255.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr p1, v1

    .line 17
    double-to-int p1, p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/widget/RegionClickView;->b:Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v0, "OctopusAd"

    .line 17
    .line 18
    const-string v1, "An Exception Caught"

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/widget/RegionClickView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    const-string v0, "OctopusAd"

    .line 13
    .line 14
    const-string v1, "An Exception Caught"

    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setTitleColor(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/widget/RegionClickView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v0, "OctopusAd"

    .line 17
    .line 18
    const-string v1, "An Exception Caught"

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setTitleSize(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/widget/RegionClickView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v1, p1, v1

    .line 7
    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

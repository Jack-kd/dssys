.class Lcom/beizi/fusion/f4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/rf$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/f4;->h1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/f4;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/f4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    const-string v1, "sdk custom error "

    const-string v2, "onBitmapLoadFailed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x18697

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/f4;->b(Lcom/beizi/fusion/f4;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 10

    if-eqz p1, :cond_6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    iget-object v0, v0, Lcom/beizi/fusion/m3;->U:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float v7, v2

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    iget-object v2, v0, Lcom/beizi/fusion/m3;->U:Landroid/content/Context;

    iget v0, v0, Lcom/beizi/fusion/m3;->Y:F

    const/high16 v3, 0x41800000    # 16.0f

    sub-float/2addr v0, v3

    invoke-static {v2, v0}, Lcom/beizi/fusion/vo;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v0, v5

    div-float/2addr v0, v7

    float-to-int v0, v0

    .line 6
    iget-object v2, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    iget v4, v2, Lcom/beizi/fusion/m3;->Z:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    const/4 v6, 0x0

    if-lez v4, :cond_2

    .line 7
    invoke-static {v2}, Lcom/beizi/fusion/f4;->l(Lcom/beizi/fusion/f4;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-static {v2}, Lcom/beizi/fusion/f4;->l(Lcom/beizi/fusion/f4;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 9
    iget-object v2, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-static {v2}, Lcom/beizi/fusion/f4;->l(Lcom/beizi/fusion/f4;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1

    :cond_1
    move v2, v6

    .line 10
    :goto_0
    iget-object v4, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    iget-object v8, v4, Lcom/beizi/fusion/m3;->U:Landroid/content/Context;

    iget v4, v4, Lcom/beizi/fusion/m3;->Z:F

    sub-float/2addr v4, v3

    invoke-static {v8, v4}, Lcom/beizi/fusion/vo;->a(Landroid/content/Context;F)I

    move-result v3

    if-le v3, v2, :cond_2

    sub-int v0, v3, v2

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    iput v5, v2, Lcom/beizi/fusion/m3;->A0:I

    .line 12
    iput v0, v2, Lcom/beizi/fusion/m3;->B0:I

    if-gez v0, :cond_3

    .line 13
    iput v1, v2, Lcom/beizi/fusion/m3;->B0:I

    .line 14
    :cond_3
    invoke-static {v2}, Lcom/beizi/fusion/f4;->m(Lcom/beizi/fusion/f4;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-static {v1}, Lcom/beizi/fusion/f4;->m(Lcom/beizi/fusion/f4;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    .line 17
    invoke-static {v1}, Lcom/beizi/fusion/f4;->m(Lcom/beizi/fusion/f4;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 18
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    iget-object v2, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-static {v2}, Lcom/beizi/fusion/f4;->m(Lcom/beizi/fusion/f4;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    :cond_4
    iget-object v1, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-static {v1}, Lcom/beizi/fusion/f4;->m(Lcom/beizi/fusion/f4;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 22
    iget-object v1, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-static {v1}, Lcom/beizi/fusion/f4;->m(Lcom/beizi/fusion/f4;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    iget-object v2, v2, Lcom/beizi/fusion/m3;->U:Landroid/content/Context;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/beizi/fusion/vo;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/beizi/fusion/widget/CustomRoundImageView;->setRectRadius(F)V

    .line 23
    iget-object v4, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-static {v4}, Lcom/beizi/fusion/f4;->m(Lcom/beizi/fusion/f4;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v9

    move-object v8, p1

    move v6, v0

    invoke-virtual/range {v4 .. v9}, Lcom/beizi/fusion/m3;->a(IIFLandroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 24
    iget-object p1, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-static {p1}, Lcom/beizi/fusion/f4;->m(Lcom/beizi/fusion/f4;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-static {p1}, Lcom/beizi/fusion/f4;->m(Lcom/beizi/fusion/f4;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/m3;->a(Landroid/view/View;)V

    .line 26
    iget-object p1, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-static {p1}, Lcom/beizi/fusion/f4;->c(Lcom/beizi/fusion/f4;)V

    .line 27
    iget-object p1, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-static {p1}, Lcom/beizi/fusion/f4;->d(Lcom/beizi/fusion/f4;)V

    .line 28
    iget-object p1, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-static {p1}, Lcom/beizi/fusion/f4;->e(Lcom/beizi/fusion/f4;)V

    .line 29
    iget-object p1, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    invoke-virtual {p1}, Lcom/beizi/fusion/m3;->a1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 30
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    iget-object p1, p0, Lcom/beizi/fusion/f4$b;->a:Lcom/beizi/fusion/f4;

    const-string v0, "sdk custom error "

    const-string v1, "onBitmapLoadFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x18697

    invoke-static {p1, v0, v1}, Lcom/beizi/fusion/f4;->a(Lcom/beizi/fusion/f4;Ljava/lang/String;I)V

    :cond_6
    :goto_2
    return-void
.end method

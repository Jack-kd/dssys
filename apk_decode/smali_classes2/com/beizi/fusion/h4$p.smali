.class Lcom/beizi/fusion/h4$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/rf$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/h4;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/beizi/fusion/h4;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/h4;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/h4$p;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    const-string v1, "sdk custom error "

    const-string v2, "onBitmapLoadFailed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x18697

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/h4;->b(Lcom/beizi/fusion/h4;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 10

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float v7, v2

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {v0}, Lcom/beizi/fusion/h4;->C(Lcom/beizi/fusion/h4;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {v2}, Lcom/beizi/fusion/h4;->D(Lcom/beizi/fusion/h4;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/beizi/fusion/vo;->a(Landroid/content/Context;F)I

    move-result v5

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {v0}, Lcom/beizi/fusion/h4;->E(Lcom/beizi/fusion/h4;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {v0}, Lcom/beizi/fusion/h4;->C(Lcom/beizi/fusion/h4;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {v2}, Lcom/beizi/fusion/h4;->E(Lcom/beizi/fusion/h4;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/beizi/fusion/vo;->a(Landroid/content/Context;F)I

    move-result v0

    :goto_0
    move v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    :cond_0
    int-to-float v0, v5

    div-float/2addr v0, v7

    float-to-int v0, v0

    goto :goto_0

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    iget-object v2, p0, Lcom/beizi/fusion/h4$p;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_1
    iget-object v9, p0, Lcom/beizi/fusion/h4$p;->a:Landroid/widget/ImageView;

    if-eqz v9, :cond_2

    .line 12
    iget-object v4, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    move-object v8, p1

    invoke-static/range {v4 .. v9}, Lcom/beizi/fusion/h4;->a(Lcom/beizi/fusion/h4;IIFLandroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 13
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_2
    move-object v8, p1

    .line 14
    :goto_2
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1, v5}, Lcom/beizi/fusion/h4;->c(Lcom/beizi/fusion/h4;I)I

    .line 15
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1, v6}, Lcom/beizi/fusion/h4;->d(Lcom/beizi/fusion/h4;I)I

    .line 16
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->G(Lcom/beizi/fusion/h4;)I

    move-result p1

    if-gez p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1, v1}, Lcom/beizi/fusion/h4;->d(Lcom/beizi/fusion/h4;I)I

    .line 18
    :cond_3
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {v0}, Lcom/beizi/fusion/h4;->H(Lcom/beizi/fusion/h4;)Landroid/view/ViewGroup;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "BeiZis"

    if-eqz v0, :cond_7

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {v0}, Lcom/beizi/fusion/h4;->H(Lcom/beizi/fusion/h4;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {v0}, Lcom/beizi/fusion/h4;->H(Lcom/beizi/fusion/h4;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNativeAd != null ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    .line 23
    invoke-static {v2}, Lcom/beizi/fusion/h4;->u(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/ji;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",renderViewBean != null ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    .line 24
    invoke-static {v2}, Lcom/beizi/fusion/h4;->I(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    move-result-object v2

    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Lcom/beizi/fusion/mh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {v0}, Lcom/beizi/fusion/h4;->H(Lcom/beizi/fusion/h4;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/beizi/fusion/h4$p;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->a(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/pi;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beizi/fusion/h4;->c(Lcom/beizi/fusion/h4;Lcom/beizi/fusion/pi;)V

    .line 28
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->J(Lcom/beizi/fusion/h4;)V

    .line 29
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->a(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/pi;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beizi/fusion/h4;->d(Lcom/beizi/fusion/h4;Lcom/beizi/fusion/pi;)V

    .line 30
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->a(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/pi;

    move-result-object v0

    .line 31
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 32
    invoke-static {p1, v0, v5, v6, v2}, Lcom/beizi/fusion/h4;->a(Lcom/beizi/fusion/h4;Lcom/beizi/fusion/pi;III)V

    .line 33
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->K(Lcom/beizi/fusion/h4;)V

    .line 34
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->L(Lcom/beizi/fusion/h4;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 35
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->a(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/pi;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beizi/fusion/h4;->e(Lcom/beizi/fusion/h4;Lcom/beizi/fusion/pi;)V

    .line 36
    :cond_6
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->H(Lcom/beizi/fusion/h4;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beizi/fusion/h4;->a(Lcom/beizi/fusion/h4;Landroid/view/View;)Landroid/view/View;

    .line 37
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->N(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/ui;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 38
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->N(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/ui;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {v0}, Lcom/beizi/fusion/h4;->M(Lcom/beizi/fusion/h4;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/ui;->a(Landroid/view/View;)V

    .line 39
    :cond_7
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->u(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/ji;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->I(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 40
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->u(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/ji;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {v0}, Lcom/beizi/fusion/h4;->O(Lcom/beizi/fusion/h4;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/ji;->a(Ljava/util/List;)V

    .line 41
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->u(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/ji;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {v0}, Lcom/beizi/fusion/h4;->I(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getOptimizePercent()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/ji;->b(I)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "percent = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    .line 43
    invoke-static {v0}, Lcom/beizi/fusion/h4;->I(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getOptimizePercent()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {v1, p1}, Lcom/beizi/fusion/mh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->H(Lcom/beizi/fusion/h4;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/beizi/fusion/h4$p$a;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/h4$p$a;-><init>(Lcom/beizi/fusion/h4$p;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    :cond_8
    iget-object p1, p0, Lcom/beizi/fusion/h4$p;->b:Lcom/beizi/fusion/h4;

    invoke-static {p1}, Lcom/beizi/fusion/h4;->a(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/pi;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beizi/fusion/h4;->f(Lcom/beizi/fusion/h4;Lcom/beizi/fusion/pi;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 47
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

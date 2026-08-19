.class public Lcom/ubix/ssp/ad/e/z/f;
.super Lcom/ubix/ssp/ad/e/z/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Lcom/ubix/ssp/ad/e/c0/c;

.field private l:Landroid/view/WindowManager;

.field private m:I

.field private n:I

.field private o:I

.field private p:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/z/h;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/f;->m:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/f;->n:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/f;->o:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/f;->p:F

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/f;->d()V

    return-void
.end method

.method private d()V
    .locals 15

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->i:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->h:Landroid/widget/TextView;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->j:Landroid/view/View;

    new-instance v1, Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ubix/ssp/ad/e/c0/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->k:Lcom/ubix/ssp/ad/e/c0/c;

    new-instance v2, Lcom/ubix/ssp/ad/e/c0/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/ubix/ssp/ad/e/c0/b;-><init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/c0/b$a;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->k:Lcom/ubix/ssp/ad/e/c0/c;

    new-instance v2, Lcom/ubix/ssp/ad/e/c0/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/ubix/ssp/ad/e/c0/d;-><init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/c0/d$b;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->i:Landroid/widget/ImageView;

    const-string v2, "ubix/ic_web_back.png"

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->i:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->h:Landroid/widget/TextView;

    const v2, -0xcccccd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/f;->i:Landroid/widget/ImageView;

    const/16 v3, 0x4e23

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/f;->h:Landroid/widget/TextView;

    const/16 v3, 0x4e21

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/f;->j:Landroid/view/View;

    const/16 v3, 0x4e22

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/f;->k:Lcom/ubix/ssp/ad/e/c0/c;

    const/16 v4, 0x4e24

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/f;->j:Landroid/view/View;

    const v4, -0xe0e0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/ubix/ssp/ad/e/z/f;->p:F

    const/high16 v5, 0x42100000    # 36.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v6, -0x1

    invoke-direct {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/ubix/ssp/ad/e/z/f;->p:F

    const/high16 v8, 0x41b00000    # 22.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xf

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xb

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v10, p0, Lcom/ubix/ssp/ad/e/z/f;->n:I

    iget v11, p0, Lcom/ubix/ssp/ad/e/z/f;->o:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, p0, Lcom/ubix/ssp/ad/e/z/f;->n:I

    iget v12, p0, Lcom/ubix/ssp/ad/e/z/f;->o:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v11, v13

    double-to-int v11, v11

    iget v12, p0, Lcom/ubix/ssp/ad/e/z/f;->p:F

    mul-float/2addr v12, v5

    float-to-int v5, v12

    sub-int/2addr v11, v5

    const/4 v5, 0x2

    sub-int/2addr v11, v5

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x3

    invoke-virtual {v9, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v3, p0, Lcom/ubix/ssp/ad/e/z/f;->p:F

    const/high16 v11, 0x41400000    # 12.0f

    mul-float/2addr v3, v11

    float-to-int v3, v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->i:Landroid/widget/ImageView;

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->h:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/f;->j:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/f;->k:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {p0, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/f;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/l;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    return-void
.end method

.method public getPopupType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x4e23

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->a()V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/z/h$c;->b(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/f;->k:Lcom/ubix/ssp/ad/e/c0/c;

    if-eqz v0, :cond_0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/f;->k:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/f;->l:Landroid/view/WindowManager;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/f;->l:Landroid/view/WindowManager;

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/f;->l:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/f;->m:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/f;->n:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/f;->o:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rotation="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/f;->m:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";width="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/f;->n:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";height="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/f;->o:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/z/f;->m:I

    const/4 p2, 0x1

    const-wide v0, 0x3fe999999999999aL    # 0.8

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/ubix/ssp/ad/e/z/f;->n:I

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/f;->o:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    int-to-double v2, p2

    mul-double/2addr v2, v0

    double-to-int p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_2

    :cond_2
    :goto_1
    iget p1, p0, Lcom/ubix/ssp/ad/e/z/f;->n:I

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/f;->o:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :goto_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/f;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/f;->k:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "TARGET_URL"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TITLE"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->k:Lcom/ubix/ssp/ad/e/c0/c;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/f;->k:Lcom/ubix/ssp/ad/e/c0/c;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/f;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/f;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.class public Lcom/ubix/ssp/ad/e/z/e;
.super Lcom/ubix/ssp/ad/e/z/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/z/e$a;
    }
.end annotation


# instance fields
.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/ubix/ssp/ad/e/z/e$a;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/z/h;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/e;->q:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/e;->r:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/e;->s:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/e;->q:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/e;->r:I

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/e;->q:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->m:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->l:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->h:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->j:Landroid/widget/TextView;

    new-instance p1, Lcom/ubix/ssp/ad/e/z/e$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/ubix/ssp/ad/e/z/e$a;-><init>(Lcom/ubix/ssp/ad/e/z/e;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->n:Lcom/ubix/ssp/ad/e/z/e$a;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->k:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->l:Landroid/widget/ImageView;

    const/16 v0, 0x2711

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->h:Landroid/widget/TextView;

    const/16 v0, 0x2712

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    const/16 v0, 0x2713

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->j:Landroid/widget/TextView;

    const/16 v0, 0x2714

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->n:Lcom/ubix/ssp/ad/e/z/e$a;

    const/16 v0, 0x2716

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->m:Landroid/widget/ImageView;

    const v0, 0xd6003

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->k:Landroid/widget/TextView;

    const/16 v0, 0x2718

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, -0x1

    const/16 v1, 0xe

    invoke-static {p1, v0, v1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/e;->d()V

    return-void
.end method

.method private d()V
    .locals 9

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v1, v1

    const-wide v3, 0x3fea0c49ba5e353fL    # 0.814

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v5, v2

    mul-double/2addr v5, v3

    double-to-int v2, v5

    const-wide v7, 0x3fc4fdf3b645a1cbL    # 0.164

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-int v3, v5

    const-wide v7, 0x3fc147ae147ae148L    # 0.135

    mul-double/2addr v5, v7

    double-to-int v4, v5

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/e;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/e;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/e;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/e;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/z/h;->b()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/e;->n:Lcom/ubix/ssp/ad/e/z/e$a;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/e;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/e;->m:Landroid/widget/ImageView;

    const-string v1, "ubix/ic_close.webp"

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "#e0e0e0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-static {v1, v5, v3, v2, v4}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/e;->n:Lcom/ubix/ssp/ad/e/z/e$a;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/e;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .locals 10

    :try_start_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v1, v1

    const-wide v3, 0x3fea0c49ba5e353fL    # 0.814

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-int v5, v5

    invoke-direct {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-int v7, v5

    const-wide v8, 0x3fc4fdf3b645a1cbL    # 0.164

    mul-double/2addr v5, v8

    double-to-int v5, v5

    invoke-direct {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v6, v6

    mul-double/2addr v6, v3

    double-to-int v3, v6

    const-wide v8, 0x3fc147ae147ae148L    # 0.135

    mul-double/2addr v6, v8

    double-to-int v4, v6

    invoke-direct {v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/e;->l:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/e;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/e;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/e;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/e;->n:Lcom/ubix/ssp/ad/e/z/e$a;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const v0, 0xe0a25

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/e;->n:Lcom/ubix/ssp/ad/e/z/e$a;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/z/e$a;->a(F)V
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

.method public a(Landroid/app/Dialog;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/ubix/ssp/ad/e/z/h$c;->c(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/l;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/ubix/ssp/ad/e/z/h$c;->c(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_0
    return-void
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/e;->p:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    return v0
.end method

.method public getPopupType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x2716

    if-eq p1, v0, :cond_4

    const v0, 0xd6003

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

    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lcom/ubix/ssp/ad/e/z/h$c;->b(Lcom/ubix/ssp/ad/e/z/h;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 9

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/z/h;->g:Z

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_5

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const p4, 0xe0a25

    const/16 p5, 0x2716

    const/high16 v0, 0x41600000    # 14.0f

    const-wide v1, 0x3fea0c49ba5e353fL    # 0.814

    const-wide v3, 0x3fb7ced916872b02L    # 0.093

    if-eq p3, p5, :cond_4

    const/16 v5, 0x2718

    const/high16 v6, 0x40c00000    # 6.0f

    if-eq p3, v5, :cond_3

    const p5, 0xd6003

    if-eq p3, p5, :cond_2

    if-eq p3, p4, :cond_1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double p3, p3

    mul-double v7, p3, v3

    double-to-int p5, v7

    mul-double/2addr p3, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-double v7, v0

    sub-double/2addr p3, v7

    double-to-int p3, p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p5, p3

    const/16 p3, 0x2713

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p4

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v0

    add-int/2addr p4, v0

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v7, v0

    mul-double/2addr v3, v7

    double-to-int v0, v3

    mul-double/2addr v7, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-double v1, v1

    add-double/2addr v7, v1

    double-to-int v1, v7

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v1

    add-int/2addr p3, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p3, v1

    invoke-virtual {p2, p5, p4, v0, p3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :pswitch_1
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    const/16 p4, 0x2712

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p4

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v1

    add-int/2addr p4, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p4, v1

    invoke-virtual {p2, p3, p5, v0, p4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :pswitch_2
    const/16 p3, 0x2711

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    const/high16 p4, 0x41700000    # 15.0f

    invoke-static {p4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result p4

    sub-int/2addr p3, p4

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    :goto_1
    iget p4, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double p4, p4

    mul-double v5, p4, v3

    double-to-int v5, v5

    mul-double/2addr p4, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr p4, v6

    double-to-int p4, p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v5, p4

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result p4

    add-int/2addr p4, p3

    iget p5, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v6, p5

    mul-double/2addr v3, v6

    double-to-int p5, v3

    mul-double/2addr v6, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-double v1, v1

    add-double/2addr v6, v1

    double-to-int v1, v6

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p2, v5, p4, p5, p3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :pswitch_3
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    div-int/lit8 p4, p3, 0x5

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p4

    int-to-double v0, p4

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/z/h;->b:D

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int p4, v0

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    div-int/lit8 v1, v0, 0x5

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    int-to-double v1, p5

    iget-wide v6, p0, Lcom/ubix/ssp/ad/e/z/h;->b:D

    mul-double/2addr v6, v4

    sub-double/2addr v1, v6

    iget p5, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    div-int/lit8 p5, p5, 0x5

    int-to-double v3, p5

    add-double/2addr v1, v3

    double-to-int p5, v1

    invoke-virtual {p2, p3, p4, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :cond_1
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double p3, p3

    mul-double v5, p3, v3

    double-to-int p5, v5

    mul-double/2addr p3, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-double v5, v0

    sub-double/2addr p3, v5

    double-to-int p3, p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p5, p3

    iget p3, p0, Lcom/ubix/ssp/ad/e/z/e;->p:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    invoke-static {p4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v0

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    mul-double/2addr v5, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-double v1, v1

    add-double/2addr v5, v1

    double-to-int v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/e;->p:I

    invoke-static {p4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result p4

    sub-int/2addr v1, p4

    invoke-virtual {p2, p5, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :cond_2
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double p3, p3

    const-wide v0, 0x3feeb851eb851eb8L    # 0.96

    mul-double/2addr p3, v0

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/z/h;->b:D

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    mul-double/2addr v0, v2

    sub-double v2, p3, v0

    double-to-int p5, v2

    iget v2, p0, Lcom/ubix/ssp/ad/e/z/e;->p:I

    int-to-double v2, v2

    const-wide v4, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v2, v4

    double-to-int v4, v2

    double-to-int p3, p3

    add-double/2addr v2, v0

    double-to-int p4, v2

    invoke-virtual {p2, p5, v4, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_3
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double p3, p3

    mul-double v7, p3, v3

    double-to-int v0, v7

    mul-double/2addr p3, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-double v7, v5

    sub-double/2addr p3, v7

    double-to-int p3, p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v0, p3

    invoke-virtual {p0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result p4

    add-int/2addr p3, p4

    iget p4, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v7, p4

    mul-double/2addr v3, v7

    double-to-int p4, v3

    mul-double/2addr v7, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-double v1, v1

    add-double/2addr v7, v1

    double-to-int v1, v7

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    invoke-virtual {p0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v1

    add-int/2addr p5, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p5, v1

    invoke-virtual {p2, v0, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_4
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v5, p3

    mul-double/2addr v5, v3

    double-to-int p3, v5

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v3

    sub-int/2addr p5, v3

    int-to-double v3, p5

    iget p5, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    int-to-double v5, p5

    mul-double/2addr v1, v5

    const-wide v7, 0x3fc4fdf3b645a1cbL    # 0.164

    mul-double/2addr v1, v7

    sub-double/2addr v3, v1

    double-to-int p5, v3

    const-wide v1, 0x3fed0624dd2f1aa0L    # 0.907

    mul-double/2addr v5, v1

    double-to-int v1, v5

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p2, p3, p5, v1, p4}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/z/e;->q:I

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/e;->r:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p1, v0

    double-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/c;->h(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x352

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    iget p2, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    if-eq p1, p2, :cond_1

    const/4 p2, 0x0

    iput p2, p0, Lcom/ubix/ssp/ad/e/z/e;->p:I

    :cond_1
    iput p1, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/e;->p:I

    if-nez p2, :cond_2

    int-to-double v0, p1

    const-wide v2, 0x3fee147ae147ae14L    # 0.94

    mul-double/2addr v0, v2

    double-to-int p2, v0

    iput p2, p0, Lcom/ubix/ssp/ad/e/z/e;->p:I

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/e;->e()V

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "IS_DOWNLOAD"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ICON_URL"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOWNLOAD_APP_NAME"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DOWNLOAD_APP_VERSION"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DOWNLOAD_APP_PUBLISHER"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DOWNLOAD_APP_ICP_NUMBER"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DOWNLOAD_APP_SUITABLE_AGE"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DOWNLOAD_APP_SIZE"

    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/ubix/ssp/ad/e/z/e;->q:I

    iget v9, p0, Lcom/ubix/ssp/ad/e/z/e;->r:I

    invoke-static {p1, v9}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double v9, p1

    const-wide v11, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v9, v11

    double-to-int p1, v9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/c;->h(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x352

    invoke-static {p1, v9}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/ubix/ssp/ad/e/z/e;->o:I

    div-int/lit8 v9, p1, 0x4

    sub-int/2addr p1, v9

    const/16 v9, 0x28a

    invoke-static {p1, v9}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/e;->p:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object p1

    iget-object v9, p0, Lcom/ubix/ssp/ad/e/z/e;->l:Landroid/widget/ImageView;

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-interface {p1, v0, v9, v10, v11}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5907\u6848\u53f7:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    goto :goto_1

    :cond_3
    const-string v2, "\u4e28"

    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9002\u7528\u5e74\u9f84:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    filled-new-array {p1, v2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%s%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ubix/ssp/ad/e/f;

    invoke-direct {v0, p1}, Lcom/ubix/ssp/ad/e/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/f;->a()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/e;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->n:Lcom/ubix/ssp/ad/e/z/e$a;

    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/z/e$a;->a(Ljava/lang/String;)V

    const p1, 0xe0a25

    const/high16 v0, 0x41200000    # 10.0f

    const v2, -0x7c7c7d

    const/16 v4, 0x11

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_5

    goto/16 :goto_6

    :cond_5
    const-wide/16 v9, 0x0

    cmp-long v6, v7, v9

    if-lez v6, :cond_6

    long-to-double v6, v7

    invoke-static {v6, v7}, Lcom/ubix/ssp/ad/e/a0/k;->a(D)Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v6, Lcom/ubix/ssp/ad/e/f;

    const-string v7, "\u6743\u9650\u4e28\u9690\u79c1\u4e28\u529f\u80fd\u4ecb\u7ecd"

    invoke-direct {v6, v7}, Lcom/ubix/ssp/ad/e/f;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    invoke-virtual {v6, v7}, Lcom/ubix/ssp/ad/e/f;->a(Lcom/ubix/ssp/ad/e/z/h$b;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v1, v0, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->h:Landroid/widget/TextView;

    const v6, -0xcccccd

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v1, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v1, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    int-to-double v7, v3

    iget-wide v9, p0, Lcom/ubix/ssp/ad/e/z/h;->b:D

    const-wide/high16 v11, 0x4033000000000000L    # 19.0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v3, v7

    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/e;->i:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->j:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->j:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->n:Lcom/ubix/ssp/ad/e/z/e$a;

    const-string v0, "#2E5BFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->n:Lcom/ubix/ssp/ad/e/z/e$a;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->n:Lcom/ubix/ssp/ad/e/z/e$a;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/e;->n:Lcom/ubix/ssp/ad/e/z/e$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "#E8F1FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_6
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/e;->n:Lcom/ubix/ssp/ad/e/z/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/z/e$a;->a(Ljava/lang/String;)V
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

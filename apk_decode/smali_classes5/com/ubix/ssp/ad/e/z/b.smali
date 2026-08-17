.class public Lcom/ubix/ssp/ad/e/z/b;
.super Lcom/ubix/ssp/ad/e/z/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/z/b$a;
    }
.end annotation


# instance fields
.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/ubix/ssp/ad/e/z/b$a;

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

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/b;->q:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/b;->r:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/b;->s:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/b;->q:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/b;->r:I

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/b;->q:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->m:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->l:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->h:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->i:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->j:Landroid/widget/TextView;

    new-instance p1, Lcom/ubix/ssp/ad/e/z/b$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/ubix/ssp/ad/e/z/b$a;-><init>(Lcom/ubix/ssp/ad/e/z/b;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->n:Lcom/ubix/ssp/ad/e/z/b$a;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->k:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->l:Landroid/widget/ImageView;

    const/16 v0, 0x2711

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->h:Landroid/widget/TextView;

    const/16 v0, 0x2712

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->i:Landroid/widget/TextView;

    const/16 v0, 0x2713

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->j:Landroid/widget/TextView;

    const/16 v0, 0x2714

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->n:Lcom/ubix/ssp/ad/e/z/b$a;

    const/16 v0, 0x2716

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->m:Landroid/widget/ImageView;

    const v0, 0xd6003

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->k:Landroid/widget/TextView;

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

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/b;->d()V

    return-void
.end method

.method private d()V
    .locals 9

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v1, v1

    const-wide v3, 0x3fea0c49ba5e353fL    # 0.814

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v5, v2

    mul-double/2addr v5, v3

    double-to-int v2, v5

    const-wide v7, 0x3fc4fdf3b645a1cbL    # 0.164

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-int v3, v5

    const-wide v7, 0x3fc147ae147ae148L    # 0.135

    mul-double/2addr v5, v7

    double-to-int v4, v5

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/b;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/b;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/b;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/b;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/b;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/z/h;->b()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/b;->n:Lcom/ubix/ssp/ad/e/z/b$a;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/b;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->m:Landroid/widget/ImageView;

    const-string v1, "ubix/ic_close.webp"

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->i:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->n:Lcom/ubix/ssp/ad/e/z/b$a;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .locals 10

    :try_start_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v1, v1

    const-wide v3, 0x3fea0c49ba5e353fL    # 0.814

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-int v5, v5

    invoke-direct {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-int v7, v5

    const-wide v8, 0x3fc4fdf3b645a1cbL    # 0.164

    mul-double/2addr v5, v8

    double-to-int v5, v5

    invoke-direct {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v6, v6

    mul-double/2addr v6, v3

    double-to-int v3, v6

    const-wide v8, 0x3fc147ae147ae148L    # 0.135

    mul-double/2addr v6, v8

    double-to-int v4, v6

    invoke-direct {v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/b;->l:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->n:Lcom/ubix/ssp/ad/e/z/b$a;

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
.method public a(Landroid/app/Dialog;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 1
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

    .line 2
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

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/b;->p:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    return v0
.end method

.method public getPopupType()I
    .locals 1

    const/4 v0, 0x3

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

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Lcom/ubix/ssp/ad/e/z/h$c;->b(Lcom/ubix/ssp/ad/e/z/h;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->a()V

    :cond_5
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_6
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 8

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

    const-wide v0, 0x3fea0c49ba5e353fL    # 0.814

    const-wide v2, 0x3fb7ced916872b02L    # 0.093

    if-eq p3, p5, :cond_4

    const/16 v4, 0x2718

    const/high16 v5, 0x40c00000    # 6.0f

    if-eq p3, v4, :cond_3

    const p5, 0xd6003

    if-eq p3, p5, :cond_2

    if-eq p3, p4, :cond_1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double p3, p3

    mul-double v6, p3, v2

    double-to-int p5, v6

    mul-double/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-double v6, v4

    sub-double/2addr p3, v6

    double-to-int p3, p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p5, p3

    const/16 p3, 0x2713

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p4

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v4

    add-int/2addr p4, v4

    iget v4, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v6, v4

    mul-double/2addr v2, v6

    double-to-int v2, v2

    mul-double/2addr v6, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v6, v0

    double-to-int v0, v6

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p2, p5, p4, v2, p3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

    :pswitch_1
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    const/16 p4, 0x2712

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p4

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v1

    add-int/2addr p4, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p4, v1

    :goto_1
    invoke-virtual {p2, p3, p5, v0, p4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

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

    goto :goto_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    :goto_2
    iget p4, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double p4, p4

    mul-double v4, p4, v2

    double-to-int v4, v4

    mul-double/2addr p4, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr p4, v5

    double-to-int p4, p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v4, p4

    const/high16 p4, 0x41600000    # 14.0f

    invoke-static {p4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result p5

    add-int/2addr p5, p3

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v5, v5

    mul-double/2addr v2, v5

    double-to-int v2, v2

    mul-double/2addr v5, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v5, v0

    double-to-int v0, v5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    invoke-static {p4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p2, v4, p5, v2, p3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

    :pswitch_3
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

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

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

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

    iget p5, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    div-int/lit8 p5, p5, 0x5

    int-to-double v3, p5

    add-double/2addr v1, v3

    double-to-int p5, v1

    invoke-virtual {p2, p3, p4, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

    :cond_1
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double p3, p3

    mul-double v4, p3, v2

    double-to-int p5, v4

    mul-double/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr p3, v4

    double-to-int p3, p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p5, p3

    iget p3, p0, Lcom/ubix/ssp/ad/e/z/b;->p:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    invoke-static {p4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v4

    sub-int/2addr p3, v4

    iget v4, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    mul-double/2addr v4, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v4, v0

    double-to-int v0, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/b;->p:I

    invoke-static {p4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result p4

    sub-int/2addr v0, p4

    invoke-virtual {p2, p5, p3, v2, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

    :cond_2
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double p3, p3

    const-wide v0, 0x3feeb851eb851eb8L    # 0.96

    mul-double/2addr p3, v0

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/z/h;->b:D

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    mul-double/2addr v0, v2

    sub-double v2, p3, v0

    double-to-int p5, v2

    iget v2, p0, Lcom/ubix/ssp/ad/e/z/b;->p:I

    int-to-double v2, v2

    const-wide v4, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v2, v4

    double-to-int v4, v2

    double-to-int p3, p3

    add-double/2addr v2, v0

    double-to-int p4, v2

    invoke-virtual {p2, p5, v4, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_3
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double p3, p3

    mul-double v6, p3, v2

    double-to-int v4, v6

    mul-double/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr p3, v6

    double-to-int p3, p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v4, p3

    invoke-virtual {p0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result p4

    add-int/2addr p3, p4

    iget p4, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v6, p4

    mul-double/2addr v2, v6

    double-to-int p4, v2

    mul-double/2addr v6, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v6, v0

    double-to-int v0, v6

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    invoke-virtual {p0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p2, v4, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_4
    iget p3, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v4, p3

    mul-double/2addr v4, v2

    double-to-int p3, v4

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    int-to-double v2, p5

    iget p5, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    int-to-double v4, p5

    mul-double/2addr v0, v4

    const-wide v6, 0x3fc4fdf3b645a1cbL    # 0.164

    mul-double/2addr v0, v6

    sub-double/2addr v2, v0

    double-to-int p5, v2

    const-wide v0, 0x3fed0624dd2f1aa0L    # 0.907

    mul-double/2addr v4, v0

    double-to-int v0, v4

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    goto/16 :goto_1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

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

    iget p1, p0, Lcom/ubix/ssp/ad/e/z/b;->q:I

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/b;->r:I

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
    iget p2, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    if-eq p1, p2, :cond_1

    const/4 p2, 0x0

    iput p2, p0, Lcom/ubix/ssp/ad/e/z/b;->p:I

    :cond_1
    iput p1, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/b;->p:I

    if-nez p2, :cond_2

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    double-to-int p2, v0

    iput p2, p0, Lcom/ubix/ssp/ad/e/z/b;->p:I

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/b;->e()V

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "ICON_URL"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/b;->q:I

    iget v2, p0, Lcom/ubix/ssp/ad/e/z/b;->r:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/c;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x352

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/ubix/ssp/ad/e/z/b;->o:I

    div-int/lit8 v2, v1, 0x4

    sub-int/2addr v1, v2

    const/16 v2, 0x28a

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/ubix/ssp/ad/e/z/b;->p:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/b;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/b;->l:Landroid/widget/ImageView;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->h:Landroid/widget/TextView;

    const-string v1, "TITLE"

    const-string v2, "\u63d0\u793a"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->h:Landroid/widget/TextView;

    const v2, -0xcccccd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->h:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    invoke-static {v6, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->j:Landroid/widget/TextView;

    const-string v4, "SUB_TITLE"

    const-string v5, "\u662f\u5426\u8981\u4e0b\u8f7d\u6b64\u5e94\u7528\uff1f"

    invoke-virtual {p1, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->j:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->j:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v6, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->n:Lcom/ubix/ssp/ad/e/z/b$a;

    const-string v1, "BUTTON_TEXT"

    const-string v2, "\u7acb\u5373\u4e0b\u8f7d"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/z/b$a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->n:Lcom/ubix/ssp/ad/e/z/b$a;

    const-string v0, "#2E5BFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->n:Lcom/ubix/ssp/ad/e/z/b$a;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->n:Lcom/ubix/ssp/ad/e/z/b$a;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/b;->n:Lcom/ubix/ssp/ad/e/z/b$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "#E8F1FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/b;->n:Lcom/ubix/ssp/ad/e/z/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/z/b$a;->a(Ljava/lang/String;)V
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

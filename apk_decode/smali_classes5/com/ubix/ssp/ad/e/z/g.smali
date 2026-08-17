.class public Lcom/ubix/ssp/ad/e/z/g;
.super Lcom/ubix/ssp/ad/e/z/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/z/g$e;
    }
.end annotation


# instance fields
.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/ubix/ssp/ad/e/z/g$e;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/RelativeLayout;

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Lcom/ubix/ssp/ad/e/a0/g;

.field private w:Z

.field private x:Z

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/z/h;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/z/g;->t:Z

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/g;->u:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/z/g;->x:Z

    const/high16 v2, 0x40400000    # 3.0f

    iput v2, p0, Lcom/ubix/ssp/ad/e/z/g;->y:F

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v3

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/g;->y:F

    if-le v2, v3, :cond_0

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    int-to-double v2, v3

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int p1, v2

    const/16 v2, 0x3cc

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v2, p1

    mul-double/2addr v2, v4

    double-to-int p1, v2

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int p1, v2

    const/16 v2, 0x3c0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int p1, v2

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    :goto_0
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    new-instance p1, Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/ubix/ssp/ad/e/z/g$e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->m:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->n:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->l:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->o:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->p:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    const/16 v2, 0x2712

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    const/16 v2, 0x2713

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const/16 v2, 0x2714

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    const/16 v2, 0x2715

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->o:Landroid/widget/ImageView;

    const v2, 0xd6003

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->p:Landroid/widget/RelativeLayout;

    const/16 v2, 0x271a

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->l:Landroid/widget/ImageView;

    const/16 v2, 0x2717

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->m:Landroid/widget/TextView;

    const/16 v2, 0x2718

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->n:Landroid/widget/TextView;

    const/16 v2, 0x2719

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->o:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, -0xbf6101

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    const v3, -0x7c7c7d

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x20

    invoke-static {p1, v2, v0}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/z/g;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/e/z/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    new-instance v1, Lcom/ubix/ssp/ad/e/z/g$c;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/z/g$c;-><init>(Lcom/ubix/ssp/ad/e/z/g;)V

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/z/g;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/g;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/z/g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/z/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/g;->e()V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->v:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/g;->x:Z

    :cond_0
    return-void
.end method

.method private e()V
    .locals 15

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v6, v5

    mul-double/2addr v6, v3

    double-to-int v6, v6

    div-int/lit8 v5, v5, 0x4

    invoke-direct {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v7, v6

    mul-double/2addr v7, v3

    double-to-int v7, v7

    div-int/lit8 v6, v6, 0x8

    invoke-direct {v5, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v6, v7}, Landroid/view/View;->setZ(F)V

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->p:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v5, v5

    mul-double v7, v5, v3

    double-to-int v7, v7

    iget-boolean v8, p0, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    const-wide/high16 v9, 0x400c000000000000L    # 3.5

    if-eqz v8, :cond_0

    const-wide v11, 0x4012666666666666L    # 4.6

    div-double/2addr v5, v11

    goto :goto_0

    :cond_0
    div-double/2addr v5, v9

    :goto_0
    double-to-int v5, v5

    invoke-direct {v1, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v5, v1

    div-double/2addr v5, v9

    const-wide v7, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v5, v7

    double-to-int v1, v5

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v5, v5

    div-double/2addr v5, v9

    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x5

    const/16 v12, 0x2717

    invoke-virtual {v5, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v11, v1

    div-double/2addr v11, v9

    mul-double/2addr v11, v7

    double-to-int v1, v11

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v11, v8

    mul-double v13, v11, v3

    div-double/2addr v11, v9

    sub-double/2addr v13, v11

    double-to-int v8, v13

    invoke-direct {v7, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/ubix/ssp/ad/e/z/g;->m:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v8, p0, Lcom/ubix/ssp/ad/e/z/g;->n:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v8, p0, Lcom/ubix/ssp/ad/e/z/g;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/ubix/ssp/ad/e/z/g;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/z/g;->m:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/z/g;->n:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/z/g;->p:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/ubix/ssp/ad/e/z/g;->l:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/ubix/ssp/ad/e/f;->a(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-int v3, v5

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->o:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "\u70b9\u51fb\u5e7f\u544a\u5e76\u505c\u7559%s\u79d2\u5373\u53ef\u83b7\u53d6\u5956\u52b1"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/app/Dialog;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 4
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

    .line 5
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/ubix/ssp/ad/e/z/h$c;->c(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "#C3D8FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-gez p2, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/z/g$e;->a(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 8
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    const-string v0, "\u606d\u559c\u83b7\u5f97\u5956\u52b1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    const-string v0, "\u70b9\u51fb\u4e0b\u65b9\u6309\u94ae\u8df3\u8f6c\u5230\u5e7f\u544a\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    const-string v0, "\u5c1a\u672a\u83b7\u53d6\u5956\u52b1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(I)V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "#C3D8FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/z/g$e;->a(F)V
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

.method public b(Z)V
    .locals 1

    .line 3
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    const-string v0, "\u606d\u559c\u83b7\u5f97\u5956\u52b1"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    const-string v0, "\u5956\u52b1\u83b7\u53d6\u5931\u8d25"

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    const-string v0, "\u70b9\u51fb\u4e0b\u65b9\u6309\u94ae\u8df3\u8f6c\u5230\u5e7f\u544a\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    :goto_2
    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    goto :goto_2
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    const-string v1, "\u5956\u52b1\u83b7\u53d6\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u4e0b\u65b9\u6309\u94ae\u8df3\u8f6c\u5230\u5e7f\u544a\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const-string v1, "\u7acb\u5373\u4e0b\u8f7d"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const-string v1, "\u67e5\u770b\u8be6\u60c5"

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    return v0
.end method

.method public getPopupType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/ubix/ssp/ad/e/z/g$d;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/z/g$d;-><init>(Lcom/ubix/ssp/ad/e/z/g;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/g;->d()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x2714

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2715

    if-eq p1, v0, :cond_3

    const v0, 0xd6003

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

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

    if-eqz p1, :cond_b

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->a()V

    :cond_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_5
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_6

    invoke-interface {p1, v1}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_6
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_b

    goto :goto_0

    :cond_7
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/z/g;->t:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->a()V

    :cond_8
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_9
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_a

    invoke-interface {p1, v1, v1}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V

    :cond_a
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/z/g;->t:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_b

    :goto_0
    invoke-interface {p1, v1}, Lcom/ubix/ssp/ad/e/z/h$c;->b(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const-wide v4, 0x3fa999999999999aL    # 0.05

    const/16 v6, 0x271a

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const-wide v9, 0x3fe999999999999aL    # 0.8

    if-eq v3, v6, :cond_c

    const v11, 0xd6003

    if-eq v3, v11, :cond_b

    const-wide v11, 0x3feccccccccccccdL    # 0.9

    const-wide v13, 0x3fb999999999999aL    # 0.1

    const v15, 0xe0a25

    if-eq v3, v15, :cond_a

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_11

    :pswitch_0
    iget v3, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v3, v3

    mul-double v5, v3, v9

    sub-double/2addr v3, v5

    div-double/2addr v3, v7

    double-to-int v3, v3

    const/16 v4, 0x2714

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v11, v6

    const-wide v13, 0x3f889374bc6a7efaL    # 0.012

    mul-double/2addr v11, v13

    double-to-int v6, v11

    add-int/2addr v5, v6

    iget v6, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v11, v6

    mul-double/2addr v9, v11

    add-double/2addr v11, v9

    div-double/2addr v11, v7

    double-to-int v6, v11

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v7, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v7, v7

    mul-double/2addr v7, v13

    double-to-int v7, v7

    add-int/2addr v4, v7

    iget v7, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    div-int/lit8 v7, v7, 0x8

    add-int/2addr v4, v7

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_11

    :pswitch_1
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v3, v3

    mul-double v5, v3, v9

    sub-double/2addr v3, v5

    div-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v5, v5

    const-wide v11, 0x3f8eb851eb851eb8L    # 0.015

    mul-double/2addr v5, v11

    double-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v5, v5

    mul-double/2addr v9, v5

    add-double/2addr v5, v9

    div-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v7, v7

    mul-double/2addr v7, v11

    double-to-int v7, v7

    add-int/2addr v6, v7

    int-to-double v6, v6

    iget-boolean v8, v0, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    if-eqz v8, :cond_0

    iget v8, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v8, v8

    const-wide v10, 0x4014cccccccccccdL    # 5.2

    :goto_1
    div-double/2addr v8, v10

    goto :goto_2

    :cond_0
    iget v8, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    goto :goto_1

    :cond_1
    iget v3, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v3, v3

    mul-double v11, v3, v9

    sub-double/2addr v3, v11

    div-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v11, v5

    const-wide v13, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v11, v13

    double-to-int v5, v11

    add-int/2addr v4, v5

    iget v5, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v11, v5

    mul-double/2addr v9, v11

    add-double/2addr v11, v9

    div-double/2addr v11, v7

    double-to-int v5, v11

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v7, v7

    mul-double/2addr v7, v13

    double-to-int v7, v7

    add-int/2addr v6, v7

    int-to-double v6, v6

    iget-boolean v8, v0, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    if-eqz v8, :cond_2

    iget v8, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v8, v8

    const-wide v10, 0x401199999999999aL    # 4.4

    goto :goto_1

    :cond_2
    iget v8, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    div-int/lit8 v8, v8, 0x4

    int-to-double v8, v8

    :goto_2
    add-double/2addr v6, v8

    double-to-int v6, v6

    :goto_3
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_11

    :pswitch_2
    iget v3, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v6, v3

    mul-double/2addr v6, v13

    double-to-int v3, v6

    const/16 v6, 0x2712

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-boolean v8, v0, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    const-wide v9, 0x3f9eb851eb851eb8L    # 0.03

    if-eqz v8, :cond_3

    iget v8, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v13, v8

    mul-double/2addr v13, v9

    :goto_4
    double-to-int v8, v13

    goto :goto_5

    :cond_3
    iget v8, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v13, v8

    mul-double/2addr v13, v4

    goto :goto_4

    :goto_5
    add-int/2addr v7, v8

    iget v8, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v13, v8

    mul-double/2addr v13, v11

    double-to-int v8, v13

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget-boolean v11, v0, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    if-eqz v11, :cond_4

    iget v4, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v4, v4

    mul-double/2addr v4, v9

    double-to-int v4, v4

    goto :goto_6

    :cond_4
    iget v9, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v9, v9

    mul-double/2addr v9, v4

    double-to-int v4, v9

    :goto_6
    add-int/2addr v6, v4

    iget v4, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    div-int/lit8 v4, v4, 0x6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v7, v8, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_11

    :pswitch_3
    iget-object v3, v0, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    iget v3, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v4, v3

    mul-double/2addr v13, v4

    double-to-int v6, v13

    iget-boolean v7, v0, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    if-eqz v7, :cond_5

    div-int/lit8 v8, v3, 0xe

    goto :goto_7

    :cond_5
    div-int/lit8 v8, v3, 0x7

    :goto_7
    mul-double/2addr v4, v11

    double-to-int v4, v4

    if-eqz v7, :cond_6

    div-int/lit8 v5, v3, 0xe

    :goto_8
    div-int/lit8 v3, v3, 0x8

    :goto_9
    add-int/2addr v5, v3

    goto :goto_c

    :cond_6
    div-int/lit8 v5, v3, 0x7

    :goto_a
    div-int/lit8 v3, v3, 0x6

    goto :goto_9

    :cond_7
    iget v3, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v4, v3

    mul-double/2addr v13, v4

    double-to-int v6, v13

    iget-boolean v7, v0, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    if-eqz v7, :cond_8

    div-int/lit8 v8, v3, 0x10

    goto :goto_b

    :cond_8
    div-int/lit8 v8, v3, 0x8

    :goto_b
    mul-double/2addr v4, v11

    double-to-int v4, v4

    if-eqz v7, :cond_9

    div-int/lit8 v5, v3, 0x10

    goto :goto_8

    :cond_9
    div-int/lit8 v5, v3, 0x8

    goto :goto_a

    :goto_c
    invoke-virtual {v2, v6, v8, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_11

    :cond_a
    iget v3, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v3, v3

    mul-double/2addr v3, v13

    double-to-int v3, v3

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v0, Lcom/ubix/ssp/ad/e/z/g;->y:F

    const/high16 v7, 0x41000000    # 8.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v8, v5

    mul-double/2addr v8, v11

    double-to-int v5, v8

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, v0, Lcom/ubix/ssp/ad/e/z/g;->y:F

    mul-float/2addr v8, v7

    float-to-int v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    goto/16 :goto_3

    :cond_b
    iget v3, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    div-int/lit8 v4, v3, 0x1e

    sub-int v5, v3, v4

    div-int/lit8 v3, v3, 0xb

    sub-int v6, v5, v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v6, v4, v5, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_11

    :cond_c
    iget v3, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v11, v3

    mul-double v13, v11, v9

    sub-double/2addr v11, v13

    div-double/2addr v11, v7

    double-to-int v3, v11

    const/16 v6, 0x2713

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    iget-boolean v12, v0, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    const-wide v13, 0x3f947ae147ae147bL    # 0.02

    if-eqz v12, :cond_d

    iget v12, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    move-wide/from16 p1, v4

    int-to-double v4, v12

    mul-double/2addr v4, v13

    :goto_d
    double-to-int v4, v4

    goto :goto_e

    :cond_d
    move-wide/from16 p1, v4

    iget v4, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v4, v4

    mul-double v4, v4, p1

    goto :goto_d

    :goto_e
    add-int/2addr v11, v4

    iget v4, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v4, v4

    mul-double/2addr v9, v4

    add-double/2addr v4, v9

    div-double/2addr v4, v7

    double-to-int v4, v4

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-double v5, v5

    iget-boolean v7, v0, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    if-eqz v7, :cond_e

    iget v7, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v7, v7

    mul-double/2addr v7, v13

    double-to-int v7, v7

    int-to-double v7, v7

    iget v9, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v9, v9

    const-wide v12, 0x4012666666666666L    # 4.6

    :goto_f
    div-double/2addr v9, v12

    add-double/2addr v7, v9

    goto :goto_10

    :cond_e
    iget v7, v0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    int-to-double v7, v7

    mul-double v7, v7, p1

    double-to-int v7, v7

    int-to-double v7, v7

    iget v9, v0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    int-to-double v9, v9

    const-wide/high16 v12, 0x400c000000000000L    # 3.5

    goto :goto_f

    :goto_10
    add-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/view/View;->layout(IIII)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/z/g;->q:I

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/g;->r:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/g;->x:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->v:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->v:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->d()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->v:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/g;->v:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->c()V

    :cond_1
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "TITLE"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUB_TITLE"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ELAPSE"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "TASK_TIME"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "IS_REWARDED"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v4, "TITLE_TEMP"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v4, "REWARD_GUIDE_AUTO_CLOSE_TIME"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v4, "ICON_URL"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "REWARD_VIDEO_DIALOG_TYPE"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/ubix/ssp/ad/e/z/g;->u:I

    const-string v5, "REWARD_VIDEO_DIALOG_AUTO_CLOSE"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ubix/ssp/ad/e/z/g;->t:Z

    const-string v5, "IS_DOWNLOAD"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    const-string v5, "DOWNLOAD_APP_NAME"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DOWNLOAD_APP_PUBLISHER"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DOWNLOAD_APP_VERSION"

    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "DOWNLOAD_APP_SIZE"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v8, "GOT_VIDEO_CACHE"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    const-string v8, "DOWNLOAD_APP_ICP_NUMBER"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v5

    const-string v5, "DOWNLOAD_APP_SUITABLE_AGE"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/ubix/ssp/ad/e/z/g;->m:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/e/z/g;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v2

    iget-object v3, v1, Lcom/ubix/ssp/ad/e/z/g;->l:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v18, v9

    const/4 v9, 0x0

    invoke-interface {v2, v4, v3, v9, v5}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V

    iget-boolean v2, v1, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v2, :cond_0

    move-object v4, v6

    move-object v6, v0

    new-instance v0, Lcom/ubix/ssp/ad/e/z/g$a;

    move-object v3, v7

    move-object v5, v8

    move-wide v7, v14

    move-object/from16 v2, v17

    invoke-direct/range {v0 .. v8}, Lcom/ubix/ssp/ad/e/z/g$a;-><init>(Lcom/ubix/ssp/ad/e/z/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget v0, v1, Lcom/ubix/ssp/ad/e/z/g;->u:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "#F1F1F1"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    const-string v3, "#FFFBDB"

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :goto_1
    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    const-string v3, "\u7acb\u5373\u4e0b\u8f7d"

    const-string v4, "\u6211\u8981\u66f4\u5feb\u62ff\u5956\u52b1"

    const-string v5, "\u4e0b\u8f7d\u66f4\u5feb\u62ff\u5956\u52b1"

    const-string v6, "%s\u79d2\u540e\u81ea\u52a8\u653e\u5f03\u7ee7\u7eed\u770b\u5e7f\u544a"

    const-string v7, "\u5c1a\u672a\u83b7\u53d6\u5956\u52b1"

    const-string v8, "\u606d\u559c\u83b7\u5f97\u5956\u52b1"

    const-string v14, "\u7ee7\u7eed\u770b\u5e7f\u544a"

    const-string v9, "\u70b9\u51fb\u4e0b\u65b9\u6309\u94ae\u8df3\u8f6c\u5230\u5e7f\u544a\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    iget v12, v1, Lcom/ubix/ssp/ad/e/z/g;->u:I

    const-string v15, "%s\u79d2\u66f4\u5feb\u62ff\u5956\u52b1"

    const-string v2, "\u70b9\u51fb\u5e7f\u544a\u5e76\u505c\u7559%s\u79d2\u5373\u53ef\u83b7\u53d6\u5956\u52b1"

    if-nez v12, :cond_4

    if-eqz v11, :cond_3

    iget-object v2, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v1, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v2, :cond_11

    goto/16 :goto_8

    :cond_3
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v1, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v0, :cond_a

    goto/16 :goto_4

    :cond_4
    const/4 v0, 0x1

    if-ne v12, v0, :cond_5

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v1, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v0, :cond_a

    goto/16 :goto_4

    :cond_5
    const/4 v0, 0x2

    if-eq v12, v0, :cond_6

    const/4 v0, 0x3

    if-ne v12, v0, :cond_15

    :cond_6
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v1, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {v0, v5}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {v0, v4}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    :goto_2
    iget v0, v1, Lcom/ubix/ssp/ad/e/z/g;->u:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_14

    if-lez v13, :cond_14

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/ubix/ssp/ad/e/z/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :pswitch_1
    iget v2, v1, Lcom/ubix/ssp/ad/e/z/g;->u:I

    const-string v10, "\u70b9\u51fb\u5e76\u6210\u529f\u8df3\u8f6c\u5373\u53ef\u83b7\u53d6\u5956\u52b1"

    if-nez v2, :cond_9

    if-eqz v11, :cond_8

    iget-object v2, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v1, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v2, :cond_11

    goto/16 :goto_8

    :cond_8
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v1, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    if-ne v2, v0, :cond_b

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v1, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v0, :cond_a

    :goto_4
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const-string v2, "\u4e0b\u8f7d\u62ff\u5956\u52b1"

    :goto_5
    invoke-virtual {v0, v2}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_a
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const-string v2, "\u6211\u8981\u62ff\u5956\u52b1"

    goto :goto_5

    :cond_b
    const/4 v0, 0x2

    if-eq v2, v0, :cond_c

    const/4 v0, 0x3

    if-ne v2, v0, :cond_15

    :cond_c
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    const-string v2, "\u66f4\u5feb\u62ff\u5956\u52b1"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v1, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {v0, v5}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {v0, v4}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    :goto_6
    iget v0, v1, Lcom/ubix/ssp/ad/e/z/g;->u:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_14

    if-lez v13, :cond_14

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v14}, Lcom/ubix/ssp/ad/e/z/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_2
    iget v2, v1, Lcom/ubix/ssp/ad/e/z/g;->u:I

    const-string v4, "\u5b8c\u6210\u89c2\u770b\u9886\u5956\u52b1"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_f

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    if-eqz v16, :cond_e

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\u8fd8\u9700\u89c2\u770b%s\u79d2\u5373\u53ef\u83b7\u53d6\u5956\u52b1"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {v0, v14}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    const-string v2, "\u89c6\u9891\u6b63\u5728\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const-string v2, "\u7ee7\u7eed\u7b49\u5f85"

    goto :goto_5

    :cond_f
    if-nez v2, :cond_12

    iget-object v2, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    if-eqz v11, :cond_10

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_10
    const-string v4, "\u5956\u52b1\u83b7\u53d6\u4e2d"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v2, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v1, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v2, :cond_11

    :goto_8
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {v0, v3}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    iget-object v2, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {v2, v0}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    :goto_9
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    const-string v2, "\u5173\u95ed\u5e7f\u544a"

    invoke-direct {v1, v2, v2}, Lcom/ubix/ssp/ad/e/z/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_3

    :cond_12
    const/4 v5, 0x3

    if-ne v2, v5, :cond_15

    iget-object v2, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v1, Lcom/ubix/ssp/ad/e/z/g;->s:Z

    if-eqz v2, :cond_13

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {v0, v3}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    iget-object v2, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    invoke-virtual {v2, v0}, Lcom/ubix/ssp/ad/e/z/g$e;->setText(Ljava/lang/String;)V

    :cond_14
    :goto_a
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    invoke-direct {v1, v14, v14}, Lcom/ubix/ssp/ad/e/z/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_3

    :cond_15
    :goto_b
    iget-boolean v0, v1, Lcom/ubix/ssp/ad/e/z/g;->w:Z

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x41400000    # 12.0f

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    const/high16 v4, 0x41d80000    # 27.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->m:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    const/4 v2, 0x2

    :goto_c
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_d

    :cond_16
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    const/4 v2, 0x3

    goto :goto_c

    :goto_d
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->j:Lcom/ubix/ssp/ad/e/z/g$e;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    const v3, -0xcccccd

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->m:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->n:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->h:Landroid/widget/TextView;

    const-string v2, "#FF8D1A"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->o:Landroid/widget/ImageView;

    const-string v2, "ubix/ic_close.webp"

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-lez v13, :cond_17

    iget v0, v1, Lcom/ubix/ssp/ad/e/z/g;->u:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_17

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/g;

    int-to-long v2, v13

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/ubix/ssp/ad/e/a0/g;-><init>(J)V

    iput-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->v:Lcom/ubix/ssp/ad/e/a0/g;

    new-instance v2, Lcom/ubix/ssp/ad/e/z/g$b;

    invoke-direct {v2, v1}, Lcom/ubix/ssp/ad/e/z/g$b;-><init>(Lcom/ubix/ssp/ad/e/z/g;)V

    invoke-virtual {v0, v2}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g$b;)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/z/g;->v:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->e()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/ubix/ssp/ad/e/z/g;->x:Z

    :cond_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

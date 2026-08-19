.class public abstract Lcom/ubix/ssp/ad/i/e/a;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:I

.field protected K:I

.field protected L:I

.field protected M:I

.field protected N:Lcom/ubix/ssp/ad/g/k/g;

.field private O:I

.field private P:I

.field protected Q:D

.field protected R:I

.field protected S:Z

.field private T:D

.field private U:I

.field private V:Z

.field private W:Z

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field a0:Z

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private b0:I

.field c:Landroid/widget/RelativeLayout$LayoutParams;

.field private c0:F

.field d:Landroid/widget/RelativeLayout$LayoutParams;

.field private d0:I

.field e:Landroid/widget/RelativeLayout$LayoutParams;

.field private e0:I

.field f:Landroid/widget/RelativeLayout$LayoutParams;

.field protected f0:Z

.field g:Landroid/widget/RelativeLayout$LayoutParams;

.field private g0:Landroid/animation/ObjectAnimator;

.field h:Landroid/widget/RelativeLayout$LayoutParams;

.field private h0:Z

.field i:Landroid/widget/RelativeLayout$LayoutParams;

.field private i0:Z

.field j:Landroid/widget/RelativeLayout$LayoutParams;

.field private j0:F

.field protected k:Landroid/widget/RelativeLayout;

.field private k0:F

.field protected l:Lcom/ubix/ssp/ad/e/t/a/e;

.field protected m:[Lcom/ubix/ssp/ad/e/t/a/e;

.field protected n:Landroid/widget/TextView;

.field protected o:Landroid/widget/ImageView;

.field private p:Landroid/graphics/Path;

.field private q:Landroid/graphics/Paint;

.field private r:Z

.field private s:Z

.field private t:Z

.field protected u:F

.field protected v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/String;

.field protected y:I

.field protected z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->b:Ljava/util/HashMap;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ubix/ssp/ad/e/t/a/e;

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->m:[Lcom/ubix/ssp/ad/e/t/a/e;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->p:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->q:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->r:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/ubix/ssp/ad/i/e/a;->u:F

    const-string v1, ""

    iput-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->x:Ljava/lang/String;

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    iput-wide v1, p0, Lcom/ubix/ssp/ad/i/e/a;->Q:D

    const/4 v1, 0x2

    iput v1, p0, Lcom/ubix/ssp/ad/i/e/a;->R:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->S:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ubix/ssp/ad/i/e/a;->T:D

    const/4 v1, 0x5

    iput v1, p0, Lcom/ubix/ssp/ad/i/e/a;->U:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/i/e/a;->V:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->W:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->a0:Z

    iput v0, p0, Lcom/ubix/ssp/ad/i/e/a;->b0:I

    const v2, 0x3d4ccccd    # 0.05f

    iput v2, p0, Lcom/ubix/ssp/ad/i/e/a;->c0:F

    iput v1, p0, Lcom/ubix/ssp/ad/i/e/a;->d0:I

    iput v1, p0, Lcom/ubix/ssp/ad/i/e/a;->e0:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->f0:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->h0:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->i0:Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/ubix/ssp/ad/i/e/a;->Q:D

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/e/a;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private varargs a(Landroid/view/ViewGroup;[I)Landroid/view/View;
    .locals 3

    .line 2
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {p2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2}, Lcom/ubix/ssp/ad/i/e/a;->a(Landroid/view/ViewGroup;[I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {p2, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/ubix/ssp/ad/i/e/a;
    .locals 1

    .line 6
    const-string v0, "TEMPLATE_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    new-instance p1, Lcom/ubix/ssp/ad/i/e/l;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/i/e/l;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/ubix/ssp/ad/i/e/e;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/i/e/e;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/ubix/ssp/ad/i/e/c;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/i/e/c;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcom/ubix/ssp/ad/i/e/k;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/i/e/k;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/ubix/ssp/ad/i/e/f;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/i/e/f;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/ubix/ssp/ad/i/e/d;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/i/e/d;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/ubix/ssp/ad/i/e/i;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/i/e/i;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_8
    new-instance p1, Lcom/ubix/ssp/ad/i/e/h;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/i/e/h;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_9
    new-instance p1, Lcom/ubix/ssp/ad/i/e/g;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/i/e/g;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_a
    new-instance p1, Lcom/ubix/ssp/ad/i/e/b;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/i/e/b;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_b
    new-instance p1, Lcom/ubix/ssp/ad/i/e/j;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/i/e/j;-><init>(Landroid/content/Context;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    .line 8
    const-string v0, "RENDER_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/i/e/a;->b0:I

    const-string v0, "SCALE_IGNORE_PERCENT"

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/i/e/a;->c0:F

    const-string v0, "SCALE_HORIZONTAL_MARGIN"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/i/e/a;->d0:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    iput v1, p0, Lcom/ubix/ssp/ad/i/e/a;->d0:I

    :cond_0
    const-string v0, "SCALE_VERTICAL_MARGIN"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/i/e/a;->e0:I

    if-lt p1, v2, :cond_1

    iput v1, p0, Lcom/ubix/ssp/ad/i/e/a;->e0:I

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/e/a;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/ubix/ssp/ad/i/e/a;->W:Z

    return p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/e/a;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/i/e/a;->W:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/i/e/a;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 3

    .line 6
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    const v1, 0x1eab93

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v0, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/e/t/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    const v1, 0x30d42

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    const v1, 0x30d41

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->o:Landroid/widget/ImageView;

    const v1, 0x1e848e

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/t/a/e;->setSupportRound(Z)V

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/i/e/a;->c(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    iget v0, p0, Lcom/ubix/ssp/ad/i/e/a;->I:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    const v0, -0xcfcfd0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/i/e/a;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/i/e/a;->h0:Z

    return p1
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/i/e/a;)Landroid/graphics/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/i/e/a;->p:Landroid/graphics/Path;

    return-object p0
.end method

.method private c(I)Z
    .locals 1

    .line 3
    const/16 v0, 0x7d5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7de

    if-eq p1, v0, :cond_0

    const p1, 0x3fe38e39

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f100000    # 0.5625f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3fc00000    # 1.5f

    :goto_0
    iget v0, p0, Lcom/ubix/ssp/ad/i/e/a;->u:F

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/ubix/ssp/ad/i/e/a;->c0:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/i/e/a;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/i/e/a;->T:D

    return-wide v0
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/i/e/a;)Ljava/util/HashMap;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/i/e/a;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/i/e/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/i/e/a;->P:I

    return p0
.end method

.method private m()V
    .locals 1

    const v0, 0xe0a25

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/ubix/ssp/ad/i/e/a;->a(Landroid/view/ViewGroup;[I)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/ViewGroup;
    .locals 11

    .line 3
    const/4 v0, 0x2

    const v1, 0x1f47d1

    const/16 v2, 0x7d5

    const/16 v3, 0x7d4

    const/16 v4, 0x7d3

    const/16 v5, 0x7dd

    const/16 v6, 0x7dc

    const/16 v7, 0x7db

    const/16 v8, 0x7de

    const/16 v9, 0x7d7

    const/16 v10, 0x7d6

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    iget p1, p0, Lcom/ubix/ssp/ad/i/e/a;->O:I

    if-eq p1, v10, :cond_5

    if-ne p1, v9, :cond_2

    goto :goto_1

    :cond_2
    if-eq p1, v8, :cond_4

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_5
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_6
    iget p1, p0, Lcom/ubix/ssp/ad/i/e/a;->O:I

    if-eq p1, v10, :cond_5

    if-eq p1, v5, :cond_5

    if-eq p1, v9, :cond_5

    if-eq p1, v8, :cond_5

    if-eq p1, v4, :cond_5

    if-eq p1, v7, :cond_5

    if-eq p1, v6, :cond_5

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_7

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public a(DI)Landroid/widget/RelativeLayout;
    .locals 4

    .line 4
    iput-wide p1, p0, Lcom/ubix/ssp/ad/i/e/a;->T:D

    iput p3, p0, Lcom/ubix/ssp/ad/i/e/a;->U:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/i/e/a;->S:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p2, Lcom/ubix/ssp/ad/e/m;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/ubix/ssp/ad/e/m;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/ubix/ssp/ad/i/e/a;->q:Landroid/graphics/Paint;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Lcom/ubix/ssp/ad/i/e/a;->q:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/ubix/ssp/ad/i/e/a;->q:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/ubix/ssp/ad/i/e/a;->q:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p1, 0x1f20c1

    invoke-virtual {p3, p1}, Landroid/view/View;->setId(I)V

    const/16 p1, 0xd

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x30d56

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x30d57

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    const-string v3, "ubix/ic_slide_arrow.webp"

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v3, "ubix/ic_slide_hand.webp"

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p3
.end method

.method public a(Ljava/lang/String;Z)Landroid/widget/RelativeLayout;
    .locals 9

    .line 5
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x1ef9b1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-wide v5, p0, Lcom/ubix/ssp/ad/i/e/a;->Q:D

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    mul-double/2addr v5, v7

    double-to-int v2, v5

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-eqz p2, :cond_0

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v7, "ubix/ic_hand_shake.webp"

    invoke-static {v7}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v7, 0xde315

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    const v7, 0xde314

    invoke-virtual {v2, v7}, Landroid/view/View;->setId(I)V

    iget-wide v7, p0, Lcom/ubix/ssp/ad/i/e/a;->Q:D

    double-to-int v7, v7

    mul-int/lit8 v7, v7, 0x5

    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "#73000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x48

    invoke-static {v4, v6, v7}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0x30d55

    invoke-virtual {p2, v4}, Landroid/view/View;->setId(I)V

    iget v4, p0, Lcom/ubix/ssp/ad/i/e/a;->O:I

    const/16 v6, 0x7d3

    if-eq v4, v6, :cond_1

    const/16 v6, 0x7d4

    if-eq v4, v6, :cond_1

    const/16 v6, 0x7d5

    if-eq v4, v6, :cond_1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v3, 0x66000000

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v6, p1, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-wide p1, p0, Lcom/ubix/ssp/ad/i/e/a;->Q:D

    double-to-int p1, p1

    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    const/16 p1, 0xd

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, -0x34000000    # -3.3554432E7f

    const/16 p2, 0x8

    invoke-static {v5, p1, p2}, Lcom/ubix/ssp/ad/e/a0/c;->a(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/i/e/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .line 10
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/e/v/a;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/v/a;->c(Ljava/lang/String;)Z

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/v/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/ubix/ssp/ad/i/e/a;->u:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/i/e/a;->u:F

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/i/e/a;->b(Ljava/lang/String;Landroid/widget/ImageView;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12

    .line 11
    move-wide/from16 v0, p7

    const v2, 0xe0a25

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const-string v4, ""

    if-lez v3, :cond_1

    long-to-double v0, v0

    :try_start_1
    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/k;->a(D)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v0, v4

    :goto_0
    const-string v3, "\u5e94\u7528\u540d\u79f0:%s\u4e28\u5e94\u7528\u7248\u672c:%s\u4e28\u5f00\u53d1\u8005:%s%s%s%s\u4e28\u6743\u9650\u4e28\u9690\u79c1\u4e28\u529f\u80fd\u4ecb\u7ecd"

    :try_start_2
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v9, v4

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e28\u5907\u6848\u53f7:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    :goto_1
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v10, v4

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e28\u9002\u7528\u5e74\u9f84:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    :goto_2
    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e28\u5e94\u7528\u5927\u5c0f:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v11, v4

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/ubix/ssp/ad/e/f;

    invoke-direct {p2, p1}, Lcom/ubix/ssp/ad/e/f;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->N:Lcom/ubix/ssp/ad/g/k/g;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/f;->a(Lcom/ubix/ssp/ad/g/k/b;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_3
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAnimation  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/ubix/ssp/ad/i/e/a$a;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/i/e/a$a;-><init>(Lcom/ubix/ssp/ad/i/e/a;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 4

    .line 13
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v1

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->m:[Lcom/ubix/ssp/ad/e/t/a/e;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/ubix/ssp/ad/e/v/a;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->m:[Lcom/ubix/ssp/ad/e/t/a/e;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/ubix/ssp/ad/i/e/a;->b(Ljava/lang/String;Landroid/widget/ImageView;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract a([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public b(Z)Landroid/widget/RelativeLayout;
    .locals 9

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x1eab91

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x30d47

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v4, 0x30d46

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x41300000    # 11.0f

    invoke-static {v7}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v8

    invoke-static {v7}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v7

    invoke-direct {v5, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v2, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const v2, -0x7c7c7d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->o:Landroid/widget/ImageView;

    const-string v1, "ubix/ic_close.webp"

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->S:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->a0:Z

    return-void
.end method

.method public b(I)V
    .locals 20

    .line 4
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_0

    move v4, v5

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-int/lit8 v5, v1, 0x16

    iput v5, v0, Lcom/ubix/ssp/ad/i/e/a;->G:I

    iput v5, v0, Lcom/ubix/ssp/ad/i/e/a;->H:I

    int-to-double v5, v1

    const-wide v7, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v7, v5

    double-to-int v9, v7

    iput v9, v0, Lcom/ubix/ssp/ad/i/e/a;->y:I

    mul-int/lit8 v10, v9, 0x9

    div-int/lit8 v10, v10, 0x10

    iput v10, v0, Lcom/ubix/ssp/ad/i/e/a;->z:I

    const-wide v10, 0x4008cccccccccccdL    # 3.1

    div-double v10, v5, v10

    double-to-int v10, v10

    iput v10, v0, Lcom/ubix/ssp/ad/i/e/a;->A:I

    const/4 v11, 0x2

    mul-int/2addr v10, v11

    const/4 v12, 0x3

    div-int/2addr v10, v12

    iput v10, v0, Lcom/ubix/ssp/ad/i/e/a;->B:I

    div-int/lit16 v10, v1, 0x12c

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v0, Lcom/ubix/ssp/ad/i/e/a;->D:I

    div-int/lit8 v10, v1, 0x46

    const/16 v12, 0xc

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v0, Lcom/ubix/ssp/ad/i/e/a;->C:I

    div-double/2addr v5, v2

    float-to-double v13, v4

    div-double/2addr v5, v13

    const-wide/high16 v13, 0x402a000000000000L    # 13.0

    div-double v13, v5, v13

    double-to-int v10, v13

    const/high16 v13, 0x41800000    # 16.0f

    div-float/2addr v13, v4

    float-to-int v13, v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v0, Lcom/ubix/ssp/ad/i/e/a;->I:I

    const-wide/high16 v13, 0x4030000000000000L    # 16.0

    div-double v13, v5, v13

    double-to-int v10, v13

    const/high16 v13, 0x41600000    # 14.0f

    div-float/2addr v13, v4

    float-to-int v13, v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v0, Lcom/ubix/ssp/ad/i/e/a;->J:I

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v0, Lcom/ubix/ssp/ad/i/e/a;->K:I

    const-wide/high16 v16, 0x4032000000000000L    # 18.0

    div-double v14, v5, v16

    double-to-int v10, v14

    const/high16 v14, 0x41400000    # 12.0f

    div-float v4, v14, v4

    float-to-int v4, v4

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lcom/ubix/ssp/ad/i/e/a;->L:I

    const-wide/high16 v18, 0x4028000000000000L    # 12.0

    div-double v5, v5, v18

    double-to-int v4, v5

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lcom/ubix/ssp/ad/i/e/a;->M:I

    const v4, 0x1e8490

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget v5, v0, Lcom/ubix/ssp/ad/i/e/a;->I:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    const v4, 0x30d55

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget v5, v0, Lcom/ubix/ssp/ad/i/e/a;->M:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    const v4, 0x30d46

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    div-int/lit8 v6, v1, 0x3

    div-int/lit8 v6, v6, 0x5

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    div-int/lit8 v5, v1, 0x6

    div-int/lit8 v5, v5, 0x5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    const v4, 0x30d47

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget v6, v0, Lcom/ubix/ssp/ad/i/e/a;->L:I

    add-int/lit8 v6, v6, -0x4

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v5, v6, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_4
    const v4, 0x30d41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget v6, v0, Lcom/ubix/ssp/ad/i/e/a;->I:I

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v5, v6, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_5
    const v4, 0x1e8491

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    div-int/lit8 v10, v1, 0x8

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_6
    const v4, 0xde315

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_7

    mul-double v2, v2, v16

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v12

    int-to-double v10, v6

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_7
    const v2, 0x1ef9b1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    div-int/lit8 v3, v1, 0x8

    const/16 v4, 0x62

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_8
    const v2, 0x30d56

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-wide/high16 v3, 0x4012000000000000L    # 4.5

    div-double/2addr v7, v3

    double-to-int v3, v7

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_9
    const v2, 0x30d57

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    div-int/lit8 v1, v1, 0x8

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_a
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/e/a;->i()Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x1eab92

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c

    const v2, 0xe0a25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    mul-int/2addr v3, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v2

    add-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_b
    iget v2, v0, Lcom/ubix/ssp/ad/i/e/a;->L:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    mul-float/2addr v2, v14

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_c
    :goto_0
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/e/a;->l()V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 5
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    const-string v0, "AD_INDEX"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/i/e/a;->P:I

    const-string v0, "TITLE"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->w:Ljava/lang/String;

    const-string v0, "AD_WIDTH"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    const-string v0, "AD_SOURCE"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->v:Ljava/lang/String;

    const-string v0, "AD_HEIGHT"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/i/e/a;->F:I

    const-string v0, "IS_DOWNLOAD"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->r:Z

    const-string v0, "CLICK_MAP"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->a:Ljava/util/HashMap;

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    goto :goto_0

    :cond_0
    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    :goto_0
    const-string v1, "BUTTON_TEXT"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->x:Ljava/lang/String;

    const-string v0, "TEMPLATE_ID"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/i/e/a;->O:I

    const-string v0, "IS_UNNAMED"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->f0:Z

    const-string v0, "AUTO_PLAY"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/i/e/a;->R:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->s:Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->t:Z

    invoke-direct {p0, p2}, Lcom/ubix/ssp/ad/i/e/a;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public varargs b([Ljava/lang/String;)V
    .locals 2

    .line 7
    const v0, 0x1f6ee1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/d/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object p1, p1, v1

    new-instance v1, Lcom/ubix/ssp/ad/i/e/a$b;

    invoke-direct {v1, p0, v0}, Lcom/ubix/ssp/ad/i/e/a$b;-><init>(Lcom/ubix/ssp/ad/i/e/a;Lcom/ubix/ssp/ad/d/f;)V

    invoke-virtual {v0, p1, v1}, Lcom/ubix/ssp/ad/d/f;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/g/k/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 9

    .line 9
    const/4 v1, 0x0

    :try_start_0
    iget v0, p0, Lcom/ubix/ssp/ad/i/e/a;->b0:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/v/a;->c(Ljava/lang/String;)Z

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/v/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    iput v3, p0, Lcom/ubix/ssp/ad/i/e/a;->u:F

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->getTemplateId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/i/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object p1, p2

    check-cast p1, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {p1, v1}, Lcom/ubix/ssp/ad/e/t/a/e;->setSupportRound(Z)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Lcom/ubix/ssp/ad/e/a0/q;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float v6, p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float v7, p1

    const/high16 v8, 0x41200000    # 10.0f

    invoke-direct/range {v3 .. v8}, Lcom/ubix/ssp/ad/e/a0/q;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;FFF)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    if-ne v0, p1, :cond_3

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return v2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public c()Landroid/widget/RelativeLayout;
    .locals 5

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x1eab92

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v3

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/f;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0xf0d0b

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0xe0a25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x7c7c7d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-object v0
.end method

.method public abstract c(Landroid/os/Bundle;)V
.end method

.method public d()Landroid/widget/RelativeLayout;
    .locals 3

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x1eab92

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/f;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 6

    .line 3
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/e/a;->a(Landroid/os/Bundle;)V

    const v0, 0x30d46

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "IS_UNNAMED"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/i/e/a;->f0:Z

    if-eqz v0, :cond_1

    const-string v2, "ubix/ic_logo_dark.webp"

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v1, 0x30d47

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->v:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x66000000

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v0, "IMAGE_URL"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIDEO_URL"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ubix/ssp/ad/i/e/a;->a([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/i/e/a;->m()V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->S:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->p:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->S:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    goto/16 :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->a0:Z

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->p:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->p:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->i0:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->a0:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/ubix/ssp/ad/i/e/a;->j0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v3, p0, Lcom/ubix/ssp/ad/i/e/a;->Q:D

    cmpg-double v0, v0, v3

    if-gez v0, :cond_5

    iget v0, p0, Lcom/ubix/ssp/ad/i/e/a;->k0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v3, p0, Lcom/ubix/ssp/ad/i/e/a;->Q:D

    cmpg-double v0, v0, v3

    if-gez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->a:Ljava/util/HashMap;

    const-string v0, "__CLICK_AREA__"

    const-string v1, "12"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->a:Ljava/util/HashMap;

    const-string v0, "__CLICK_TRIGGER__"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/ubix/ssp/ad/d/b;->E:I

    if-ne p1, v2, :cond_6

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->b()V

    :cond_6
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->N:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/ubix/ssp/ad/i/e/a;->P:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p0, v1}, Lcom/ubix/ssp/ad/g/k/g;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_7
    return v2

    :cond_8
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->p:Landroid/graphics/Path;

    invoke-direct {v0, v3, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v3, v5

    cmpg-double v0, v0, v3

    if-gtz v0, :cond_9

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    :cond_9
    new-instance p1, Lcom/ubix/ssp/ad/i/e/a$f;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/i/e/a$f;-><init>(Lcom/ubix/ssp/ad/i/e/a;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    :cond_a
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/i/e/a;->j0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/i/e/a;->k0:F

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/i/e/a;->i0:Z

    const v0, 0x1e848e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/i/e/a;->i0:Z

    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/i/e/a;->b(Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->S:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->a0:Z

    return-void
.end method

.method public g()Landroid/widget/RelativeLayout;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x1f47d1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/i/e/a;->F:I

    return v0
.end method

.method public getAdWidth()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    return v0
.end method

.method public getTemplateId()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/i/e/a;->O:I

    return v0
.end method

.method public h()Landroid/widget/RelativeLayout;
    .locals 7

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x1ed2a1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x1e8490

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget v3, p0, Lcom/ubix/ssp/ad/i/e/a;->I:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v3, p0, Lcom/ubix/ssp/ad/i/e/a;->Q:D

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const v3, -0xbf6101

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "#99000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->r:Z

    return v0
.end method

.method public j()V
    .locals 1

    :try_start_0
    const-string v0, "removeAnim"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;
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

.method public k()V
    .locals 0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/e/a;->j()V

    return-void
.end method

.method public abstract l()V
.end method

.method public n()Landroid/view/animation/Animation;
    .locals 5

    const v0, 0xde315

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    const/4 v2, 0x7

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "rotation"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x708

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/ubix/ssp/ad/i/e/a$c;

    invoke-direct {v3, p0, v0}, Lcom/ubix/ssp/ad/i/e/a$c;-><init>(Lcom/ubix/ssp/ad/i/e/a;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    :goto_0
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
        -0x3f400000    # -6.0f
        0x40c00000    # 6.0f
        -0x3f400000    # -6.0f
        0x40400000    # 3.0f
        0x0
    .end array-data
.end method

.method public o()Landroid/view/animation/Animation;
    .locals 5

    const v0, 0x30d57

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x30d56

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/ubix/ssp/ad/i/e/a;->h0:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const v3, 0x1f20c1

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/4 v3, 0x1

    new-array v3, v3, [F

    aput v1, v3, v4

    const-string v1, "translationX"

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x4b0

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/ubix/ssp/ad/i/e/a$d;

    invoke-direct {v3, p0}, Lcom/ubix/ssp/ad/i/e/a$d;-><init>(Lcom/ubix/ssp/ad/i/e/a;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a;->g0:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/ubix/ssp/ad/i/e/a$e;

    invoke-direct {v3, p0, v0}, Lcom/ubix/ssp/ad/i/e/a$e;-><init>(Lcom/ubix/ssp/ad/i/e/a;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    :goto_0
    return-object v2
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/e/a;->h0:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1e848e

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->a:Ljava/util/HashMap;

    const-string v1, "__CLICK_AREA__"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->a:Ljava/util/HashMap;

    const-string v1, "__CLICK_TRIGGER__"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a;->N:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/ubix/ssp/ad/i/e/a;->P:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1, v2}, Lcom/ubix/ssp/ad/g/k/g;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->N:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/ubix/ssp/ad/i/e/a;->P:I

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/g/k/g;->e(I)V

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget-boolean p2, p0, Lcom/ubix/ssp/ad/i/e/a;->s:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    :cond_0
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/i/e/a;->t:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/i/e/a;->F:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/ubix/ssp/ad/i/e/a;->F:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v1, p2

    iput v1, p0, Lcom/ubix/ssp/ad/i/e/a;->F:I

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/ubix/ssp/ad/i/e/a;->F:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    iget p2, p0, Lcom/ubix/ssp/ad/i/e/a;->F:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget p1, p0, Lcom/ubix/ssp/ad/i/e/a;->E:I

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/i/e/a;->b(I)V

    return-void
.end method

.method public setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V
    .locals 0

    check-cast p1, Lcom/ubix/ssp/ad/g/k/g;

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a;->N:Lcom/ubix/ssp/ad/g/k/g;

    return-void
.end method

.method public setMuted(Z)V
    .locals 0

    return-void
.end method

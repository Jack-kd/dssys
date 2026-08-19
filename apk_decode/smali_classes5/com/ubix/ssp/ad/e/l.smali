.class public Lcom/ubix/ssp/ad/e/l;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/l$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private h:Lcom/ubix/ssp/ad/e/l$c;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field k:Lcom/ubix/ssp/ad/e/a0/g;

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/l;->a:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/l;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/l;->c:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/l;->d:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/l;->e:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/l;->f:Landroid/widget/TextView;

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/l;->g:Z

    const-string v2, "%ss\u540e\u6253\u5f00\u5e94\u7528\u6216\u7b2c\u4e09\u65b9\u8be6\u60c5"

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/l;->i:Ljava/lang/String;

    const-string v2, "\u53ef\u67e5\u770b\u66f4\u591a\u7cbe\u5f69"

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/l;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/l;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/l;->m:Ljava/util/HashMap;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v3

    float-to-double v3, v3

    const/4 v5, 0x1

    if-le v1, v2, :cond_0

    iput-boolean v5, p0, Lcom/ubix/ssp/ad/e/l;->g:Z

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/ubix/ssp/ad/e/l;->a:I

    const-wide/high16 v1, 0x404b000000000000L    # 54.0

    :goto_0
    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/ubix/ssp/ad/e/l;->b:I

    goto :goto_1

    :cond_0
    int-to-float v1, v1

    const v2, 0x3f3d70a4    # 0.74f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/ubix/ssp/ad/e/l;->a:I

    const-wide/high16 v1, 0x4050000000000000L    # 64.0

    goto :goto_0

    :goto_1
    iget v1, p0, Lcom/ubix/ssp/ad/e/l;->a:I

    const/16 v2, 0x4b0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/ubix/ssp/ad/e/l;->a:I

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/l;->c:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/l;->d:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/l;->e:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/l;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/l;->c:Landroid/widget/ImageView;

    const v2, 0x15c0d

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/l;->d:Landroid/widget/TextView;

    const v2, 0x15c0e

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/l;->e:Landroid/widget/TextView;

    const v2, 0x15c0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/l;->f:Landroid/widget/TextView;

    const v2, 0x15c10

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/l;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/l;->c:Landroid/widget/ImageView;

    new-instance v2, Lcom/ubix/ssp/ad/e/l$a;

    invoke-direct {v2, p0}, Lcom/ubix/ssp/ad/e/l$a;-><init>(Lcom/ubix/ssp/ad/e/l;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/high16 v2, -0x62000000

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {p1, v2, v1, v6, v5}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v7, 0x401c000000000000L    # 7.0

    mul-double/2addr v3, v7

    double-to-int v2, v3

    invoke-static {v1, v0, v2, v6}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->d:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->d:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ubix/ssp/ad/e/l;->b:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v7, v1, v3

    double-to-int v5, v7

    const-wide v7, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v1, v7

    double-to-int v1, v1

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->e:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ubix/ssp/ad/e/l;->b:I

    int-to-double v1, v1

    mul-double/2addr v3, v1

    double-to-int v3, v3

    mul-double/2addr v1, v7

    double-to-int v1, v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->f:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setZ(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->f:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->d:Landroid/widget/TextView;

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->e:Landroid/widget/TextView;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/l;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/l;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/l;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/l;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/g;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/g;-><init>(J)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    new-instance v1, Lcom/ubix/ssp/ad/e/l$b;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/l$b;-><init>(Lcom/ubix/ssp/ad/e/l;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g$b;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->e()V

    return-void
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/l;)Lcom/ubix/ssp/ad/e/l$c;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/l;->h:Lcom/ubix/ssp/ad/e/l$c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->a()V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/l;->h:Lcom/ubix/ssp/ad/e/l$c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/l$c;->onClose()V

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/l;->d:Landroid/widget/TextView;

    const-string v1, "5"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%ss\u540e\u6253\u5f00\u5e94\u7528\u6216\u7b2c\u4e09\u65b9\u8be6\u60c5"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/l;->e:Landroid/widget/TextView;

    const-string v1, "\u53ef\u67e5\u770b\u66f4\u591a\u7cbe\u5f69"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "ICON_URL"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/l;->f:Landroid/widget/TextView;

    const-string v1, "\u4e0d\u7528\u4e86"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/l;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V

    :cond_0
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/l;->b()V

    return-void
.end method

.method public a(Landroid/view/View;J)V
    .locals 6

    .line 4
    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "translationX"

    :try_start_1
    move-object v3, p1

    check-cast v3, Lcom/ubix/ssp/ad/e/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/e/l;->getTargetWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v5, v4, [F

    aput v0, v5, v1

    const/4 v0, 0x1

    aput v3, v5, v0

    invoke-static {p1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "alpha"

    :try_start_2
    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v1

    aput-object p1, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v3, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getTargetHeight()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/l;->b:I

    return v0
.end method

.method public getTargetWidth()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/l;->a:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x15c10

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/l;->a()V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const-wide v6, 0x3faeb851eb851eb8L    # 0.06

    const-wide v8, 0x3fe999999999999aL    # 0.8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    const-wide v12, 0x3fa47ae147ae147bL    # 0.04

    const v14, 0x15c0d

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget v3, v0, Lcom/ubix/ssp/ad/e/l;->a:I

    int-to-double v3, v3

    const-wide v5, 0x3fee666666666666L    # 0.95

    mul-double/2addr v3, v5

    iget v5, v0, Lcom/ubix/ssp/ad/e/l;->b:I

    int-to-double v5, v5

    const-wide v7, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v7, v5

    const-wide v9, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v7, v9

    sub-double v7, v3, v7

    double-to-int v7, v7

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v5, v8

    double-to-int v5, v5

    double-to-int v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v2, v7, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-double v10, v3

    iget v3, v0, Lcom/ubix/ssp/ad/e/l;->a:I

    const-wide p1, 0x3fd6666666666666L    # 0.35

    int-to-double v4, v3

    mul-double/2addr v4, v12

    add-double/2addr v10, v4

    double-to-int v3, v10

    const v4, 0x15c0e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    iget v11, v0, Lcom/ubix/ssp/ad/e/l;->a:I

    add-int/2addr v10, v11

    int-to-double v12, v10

    iget v10, v0, Lcom/ubix/ssp/ad/e/l;->b:I

    int-to-double v14, v10

    mul-double/2addr v14, v8

    sub-double/2addr v12, v14

    int-to-double v8, v11

    mul-double/2addr v8, v6

    sub-double/2addr v12, v8

    double-to-int v6, v12

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-double v7, v4

    iget v4, v0, Lcom/ubix/ssp/ad/e/l;->b:I

    int-to-double v9, v4

    mul-double v9, v9, p1

    add-double/2addr v7, v9

    double-to-int v4, v7

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :pswitch_2
    const-wide p1, 0x3fd6666666666666L    # 0.35

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-double v3, v3

    iget v5, v0, Lcom/ubix/ssp/ad/e/l;->a:I

    move-wide/from16 p3, v6

    int-to-double v6, v5

    mul-double/2addr v6, v12

    add-double/2addr v3, v6

    double-to-int v3, v3

    iget v4, v0, Lcom/ubix/ssp/ad/e/l;->b:I

    int-to-double v4, v4

    mul-double/2addr v4, v10

    double-to-int v4, v4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v0, Lcom/ubix/ssp/ad/e/l;->a:I

    add-int/2addr v5, v6

    int-to-double v12, v5

    iget v5, v0, Lcom/ubix/ssp/ad/e/l;->b:I

    int-to-double v14, v5

    mul-double/2addr v8, v14

    sub-double/2addr v12, v8

    int-to-double v5, v6

    mul-double v5, v5, p3

    sub-double/2addr v12, v5

    double-to-int v5, v12

    mul-double/2addr v10, v14

    mul-double v14, v14, p1

    add-double/2addr v10, v14

    double-to-int v6, v10

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :pswitch_3
    iget v3, v0, Lcom/ubix/ssp/ad/e/l;->a:I

    int-to-double v3, v3

    mul-double/2addr v3, v12

    double-to-int v5, v3

    iget v6, v0, Lcom/ubix/ssp/ad/e/l;->b:I

    int-to-double v6, v6

    mul-double/2addr v10, v6

    double-to-int v8, v10

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v12

    add-double/2addr v3, v6

    double-to-int v3, v3

    add-double/2addr v10, v6

    double-to-int v4, v10

    invoke-virtual {v2, v5, v8, v3, v4}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15c0d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 4

    iget p1, p0, Lcom/ubix/ssp/ad/e/l;->a:I

    iget p2, p0, Lcom/ubix/ssp/ad/e/l;->b:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/l;->b:I

    int-to-double p1, p1

    const-wide v0, 0x3fd999999999999aL    # 0.4

    mul-double/2addr p1, v0

    const-wide v2, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr p1, v2

    double-to-int p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v2, p0, Lcom/ubix/ssp/ad/e/l;->b:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/l;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->d()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->c()V

    :cond_1
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->d()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/l;->k:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->c()V

    :cond_1
    return-void
.end method

.method public setClickListener(Lcom/ubix/ssp/ad/e/l$c;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/l;->h:Lcom/ubix/ssp/ad/e/l$c;

    return-void
.end method
